# *- coding: utf-8 -*-

from ngoschema import type_builder

ComicCoverArt = type_builder.load('https://schema.org/#/$defs/ComicCoverArt')

__all__ = [
    'ComicCoverArt',
]
