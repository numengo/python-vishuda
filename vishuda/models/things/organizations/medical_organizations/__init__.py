# *- coding: utf-8 -*-

from ngoschema import type_builder

Pharmacy = type_builder.load('https://schema.org/#/$defs/Pharmacy')
Physician = type_builder.load('https://schema.org/#/$defs/Physician')
Dentist = type_builder.load('https://schema.org/#/$defs/Dentist')
VeterinaryCare = type_builder.load('https://schema.org/#/$defs/VeterinaryCare')
MedicalClinic = type_builder.load('https://schema.org/#/$defs/MedicalClinic')
Hospital = type_builder.load('https://schema.org/#/$defs/Hospital')
DiagnosticLab = type_builder.load('https://schema.org/#/$defs/DiagnosticLab')

__all__ = [
    'Pharmacy',
    'Physician',
    'Dentist',
    'VeterinaryCare',
    'MedicalClinic',
    'Hospital',
    'DiagnosticLab',
]
