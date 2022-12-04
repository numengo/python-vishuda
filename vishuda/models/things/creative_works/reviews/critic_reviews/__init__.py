# *- coding: utf-8 -*-

from ngoschema import type_builder

ReviewNewsArticle = type_builder.load('https://schema.org/#/$defs/ReviewNewsArticle')

__all__ = [
    'ReviewNewsArticle',
]
