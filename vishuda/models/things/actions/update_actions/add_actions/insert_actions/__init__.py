# *- coding: utf-8 -*-

from ngoschema import type_builder

PrependAction = type_builder.load('https://schema.org/#/$defs/PrependAction')
AppendAction = type_builder.load('https://schema.org/#/$defs/AppendAction')

__all__ = [
    'PrependAction',
    'AppendAction',
]
