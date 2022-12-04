# *- coding: utf-8 -*-

from ngoschema import type_builder

OnlineStore = type_builder.load('https://schema.org/#/$defs/OnlineStore')

__all__ = [
    'OnlineStore',
]
