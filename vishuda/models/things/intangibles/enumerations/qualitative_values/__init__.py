# *- coding: utf-8 -*-

from ngoschema import type_builder

SizeSpecification = type_builder.load('https://schema.org/#/$defs/SizeSpecification')
BedType = type_builder.load('https://schema.org/#/$defs/BedType')
SteeringPositionValue = type_builder.load('https://schema.org/#/$defs/SteeringPositionValue')
DriveWheelConfigurationValue = type_builder.load('https://schema.org/#/$defs/DriveWheelConfigurationValue')

__all__ = [
    'SizeSpecification',
    'BedType',
    'SteeringPositionValue',
    'DriveWheelConfigurationValue',
]
