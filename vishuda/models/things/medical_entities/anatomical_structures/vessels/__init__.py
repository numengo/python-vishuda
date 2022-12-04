# *- coding: utf-8 -*-

from ngoschema import type_builder

Vein = type_builder.load('https://schema.org/#/$defs/Vein')
Artery = type_builder.load('https://schema.org/#/$defs/Artery')
LymphaticVessel = type_builder.load('https://schema.org/#/$defs/LymphaticVessel')

__all__ = [
    'Vein',
    'Artery',
    'LymphaticVessel',
]
