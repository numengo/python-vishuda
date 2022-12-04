# *- coding: utf-8 -*-

from ngoschema import type_builder

OrganizationRole = type_builder.load('https://schema.org/#/$defs/OrganizationRole')
LinkRole = type_builder.load('https://schema.org/#/$defs/LinkRole')
PerformanceRole = type_builder.load('https://schema.org/#/$defs/PerformanceRole')

__all__ = [
    'OrganizationRole',
    'LinkRole',
    'PerformanceRole',
]
