# *- coding: utf-8 -*-

from ngoschema import type_builder

DataFeed = type_builder.load('https://schema.org/#/$defs/DataFeed')

__all__ = [
    'DataFeed',
]
