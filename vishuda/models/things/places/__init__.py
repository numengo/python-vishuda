# *- coding: utf-8 -*-

from ngoschema import type_builder

Landform = type_builder.load('https://schema.org/#/$defs/Landform')
AdministrativeArea = type_builder.load('https://schema.org/#/$defs/AdministrativeArea')
LandmarksOrHistoricalBuildings = type_builder.load('https://schema.org/#/$defs/LandmarksOrHistoricalBuildings')
Accommodation = type_builder.load('https://schema.org/#/$defs/Accommodation')
Residence = type_builder.load('https://schema.org/#/$defs/Residence')
TouristDestination = type_builder.load('https://schema.org/#/$defs/TouristDestination')
TouristAttraction = type_builder.load('https://schema.org/#/$defs/TouristAttraction')
LocalBusiness = type_builder.load('https://schema.org/#/$defs/LocalBusiness')
CivicStructure = type_builder.load('https://schema.org/#/$defs/CivicStructure')

__all__ = [
    'Landform',
    'AdministrativeArea',
    'LandmarksOrHistoricalBuildings',
    'Accommodation',
    'Residence',
    'TouristDestination',
    'TouristAttraction',
    'LocalBusiness',
    'CivicStructure',
]
