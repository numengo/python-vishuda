# *- coding: utf-8 -*-

from ngoschema import type_builder

PodcastSeries = type_builder.load('https://schema.org/#/$defs/PodcastSeries')
MovieSeries = type_builder.load('https://schema.org/#/$defs/MovieSeries')
Periodical = type_builder.load('https://schema.org/#/$defs/Periodical')
RadioSeries = type_builder.load('https://schema.org/#/$defs/RadioSeries')
BookSeries = type_builder.load('https://schema.org/#/$defs/BookSeries')
VideoGameSeries = type_builder.load('https://schema.org/#/$defs/VideoGameSeries')
TVSeries = type_builder.load('https://schema.org/#/$defs/TVSeries')

__all__ = [
    'PodcastSeries',
    'MovieSeries',
    'Periodical',
    'RadioSeries',
    'BookSeries',
    'VideoGameSeries',
    'TVSeries',
]
