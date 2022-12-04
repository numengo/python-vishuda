# *- coding: utf-8 -*-

from ngoschema import type_builder

FireStation = type_builder.load('https://schema.org/#/$defs/FireStation')
PoliceStation = type_builder.load('https://schema.org/#/$defs/PoliceStation')
Hospital = type_builder.load('https://schema.org/#/$defs/Hospital')

__all__ = [
    'FireStation',
    'PoliceStation',
    'Hospital',
]
