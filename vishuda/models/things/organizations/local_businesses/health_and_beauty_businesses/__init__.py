# *- coding: utf-8 -*-

from ngoschema import type_builder

NailSalon = type_builder.load('https://schema.org/#/$defs/NailSalon')
DaySpa = type_builder.load('https://schema.org/#/$defs/DaySpa')
HairSalon = type_builder.load('https://schema.org/#/$defs/HairSalon')
BeautySalon = type_builder.load('https://schema.org/#/$defs/BeautySalon')
HealthClub = type_builder.load('https://schema.org/#/$defs/HealthClub')
TattooParlor = type_builder.load('https://schema.org/#/$defs/TattooParlor')

__all__ = [
    'NailSalon',
    'DaySpa',
    'HairSalon',
    'BeautySalon',
    'HealthClub',
    'TattooParlor',
]
