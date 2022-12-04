# *- coding: utf-8 -*-

from ngoschema import type_builder

AskPublicNewsArticle = type_builder.load('https://schema.org/#/$defs/AskPublicNewsArticle')
OpinionNewsArticle = type_builder.load('https://schema.org/#/$defs/OpinionNewsArticle')
BackgroundNewsArticle = type_builder.load('https://schema.org/#/$defs/BackgroundNewsArticle')
ReportageNewsArticle = type_builder.load('https://schema.org/#/$defs/ReportageNewsArticle')
ReviewNewsArticle = type_builder.load('https://schema.org/#/$defs/ReviewNewsArticle')
AnalysisNewsArticle = type_builder.load('https://schema.org/#/$defs/AnalysisNewsArticle')

__all__ = [
    'AskPublicNewsArticle',
    'OpinionNewsArticle',
    'BackgroundNewsArticle',
    'ReportageNewsArticle',
    'ReviewNewsArticle',
    'AnalysisNewsArticle',
]
