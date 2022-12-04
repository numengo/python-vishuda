# *- coding: utf-8 -*-

from ngoschema import type_builder

BreadcrumbList = type_builder.load('https://schema.org/#/$defs/BreadcrumbList')
HowToSection = type_builder.load('https://schema.org/#/$defs/HowToSection')
OfferCatalog = type_builder.load('https://schema.org/#/$defs/OfferCatalog')
HowToStep = type_builder.load('https://schema.org/#/$defs/HowToStep')

__all__ = [
    'BreadcrumbList',
    'HowToSection',
    'OfferCatalog',
    'HowToStep',
]
