# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema.models.instances import Entity
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol


class Model(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/app/$defs/Model"


class Fixture(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/app/$defs/Fixture"


class View(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/app/$defs/View"


class Namespace(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/app/$defs/Namespace"


class App(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/app/$defs/App"

    #def __init__(self, *args, **kwargs):
    #    Entity.__init__(self, *args, **kwargs)
