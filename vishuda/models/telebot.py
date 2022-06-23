# *- coding: utf-8 -*-
"""telebot API Telbot."""

import telebot
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol

from .. import settings


class Telebot(with_metaclass(SchemaMetaclass, telebot.TeleBot)):
    _id = 'https://numengo.org/telebot#/$defs/Telebot'

    def __init__(self, value=None, context=None, **opts):
        ObjectProtocol.__init__(self, value, context=context, **opts)
        self.token = token = self.token or settings.TELEGRAM_BOT_TOKEN
        telebot.TeleBot.__init__(self, token=token, **opts)

    #def get_bot_link(self):
    #    return f'https://telegram.me/{self.user.username}'#?start = unique_code'
