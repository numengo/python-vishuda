# *- coding: utf-8 -*-

from ngoschema import type_builder

Restaurant = type_builder.load('https://schema.org/#/$defs/Restaurant')
CafeOrCoffeeShop = type_builder.load('https://schema.org/#/$defs/CafeOrCoffeeShop')
Bakery = type_builder.load('https://schema.org/#/$defs/Bakery')
IceCreamShop = type_builder.load('https://schema.org/#/$defs/IceCreamShop')
BarOrPub = type_builder.load('https://schema.org/#/$defs/BarOrPub')
Brewery = type_builder.load('https://schema.org/#/$defs/Brewery')
Winery = type_builder.load('https://schema.org/#/$defs/Winery')
FastFoodRestaurant = type_builder.load('https://schema.org/#/$defs/FastFoodRestaurant')
Distillery = type_builder.load('https://schema.org/#/$defs/Distillery')

__all__ = [
    'Restaurant',
    'CafeOrCoffeeShop',
    'Bakery',
    'IceCreamShop',
    'BarOrPub',
    'Brewery',
    'Winery',
    'FastFoodRestaurant',
    'Distillery',
]
