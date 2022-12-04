# *- coding: utf-8 -*-

from ngoschema import type_builder

DataType = type_builder.load('https://schema.org/#/$defs/DataType')

__all__ = [
    'DataType',
]
