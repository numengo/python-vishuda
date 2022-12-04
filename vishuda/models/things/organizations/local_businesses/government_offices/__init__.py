# *- coding: utf-8 -*-

from ngoschema import type_builder

PostOffice = type_builder.load('https://schema.org/#/$defs/PostOffice')

__all__ = [
    'PostOffice',
]
