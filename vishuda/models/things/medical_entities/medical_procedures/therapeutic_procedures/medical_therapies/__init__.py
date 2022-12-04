# *- coding: utf-8 -*-

from ngoschema import type_builder

PhysicalTherapy = type_builder.load('https://schema.org/#/$defs/PhysicalTherapy')
RadiationTherapy = type_builder.load('https://schema.org/#/$defs/RadiationTherapy')
OccupationalTherapy = type_builder.load('https://schema.org/#/$defs/OccupationalTherapy')
PalliativeProcedure = type_builder.load('https://schema.org/#/$defs/PalliativeProcedure')

__all__ = [
    'PhysicalTherapy',
    'RadiationTherapy',
    'OccupationalTherapy',
    'PalliativeProcedure',
]
