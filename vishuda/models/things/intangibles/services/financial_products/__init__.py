# *- coding: utf-8 -*-

from ngoschema import type_builder

InvestmentOrDeposit = type_builder.load('https://schema.org/#/$defs/InvestmentOrDeposit')
PaymentService = type_builder.load('https://schema.org/#/$defs/PaymentService')
PaymentCard = type_builder.load('https://schema.org/#/$defs/PaymentCard')
LoanOrCredit = type_builder.load('https://schema.org/#/$defs/LoanOrCredit')
BankAccount = type_builder.load('https://schema.org/#/$defs/BankAccount')
CurrencyConversionService = type_builder.load('https://schema.org/#/$defs/CurrencyConversionService')

__all__ = [
    'InvestmentOrDeposit',
    'PaymentService',
    'PaymentCard',
    'LoanOrCredit',
    'BankAccount',
    'CurrencyConversionService',
]
