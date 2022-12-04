# *- coding: utf-8 -*-

from ngoschema import type_builder

WorkersUnion = type_builder.load('https://schema.org/#/$defs/WorkersUnion')
SportsOrganization = type_builder.load('https://schema.org/#/$defs/SportsOrganization')
OnlineBusiness = type_builder.load('https://schema.org/#/$defs/OnlineBusiness')
EducationalOrganization = type_builder.load('https://schema.org/#/$defs/EducationalOrganization')
ResearchOrganization = type_builder.load('https://schema.org/#/$defs/ResearchOrganization')
NGO = type_builder.load('https://schema.org/#/$defs/NGO')
SearchRescueOrganization = type_builder.load('https://schema.org/#/$defs/SearchRescueOrganization')
MedicalOrganization = type_builder.load('https://schema.org/#/$defs/MedicalOrganization')
PerformingGroup = type_builder.load('https://schema.org/#/$defs/PerformingGroup')
Airline = type_builder.load('https://schema.org/#/$defs/Airline')
LibrarySystem = type_builder.load('https://schema.org/#/$defs/LibrarySystem')
FundingScheme = type_builder.load('https://schema.org/#/$defs/FundingScheme')
Project = type_builder.load('https://schema.org/#/$defs/Project')
Consortium = type_builder.load('https://schema.org/#/$defs/Consortium')
GovernmentOrganization = type_builder.load('https://schema.org/#/$defs/GovernmentOrganization')
Corporation = type_builder.load('https://schema.org/#/$defs/Corporation')
NewsMediaOrganization = type_builder.load('https://schema.org/#/$defs/NewsMediaOrganization')
LocalBusiness = type_builder.load('https://schema.org/#/$defs/LocalBusiness')

__all__ = [
    'WorkersUnion',
    'SportsOrganization',
    'OnlineBusiness',
    'EducationalOrganization',
    'ResearchOrganization',
    'NGO',
    'SearchRescueOrganization',
    'MedicalOrganization',
    'PerformingGroup',
    'Airline',
    'LibrarySystem',
    'FundingScheme',
    'Project',
    'Consortium',
    'GovernmentOrganization',
    'Corporation',
    'NewsMediaOrganization',
    'LocalBusiness',
]
