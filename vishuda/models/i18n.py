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
from ngofile.list_files import list_files

import gettext as gettext_module
from .. import settings


OFFSET = 127462 - ord('A')

def get_lang_flag(code):
    # https://github.com/python-telegram-bot/python-telegram-bot/wiki/Code-snippets#other-useful-stuff
    # The Unicode flag emoji for any country can by definition be calculated from the countries 2 letter country code
    # corresponding lang -> country code when different
    lang_flags = {'en': 'gb'}
    code = lang_flags.get(code, code)
    code = code.upper()
    return chr(ord(code[0]) + OFFSET) + chr(ord(code[1]) + OFFSET)



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
            return get_lang_flag(a2)


class LocaleDirDomains(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/LocaleDirDomains"

    def get_locales_paths(self, locales=None):
        locales_map = {}
        locales = locales or settings.LANGUAGES
        for locale in locales:
            locale_path = self.locale_dir.joinpath(locale)
            if locale_path.exists():
                for domain in self.domains:
                    recursive_paths = list_files(locale_path, [f"{domain}.mo"], recursive=True)
                    locales_map.setdefault(locale, []).extend(recursive_paths)
        return {k: v for k, v in locales_map.items() if v}


class Locale(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/Locale"

    def get_locale_paths(self):
        locale = self.locale
        locale_dir_domains = self.locale_dir_domains
        locale_paths = []
        for locale_dir_domain in locale_dir_domains:
            if locale in list(locale_dir_domain.locales_paths.keys()):
                locale_paths.extend(list(locale_dir_domain.locales_paths[locale]))
        return locale_paths

    def get_gnu_translations(self):
        return [gettext_module.GNUTranslations(fp.open('rb'))
             for fp in self.locale_paths]

    def set_gnu_translations(self, gnu_translations):
        ts = list(gnu_translations)
        self._catalog = ts[0]._catalog
        cur = ts[0]
        for t in ts[1:]:
            cur.add_fallback(t)
            cur = t


class I18nCore(with_metaclass(SchemaMetaclass, gettext_module.GNUTranslations)):
    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/I18nCore"

    def __init__(self, *args, **kwargs):
        """Create a GNUTranslations() using many locale directories"""
        from ..i18n import to_locale, _translations
        gettext_module.GNUTranslations.__init__(self)
        ObjectProtocol.__init__(self, *args, **kwargs)
        # pluralization: anything except one is pluralized.
        self.plural = lambda n: int(n != 1)
        # add core translations as additional properties for member access
        for id, gnu_translation in self.locales_root.items():
            self._set_dataValidated(id, gnu_translation)

    def get_default_locale(self):
        return self._get_data('default_locale') or self.languages[0]

    def get_locales(self):
        languages = self.languages
        locale_dir_domains = self.locale_dir_domains
        locales_map = self.locales_map or {}
        locales = {language: Locale(locale=language, fallback=locales_map.get(language))
                   for language in languages}
        for ldd in locale_dir_domains:
            for locale, paths in ldd.locales_paths.items():
                if locale in locales:
                    locales[locale].locale_dir_domains = list(locales[locale].locale_dir_domains) + [ldd]
        return list(locales.values())

    def get_gnu_translations(self):
        locales = {l.id: l for l in self.locales}
        def_locale = self.default_locale
        gnu_translations = {l: locale.gnu_translations
                            for l, locale in locales.items() if locale.id in self.languages}
        def_gnu_translations = gnu_translations[def_locale]
        def_catalog = def_gnu_translations[0]._catalog
        self._catalog = def_catalog
        for l, ts in gnu_translations.items():
            if ts[0]._catalog is not def_catalog:
                ts[0].add_fallback(def_gnu_translations[0])
        return list(gnu_translations.values())

    def get_locales_map(self):
        return self._get_data('locales_map') or {}

    def get_locales_root(self):
        return {l.id: l.gnu_translations[0] for l in self.locales}


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
