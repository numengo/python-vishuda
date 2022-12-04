# *- coding: utf-8 -*-

from ngoschema import type_builder

RecommendedDoseSchedule = type_builder.load('https://schema.org/#/$defs/RecommendedDoseSchedule')
ReportedDoseSchedule = type_builder.load('https://schema.org/#/$defs/ReportedDoseSchedule')
MaximumDoseSchedule = type_builder.load('https://schema.org/#/$defs/MaximumDoseSchedule')

__all__ = [
    'RecommendedDoseSchedule',
    'ReportedDoseSchedule',
    'MaximumDoseSchedule',
]
