# *- coding: utf-8 -*-

from ngoschema import type_builder

PaymentChargeSpecification = type_builder.load('https://schema.org/#/$defs/PaymentChargeSpecification')
DeliveryChargeSpecification = type_builder.load('https://schema.org/#/$defs/DeliveryChargeSpecification')
UnitPriceSpecification = type_builder.load('https://schema.org/#/$defs/UnitPriceSpecification')
CompoundPriceSpecification = type_builder.load('https://schema.org/#/$defs/CompoundPriceSpecification')

__all__ = [
    'PaymentChargeSpecification',
    'DeliveryChargeSpecification',
    'UnitPriceSpecification',
    'CompoundPriceSpecification',
]
