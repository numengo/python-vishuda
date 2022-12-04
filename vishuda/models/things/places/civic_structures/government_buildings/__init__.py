# *- coding: utf-8 -*-

from ngoschema import type_builder

Embassy = type_builder.load('https://schema.org/#/$defs/Embassy')
CityHall = type_builder.load('https://schema.org/#/$defs/CityHall')
Courthouse = type_builder.load('https://schema.org/#/$defs/Courthouse')
LegislativeBuilding = type_builder.load('https://schema.org/#/$defs/LegislativeBuilding')
DefenceEstablishment = type_builder.load('https://schema.org/#/$defs/DefenceEstablishment')

__all__ = [
    'Embassy',
    'CityHall',
    'Courthouse',
    'LegislativeBuilding',
    'DefenceEstablishment',
]
