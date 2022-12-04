# *- coding: utf-8 -*-

from ngoschema import type_builder

TreatmentIndication = type_builder.load('https://schema.org/#/$defs/TreatmentIndication')
ApprovedIndication = type_builder.load('https://schema.org/#/$defs/ApprovedIndication')
PreventionIndication = type_builder.load('https://schema.org/#/$defs/PreventionIndication')

__all__ = [
    'TreatmentIndication',
    'ApprovedIndication',
    'PreventionIndication',
]
