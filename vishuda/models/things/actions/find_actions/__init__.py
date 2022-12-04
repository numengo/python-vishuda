# *- coding: utf-8 -*-

from ngoschema import type_builder

DiscoverAction = type_builder.load('https://schema.org/#/$defs/DiscoverAction')
CheckAction = type_builder.load('https://schema.org/#/$defs/CheckAction')
TrackAction = type_builder.load('https://schema.org/#/$defs/TrackAction')

__all__ = [
    'DiscoverAction',
    'CheckAction',
    'TrackAction',
]
