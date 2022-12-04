# *- coding: utf-8 -*-

from ngoschema import type_builder

ProductCollection = type_builder.load('https://schema.org/#/$defs/ProductCollection')

__all__ = [
    'ProductCollection',
]
