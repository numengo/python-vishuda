# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.models.files import UriFile, Document as BaseDocument

from ..files import File


class ListItem(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/components/$defs/lists/$defs/ListItem'


class List(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/components/$defs/lists/$defs/List'
