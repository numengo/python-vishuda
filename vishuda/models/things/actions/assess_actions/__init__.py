# *- coding: utf-8 -*-

from ngoschema import type_builder

IgnoreAction = type_builder.load('https://schema.org/#/$defs/IgnoreAction')
ChooseAction = type_builder.load('https://schema.org/#/$defs/ChooseAction')
ReactAction = type_builder.load('https://schema.org/#/$defs/ReactAction')
ReviewAction = type_builder.load('https://schema.org/#/$defs/ReviewAction')

__all__ = [
    'IgnoreAction',
    'ChooseAction',
    'ReactAction',
    'ReviewAction',
]
