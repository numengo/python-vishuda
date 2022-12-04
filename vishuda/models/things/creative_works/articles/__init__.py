# *- coding: utf-8 -*-

from ngoschema import type_builder

SocialMediaPosting = type_builder.load('https://schema.org/#/$defs/SocialMediaPosting')
ScholarlyArticle = type_builder.load('https://schema.org/#/$defs/ScholarlyArticle')
SatiricalArticle = type_builder.load('https://schema.org/#/$defs/SatiricalArticle')
AdvertiserContentArticle = type_builder.load('https://schema.org/#/$defs/AdvertiserContentArticle')
Report = type_builder.load('https://schema.org/#/$defs/Report')
NewsArticle = type_builder.load('https://schema.org/#/$defs/NewsArticle')
TechArticle = type_builder.load('https://schema.org/#/$defs/TechArticle')

__all__ = [
    'SocialMediaPosting',
    'ScholarlyArticle',
    'SatiricalArticle',
    'AdvertiserContentArticle',
    'Report',
    'NewsArticle',
    'TechArticle',
]
