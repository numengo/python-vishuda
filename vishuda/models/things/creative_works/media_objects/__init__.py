# *- coding: utf-8 -*-

from ngoschema import type_builder

DataDownload = type_builder.load('https://schema.org/#/$defs/DataDownload')
AudioObject = type_builder.load('https://schema.org/#/$defs/AudioObject')
LegislationObject = type_builder.load('https://schema.org/#/$defs/LegislationObject')
AmpStory = type_builder.load('https://schema.org/#/$defs/AmpStory')
ImageObject = type_builder.load('https://schema.org/#/$defs/ImageObject')
3DModel = type_builder.load('https://schema.org/#/$defs/3DModel')
VideoObject = type_builder.load('https://schema.org/#/$defs/VideoObject')
MusicVideoObject = type_builder.load('https://schema.org/#/$defs/MusicVideoObject')

__all__ = [
    'DataDownload',
    'AudioObject',
    'LegislationObject',
    'AmpStory',
    'ImageObject',
    '3DModel',
    'VideoObject',
    'MusicVideoObject',
]
