# *- coding: utf-8 -*-

from ngoschema import type_builder

RejectAction = type_builder.load('https://schema.org/#/$defs/RejectAction')
AcceptAction = type_builder.load('https://schema.org/#/$defs/AcceptAction')
AuthorizeAction = type_builder.load('https://schema.org/#/$defs/AuthorizeAction')
AssignAction = type_builder.load('https://schema.org/#/$defs/AssignAction')

__all__ = [
    'RejectAction',
    'AcceptAction',
    'AuthorizeAction',
    'AssignAction',
]
