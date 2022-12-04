# *- coding: utf-8 -*-

from ngoschema import type_builder

Recommendation = type_builder.load('https://schema.org/#/$defs/Recommendation')
CriticReview = type_builder.load('https://schema.org/#/$defs/CriticReview')
EmployerReview = type_builder.load('https://schema.org/#/$defs/EmployerReview')
ClaimReview = type_builder.load('https://schema.org/#/$defs/ClaimReview')
UserReview = type_builder.load('https://schema.org/#/$defs/UserReview')
MediaReview = type_builder.load('https://schema.org/#/$defs/MediaReview')

__all__ = [
    'Recommendation',
    'CriticReview',
    'EmployerReview',
    'ClaimReview',
    'UserReview',
    'MediaReview',
]
