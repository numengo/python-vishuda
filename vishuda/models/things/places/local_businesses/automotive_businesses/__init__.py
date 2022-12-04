# *- coding: utf-8 -*-

from ngoschema import type_builder

AutoRepair = type_builder.load('https://schema.org/#/$defs/AutoRepair')
AutoRental = type_builder.load('https://schema.org/#/$defs/AutoRental')
AutoBodyShop = type_builder.load('https://schema.org/#/$defs/AutoBodyShop')
GasStation = type_builder.load('https://schema.org/#/$defs/GasStation')
MotorcycleDealer = type_builder.load('https://schema.org/#/$defs/MotorcycleDealer')
MotorcycleRepair = type_builder.load('https://schema.org/#/$defs/MotorcycleRepair')
AutoWash = type_builder.load('https://schema.org/#/$defs/AutoWash')
AutoDealer = type_builder.load('https://schema.org/#/$defs/AutoDealer')
AutoPartsStore = type_builder.load('https://schema.org/#/$defs/AutoPartsStore')

__all__ = [
    'AutoRepair',
    'AutoRental',
    'AutoBodyShop',
    'GasStation',
    'MotorcycleDealer',
    'MotorcycleRepair',
    'AutoWash',
    'AutoDealer',
    'AutoPartsStore',
]
