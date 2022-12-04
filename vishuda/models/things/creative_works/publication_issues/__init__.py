# *- coding: utf-8 -*-

from ngoschema import type_builder

ComicIssue = type_builder.load('https://schema.org/#/$defs/ComicIssue')

__all__ = [
    'ComicIssue',
]
