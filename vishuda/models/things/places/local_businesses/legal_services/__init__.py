# *- coding: utf-8 -*-

from ngoschema import type_builder

Attorney = type_builder.load('https://schema.org/#/$defs/Attorney')
Notary = type_builder.load('https://schema.org/#/$defs/Notary')

__all__ = [
    'Attorney',
    'Notary',
]
