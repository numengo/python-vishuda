# *- coding: utf-8 -*-

from ngoschema import type_builder

CompleteDataFeed = type_builder.load('https://schema.org/#/$defs/CompleteDataFeed')

__all__ = [
    'CompleteDataFeed',
]
