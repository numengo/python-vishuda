# *- coding: utf-8 -*-

from ngoschema import type_builder

CoverArt = type_builder.load('https://schema.org/#/$defs/CoverArt')

__all__ = [
    'CoverArt',
]
