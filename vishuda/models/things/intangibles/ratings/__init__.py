# *- coding: utf-8 -*-

from ngoschema import type_builder

AggregateRating = type_builder.load('https://schema.org/#/$defs/AggregateRating')
EndorsementRating = type_builder.load('https://schema.org/#/$defs/EndorsementRating')

__all__ = [
    'AggregateRating',
    'EndorsementRating',
]
