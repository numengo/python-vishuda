# *- coding: utf-8 -*-

from ngoschema import type_builder

OceanBodyOfWater = type_builder.load('https://schema.org/#/$defs/OceanBodyOfWater')
Canal = type_builder.load('https://schema.org/#/$defs/Canal')
Pond = type_builder.load('https://schema.org/#/$defs/Pond')
SeaBodyOfWater = type_builder.load('https://schema.org/#/$defs/SeaBodyOfWater')
Waterfall = type_builder.load('https://schema.org/#/$defs/Waterfall')
LakeBodyOfWater = type_builder.load('https://schema.org/#/$defs/LakeBodyOfWater')
RiverBodyOfWater = type_builder.load('https://schema.org/#/$defs/RiverBodyOfWater')
Reservoir = type_builder.load('https://schema.org/#/$defs/Reservoir')

__all__ = [
    'OceanBodyOfWater',
    'Canal',
    'Pond',
    'SeaBodyOfWater',
    'Waterfall',
    'LakeBodyOfWater',
    'RiverBodyOfWater',
    'Reservoir',
]
