# *- coding: utf-8 -*-

from ngoschema import type_builder

Pharmacy = type_builder.load('https://schema.org/#/$defs/Pharmacy')
Physician = type_builder.load('https://schema.org/#/$defs/Physician')
Dentist = type_builder.load('https://schema.org/#/$defs/Dentist')
MedicalClinic = type_builder.load('https://schema.org/#/$defs/MedicalClinic')
Optician = type_builder.load('https://schema.org/#/$defs/Optician')

__all__ = [
    'Pharmacy',
    'Physician',
    'Dentist',
    'MedicalClinic',
    'Optician',
]
