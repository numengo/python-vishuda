# *- coding: utf-8 -*-

from ngoschema import type_builder

MedicalTherapy = type_builder.load('https://schema.org/#/$defs/MedicalTherapy')
PsychologicalTreatment = type_builder.load('https://schema.org/#/$defs/PsychologicalTreatment')

__all__ = [
    'MedicalTherapy',
    'PsychologicalTreatment',
]
