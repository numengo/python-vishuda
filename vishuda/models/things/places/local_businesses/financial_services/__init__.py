# *- coding: utf-8 -*-

from ngoschema import type_builder

AutomatedTeller = type_builder.load('https://schema.org/#/$defs/AutomatedTeller')
BankOrCreditUnion = type_builder.load('https://schema.org/#/$defs/BankOrCreditUnion')
AccountingService = type_builder.load('https://schema.org/#/$defs/AccountingService')
InsuranceAgency = type_builder.load('https://schema.org/#/$defs/InsuranceAgency')

__all__ = [
    'AutomatedTeller',
    'BankOrCreditUnion',
    'AccountingService',
    'InsuranceAgency',
]
