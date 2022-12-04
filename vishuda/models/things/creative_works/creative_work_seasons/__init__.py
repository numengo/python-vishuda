# *- coding: utf-8 -*-

from ngoschema import type_builder

PodcastSeason = type_builder.load('https://schema.org/#/$defs/PodcastSeason')
RadioSeason = type_builder.load('https://schema.org/#/$defs/RadioSeason')
TVSeason = type_builder.load('https://schema.org/#/$defs/TVSeason')

__all__ = [
    'PodcastSeason',
    'RadioSeason',
    'TVSeason',
]
