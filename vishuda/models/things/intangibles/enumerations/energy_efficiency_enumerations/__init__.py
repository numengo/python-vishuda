# *- coding: utf-8 -*-

from ngoschema import type_builder

EnergyStarEnergyEfficiencyEnumeration = type_builder.load('https://schema.org/#/$defs/EnergyStarEnergyEfficiencyEnumeration')
EUEnergyEfficiencyEnumeration = type_builder.load('https://schema.org/#/$defs/EUEnergyEfficiencyEnumeration')

__all__ = [
    'EnergyStarEnergyEfficiencyEnumeration',
    'EUEnergyEfficiencyEnumeration',
]
