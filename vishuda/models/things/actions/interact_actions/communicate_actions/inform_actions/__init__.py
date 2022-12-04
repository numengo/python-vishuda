# *- coding: utf-8 -*-

from ngoschema import type_builder

ConfirmAction = type_builder.load('https://schema.org/#/$defs/ConfirmAction')
RsvpAction = type_builder.load('https://schema.org/#/$defs/RsvpAction')

__all__ = [
    'ConfirmAction',
    'RsvpAction',
]
