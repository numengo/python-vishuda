# *- coding: utf-8 -*-

from ngoschema import type_builder

HowToTool = type_builder.load('https://schema.org/#/$defs/HowToTool')
HowToSupply = type_builder.load('https://schema.org/#/$defs/HowToSupply')

__all__ = [
    'HowToTool',
    'HowToSupply',
]
