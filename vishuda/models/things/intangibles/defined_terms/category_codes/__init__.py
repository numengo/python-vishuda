# *- coding: utf-8 -*-

from ngoschema import type_builder

MedicalCode = type_builder.load('https://schema.org/#/$defs/MedicalCode')

__all__ = [
    'MedicalCode',
]
