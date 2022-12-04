# *- coding: utf-8 -*-

from ngoschema import type_builder

AdultEntertainment = type_builder.load('https://schema.org/#/$defs/AdultEntertainment')
Casino = type_builder.load('https://schema.org/#/$defs/Casino')
NightClub = type_builder.load('https://schema.org/#/$defs/NightClub')
AmusementPark = type_builder.load('https://schema.org/#/$defs/AmusementPark')
ArtGallery = type_builder.load('https://schema.org/#/$defs/ArtGallery')
MovieTheater = type_builder.load('https://schema.org/#/$defs/MovieTheater')
ComedyClub = type_builder.load('https://schema.org/#/$defs/ComedyClub')

__all__ = [
    'AdultEntertainment',
    'Casino',
    'NightClub',
    'AmusementPark',
    'ArtGallery',
    'MovieTheater',
    'ComedyClub',
]
