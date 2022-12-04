# *- coding: utf-8 -*-

from ngoschema import type_builder

LiteraryEvent = type_builder.load('https://schema.org/#/$defs/LiteraryEvent')
EducationEvent = type_builder.load('https://schema.org/#/$defs/EducationEvent')
SocialEvent = type_builder.load('https://schema.org/#/$defs/SocialEvent')
EventSeries = type_builder.load('https://schema.org/#/$defs/EventSeries')
Festival = type_builder.load('https://schema.org/#/$defs/Festival')
MusicEvent = type_builder.load('https://schema.org/#/$defs/MusicEvent')
PublicationEvent = type_builder.load('https://schema.org/#/$defs/PublicationEvent')
SaleEvent = type_builder.load('https://schema.org/#/$defs/SaleEvent')
ExhibitionEvent = type_builder.load('https://schema.org/#/$defs/ExhibitionEvent')
BusinessEvent = type_builder.load('https://schema.org/#/$defs/BusinessEvent')
Hackathon = type_builder.load('https://schema.org/#/$defs/Hackathon')
DeliveryEvent = type_builder.load('https://schema.org/#/$defs/DeliveryEvent')
UserInteraction = type_builder.load('https://schema.org/#/$defs/UserInteraction')
VisualArtsEvent = type_builder.load('https://schema.org/#/$defs/VisualArtsEvent')
DanceEvent = type_builder.load('https://schema.org/#/$defs/DanceEvent')
ChildrensEvent = type_builder.load('https://schema.org/#/$defs/ChildrensEvent')
ScreeningEvent = type_builder.load('https://schema.org/#/$defs/ScreeningEvent')
ComedyEvent = type_builder.load('https://schema.org/#/$defs/ComedyEvent')
FoodEvent = type_builder.load('https://schema.org/#/$defs/FoodEvent')
CourseInstance = type_builder.load('https://schema.org/#/$defs/CourseInstance')
SportsEvent = type_builder.load('https://schema.org/#/$defs/SportsEvent')
TheaterEvent = type_builder.load('https://schema.org/#/$defs/TheaterEvent')

__all__ = [
    'LiteraryEvent',
    'EducationEvent',
    'SocialEvent',
    'EventSeries',
    'Festival',
    'MusicEvent',
    'PublicationEvent',
    'SaleEvent',
    'ExhibitionEvent',
    'BusinessEvent',
    'Hackathon',
    'DeliveryEvent',
    'UserInteraction',
    'VisualArtsEvent',
    'DanceEvent',
    'ChildrensEvent',
    'ScreeningEvent',
    'ComedyEvent',
    'FoodEvent',
    'CourseInstance',
    'SportsEvent',
    'TheaterEvent',
]
