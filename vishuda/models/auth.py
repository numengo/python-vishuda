# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema.models import instances
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol


class ContentType(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/auth/$defs/ContentType"


class Permission(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/auth/$defs/Permission"


class Group(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/auth/$defs/Group"


class Address(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/auth/$defs/Address"


class Card(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/auth/$defs/Card"


class User(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/auth/$defs/User"

    def __init__(self, *args, **kwargs):
        instances.Entity.__init__(self, *args, **kwargs)


class BankAccount(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/auth/$defs/BankAccount"

