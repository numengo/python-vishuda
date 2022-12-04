# *- coding: utf-8 -*-

from ngoschema import type_builder

Mass = type_builder.load('https://schema.org/#/$defs/Mass')
Distance = type_builder.load('https://schema.org/#/$defs/Distance')
Duration = type_builder.load('https://schema.org/#/$defs/Duration')
Energy = type_builder.load('https://schema.org/#/$defs/Energy')

__all__ = [
    'Mass',
    'Distance',
    'Duration',
    'Energy',
]
