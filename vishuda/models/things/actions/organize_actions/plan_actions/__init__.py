# *- coding: utf-8 -*-

from ngoschema import type_builder

ScheduleAction = type_builder.load('https://schema.org/#/$defs/ScheduleAction')
ReserveAction = type_builder.load('https://schema.org/#/$defs/ReserveAction')
CancelAction = type_builder.load('https://schema.org/#/$defs/CancelAction')

__all__ = [
    'ScheduleAction',
    'ReserveAction',
    'CancelAction',
]
