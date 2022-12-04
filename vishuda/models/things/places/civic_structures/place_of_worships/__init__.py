# *- coding: utf-8 -*-

from ngoschema import type_builder

BuddhistTemple = type_builder.load('https://schema.org/#/$defs/BuddhistTemple')
Church = type_builder.load('https://schema.org/#/$defs/Church')
HinduTemple = type_builder.load('https://schema.org/#/$defs/HinduTemple')
Synagogue = type_builder.load('https://schema.org/#/$defs/Synagogue')
Mosque = type_builder.load('https://schema.org/#/$defs/Mosque')

__all__ = [
    'BuddhistTemple',
    'Church',
    'HinduTemple',
    'Synagogue',
    'Mosque',
]
