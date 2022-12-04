# *- coding: utf-8 -*-

from ngoschema import type_builder

ApartmentComplex = type_builder.load('https://schema.org/#/$defs/ApartmentComplex')
GatedResidenceCommunity = type_builder.load('https://schema.org/#/$defs/GatedResidenceCommunity')

__all__ = [
    'ApartmentComplex',
    'GatedResidenceCommunity',
]
