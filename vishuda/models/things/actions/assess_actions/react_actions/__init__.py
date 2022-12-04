# *- coding: utf-8 -*-

from ngoschema import type_builder

WantAction = type_builder.load('https://schema.org/#/$defs/WantAction')
DislikeAction = type_builder.load('https://schema.org/#/$defs/DislikeAction')
LikeAction = type_builder.load('https://schema.org/#/$defs/LikeAction')
AgreeAction = type_builder.load('https://schema.org/#/$defs/AgreeAction')
EndorseAction = type_builder.load('https://schema.org/#/$defs/EndorseAction')
DisagreeAction = type_builder.load('https://schema.org/#/$defs/DisagreeAction')

__all__ = [
    'WantAction',
    'DislikeAction',
    'LikeAction',
    'AgreeAction',
    'EndorseAction',
    'DisagreeAction',
]
