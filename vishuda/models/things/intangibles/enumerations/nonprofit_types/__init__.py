# *- coding: utf-8 -*-

from ngoschema import type_builder

USNonprofitType = type_builder.load('https://schema.org/#/$defs/USNonprofitType')
UKNonprofitType = type_builder.load('https://schema.org/#/$defs/UKNonprofitType')
NLNonprofitType = type_builder.load('https://schema.org/#/$defs/NLNonprofitType')

__all__ = [
    'USNonprofitType',
    'UKNonprofitType',
    'NLNonprofitType',
]
