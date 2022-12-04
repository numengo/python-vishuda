# *- coding: utf-8 -*-

from ngoschema import type_builder

DiagnosticProcedure = type_builder.load('https://schema.org/#/$defs/DiagnosticProcedure')
TherapeuticProcedure = type_builder.load('https://schema.org/#/$defs/TherapeuticProcedure')
PalliativeProcedure = type_builder.load('https://schema.org/#/$defs/PalliativeProcedure')
SurgicalProcedure = type_builder.load('https://schema.org/#/$defs/SurgicalProcedure')
PhysicalExam = type_builder.load('https://schema.org/#/$defs/PhysicalExam')

__all__ = [
    'DiagnosticProcedure',
    'TherapeuticProcedure',
    'PalliativeProcedure',
    'SurgicalProcedure',
    'PhysicalExam',
]
