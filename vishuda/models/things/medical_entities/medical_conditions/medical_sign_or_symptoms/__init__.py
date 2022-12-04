# *- coding: utf-8 -*-

from ngoschema import type_builder

MedicalSign = type_builder.load('https://schema.org/#/$defs/MedicalSign')
MedicalSymptom = type_builder.load('https://schema.org/#/$defs/MedicalSymptom')

__all__ = [
    'MedicalSign',
    'MedicalSymptom',
]
