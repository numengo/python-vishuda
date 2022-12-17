# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema.models import instances
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol

from . import places

#class User(with_metaclass(SchemaMetaclass)):
#    _id = r"https://numengo.org/vishuda#/$defs/personas/$defs/User"
#
#    def __init__(self, *args, **kwargs):
#        instances.Entity.__init__(self, *args, **kwargs)


class Person(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/personas/$defs/Person"


class Organization(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/personas/$defs/Organization"


class Merchant(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/personas/$defs/Merchant"


class Manufacturer(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/personas/$defs/Manufacturer"


class Customer(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/personas/$defs/Customer"


class BusinessCustomer(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/personas/$defs/BusinessCustomer"
