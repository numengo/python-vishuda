# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

import lxml.html

from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol

from mistletoe import markdown, Document as Document_mt
from mistletoe.block_token import BlockCode as BlockCode_mt, Heading as Heading_mt, Quote as Quote_mt
from mistletoe.block_token import Table as Table_mt, Footnote as Footnote_mt, ThematicBreak as ThematicBreak_mt
from mistletoe.span_token import AutoLink as AutoLink_mt, InlineCode as InlineCode_mt, LineBreak as LineBreak_mt, RawText as RawText_mt

from ..document import Document, Chapter, SchemaOrgMetaclass
from ..components import Heading, BlockCode, Link
from ..tables import Table
from ..html import DocumentHtml, HasContentHtml


class DocumentMarkdown(with_metaclass(SchemaOrgMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/markdown/$defs/DocumentMarkdown'

    def get_content(self):
        raw = self.contentRaw
        # convert raw content (markdown) to html and then parse it with lxml.html
        html = markdown(raw.splitlines())
        doc = lxml.html.fromstring(html)
        return doc

    def set_content(self, content):
        HasContentHtml.set_content(self, content)
