# *- coding: utf-8 -*-

from ngoschema import type_builder

APIReference = type_builder.load('https://schema.org/#/$defs/APIReference')

__all__ = [
    'APIReference',
]
