# *- coding: utf-8 -*-

from ngoschema import type_builder

Audiobook = type_builder.load('https://schema.org/#/$defs/Audiobook')
AudioObjectSnapshot = type_builder.load('https://schema.org/#/$defs/AudioObjectSnapshot')

__all__ = [
    'Audiobook',
    'AudioObjectSnapshot',
]
