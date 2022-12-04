# *- coding: utf-8 -*-

from ngoschema import type_builder

CreditCard = type_builder.load('https://schema.org/#/$defs/CreditCard')

__all__ = [
    'CreditCard',
]
