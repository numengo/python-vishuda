# *- coding: utf-8 -*-

from ngoschema import type_builder

BedAndBreakfast = type_builder.load('https://schema.org/#/$defs/BedAndBreakfast')
Campground = type_builder.load('https://schema.org/#/$defs/Campground')
Hotel = type_builder.load('https://schema.org/#/$defs/Hotel')
Motel = type_builder.load('https://schema.org/#/$defs/Motel')
Hostel = type_builder.load('https://schema.org/#/$defs/Hostel')
Resort = type_builder.load('https://schema.org/#/$defs/Resort')

__all__ = [
    'BedAndBreakfast',
    'Campground',
    'Hotel',
    'Motel',
    'Hostel',
    'Resort',
]
