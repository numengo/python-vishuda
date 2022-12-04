# *- coding: utf-8 -*-

from ngoschema import type_builder

PaymentCard = type_builder.load('https://schema.org/#/$defs/PaymentCard')

__all__ = [
    'PaymentCard',
]
