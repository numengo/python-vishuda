# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.models.files import UriFile, Document as BaseDocument

from ..files import File


class Cell(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/components/$defs/tables/$defs/Cell'


class Row(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/components/$defs/tables/$defs/Row'


class Table(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/components/$defs/tables/$defs/Table'
