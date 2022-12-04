# *- coding: utf-8 -*-

from ngoschema import type_builder

Motorcycle = type_builder.load('https://schema.org/#/$defs/Motorcycle')
Car = type_builder.load('https://schema.org/#/$defs/Car')
BusOrCoach = type_builder.load('https://schema.org/#/$defs/BusOrCoach')
MotorizedBicycle = type_builder.load('https://schema.org/#/$defs/MotorizedBicycle')

__all__ = [
    'Motorcycle',
    'Car',
    'BusOrCoach',
    'MotorizedBicycle',
]
