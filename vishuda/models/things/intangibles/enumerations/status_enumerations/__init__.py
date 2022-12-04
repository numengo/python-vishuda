# *- coding: utf-8 -*-

from ngoschema import type_builder

ReservationStatusType = type_builder.load('https://schema.org/#/$defs/ReservationStatusType')
OrderStatus = type_builder.load('https://schema.org/#/$defs/OrderStatus')
GameServerStatus = type_builder.load('https://schema.org/#/$defs/GameServerStatus')
ActionStatusType = type_builder.load('https://schema.org/#/$defs/ActionStatusType')
LegalForceStatus = type_builder.load('https://schema.org/#/$defs/LegalForceStatus')
PaymentStatusType = type_builder.load('https://schema.org/#/$defs/PaymentStatusType')
EventStatusType = type_builder.load('https://schema.org/#/$defs/EventStatusType')

__all__ = [
    'ReservationStatusType',
    'OrderStatus',
    'GameServerStatus',
    'ActionStatusType',
    'LegalForceStatus',
    'PaymentStatusType',
    'EventStatusType',
]
