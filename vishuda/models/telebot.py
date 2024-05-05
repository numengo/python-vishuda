# *- coding: utf-8 -*-
"""telebot API Telbot."""

from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol

from .. import settings


class Telebot(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/Telebot'

    def __init__(self, value=None, context=None, **opts):
        ObjectProtocol.__init__(self, value, context=context, **opts)

    #def get_bot_link(self):
    #    return f'https://telegram.me/{self.user.username}'#?start = unique_code'
