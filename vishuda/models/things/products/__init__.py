# *- coding: utf-8 -*-

from ngoschema import type_builder

ProductModel = type_builder.load('https://schema.org/#/$defs/ProductModel')
ProductCollection = type_builder.load('https://schema.org/#/$defs/ProductCollection')
SomeProducts = type_builder.load('https://schema.org/#/$defs/SomeProducts')
ProductGroup = type_builder.load('https://schema.org/#/$defs/ProductGroup')
Drug = type_builder.load('https://schema.org/#/$defs/Drug')
IndividualProduct = type_builder.load('https://schema.org/#/$defs/IndividualProduct')
Vehicle = type_builder.load('https://schema.org/#/$defs/Vehicle')
DietarySupplement = type_builder.load('https://schema.org/#/$defs/DietarySupplement')

__all__ = [
    'ProductModel',
    'ProductCollection',
    'SomeProducts',
    'ProductGroup',
    'Drug',
    'IndividualProduct',
    'Vehicle',
    'DietarySupplement',
]
