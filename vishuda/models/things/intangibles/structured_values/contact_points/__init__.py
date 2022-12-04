# *- coding: utf-8 -*-

from ngoschema import type_builder

PostalAddress = type_builder.load('https://schema.org/#/$defs/PostalAddress')

__all__ = [
    'PostalAddress',
]
