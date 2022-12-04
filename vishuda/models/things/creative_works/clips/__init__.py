# *- coding: utf-8 -*-

from ngoschema import type_builder

MovieClip = type_builder.load('https://schema.org/#/$defs/MovieClip')
VideoGameClip = type_builder.load('https://schema.org/#/$defs/VideoGameClip')
TVClip = type_builder.load('https://schema.org/#/$defs/TVClip')
RadioClip = type_builder.load('https://schema.org/#/$defs/RadioClip')

__all__ = [
    'MovieClip',
    'VideoGameClip',
    'TVClip',
    'RadioClip',
]
