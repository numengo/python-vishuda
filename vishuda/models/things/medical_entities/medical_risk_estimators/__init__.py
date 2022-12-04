# *- coding: utf-8 -*-

from ngoschema import type_builder

MedicalRiskScore = type_builder.load('https://schema.org/#/$defs/MedicalRiskScore')
MedicalRiskCalculator = type_builder.load('https://schema.org/#/$defs/MedicalRiskCalculator')

__all__ = [
    'MedicalRiskScore',
    'MedicalRiskCalculator',
]
