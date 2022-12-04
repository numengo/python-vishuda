# *- coding: utf-8 -*-

from ngoschema import type_builder

MedicalScholarlyArticle = type_builder.load('https://schema.org/#/$defs/MedicalScholarlyArticle')

__all__ = [
    'MedicalScholarlyArticle',
]
