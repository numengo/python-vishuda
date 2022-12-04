# *- coding: utf-8 -*-

from ngoschema import type_builder

RadioChannel = type_builder.load('https://schema.org/#/$defs/RadioChannel')
TelevisionChannel = type_builder.load('https://schema.org/#/$defs/TelevisionChannel')

__all__ = [
    'RadioChannel',
    'TelevisionChannel',
]
