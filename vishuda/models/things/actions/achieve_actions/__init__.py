# *- coding: utf-8 -*-

from ngoschema import type_builder

TieAction = type_builder.load('https://schema.org/#/$defs/TieAction')
LoseAction = type_builder.load('https://schema.org/#/$defs/LoseAction')
WinAction = type_builder.load('https://schema.org/#/$defs/WinAction')

__all__ = [
    'TieAction',
    'LoseAction',
    'WinAction',
]
