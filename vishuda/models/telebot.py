# *- coding: utf-8 -*-
"""telebot API Telbot."""

import telebot
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.registries import repositories_registry
from ngoschema.repositories import MemoryRepository
from ngoschema.models.instances import Entity

from .. import settings


class Telebot(with_metaclass(SchemaMetaclass, telebot.TeleBot)):
    _id = 'https://numengo.org/vishuda#/$defs/app/$defs/Telebot'

    def __init__(self, value=None, context=None, **opts):
        Entity.__init__(self, value, context=context, **opts)
        self.token = token = self.token or settings.TELEGRAM_BOT_TOKEN
        telebot.TeleBot.__init__(self, token=token, **opts)


@repositories_registry.register()
class TelebotRepository(with_metaclass(SchemaMetaclass, MemoryRepository)):
    _instanceClass = Telebot
    _many = True
