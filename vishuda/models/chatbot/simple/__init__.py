# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema.models import instances
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol


class Reflection(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/chatbot/$defs/simple/$defs/Reflection'


class Response(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/chatbot/$defs/simple/$defs/Response'


class ChatbotSimple(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/chatbot/$defs/simple/$defs/ChatbotSimple'


