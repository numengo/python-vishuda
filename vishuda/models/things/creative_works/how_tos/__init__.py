# *- coding: utf-8 -*-

from ngoschema import type_builder

Recipe = type_builder.load('https://schema.org/#/$defs/Recipe')

__all__ = [
    'Recipe',
]
