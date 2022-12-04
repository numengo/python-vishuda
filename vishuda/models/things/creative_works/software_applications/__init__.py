# *- coding: utf-8 -*-

from ngoschema import type_builder

MobileApplication = type_builder.load('https://schema.org/#/$defs/MobileApplication')
VideoGame = type_builder.load('https://schema.org/#/$defs/VideoGame')
WebApplication = type_builder.load('https://schema.org/#/$defs/WebApplication')

__all__ = [
    'MobileApplication',
    'VideoGame',
    'WebApplication',
]
