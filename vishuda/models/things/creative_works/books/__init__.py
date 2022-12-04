# *- coding: utf-8 -*-

from ngoschema import type_builder

Audiobook = type_builder.load('https://schema.org/#/$defs/Audiobook')

__all__ = [
    'Audiobook',
]
