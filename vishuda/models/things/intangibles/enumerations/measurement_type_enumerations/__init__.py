# *- coding: utf-8 -*-

from ngoschema import type_builder

WearableMeasurementTypeEnumeration = type_builder.load('https://schema.org/#/$defs/WearableMeasurementTypeEnumeration')
BodyMeasurementTypeEnumeration = type_builder.load('https://schema.org/#/$defs/BodyMeasurementTypeEnumeration')

__all__ = [
    'WearableMeasurementTypeEnumeration',
    'BodyMeasurementTypeEnumeration',
]
