# *- coding: utf-8 -*-

from ngoschema import type_builder

Continent = type_builder.load('https://schema.org/#/$defs/Continent')
Volcano = type_builder.load('https://schema.org/#/$defs/Volcano')
BodyOfWater = type_builder.load('https://schema.org/#/$defs/BodyOfWater')
Mountain = type_builder.load('https://schema.org/#/$defs/Mountain')

__all__ = [
    'Continent',
    'Volcano',
    'BodyOfWater',
    'Mountain',
]
