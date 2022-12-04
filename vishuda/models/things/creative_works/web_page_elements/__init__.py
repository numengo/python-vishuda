# *- coding: utf-8 -*-

from ngoschema import type_builder

WPSideBar = type_builder.load('https://schema.org/#/$defs/WPSideBar')
SiteNavigationElement = type_builder.load('https://schema.org/#/$defs/SiteNavigationElement')
WPAdBlock = type_builder.load('https://schema.org/#/$defs/WPAdBlock')
WPHeader = type_builder.load('https://schema.org/#/$defs/WPHeader')
Table = type_builder.load('https://schema.org/#/$defs/Table')
WPFooter = type_builder.load('https://schema.org/#/$defs/WPFooter')

__all__ = [
    'WPSideBar',
    'SiteNavigationElement',
    'WPAdBlock',
    'WPHeader',
    'Table',
    'WPFooter',
]
