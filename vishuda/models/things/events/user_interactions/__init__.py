# *- coding: utf-8 -*-

from ngoschema import type_builder

UserPageVisits = type_builder.load('https://schema.org/#/$defs/UserPageVisits')
UserDownloads = type_builder.load('https://schema.org/#/$defs/UserDownloads')
UserCheckins = type_builder.load('https://schema.org/#/$defs/UserCheckins')
UserLikes = type_builder.load('https://schema.org/#/$defs/UserLikes')
UserComments = type_builder.load('https://schema.org/#/$defs/UserComments')
UserPlusOnes = type_builder.load('https://schema.org/#/$defs/UserPlusOnes')
UserTweets = type_builder.load('https://schema.org/#/$defs/UserTweets')
UserBlocks = type_builder.load('https://schema.org/#/$defs/UserBlocks')
UserPlays = type_builder.load('https://schema.org/#/$defs/UserPlays')

__all__ = [
    'UserPageVisits',
    'UserDownloads',
    'UserCheckins',
    'UserLikes',
    'UserComments',
    'UserPlusOnes',
    'UserTweets',
    'UserBlocks',
    'UserPlays',
]
