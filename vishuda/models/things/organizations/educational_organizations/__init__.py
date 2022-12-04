# *- coding: utf-8 -*-

from ngoschema import type_builder

ElementarySchool = type_builder.load('https://schema.org/#/$defs/ElementarySchool')
CollegeOrUniversity = type_builder.load('https://schema.org/#/$defs/CollegeOrUniversity')
HighSchool = type_builder.load('https://schema.org/#/$defs/HighSchool')
MiddleSchool = type_builder.load('https://schema.org/#/$defs/MiddleSchool')
School = type_builder.load('https://schema.org/#/$defs/School')
Preschool = type_builder.load('https://schema.org/#/$defs/Preschool')

__all__ = [
    'ElementarySchool',
    'CollegeOrUniversity',
    'HighSchool',
    'MiddleSchool',
    'School',
    'Preschool',
]
