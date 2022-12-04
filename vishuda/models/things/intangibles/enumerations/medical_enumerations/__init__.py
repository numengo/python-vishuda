# *- coding: utf-8 -*-

from ngoschema import type_builder

MedicalAudienceType = type_builder.load('https://schema.org/#/$defs/MedicalAudienceType')
MedicalProcedureType = type_builder.load('https://schema.org/#/$defs/MedicalProcedureType')
MedicalObservationalStudyDesign = type_builder.load('https://schema.org/#/$defs/MedicalObservationalStudyDesign')
MedicineSystem = type_builder.load('https://schema.org/#/$defs/MedicineSystem')
MedicalTrialDesign = type_builder.load('https://schema.org/#/$defs/MedicalTrialDesign')
MedicalStudyStatus = type_builder.load('https://schema.org/#/$defs/MedicalStudyStatus')
MedicalDevicePurpose = type_builder.load('https://schema.org/#/$defs/MedicalDevicePurpose')
DrugPrescriptionStatus = type_builder.load('https://schema.org/#/$defs/DrugPrescriptionStatus')
DrugCostCategory = type_builder.load('https://schema.org/#/$defs/DrugCostCategory')
MedicalImagingTechnique = type_builder.load('https://schema.org/#/$defs/MedicalImagingTechnique')
DrugPregnancyCategory = type_builder.load('https://schema.org/#/$defs/DrugPregnancyCategory')
InfectiousAgentClass = type_builder.load('https://schema.org/#/$defs/InfectiousAgentClass')
MedicalSpecialty = type_builder.load('https://schema.org/#/$defs/MedicalSpecialty')
MedicalEvidenceLevel = type_builder.load('https://schema.org/#/$defs/MedicalEvidenceLevel')
PhysicalExam = type_builder.load('https://schema.org/#/$defs/PhysicalExam')

__all__ = [
    'MedicalAudienceType',
    'MedicalProcedureType',
    'MedicalObservationalStudyDesign',
    'MedicineSystem',
    'MedicalTrialDesign',
    'MedicalStudyStatus',
    'MedicalDevicePurpose',
    'DrugPrescriptionStatus',
    'DrugCostCategory',
    'MedicalImagingTechnique',
    'DrugPregnancyCategory',
    'InfectiousAgentClass',
    'MedicalSpecialty',
    'MedicalEvidenceLevel',
    'PhysicalExam',
]
