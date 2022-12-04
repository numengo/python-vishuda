# *- coding: utf-8 -*-

from ngoschema import type_builder

ComicSeries = type_builder.load('https://schema.org/#/$defs/ComicSeries')
Newspaper = type_builder.load('https://schema.org/#/$defs/Newspaper')

__all__ = [
    'ComicSeries',
    'Newspaper',
]
