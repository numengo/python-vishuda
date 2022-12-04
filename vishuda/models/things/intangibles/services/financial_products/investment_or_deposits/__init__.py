# *- coding: utf-8 -*-

from ngoschema import type_builder

BrokerageAccount = type_builder.load('https://schema.org/#/$defs/BrokerageAccount')
DepositAccount = type_builder.load('https://schema.org/#/$defs/DepositAccount')
InvestmentFund = type_builder.load('https://schema.org/#/$defs/InvestmentFund')

__all__ = [
    'BrokerageAccount',
    'DepositAccount',
    'InvestmentFund',
]
