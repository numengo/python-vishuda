# *- coding: utf-8 -*-

from ngoschema import type_builder

DeactivateAction = type_builder.load('https://schema.org/#/$defs/DeactivateAction')
ActivateAction = type_builder.load('https://schema.org/#/$defs/ActivateAction')
ResumeAction = type_builder.load('https://schema.org/#/$defs/ResumeAction')
SuspendAction = type_builder.load('https://schema.org/#/$defs/SuspendAction')

__all__ = [
    'DeactivateAction',
    'ActivateAction',
    'ResumeAction',
    'SuspendAction',
]
