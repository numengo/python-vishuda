# *- coding: utf-8 -*-

from ngoschema import type_builder

PhysicalActivity = type_builder.load('https://schema.org/#/$defs/PhysicalActivity')
Diet = type_builder.load('https://schema.org/#/$defs/Diet')

__all__ = [
    'PhysicalActivity',
    'Diet',
]
