# *- coding: utf-8 -*-

from ngoschema import type_builder

EventSeries = type_builder.load('https://schema.org/#/$defs/EventSeries')
CreativeWorkSeries = type_builder.load('https://schema.org/#/$defs/CreativeWorkSeries')

__all__ = [
    'EventSeries',
    'CreativeWorkSeries',
]
