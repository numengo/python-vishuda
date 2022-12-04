# *- coding: utf-8 -*-

from ngoschema import type_builder

GovernmentPermit = type_builder.load('https://schema.org/#/$defs/GovernmentPermit')

__all__ = [
    'GovernmentPermit',
]
