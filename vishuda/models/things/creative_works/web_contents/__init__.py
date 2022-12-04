# *- coding: utf-8 -*-

from ngoschema import type_builder

HealthTopicContent = type_builder.load('https://schema.org/#/$defs/HealthTopicContent')

__all__ = [
    'HealthTopicContent',
]
