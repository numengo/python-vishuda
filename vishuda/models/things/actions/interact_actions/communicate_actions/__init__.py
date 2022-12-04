# *- coding: utf-8 -*-

from ngoschema import type_builder

CheckInAction = type_builder.load('https://schema.org/#/$defs/CheckInAction')
InviteAction = type_builder.load('https://schema.org/#/$defs/InviteAction')
ShareAction = type_builder.load('https://schema.org/#/$defs/ShareAction')
AskAction = type_builder.load('https://schema.org/#/$defs/AskAction')
CheckOutAction = type_builder.load('https://schema.org/#/$defs/CheckOutAction')
ReplyAction = type_builder.load('https://schema.org/#/$defs/ReplyAction')
CommentAction = type_builder.load('https://schema.org/#/$defs/CommentAction')
InformAction = type_builder.load('https://schema.org/#/$defs/InformAction')

__all__ = [
    'CheckInAction',
    'InviteAction',
    'ShareAction',
    'AskAction',
    'CheckOutAction',
    'ReplyAction',
    'CommentAction',
    'InformAction',
]
