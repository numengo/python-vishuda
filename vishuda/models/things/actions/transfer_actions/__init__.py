# *- coding: utf-8 -*-

from ngoschema import type_builder

MoneyTransfer = type_builder.load('https://schema.org/#/$defs/MoneyTransfer')
BorrowAction = type_builder.load('https://schema.org/#/$defs/BorrowAction')
DownloadAction = type_builder.load('https://schema.org/#/$defs/DownloadAction')
ReturnAction = type_builder.load('https://schema.org/#/$defs/ReturnAction')
GiveAction = type_builder.load('https://schema.org/#/$defs/GiveAction')
SendAction = type_builder.load('https://schema.org/#/$defs/SendAction')
TakeAction = type_builder.load('https://schema.org/#/$defs/TakeAction')
ReceiveAction = type_builder.load('https://schema.org/#/$defs/ReceiveAction')
LendAction = type_builder.load('https://schema.org/#/$defs/LendAction')

__all__ = [
    'MoneyTransfer',
    'BorrowAction',
    'DownloadAction',
    'ReturnAction',
    'GiveAction',
    'SendAction',
    'TakeAction',
    'ReceiveAction',
    'LendAction',
]
