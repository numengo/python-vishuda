# *- coding: utf-8 -*-

from ngoschema import type_builder

VideoGame = type_builder.load('https://schema.org/#/$defs/VideoGame')

__all__ = [
    'VideoGame',
]
