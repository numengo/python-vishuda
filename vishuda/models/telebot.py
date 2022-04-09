# *- coding: utf-8 -*-
"""telebot API Telbot."""

import telebot
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.types import String, Symbol


class CustomFilter(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/telebot/$defs/filters/$defs/CustomFilter'

    def __init__(self, value=None, **opts):
        data = value if value is not None else opts
        opts = opts if value is not None else {}
        if value and String.check(value):
            s = Symbol.convert(value)
            data = {'symbol': s, 'key': s.key}
        ObjectProtocol.__init__(self, data, **opts)


class Telebot(telebot.TeleBot):
    pass
