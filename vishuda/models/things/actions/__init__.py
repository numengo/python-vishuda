# *- coding: utf-8 -*-

from ngoschema import type_builder

CreateAction = type_builder.load('https://schema.org/#/$defs/CreateAction')
AssessAction = type_builder.load('https://schema.org/#/$defs/AssessAction')
FindAction = type_builder.load('https://schema.org/#/$defs/FindAction')
UpdateAction = type_builder.load('https://schema.org/#/$defs/UpdateAction')
TradeAction = type_builder.load('https://schema.org/#/$defs/TradeAction')
InteractAction = type_builder.load('https://schema.org/#/$defs/InteractAction')
ControlAction = type_builder.load('https://schema.org/#/$defs/ControlAction')
PlayAction = type_builder.load('https://schema.org/#/$defs/PlayAction')
MoveAction = type_builder.load('https://schema.org/#/$defs/MoveAction')
SolveMathAction = type_builder.load('https://schema.org/#/$defs/SolveMathAction')
AchieveAction = type_builder.load('https://schema.org/#/$defs/AchieveAction')
TransferAction = type_builder.load('https://schema.org/#/$defs/TransferAction')
ConsumeAction = type_builder.load('https://schema.org/#/$defs/ConsumeAction')
SearchAction = type_builder.load('https://schema.org/#/$defs/SearchAction')
SeekToAction = type_builder.load('https://schema.org/#/$defs/SeekToAction')
OrganizeAction = type_builder.load('https://schema.org/#/$defs/OrganizeAction')

__all__ = [
    'CreateAction',
    'AssessAction',
    'FindAction',
    'UpdateAction',
    'TradeAction',
    'InteractAction',
    'ControlAction',
    'PlayAction',
    'MoveAction',
    'SolveMathAction',
    'AchieveAction',
    'TransferAction',
    'ConsumeAction',
    'SearchAction',
    'SeekToAction',
    'OrganizeAction',
]
