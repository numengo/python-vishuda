# *- coding: utf-8 -*-

from ngoschema import type_builder

MusicGroup = type_builder.load('https://schema.org/#/$defs/MusicGroup')
TheaterGroup = type_builder.load('https://schema.org/#/$defs/TheaterGroup')
DanceGroup = type_builder.load('https://schema.org/#/$defs/DanceGroup')

__all__ = [
    'MusicGroup',
    'TheaterGroup',
    'DanceGroup',
]
