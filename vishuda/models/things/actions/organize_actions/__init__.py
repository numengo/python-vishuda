# *- coding: utf-8 -*-

from ngoschema import type_builder

PlanAction = type_builder.load('https://schema.org/#/$defs/PlanAction')
ApplyAction = type_builder.load('https://schema.org/#/$defs/ApplyAction')
AllocateAction = type_builder.load('https://schema.org/#/$defs/AllocateAction')
BookmarkAction = type_builder.load('https://schema.org/#/$defs/BookmarkAction')

__all__ = [
    'PlanAction',
    'ApplyAction',
    'AllocateAction',
    'BookmarkAction',
]
