# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

import os.path
import copy
import pycountry
from collections import ChainMap
from collections.abc import Mapping

from ngoschema.exceptions import InvalidValue
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.models.instances import Entity

import gettext as gettext_module

class Language(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/Language"
    _lazyLoading = True

    def __init__(self, *args, **kwargs):
        Entity.__init__(self, *args, **kwargs)
        self.id

    def set_id(self, id):
        from pycountry import languages
        l = languages.get(alpha_2=id.split('-')[0])
        if l is None:
            l = languages.get(alpha_3=id.split('-')[0])
        if l is not None:
            for k, v in l._fields.items():
                self._set_dataValidated(k, v)

    def get_flag(self):
        a2 = self.alpha_2
        if self._get_data('flag') is None and a2:
            from vishuda.i18n import get_lang_flag
            return get_lang_flag(a2)

    def get_localized_name(self):
        from vishuda.i18n import _translations, active_language, activate
        lang = self.alpha_2
        name = self.name
        cur_lang = active_language()
        activate(lang)
        t = _translations.get(lang)
        if t:
            return t.gettext(name)
        if cur_lang != lang:
            activate(cur_lang)


class LocaleDirDomains(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/LocaleDirDomains"


class DomainsTranslation(with_metaclass(SchemaMetaclass, gettext_module.GNUTranslations)):
    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/DomainsTranslation"
    domain = 'vishuda'

    def __init__(self, *args, **kwargs):
        """Create a GNUTranslations() using many locale directories"""
        from ..i18n import to_locale, _translations
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


class LanguageContext(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/LanguageContext"

    def get_active_language(self):
        from vishuda.i18n import _active_language
        if hasattr(_active_language, "value"):
            return _active_language.value


class Translatable(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/Translatable"


class TranslatableMixin(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/TranslatableMixin"


class TranslationMixin(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/TranslationMixin"
