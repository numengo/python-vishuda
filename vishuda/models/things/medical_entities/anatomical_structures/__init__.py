# *- coding: utf-8 -*-

from ngoschema import type_builder

Ligament = type_builder.load('https://schema.org/#/$defs/Ligament')
Bone = type_builder.load('https://schema.org/#/$defs/Bone')
Joint = type_builder.load('https://schema.org/#/$defs/Joint')
BrainStructure = type_builder.load('https://schema.org/#/$defs/BrainStructure')
Vessel = type_builder.load('https://schema.org/#/$defs/Vessel')
Nerve = type_builder.load('https://schema.org/#/$defs/Nerve')
Muscle = type_builder.load('https://schema.org/#/$defs/Muscle')

__all__ = [
    'Ligament',
    'Bone',
    'Joint',
    'BrainStructure',
    'Vessel',
    'Nerve',
    'Muscle',
]
