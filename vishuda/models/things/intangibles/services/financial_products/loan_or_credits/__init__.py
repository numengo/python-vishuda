# *- coding: utf-8 -*-

from ngoschema import type_builder

MortgageLoan = type_builder.load('https://schema.org/#/$defs/MortgageLoan')
CreditCard = type_builder.load('https://schema.org/#/$defs/CreditCard')

__all__ = [
    'MortgageLoan',
    'CreditCard',
]
