# *- coding: utf-8 -*-
"""telebot API Telbot."""
from typing import Union, List

from telegram import InlineKeyboardButton

from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from .. import settings


class Action(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/actions/$defs/Action'


class Message(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/actions/$defs/Message'


class DeepLink(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/DeepLink'

    def get_url(self):
        from telegram import helpers
        if self.bot_username:
            return helpers.create_deep_linked_url(self.bot_username, self.payload, group=self.group)

    def get_link(self, link_text=None):
        link_text = link_text or self.link_text
        url = self.url
        if url:
            return f'<a href="{url}">{link_text}</a>'


def button_menu(buttons=[], n_cols=1, header_buttons=[], footer_buttons=[]):
    menu = [buttons[i:i + n_cols] for i in range(0, len(buttons), n_cols)]
    if header_buttons:
        menu.insert(0, header_buttons if isinstance(header_buttons, list) else [header_buttons])
    if footer_buttons:
        menu.append(footer_buttons if isinstance(footer_buttons, list) else [footer_buttons])
    return menu


class MenuLanguage(with_metaclass(SchemaMetaclass)):
    #_id = 'https://numengo.org/telebot#/$defs/MenuLanguage'

    @staticmethod
    def get_flag(code):
        lang_flags = {'en': 'uk'}
        code = lang_flags.get(code, code)
        # https://github.com/python-telegram-bot/python-telegram-bot/wiki/Code-snippets#other-useful-stuff
        # The Unicode flag emoji for any country can by definition be calculated from the countries 2 letter country code
        OFFSET = 127462 - ord('A')
        code = code.upper()
        return chr(ord(code[0]) + OFFSET) + chr(ord(code[1]) + OFFSET)

    def get_buttons(self):
        from pycountry import languages
        return [InlineKeyboardButton(text=f'{MenuLanguage.get_flag(l)} {languages.get(alpha_2=l).name}',
                                     callback_data='set_user_lang:'+l)
            for l in self.languages]


async def set_user_lang(update, context):
    context.user_data[USER_LANG] = update.callback_query.data



class Telebot(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/Telebot'

    def __init__(self, value=None, context=None, **opts):
        ObjectProtocol.__init__(self, value, context=context, **opts)

    #def get_bot_link(self):
    #    return f'https://telegram.me/{self.user.username}'#?start = unique_code'

