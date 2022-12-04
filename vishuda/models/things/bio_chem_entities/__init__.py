# *- coding: utf-8 -*-

from ngoschema import type_builder

Gene = type_builder.load('https://schema.org/#/$defs/Gene')
ChemicalSubstance = type_builder.load('https://schema.org/#/$defs/ChemicalSubstance')
Protein = type_builder.load('https://schema.org/#/$defs/Protein')
MolecularEntity = type_builder.load('https://schema.org/#/$defs/MolecularEntity')

__all__ = [
    'Gene',
    'ChemicalSubstance',
    'Protein',
    'MolecularEntity',
]
