# *- coding: utf-8 -*-

from ngoschema import type_builder

PhotographAction = type_builder.load('https://schema.org/#/$defs/PhotographAction')
CookAction = type_builder.load('https://schema.org/#/$defs/CookAction')
WriteAction = type_builder.load('https://schema.org/#/$defs/WriteAction')
FilmAction = type_builder.load('https://schema.org/#/$defs/FilmAction')
DrawAction = type_builder.load('https://schema.org/#/$defs/DrawAction')
PaintAction = type_builder.load('https://schema.org/#/$defs/PaintAction')

__all__ = [
    'PhotographAction',
    'CookAction',
    'WriteAction',
    'FilmAction',
    'DrawAction',
    'PaintAction',
]
