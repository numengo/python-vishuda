# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema.models import instances
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol


class User(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/personas/$defs/User"

    def __init__(self, *args, **kwargs):
        instances.Entity.__init__(self, *args, **kwargs)
