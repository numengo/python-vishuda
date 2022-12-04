# *- coding: utf-8 -*-

from ngoschema import type_builder

ImagingTest = type_builder.load('https://schema.org/#/$defs/ImagingTest')
BloodTest = type_builder.load('https://schema.org/#/$defs/BloodTest')
MedicalTestPanel = type_builder.load('https://schema.org/#/$defs/MedicalTestPanel')
PathologyTest = type_builder.load('https://schema.org/#/$defs/PathologyTest')

__all__ = [
    'ImagingTest',
    'BloodTest',
    'MedicalTestPanel',
    'PathologyTest',
]
