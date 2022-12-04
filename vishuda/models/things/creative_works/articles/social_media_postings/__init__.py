# *- coding: utf-8 -*-

from ngoschema import type_builder

BlogPosting = type_builder.load('https://schema.org/#/$defs/BlogPosting')
DiscussionForumPosting = type_builder.load('https://schema.org/#/$defs/DiscussionForumPosting')

__all__ = [
    'BlogPosting',
    'DiscussionForumPosting',
]
