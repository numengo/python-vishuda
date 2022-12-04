# *- coding: utf-8 -*-

from ngoschema import type_builder

VideoGallery = type_builder.load('https://schema.org/#/$defs/VideoGallery')
ImageGallery = type_builder.load('https://schema.org/#/$defs/ImageGallery')

__all__ = [
    'VideoGallery',
    'ImageGallery',
]
