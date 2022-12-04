# *- coding: utf-8 -*-

from ngoschema import type_builder

MedicalGuidelineContraindication = type_builder.load('https://schema.org/#/$defs/MedicalGuidelineContraindication')
MedicalGuidelineRecommendation = type_builder.load('https://schema.org/#/$defs/MedicalGuidelineRecommendation')

__all__ = [
    'MedicalGuidelineContraindication',
    'MedicalGuidelineRecommendation',
]
