# *- coding: utf-8 -*-

from ngoschema import type_builder

ArriveAction = type_builder.load('https://schema.org/#/$defs/ArriveAction')
DepartAction = type_builder.load('https://schema.org/#/$defs/DepartAction')
TravelAction = type_builder.load('https://schema.org/#/$defs/TravelAction')

__all__ = [
    'ArriveAction',
    'DepartAction',
    'TravelAction',
]
