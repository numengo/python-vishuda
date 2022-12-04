# *- coding: utf-8 -*-

from ngoschema import type_builder

CollectionPage = type_builder.load('https://schema.org/#/$defs/CollectionPage')
ProfilePage = type_builder.load('https://schema.org/#/$defs/ProfilePage')
ContactPage = type_builder.load('https://schema.org/#/$defs/ContactPage')
SearchResultsPage = type_builder.load('https://schema.org/#/$defs/SearchResultsPage')
QAPage = type_builder.load('https://schema.org/#/$defs/QAPage')
MedicalWebPage = type_builder.load('https://schema.org/#/$defs/MedicalWebPage')
RealEstateListing = type_builder.load('https://schema.org/#/$defs/RealEstateListing')
FAQPage = type_builder.load('https://schema.org/#/$defs/FAQPage')
AboutPage = type_builder.load('https://schema.org/#/$defs/AboutPage')
CheckoutPage = type_builder.load('https://schema.org/#/$defs/CheckoutPage')
ItemPage = type_builder.load('https://schema.org/#/$defs/ItemPage')

__all__ = [
    'CollectionPage',
    'ProfilePage',
    'ContactPage',
    'SearchResultsPage',
    'QAPage',
    'MedicalWebPage',
    'RealEstateListing',
    'FAQPage',
    'AboutPage',
    'CheckoutPage',
    'ItemPage',
]
