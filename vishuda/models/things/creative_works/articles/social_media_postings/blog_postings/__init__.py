# *- coding: utf-8 -*-

from ngoschema import type_builder

LiveBlogPosting = type_builder.load('https://schema.org/#/$defs/LiveBlogPosting')

__all__ = [
    'LiveBlogPosting',
]
