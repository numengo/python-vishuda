# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema.models import instances
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol


class Decomp(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/chatbot/$defs/advanced/$defs/Decomp'


class Key(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/chatbot/$defs/advanced/$defs/Key'


class ChatbotAdvanced(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/chatbot/$defs/advanced/$defs/ChatbotAdvanced'


