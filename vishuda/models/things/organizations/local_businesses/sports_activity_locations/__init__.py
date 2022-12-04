# *- coding: utf-8 -*-

from ngoschema import type_builder

PublicSwimmingPool = type_builder.load('https://schema.org/#/$defs/PublicSwimmingPool')
BowlingAlley = type_builder.load('https://schema.org/#/$defs/BowlingAlley')
SportsClub = type_builder.load('https://schema.org/#/$defs/SportsClub')
TennisComplex = type_builder.load('https://schema.org/#/$defs/TennisComplex')
StadiumOrArena = type_builder.load('https://schema.org/#/$defs/StadiumOrArena')
SkiResort = type_builder.load('https://schema.org/#/$defs/SkiResort')
HealthClub = type_builder.load('https://schema.org/#/$defs/HealthClub')
GolfCourse = type_builder.load('https://schema.org/#/$defs/GolfCourse')
ExerciseGym = type_builder.load('https://schema.org/#/$defs/ExerciseGym')

__all__ = [
    'PublicSwimmingPool',
    'BowlingAlley',
    'SportsClub',
    'TennisComplex',
    'StadiumOrArena',
    'SkiResort',
    'HealthClub',
    'GolfCourse',
    'ExerciseGym',
]
