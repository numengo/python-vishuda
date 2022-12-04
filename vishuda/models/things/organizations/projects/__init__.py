# *- coding: utf-8 -*-

from ngoschema import type_builder

ResearchProject = type_builder.load('https://schema.org/#/$defs/ResearchProject')
FundingAgency = type_builder.load('https://schema.org/#/$defs/FundingAgency')

__all__ = [
    'ResearchProject',
    'FundingAgency',
]
