# *- coding: utf-8 -*-

from ngoschema import type_builder

DDxElement = type_builder.load('https://schema.org/#/$defs/DDxElement')
MedicalConditionStage = type_builder.load('https://schema.org/#/$defs/MedicalConditionStage')
DrugStrength = type_builder.load('https://schema.org/#/$defs/DrugStrength')
DoseSchedule = type_builder.load('https://schema.org/#/$defs/DoseSchedule')
MedicalCode = type_builder.load('https://schema.org/#/$defs/MedicalCode')
DrugLegalStatus = type_builder.load('https://schema.org/#/$defs/DrugLegalStatus')

__all__ = [
    'DDxElement',
    'MedicalConditionStage',
    'DrugStrength',
    'DoseSchedule',
    'MedicalCode',
    'DrugLegalStatus',
]
