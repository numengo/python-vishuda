# *- coding: utf-8 -*-

from ngoschema import type_builder

Patient = type_builder.load('https://schema.org/#/$defs/Patient')

__all__ = [
    'Patient',
]
