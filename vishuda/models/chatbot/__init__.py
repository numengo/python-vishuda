# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema.models import instances
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol


class Chatbot(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/chatbot/$defs/Chatbot'


__all__ = [
    'Chatbot'
]
