# *- coding: utf-8 -*-

from ngoschema import type_builder

AnatomicalStructure = type_builder.load('https://schema.org/#/$defs/AnatomicalStructure')
MedicalProcedure = type_builder.load('https://schema.org/#/$defs/MedicalProcedure')
DrugCost = type_builder.load('https://schema.org/#/$defs/DrugCost')
MedicalIntangible = type_builder.load('https://schema.org/#/$defs/MedicalIntangible')
MedicalGuideline = type_builder.load('https://schema.org/#/$defs/MedicalGuideline')
MedicalIndication = type_builder.load('https://schema.org/#/$defs/MedicalIndication')
Substance = type_builder.load('https://schema.org/#/$defs/Substance')
DrugClass = type_builder.load('https://schema.org/#/$defs/DrugClass')
MedicalDevice = type_builder.load('https://schema.org/#/$defs/MedicalDevice')
MedicalStudy = type_builder.load('https://schema.org/#/$defs/MedicalStudy')
MedicalCondition = type_builder.load('https://schema.org/#/$defs/MedicalCondition')
MedicalTest = type_builder.load('https://schema.org/#/$defs/MedicalTest')
MedicalContraindication = type_builder.load('https://schema.org/#/$defs/MedicalContraindication')
LifestyleModification = type_builder.load('https://schema.org/#/$defs/LifestyleModification')
MedicalRiskFactor = type_builder.load('https://schema.org/#/$defs/MedicalRiskFactor')
MedicalCause = type_builder.load('https://schema.org/#/$defs/MedicalCause')
SuperficialAnatomy = type_builder.load('https://schema.org/#/$defs/SuperficialAnatomy')
MedicalRiskEstimator = type_builder.load('https://schema.org/#/$defs/MedicalRiskEstimator')
AnatomicalSystem = type_builder.load('https://schema.org/#/$defs/AnatomicalSystem')

__all__ = [
    'AnatomicalStructure',
    'MedicalProcedure',
    'DrugCost',
    'MedicalIntangible',
    'MedicalGuideline',
    'MedicalIndication',
    'Substance',
    'DrugClass',
    'MedicalDevice',
    'MedicalStudy',
    'MedicalCondition',
    'MedicalTest',
    'MedicalContraindication',
    'LifestyleModification',
    'MedicalRiskFactor',
    'MedicalCause',
    'SuperficialAnatomy',
    'MedicalRiskEstimator',
    'AnatomicalSystem',
]
