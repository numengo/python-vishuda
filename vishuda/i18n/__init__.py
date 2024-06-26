# *- coding: utf-8 -*-
import re

from ngoschema.loaders.module import register_locale_dir
from threading import local
import gettext as gettext_module

from .. import settings

# pycountry provides locales for countries, languages, currencies
register_locale_dir('pycountry', 'locales')

# Translations are cached in a dictionary for every language.
# The active translations are stored by threadid to make them thread local.
_translations = {}
_active_language = local()
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


def find_module_domains():
    from vishuda.models.i18n import LocaleDirDomains
    from ngoschema.loaders.module import locale_module_loader
    return {
        module : LocaleDirDomains(
            module=module,
            locale_dir=locale_module_loader.subfolder(module),
            domains=domains)
        for module, domains in settings.LOCALE_MODULE_DOMAINS.items()}


module_domains = find_module_domains()


def find_locales(languages=None):
    """
    Load all compiled locales from path

    :return: dict with locales
    """
    from vishuda.models.i18n import DomainsTranslation
    languages = languages or settings.LANGUAGES
    return {
        lang: DomainsTranslation(
            locale_dirs=list(module_domains.values()),
            language=lang)
        for lang in languages}


_translations = find_locales(settings.LANGUAGES)


def active_language():
    return _active_language.value


def activate(language):
    """
    Fetch the translation object for a given language and install it as the
    current translation object for the current thread.
    """
    if not language:
        return
    _active.value = t = _translations.get(language)
    if t is not None:
        t.install(['gettext', 'ngettext', 'lgettext', 'lngettext'])
    _active_language.value = language
    return t


def deactivate():
    """
    Uninstall the active translation object so that further _() calls resolve
    to the default translation object.
    """
    if hasattr(_active, "value"):
        del _active.value
    if hasattr(_active_language, "value"):
        del _active_language.value


def deactivate_all():
    """
    Make the active translation object a NullTranslations() instance. This is
    useful when we want delayed translations to appear as the original string
    for some reason.
    """
    _active.value = gettext_module.NullTranslations()
    _active.value.to_language = lambda *args: None


OFFSET = 127462 - ord('A')


def get_lang_flag(code):
    # https://github.com/python-telegram-bot/python-telegram-bot/wiki/Code-snippets#other-useful-stuff
    # The Unicode flag emoji for any country can by definition be calculated from the countries 2 letter country code
    # corresponding lang -> country code when different
    lang_flags = {'en': 'gb'}
    code = lang_flags.get(code, code)
    code = code.upper()
    return chr(ord(code[0]) + OFFSET) + chr(ord(code[1]) + OFFSET)
