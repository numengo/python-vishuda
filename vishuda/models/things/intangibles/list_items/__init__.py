# *- coding: utf-8 -*-

from ngoschema import type_builder

HowToTip = type_builder.load('https://schema.org/#/$defs/HowToTip')
HowToSection = type_builder.load('https://schema.org/#/$defs/HowToSection')
HowToDirection = type_builder.load('https://schema.org/#/$defs/HowToDirection')
HowToStep = type_builder.load('https://schema.org/#/$defs/HowToStep')
HowToItem = type_builder.load('https://schema.org/#/$defs/HowToItem')

__all__ = [
    'HowToTip',
    'HowToSection',
    'HowToDirection',
    'HowToStep',
    'HowToItem',
]
