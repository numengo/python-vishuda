# *- coding: utf-8 -*-

from ngoschema import type_builder

AggregateOffer = type_builder.load('https://schema.org/#/$defs/AggregateOffer')
OfferForLease = type_builder.load('https://schema.org/#/$defs/OfferForLease')
OfferForPurchase = type_builder.load('https://schema.org/#/$defs/OfferForPurchase')

__all__ = [
    'AggregateOffer',
    'OfferForLease',
    'OfferForPurchase',
]
