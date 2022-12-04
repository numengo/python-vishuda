# *- coding: utf-8 -*-

from ngoschema import type_builder

MonetaryGrant = type_builder.load('https://schema.org/#/$defs/MonetaryGrant')

__all__ = [
    'MonetaryGrant',
]
