# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

import re
import os.path
import copy
import pycountry
from collections import Mapping, ChainMap

from ngoschema.exceptions import InvalidValue
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.loaders.module import locale_module_loader, register_locale_dir
from threading import local
import gettext as gettext_module

from .. import settings

# pycountry provides locales for countries, languages, currencies
register_locale_dir('pycountry', 'locales')

# Translations are cached in a dictionary for every language.
# The active translations are stored by threadid to make them thread local.
_translations = {}
_active = local()

# The default translation is based on the settings file.
_default = None

# Format of Accept-Language header values. From RFC 2616, section 14.4 and 3.9
# and RFC 3066, section 2.1
accept_language_re = re.compile(r'''
        ([A-Za-z]{1,8}(?:-[A-Za-z0-9]{1,8})*|\*)      # "en", "en-au", "x-y-z", "es-419", "*"
        (?:\s*;\s*q=(0(?:\.\d{,3})?|1(?:\.0{,3})?))?  # Optional "q=1.00", "q=0.8"
        (?:\s*,\s*|$)                                 # Multiple accepts per header.
        ''', re.VERBOSE)

language_code_re = re.compile(
    r'^[a-z]{1,8}(?:-[a-z0-9]{1,8})*(?:@[a-z0-9]{1,20})?$',
    re.IGNORECASE
)

language_code_prefix_re = re.compile(r'^/(\w+([@-]\w+)?)(/|$)')


def to_language(locale):
    """Turn a locale name (en_US) into a language name (en-us)."""
    p = locale.find('_')
    if p >= 0:
        return locale[:p].lower() + '-' + locale[p + 1:].lower()
    else:
        return locale.lower()


def to_locale(language):
    """Turn a language name (en-us) into a locale name (en_US)."""
    language = language.lower()
    parts = language.split('-')
    try:
        country = parts[1]
    except IndexError:
        return language
    # A language with > 2 characters after the dash only has its first
    # character after the dash capitalized; e.g. sr-latn becomes sr_Latn.
    # A language with 2 characters after the dash has both characters
    # capitalized; e.g. en-us becomes en_US.
    parts[1] = country.title() if len(country) > 2 else country.upper()
    return parts[0] + '_' + '-'.join(parts[1:])


class LocaleDirDomains(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/LocaleDirDomains"


module_domains = {
    module : LocaleDirDomains(
        module=module,
        locale_dir=locale_module_loader.subfolder(module),
        domains=domains)
    for module, domains in settings.LOCALE_MODULE_DOMAINS.items()}


class DomainsTranslation(with_metaclass(SchemaMetaclass, gettext_module.GNUTranslations)):
    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/DomainsTranslation"
    domain = 'vishuda'

    def __init__(self, *args, **kwargs):
        """Create a GNUTranslations() using many locale directories"""
        gettext_module.GNUTranslations.__init__(self)
        ObjectProtocol.__init__(self, *args, **kwargs)
        locale = to_locale(self.language)
        self._catalog = None
        # If a language doesn't have a catalog, use the Germanic default for
        # pluralization: anything except one is pluralized.
        self.plural = lambda n: int(n != 1)

        mofiles = []
        for ldd in self.locale_dirs:
            mofiles += [gettext_module.find(domain, localedir=ldd.locale_dir, languages=[locale])
                        for domain in ldd.domains]

        if not any(mofiles):
            if self.fallback:
                return
            raise InvalidValue('No translation file found for language "%s"' % self.language)
        ts = []
        for mofile in mofiles:
            if mofile:
                key = (locale, os.path.abspath(mofile))
                if key not in _translations:
                    with open(mofile, 'rb') as fp:
                        _translations[key] = gettext_module.GNUTranslations(fp)
                ts.append(copy.copy(_translations[key]))
        self._catalog = ts[0]._catalog
        cur = self
        for t in ts[1:]:
            cur.add_fallback(t)
            cur = t


_translations = {
    lang: DomainsTranslation(
        locale_dirs=list(module_domains.values()),
        language=lang)
    for lang in settings.LANGUAGES}


def activate(language):
    """
    Fetch the translation object for a given language and install it as the
    current translation object for the current thread.
    """
    if not language:
        return
    _active.value = t = _translations.get(language)
    t.install(['gettext', 'ngettext', 'lgettext', 'lngettext'])


def deactivate():
    """
    Uninstall the active translation object so that further _() calls resolve
    to the default translation object.
    """
    if hasattr(_active, "value"):
        del _active.value


def deactivate_all():
    """
    Make the active translation object a NullTranslations() instance. This is
    useful when we want delayed translations to appear as the original string
    for some reason.
    """
    _active.value = gettext_module.NullTranslations()
    _active.value.to_language = lambda *args: None


class Translatable(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/Translatable"


class TranslatableMixin(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/TranslatableMixin"


class TranslationMixin(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/TranslationMixin"
