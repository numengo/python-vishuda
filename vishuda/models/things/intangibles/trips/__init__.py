# *- coding: utf-8 -*-

from ngoschema import type_builder

BoatTrip = type_builder.load('https://schema.org/#/$defs/BoatTrip')
TouristTrip = type_builder.load('https://schema.org/#/$defs/TouristTrip')
TrainTrip = type_builder.load('https://schema.org/#/$defs/TrainTrip')
Flight = type_builder.load('https://schema.org/#/$defs/Flight')
BusTrip = type_builder.load('https://schema.org/#/$defs/BusTrip')

__all__ = [
    'BoatTrip',
    'TouristTrip',
    'TrainTrip',
    'Flight',
    'BusTrip',
]
