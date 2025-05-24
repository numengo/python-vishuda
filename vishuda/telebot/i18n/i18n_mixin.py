# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from gettext import GNUTranslations
from pathlib import Path
from typing import Any, Dict, NoReturn, Optional, Union

from aiogram_i18n.cores.base import BaseCore
from aiogram_i18n.exceptions import KeyNotFoundError, UnknownLocaleError


class Fallback:
    def gettext(self, message: str) -> NoReturn:
        raise KeyError

    def ngettext(self, msgid1: str, msgid2: Optional[str], n: int) -> NoReturn:
        raise KeyError


class GNUTextCore(BaseCore[GNUTranslations]):

    def __init__(self, core, raise_key_error: bool = False):
        self.core = core
        self.raise_key_error = raise_key_error
        self.default_locale = core.default_locale
        self.locales = dict(core.core)
        self.locales_map = dict(core.locales_map or {})

    def find_locales(self) -> Dict[str, GNUTranslations]:
        return self.core.get_core()

    def get(self, message: str, locale: Optional[str] = None, /, **kwargs: Any) -> str:
        locale = self.get_locale(locale=locale)
        translator = self.get_translator(locale=locale)
        try:
            return translator.gettext(message=message).format_map(kwargs)
        except KeyError:
            if self.raise_key_error:
                raise KeyNotFoundError(message) from None
            return message.format_map(kwargs)

    def nget(
        self,
        singular: str,
        plural: Optional[str] = None,
        n: int = 1,
        locale: Optional[str] = None,
        /,
        **kwargs: Any,
    ) -> str:
        locale = self.get_locale(locale=locale)
        translator = self.get_translator(locale=locale)
        if plural is None:
            plural = singular
        try:
            return translator.ngettext(msgid1=singular, msgid2=plural, n=n).format_map(kwargs)
        except KeyError:
            if self.raise_key_error:
                raise KeyNotFoundError(singular) from None
            if n == 1:
                return singular
            else:
                return plural
