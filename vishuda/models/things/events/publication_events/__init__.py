# *- coding: utf-8 -*-

from ngoschema import type_builder

OnDemandEvent = type_builder.load('https://schema.org/#/$defs/OnDemandEvent')
BroadcastEvent = type_builder.load('https://schema.org/#/$defs/BroadcastEvent')

__all__ = [
    'OnDemandEvent',
    'BroadcastEvent',
]
