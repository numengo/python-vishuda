# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema.models import instances
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.registries import repositories_registry
from ngoschema.repositories import MemoryRepository


class Chatbot(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/app/$defs/Chatbot'


@repositories_registry.register()
class ChatbotRepository(with_metaclass(SchemaMetaclass, MemoryRepository)):
    _instanceClass = Chatbot
    _many = True

