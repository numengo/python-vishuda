# *- coding: utf-8 -*-

from ngoschema import type_builder

GovernmentService = type_builder.load('https://schema.org/#/$defs/GovernmentService')
CableOrSatelliteService = type_builder.load('https://schema.org/#/$defs/CableOrSatelliteService')
Taxi = type_builder.load('https://schema.org/#/$defs/Taxi')
FoodService = type_builder.load('https://schema.org/#/$defs/FoodService')
WebAPI = type_builder.load('https://schema.org/#/$defs/WebAPI')
FinancialProduct = type_builder.load('https://schema.org/#/$defs/FinancialProduct')
TaxiService = type_builder.load('https://schema.org/#/$defs/TaxiService')
BroadcastService = type_builder.load('https://schema.org/#/$defs/BroadcastService')

__all__ = [
    'GovernmentService',
    'CableOrSatelliteService',
    'Taxi',
    'FoodService',
    'WebAPI',
    'FinancialProduct',
    'TaxiService',
    'BroadcastService',
]
