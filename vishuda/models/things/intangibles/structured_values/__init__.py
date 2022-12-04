# *- coding: utf-8 -*-

from ngoschema import type_builder

GeoShape = type_builder.load('https://schema.org/#/$defs/GeoShape')
InteractionCounter = type_builder.load('https://schema.org/#/$defs/InteractionCounter')
EngineSpecification = type_builder.load('https://schema.org/#/$defs/EngineSpecification')
GeoCoordinates = type_builder.load('https://schema.org/#/$defs/GeoCoordinates')
TypeAndQuantityNode = type_builder.load('https://schema.org/#/$defs/TypeAndQuantityNode')
DeliveryTimeSettings = type_builder.load('https://schema.org/#/$defs/DeliveryTimeSettings')
WarrantyPromise = type_builder.load('https://schema.org/#/$defs/WarrantyPromise')
PostalCodeRangeSpecification = type_builder.load('https://schema.org/#/$defs/PostalCodeRangeSpecification')
ContactPoint = type_builder.load('https://schema.org/#/$defs/ContactPoint')
MonetaryAmount = type_builder.load('https://schema.org/#/$defs/MonetaryAmount')
OpeningHoursSpecification = type_builder.load('https://schema.org/#/$defs/OpeningHoursSpecification')
RepaymentSpecification = type_builder.load('https://schema.org/#/$defs/RepaymentSpecification')
OfferShippingDetails = type_builder.load('https://schema.org/#/$defs/OfferShippingDetails')
CDCPMDRecord = type_builder.load('https://schema.org/#/$defs/CDCPMDRecord')
QuantitativeValue = type_builder.load('https://schema.org/#/$defs/QuantitativeValue')
ShippingDeliveryTime = type_builder.load('https://schema.org/#/$defs/ShippingDeliveryTime')
DefinedRegion = type_builder.load('https://schema.org/#/$defs/DefinedRegion')
ShippingRateSettings = type_builder.load('https://schema.org/#/$defs/ShippingRateSettings')
PriceSpecification = type_builder.load('https://schema.org/#/$defs/PriceSpecification')
NutritionInformation = type_builder.load('https://schema.org/#/$defs/NutritionInformation')
OwnershipInfo = type_builder.load('https://schema.org/#/$defs/OwnershipInfo')
ExchangeRateSpecification = type_builder.load('https://schema.org/#/$defs/ExchangeRateSpecification')
QuantitativeValueDistribution = type_builder.load('https://schema.org/#/$defs/QuantitativeValueDistribution')
DatedMoneySpecification = type_builder.load('https://schema.org/#/$defs/DatedMoneySpecification')
PropertyValue = type_builder.load('https://schema.org/#/$defs/PropertyValue')

__all__ = [
    'GeoShape',
    'InteractionCounter',
    'EngineSpecification',
    'GeoCoordinates',
    'TypeAndQuantityNode',
    'DeliveryTimeSettings',
    'WarrantyPromise',
    'PostalCodeRangeSpecification',
    'ContactPoint',
    'MonetaryAmount',
    'OpeningHoursSpecification',
    'RepaymentSpecification',
    'OfferShippingDetails',
    'CDCPMDRecord',
    'QuantitativeValue',
    'ShippingDeliveryTime',
    'DefinedRegion',
    'ShippingRateSettings',
    'PriceSpecification',
    'NutritionInformation',
    'OwnershipInfo',
    'ExchangeRateSpecification',
    'QuantitativeValueDistribution',
    'DatedMoneySpecification',
    'PropertyValue',
]
