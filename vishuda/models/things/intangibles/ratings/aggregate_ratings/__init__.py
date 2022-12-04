# *- coding: utf-8 -*-

from ngoschema import type_builder

EmployerAggregateRating = type_builder.load('https://schema.org/#/$defs/EmployerAggregateRating')

__all__ = [
    'EmployerAggregateRating',
]
