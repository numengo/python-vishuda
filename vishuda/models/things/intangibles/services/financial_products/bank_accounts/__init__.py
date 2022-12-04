# *- coding: utf-8 -*-

from ngoschema import type_builder

DepositAccount = type_builder.load('https://schema.org/#/$defs/DepositAccount')

__all__ = [
    'DepositAccount',
]
