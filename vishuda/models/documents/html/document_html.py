# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from lxml import etree
import lxml.html
from lxml.html.defs import general_block_tags, html5_tags, phrase_tags, list_tags, table_tags
import re
import html2text
from mistletoe import markdown

from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.utils import to_list

from ..components import Heading, Equation, Link, Figure, Image, Footnote, BlockCode
from ..tables import Table
from ..document import Chapter, Document, SchemaOrgMetaclass


def lxml_html2text(html, strip=False):
    ret = etree.tostring(html, encoding='utf-8', method='text').decode('utf-8')
    return ret.strip() if strip else ret


def _list_content_between(start, end):
    content = []
    it = start.itersiblings()
    while True:
        try:
            e = next(it)
            if e is end:
                break
            content.append(e)
        except StopIteration:
            break
    return content


class HasContentHtml(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/html/$defs/HasContentHtml'
    _h = html2text.HTML2Text()
    _h.ignore_links = False

    def set_content(self, content):
        if self.autodiscover is False:
            return
        chapters = []
        headings = []
        tables = []
        blockcodes = []
        images = []
        links = []
        equations = []
        figures = []
        footnotes = []
        # go through all document to detect interesting elements
        for el in to_list(content):
            it = el.iterdescendants()
            while True:
                try:
                    e = next(it)
                except StopIteration:
                    break
                et = e.tag
                if et in ['h1', 'h2', 'h3', 'h4', 'h5', 'h6']:
                    level = int(et[-1])
                    title = lxml_html2text(e, strip=True)
                    h = Heading(content=e, title=title, level=level)
                    headings.append(h)
                    ch = ChapterHtml(heading=h, start=e, title=title)
                    chapters.append(ch)
                if et in ['blockcodes']:
                    blockcodes.append(BlockCode(content=e))
                if et in ['figures']:
                    figures.append(Figure(content=e))
                if et in ['images']:
                    images.append(Image(content=e))
                if et in ['a']:
                    links.append(Link(content=e, target=e.get('href'), title=lxml_html2text(e)))
                if et in ['tables']:
                    tables.append(Table(content=e))
                if et in ['equations']:
                    equations.append(Equation(content=e))
                if et in ['footnotes']:
                    footnotes.append(Footnote(content=e))

        # get the end of element of each chapters, and set its subchapters
        if chapters:
            end = e
            for i, c in enumerate(chapters):
                l = c.heading.level
                subchapters = []
                for j in range(i+1, len(chapters)):
                    cj = chapters[j]
                    if cj.heading.level <= l:
                        c.end = cj.start
                        break
                    else:
                        subchapters.append(c)
                else:
                    c.end = end
                c._set_data('chapters', subchapters)
            chls = [c.heading.level for c in chapters]
            lmin = min(chls)
            self._set_data('chapters', [c for c in chapters if c.heading.level == lmin])
            self._set_data('all_chapters', chapters)
        if links:
            self._set_data('links', links)
        if images:
            self._set_data('images', images)
        if figures:
            self._set_data('figures', figures)
        if equations:
            self._set_data('equations', equations)
        if tables:
            self._set_data('tables', tables)
        if blockcodes:
            self._set_data('blockcodes', blockcodes)
        if footnotes:
            self._set_data('footnotes', footnotes)
        self._repr = None

    def get_raw_text(self):
        content = self.content
        html = [etree.tostring(c, method='html').decode('utf-8') for c in content]
        raw_text = [self._h.handle(h) for h in html]
        return '\n'.join(raw_text)


class ChapterHtml(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/html/$defs/ChapterHtml'
    _lazyLoading = True
    autodiscover = False

    def get_content(self):
        start = self.start
        end = self.end
        content = _list_content_between(start, end)
        #HasContentHtml.set_content(self, content)
        return content

    def get_introduction(self):
        chapters = self.chapters
        if not chapters:
            return self.raw_text
        start = self.start
        c0 = chapters[0]
        introduction = _list_content_between(start, c0.start)
        return introduction

    def get_conclusion(self):
        start = self.start
        end = self.end
        chapters = self.chapters
        if chapters:
            cn = chapters[-1]
            conclusion = [cn.end, end]
            return conclusion


class DocumentHtml(with_metaclass(SchemaOrgMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/documents/$defs/html/$defs/DocumentHtml'
    _lazyLoading = True
    autodiscover = True

    def get_content(self):
        raw = self.contentRaw
        return lxml.html.fromstring(raw)

    def set_content(self, content):
        HasContentHtml.set_content(self, content)

