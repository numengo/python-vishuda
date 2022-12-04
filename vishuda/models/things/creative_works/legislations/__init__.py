# *- coding: utf-8 -*-

from ngoschema import type_builder

LegislationObject = type_builder.load('https://schema.org/#/$defs/LegislationObject')

__all__ = [
    'LegislationObject',
]
