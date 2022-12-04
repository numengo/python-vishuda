# *- coding: utf-8 -*-

from ngoschema import type_builder

MusicAlbum = type_builder.load('https://schema.org/#/$defs/MusicAlbum')
MusicRelease = type_builder.load('https://schema.org/#/$defs/MusicRelease')

__all__ = [
    'MusicAlbum',
    'MusicRelease',
]
