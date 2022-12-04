# *- coding: utf-8 -*-

from ngoschema import type_builder

VoteAction = type_builder.load('https://schema.org/#/$defs/VoteAction')

__all__ = [
    'VoteAction',
]
