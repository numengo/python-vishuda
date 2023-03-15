# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.models.files import UriFile, Document as BaseDocument

from ..files import File


class BlockToken(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/components/$defs/BlockToken'


class SpanToken(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/components/$defs/SpanToken'


class Heading(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/components/$defs/Heading'

    def __repr__(self):
        return f'<Heading{self.level} "{self.title}">'


class Paragraph(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/components/$defs/Paragraph'


class Quote(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/components/$defs/Quote'


class BlockCode(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/components/$defs/BlockCode'


class Footnote(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/components/$defs/Footnote'


class ThematicBreak(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/components/$defs/ThematicBreak'


class Link(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/components/$defs/Link'


class Figure(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/components/$defs/Figure'


class Image(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/components/$defs/Image'


class Equation(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/components/$defs/Equation'
