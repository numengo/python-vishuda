# *- coding: utf-8 -*-

from ngoschema import type_builder

MeetingRoom = type_builder.load('https://schema.org/#/$defs/MeetingRoom')
HotelRoom = type_builder.load('https://schema.org/#/$defs/HotelRoom')

__all__ = [
    'MeetingRoom',
    'HotelRoom',
]
