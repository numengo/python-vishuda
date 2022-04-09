from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema import with_metaclass, SchemaMetaclass, type_builder
from telebot import types as telebot_types

User = type_builder.build('https://numengo.org/telegram#/$defs/User', bases=(telebot_types.User, ))
Chat = type_builder.build('https://numengo.org/telegram#/$defs/Chat', bases=(telebot_types.Chat, ))
Message = type_builder.build('https://numengo.org/telegram#/$defs/Message', bases=(telebot_types.Message, ))
MessageId = type_builder.build('https://numengo.org/telegram#/$defs/MessageId')
MessageEntity = type_builder.build('https://numengo.org/telegram#/$defs/MessageEntity', bases=(telebot_types.MessageEntity, ))


PhotoSize = type_builder.build('https://numengo.org/telegram#/$defs/PhotoSize', bases=(telebot_types.PhotoSize, ))
Animation = type_builder.build('https://numengo.org/telegram#/$defs/Animation', bases=(telebot_types.Animation, ))
Audio = type_builder.build('https://numengo.org/telegram#/$defs/Audio', bases=(telebot_types.Audio, ))
Document = type_builder.build('https://numengo.org/telegram#/$defs/Document', bases=(telebot_types.Document, ))
Video = type_builder.build('https://numengo.org/telegram#/$defs/Video', bases=(telebot_types.Video, ))
VideoNote = type_builder.build('https://numengo.org/telegram#/$defs/VideoNote', bases=(telebot_types.VideoNote, ))
Voice = type_builder.build('https://numengo.org/telegram#/$defs/Voice', bases=(telebot_types.Voice, ))
Contact = type_builder.build('https://numengo.org/telegram#/$defs/Contact', bases=(telebot_types.Contact, ))
Dice = type_builder.build('https://numengo.org/telegram#/$defs/Dice', bases=(telebot_types.Dice, ))
PollOption = type_builder.build('https://numengo.org/telegram#/$defs/PollOption', bases=(telebot_types.PollOption, ))
PollAnswer = type_builder.build('https://numengo.org/telegram#/$defs/PollAnswer', bases=(telebot_types.PollAnswer, ))
Poll = type_builder.build('https://numengo.org/telegram#/$defs/Poll', bases=(telebot_types.Poll, ))
Location = type_builder.build('https://numengo.org/telegram#/$defs/Location', bases=(telebot_types.Location, ))
Venue = type_builder.build('https://numengo.org/telegram#/$defs/Venue', bases=(telebot_types.Venue, ))

File = type_builder.build('https://numengo.org/telegram#/$defs/File', bases=(telebot_types.File, ))

ChatInviteLink = type_builder.build('https://numengo.org/telegram#/$defs/ChatInviteLink', bases=(telebot_types.ChatInviteLink, ))
ChatMember = type_builder.build('https://numengo.org/telegram#/$defs/ChatMember', bases=(telebot_types.ChatMember, ))
ChatJoinRequest = type_builder.build('https://numengo.org/telegram#/$defs/ChatJoinRequest', bases=(telebot_types.ChatJoinRequest, ))
ChatPermissions = type_builder.build('https://numengo.org/telegram#/$defs/ChatPermissions', bases=(telebot_types.ChatPermissions, ))
ChatLocation = type_builder.build('https://numengo.org/telegram#/$defs/ChatLocation', bases=(telebot_types.ChatLocation, ))

BotCommand = type_builder.build('https://numengo.org/telegram#/$defs/BotCommand', bases=(telebot_types.BotCommand, ))
BotCommandScope = type_builder.build('https://numengo.org/telegram#/$defs/BotCommandScope', bases=(telebot_types.BotCommandScope, ))

ResponseParameters = type_builder.build('https://numengo.org/telegram#/$defs/ResponseParameters')#, bases=(telebot_types.ResponseParameters, ))
InputMedia = type_builder.build('https://numengo.org/telegram#/$defs/InputMedia', bases=(telebot_types.InputMedia, ))
#InputFile = type_builder.build('https://numengo.org/telegram#/$defs/InputFile')#, bases=(telebot_types.InputFile, ))
Sticker = type_builder.build('https://numengo.org/telegram#/$defs/Sticker', bases=(telebot_types.Sticker, ))
MaskPosition = type_builder.build('https://numengo.org/telegram#/$defs/MaskPosition', bases=(telebot_types.MaskPosition, ))
Game = type_builder.build('https://numengo.org/telegram#/$defs/Game', bases=(telebot_types.Game, ))
Invoice = type_builder.build('https://numengo.org/telegram#/$defs/Invoice', bases=(telebot_types.Invoice, ))
ShippingAddress = type_builder.build('https://numengo.org/telegram#/$defs/ShippingAddress', bases=(telebot_types.ShippingAddress, ))
OrderInfo = type_builder.build('https://numengo.org/telegram#/$defs/OrderInfo', bases=(telebot_types.OrderInfo, ))
SuccessfulPayment = type_builder.build('https://numengo.org/telegram#/$defs/SuccessfulPayment', bases=(telebot_types.SuccessfulPayment, ))

PassportData = type_builder.build('https://numengo.org/telegram#/$defs/PassportData')#, bases=(telebot_types.PassportData, ))
PassportFile = type_builder.build('https://numengo.org/telegram#/$defs/PassportFile')#, bases=(telebot_types.PassportFile, ))
EncryptedPassportElement = type_builder.build('https://numengo.org/telegram#/$defs/EncryptedPassportElement')#, bases=(telebot_types.EncryptedPassportElement, ))
EncryptedCredentials = type_builder.build('https://numengo.org/telegram#/$defs/EncryptedCredentials')#, bases=(telebot_types.EncryptedCredentials, ))

#User = type_builder.build('https://numengo.org/telegram#/$defs/User', bases=(telebot_types.User, ))
#User = type_builder.build('https://numengo.org/telegram#/$defs/User', bases=(telebot_types.User, ))
#User = type_builder.build('https://numengo.org/telegram#/$defs/User', bases=(telebot_types.User, ))
#User = type_builder.build('https://numengo.org/telegram#/$defs/User', bases=(telebot_types.User, ))
