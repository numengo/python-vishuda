# *- coding: utf-8 -*-

from ngoschema import type_builder

AMRadioChannel = type_builder.load('https://schema.org/#/$defs/AMRadioChannel')
FMRadioChannel = type_builder.load('https://schema.org/#/$defs/FMRadioChannel')

__all__ = [
    'AMRadioChannel',
    'FMRadioChannel',
]
