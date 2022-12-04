# *- coding: utf-8 -*-

from ngoschema import type_builder

TextDigitalDocument = type_builder.load('https://schema.org/#/$defs/TextDigitalDocument')
PresentationDigitalDocument = type_builder.load('https://schema.org/#/$defs/PresentationDigitalDocument')
SpreadsheetDigitalDocument = type_builder.load('https://schema.org/#/$defs/SpreadsheetDigitalDocument')
NoteDigitalDocument = type_builder.load('https://schema.org/#/$defs/NoteDigitalDocument')

__all__ = [
    'TextDigitalDocument',
    'PresentationDigitalDocument',
    'SpreadsheetDigitalDocument',
    'NoteDigitalDocument',
]
