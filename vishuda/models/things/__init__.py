# *- coding: utf-8 -*-

from ngoschema import type_builder

Event = type_builder.load('https://schema.org/#/$defs/Event')
Organization = type_builder.load('https://schema.org/#/$defs/Organization')
Product = type_builder.load('https://schema.org/#/$defs/Product')
CreativeWork = type_builder.load('https://schema.org/#/$defs/CreativeWork')
MedicalEntity = type_builder.load('https://schema.org/#/$defs/MedicalEntity')
Taxon = type_builder.load('https://schema.org/#/$defs/Taxon')
Place = type_builder.load('https://schema.org/#/$defs/Place')
Intangible = type_builder.load('https://schema.org/#/$defs/Intangible')
Person = type_builder.load('https://schema.org/#/$defs/Person')
BioChemEntity = type_builder.load('https://schema.org/#/$defs/BioChemEntity')
Action = type_builder.load('https://schema.org/#/$defs/Action')

__all__ = [
    'Event',
    'Organization',
    'Product',
    'CreativeWork',
    'MedicalEntity',
    'Taxon',
    'Place',
    'Intangible',
    'Person',
    'BioChemEntity',
    'Action',
]
