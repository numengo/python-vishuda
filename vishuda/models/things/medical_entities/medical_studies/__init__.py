# *- coding: utf-8 -*-

from ngoschema import type_builder

MedicalObservationalStudy = type_builder.load('https://schema.org/#/$defs/MedicalObservationalStudy')
MedicalTrial = type_builder.load('https://schema.org/#/$defs/MedicalTrial')

__all__ = [
    'MedicalObservationalStudy',
    'MedicalTrial',
]
