# *- coding: utf-8 -*-

from ngoschema import type_builder

RadioEpisode = type_builder.load('https://schema.org/#/$defs/RadioEpisode')
PodcastEpisode = type_builder.load('https://schema.org/#/$defs/PodcastEpisode')
TVEpisode = type_builder.load('https://schema.org/#/$defs/TVEpisode')

__all__ = [
    'RadioEpisode',
    'PodcastEpisode',
    'TVEpisode',
]
