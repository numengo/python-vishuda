# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals
from typing import Tuple, Any

from aiogram import types
from aiogram.utils.i18n.core import I18n
from contextvars import ContextVar


from vishuda.i18n import register_locale_dir, active_language, activate, _translations, find_locales

LANG_STORAGE = {}


class Localization(I18n):

    def __init__(self, default_locale=None):
        self.default_locale = default_locale
        self.ctx_locale = ContextVar("aiogram_ctx_locale", default=default_locale)
        self.locales = find_locales()

    def find_locales(self):
        """
        Hot reload locales
        """
        return find_locales()

    async def get_user_locale(self, action: str, args: Tuple[Any]) -> str:
        """
        User locale getter
        You can override the method if you want to use different way of getting user language.
        :param action: event name
        :param args: event arguments
        :return: locale name
        """
        user: types.User = types.User.get_current()

        if LANG_STORAGE.get(user.id) is None:
            LANG_STORAGE[user.id] = "en"
        *_, data = args
        language = data['locale'] = LANG_STORAGE[user.id]
        return language
