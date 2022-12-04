# *- coding: utf-8 -*-

from ngoschema import type_builder

Course = type_builder.load('https://schema.org/#/$defs/Course')
Quiz = type_builder.load('https://schema.org/#/$defs/Quiz')

__all__ = [
    'Course',
    'Quiz',
]
