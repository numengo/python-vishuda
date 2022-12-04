# *- coding: utf-8 -*-

from ngoschema import type_builder

SportsTeam = type_builder.load('https://schema.org/#/$defs/SportsTeam')

__all__ = [
    'SportsTeam',
]
