# *- coding: utf-8 -*-

from ngoschema import type_builder

ListenAction = type_builder.load('https://schema.org/#/$defs/ListenAction')
PlayGameAction = type_builder.load('https://schema.org/#/$defs/PlayGameAction')
DrinkAction = type_builder.load('https://schema.org/#/$defs/DrinkAction')
InstallAction = type_builder.load('https://schema.org/#/$defs/InstallAction')
UseAction = type_builder.load('https://schema.org/#/$defs/UseAction')
ViewAction = type_builder.load('https://schema.org/#/$defs/ViewAction')
EatAction = type_builder.load('https://schema.org/#/$defs/EatAction')
WatchAction = type_builder.load('https://schema.org/#/$defs/WatchAction')
ReadAction = type_builder.load('https://schema.org/#/$defs/ReadAction')

__all__ = [
    'ListenAction',
    'PlayGameAction',
    'DrinkAction',
    'InstallAction',
    'UseAction',
    'ViewAction',
    'EatAction',
    'WatchAction',
    'ReadAction',
]
