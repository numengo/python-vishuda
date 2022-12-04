# *- coding: utf-8 -*-

from ngoschema import type_builder

InfectiousDisease = type_builder.load('https://schema.org/#/$defs/InfectiousDisease')
MedicalSignOrSymptom = type_builder.load('https://schema.org/#/$defs/MedicalSignOrSymptom')

__all__ = [
    'InfectiousDisease',
    'MedicalSignOrSymptom',
]
