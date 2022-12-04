# *- coding: utf-8 -*-

from ngoschema import type_builder

ExerciseAction = type_builder.load('https://schema.org/#/$defs/ExerciseAction')
PerformAction = type_builder.load('https://schema.org/#/$defs/PerformAction')

__all__ = [
    'ExerciseAction',
    'PerformAction',
]
