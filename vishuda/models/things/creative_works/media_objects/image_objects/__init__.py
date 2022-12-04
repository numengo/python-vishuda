# *- coding: utf-8 -*-

from ngoschema import type_builder

ImageObjectSnapshot = type_builder.load('https://schema.org/#/$defs/ImageObjectSnapshot')
Barcode = type_builder.load('https://schema.org/#/$defs/Barcode')

__all__ = [
    'ImageObjectSnapshot',
    'Barcode',
]
