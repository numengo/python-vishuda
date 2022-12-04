# *- coding: utf-8 -*-

from ngoschema import type_builder

SingleFamilyResidence = type_builder.load('https://schema.org/#/$defs/SingleFamilyResidence')

__all__ = [
    'SingleFamilyResidence',
]
