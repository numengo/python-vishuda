# *- coding: utf-8 -*-

from ngoschema import type_builder

Apartment = type_builder.load('https://schema.org/#/$defs/Apartment')
Suite = type_builder.load('https://schema.org/#/$defs/Suite')
CampingPitch = type_builder.load('https://schema.org/#/$defs/CampingPitch')
Room = type_builder.load('https://schema.org/#/$defs/Room')
House = type_builder.load('https://schema.org/#/$defs/House')

__all__ = [
    'Apartment',
    'Suite',
    'CampingPitch',
    'Room',
    'House',
]
