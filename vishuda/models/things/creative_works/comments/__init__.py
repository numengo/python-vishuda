# *- coding: utf-8 -*-

from ngoschema import type_builder

CorrectionComment = type_builder.load('https://schema.org/#/$defs/CorrectionComment')
Answer = type_builder.load('https://schema.org/#/$defs/Answer')
Question = type_builder.load('https://schema.org/#/$defs/Question')

__all__ = [
    'CorrectionComment',
    'Answer',
    'Question',
]
