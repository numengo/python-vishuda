# *- coding: utf-8 -*-

from ngoschema import type_builder

EmployeeRole = type_builder.load('https://schema.org/#/$defs/EmployeeRole')

__all__ = [
    'EmployeeRole',
]
