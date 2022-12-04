# *- coding: utf-8 -*-

from ngoschema import type_builder

BusinessAudience = type_builder.load('https://schema.org/#/$defs/BusinessAudience')
MedicalAudience = type_builder.load('https://schema.org/#/$defs/MedicalAudience')
PeopleAudience = type_builder.load('https://schema.org/#/$defs/PeopleAudience')
EducationalAudience = type_builder.load('https://schema.org/#/$defs/EducationalAudience')
Researcher = type_builder.load('https://schema.org/#/$defs/Researcher')

__all__ = [
    'BusinessAudience',
    'MedicalAudience',
    'PeopleAudience',
    'EducationalAudience',
    'Researcher',
]
