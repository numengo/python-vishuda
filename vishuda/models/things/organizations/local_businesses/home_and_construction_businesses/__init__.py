# *- coding: utf-8 -*-

from ngoschema import type_builder

RoofingContractor = type_builder.load('https://schema.org/#/$defs/RoofingContractor')
MovingCompany = type_builder.load('https://schema.org/#/$defs/MovingCompany')
Plumber = type_builder.load('https://schema.org/#/$defs/Plumber')
HVACBusiness = type_builder.load('https://schema.org/#/$defs/HVACBusiness')
HousePainter = type_builder.load('https://schema.org/#/$defs/HousePainter')
GeneralContractor = type_builder.load('https://schema.org/#/$defs/GeneralContractor')
Electrician = type_builder.load('https://schema.org/#/$defs/Electrician')
Locksmith = type_builder.load('https://schema.org/#/$defs/Locksmith')

__all__ = [
    'RoofingContractor',
    'MovingCompany',
    'Plumber',
    'HVACBusiness',
    'HousePainter',
    'GeneralContractor',
    'Electrician',
    'Locksmith',
]
