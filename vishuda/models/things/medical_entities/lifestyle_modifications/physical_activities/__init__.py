# *- coding: utf-8 -*-

from ngoschema import type_builder

ExercisePlan = type_builder.load('https://schema.org/#/$defs/ExercisePlan')

__all__ = [
    'ExercisePlan',
]
