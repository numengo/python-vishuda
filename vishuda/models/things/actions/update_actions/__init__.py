# *- coding: utf-8 -*-

from ngoschema import type_builder

ReplaceAction = type_builder.load('https://schema.org/#/$defs/ReplaceAction')
DeleteAction = type_builder.load('https://schema.org/#/$defs/DeleteAction')
AddAction = type_builder.load('https://schema.org/#/$defs/AddAction')

__all__ = [
    'ReplaceAction',
    'DeleteAction',
    'AddAction',
]
