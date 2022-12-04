# *- coding: utf-8 -*-

from ngoschema import type_builder

MedicalSpecialty = type_builder.load('https://schema.org/#/$defs/MedicalSpecialty')

__all__ = [
    'MedicalSpecialty',
]
