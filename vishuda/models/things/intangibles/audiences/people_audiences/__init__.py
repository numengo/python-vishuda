# *- coding: utf-8 -*-

from ngoschema import type_builder

ParentAudience = type_builder.load('https://schema.org/#/$defs/ParentAudience')
MedicalAudience = type_builder.load('https://schema.org/#/$defs/MedicalAudience')

__all__ = [
    'ParentAudience',
    'MedicalAudience',
]
