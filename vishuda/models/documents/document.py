# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.models.files import UriFile, Document as BaseDocument

from ..schema_org import SchemaOrg, SchemaOrgMetaclass
from ..files import File
from .components import Heading


class HasContent(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/HasContent'


class Chapter(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/Chapter'

    def __repr__(self):
        return f'<Chapter L{self.heading.level} "{self.title}">'


class Document(with_metaclass(SchemaOrgMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/Document'
    _lazyLoading = True

    def __init__(self, value=None, **kwargs):
        BaseDocument.__init__(self, value=value, **kwargs)

    def __repr__(self):
        return f'<Document "{self.title}" ({str(self.filepath or self.uri)})>'
