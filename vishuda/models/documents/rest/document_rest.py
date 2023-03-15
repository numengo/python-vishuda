# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

import lxml.html

from docutils.core import publish_string

from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ..document import Document, Chapter, SchemaOrgMetaclass
from ..html import DocumentHtml, HasContentHtml


class DocumentRest(with_metaclass(SchemaOrgMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/rest/$defs/DocumentRest'

    def set_content(self, content):
        HasContentHtml.set_content(self, content)

    def get_content(self):
        raw = self.contentRaw
        html = publish_string(raw, writer_name='html')
        doc = lxml.html.fromstring(html)
        return doc
