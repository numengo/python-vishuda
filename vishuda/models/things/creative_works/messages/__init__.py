# *- coding: utf-8 -*-

from ngoschema import type_builder

EmailMessage = type_builder.load('https://schema.org/#/$defs/EmailMessage')

__all__ = [
    'EmailMessage',
]
