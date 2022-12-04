# *- coding: utf-8 -*-

from ngoschema import type_builder

Drug = type_builder.load('https://schema.org/#/$defs/Drug')
DietarySupplement = type_builder.load('https://schema.org/#/$defs/DietarySupplement')

__all__ = [
    'Drug',
    'DietarySupplement',
]
