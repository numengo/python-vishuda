# *- coding: utf-8 -*-

from ngoschema import type_builder

City = type_builder.load('https://schema.org/#/$defs/City')
SchoolDistrict = type_builder.load('https://schema.org/#/$defs/SchoolDistrict')
Country = type_builder.load('https://schema.org/#/$defs/Country')
State = type_builder.load('https://schema.org/#/$defs/State')

__all__ = [
    'City',
    'SchoolDistrict',
    'Country',
    'State',
]
