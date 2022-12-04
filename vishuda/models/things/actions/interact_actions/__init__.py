# *- coding: utf-8 -*-

from ngoschema import type_builder

MarryAction = type_builder.load('https://schema.org/#/$defs/MarryAction')
FollowAction = type_builder.load('https://schema.org/#/$defs/FollowAction')
UnRegisterAction = type_builder.load('https://schema.org/#/$defs/UnRegisterAction')
CommunicateAction = type_builder.load('https://schema.org/#/$defs/CommunicateAction')
RegisterAction = type_builder.load('https://schema.org/#/$defs/RegisterAction')
JoinAction = type_builder.load('https://schema.org/#/$defs/JoinAction')
BefriendAction = type_builder.load('https://schema.org/#/$defs/BefriendAction')
SubscribeAction = type_builder.load('https://schema.org/#/$defs/SubscribeAction')
LeaveAction = type_builder.load('https://schema.org/#/$defs/LeaveAction')

__all__ = [
    'MarryAction',
    'FollowAction',
    'UnRegisterAction',
    'CommunicateAction',
    'RegisterAction',
    'JoinAction',
    'BefriendAction',
    'SubscribeAction',
    'LeaveAction',
]
