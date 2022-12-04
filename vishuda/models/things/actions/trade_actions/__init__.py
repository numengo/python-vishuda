# *- coding: utf-8 -*-

from ngoschema import type_builder

TipAction = type_builder.load('https://schema.org/#/$defs/TipAction')
PayAction = type_builder.load('https://schema.org/#/$defs/PayAction')
RentAction = type_builder.load('https://schema.org/#/$defs/RentAction')
QuoteAction = type_builder.load('https://schema.org/#/$defs/QuoteAction')
SellAction = type_builder.load('https://schema.org/#/$defs/SellAction')
BuyAction = type_builder.load('https://schema.org/#/$defs/BuyAction')
PreOrderAction = type_builder.load('https://schema.org/#/$defs/PreOrderAction')
DonateAction = type_builder.load('https://schema.org/#/$defs/DonateAction')
OrderAction = type_builder.load('https://schema.org/#/$defs/OrderAction')

__all__ = [
    'TipAction',
    'PayAction',
    'RentAction',
    'QuoteAction',
    'SellAction',
    'BuyAction',
    'PreOrderAction',
    'DonateAction',
    'OrderAction',
]
