from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema import with_metaclass, SchemaMetaclass, type_builder
import telegram

User = type_builder.build('https://numengo.org/telegram#/$defs/User', bases=(telegram.User, ))
Chat = type_builder.build('https://numengo.org/telegram#/$defs/Chat', bases=(telegram.Chat, ))
Message = type_builder.build('https://numengo.org/telegram#/$defs/Message', bases=(telegram.Message, ))
MessageId = type_builder.build('https://numengo.org/telegram#/$defs/MessageId')
MessageEntity = type_builder.build('https://numengo.org/telegram#/$defs/MessageEntity', bases=(telegram.MessageEntity, ))


PhotoSize = type_builder.build('https://numengo.org/telegram#/$defs/PhotoSize', bases=(telegram.PhotoSize, ))
Animation = type_builder.build('https://numengo.org/telegram#/$defs/Animation', bases=(telegram.Animation, ))
Audio = type_builder.build('https://numengo.org/telegram#/$defs/Audio', bases=(telegram.Audio, ))
Document = type_builder.build('https://numengo.org/telegram#/$defs/Document', bases=(telegram.Document, ))
Video = type_builder.build('https://numengo.org/telegram#/$defs/Video', bases=(telegram.Video, ))
VideoNote = type_builder.build('https://numengo.org/telegram#/$defs/VideoNote', bases=(telegram.VideoNote, ))
Voice = type_builder.build('https://numengo.org/telegram#/$defs/Voice', bases=(telegram.Voice, ))
Contact = type_builder.build('https://numengo.org/telegram#/$defs/Contact', bases=(telegram.Contact, ))
Dice = type_builder.build('https://numengo.org/telegram#/$defs/Dice', bases=(telegram.Dice, ))
PollOption = type_builder.build('https://numengo.org/telegram#/$defs/PollOption', bases=(telegram.PollOption, ))
PollAnswer = type_builder.build('https://numengo.org/telegram#/$defs/PollAnswer', bases=(telegram.PollAnswer, ))
Poll = type_builder.build('https://numengo.org/telegram#/$defs/Poll', bases=(telegram.Poll, ))
Location = type_builder.build('https://numengo.org/telegram#/$defs/Location', bases=(telegram.Location, ))
Venue = type_builder.build('https://numengo.org/telegram#/$defs/Venue', bases=(telegram.Venue, ))

File = type_builder.build('https://numengo.org/telegram#/$defs/File', bases=(telegram.File, ))

ChatInviteLink = type_builder.build('https://numengo.org/telegram#/$defs/ChatInviteLink', bases=(telegram.ChatInviteLink, ))
ChatMember = type_builder.build('https://numengo.org/telegram#/$defs/ChatMember', bases=(telegram.ChatMember, ))
ChatJoinRequest = type_builder.build('https://numengo.org/telegram#/$defs/ChatJoinRequest', bases=(telegram.ChatJoinRequest, ))
ChatPermissions = type_builder.build('https://numengo.org/telegram#/$defs/ChatPermissions', bases=(telegram.ChatPermissions, ))
ChatLocation = type_builder.build('https://numengo.org/telegram#/$defs/ChatLocation', bases=(telegram.ChatLocation, ))

BotCommand = type_builder.build('https://numengo.org/telegram#/$defs/BotCommand', bases=(telegram.BotCommand, ))
BotCommandScope = type_builder.build('https://numengo.org/telegram#/$defs/BotCommandScope', bases=(telegram.BotCommandScope, ))

ResponseParameters = type_builder.build('https://numengo.org/telegram#/$defs/ResponseParameters')#, bases=(telegram.ResponseParameters, ))
InputMedia = type_builder.build('https://numengo.org/telegram#/$defs/InputMedia', bases=(telegram.InputMedia, ))
#InputFile = type_builder.build('https://numengo.org/telegram#/$defs/InputFile')#, bases=(telegram.InputFile, ))
Sticker = type_builder.build('https://numengo.org/telegram#/$defs/Sticker', bases=(telegram.Sticker, ))
MaskPosition = type_builder.build('https://numengo.org/telegram#/$defs/MaskPosition', bases=(telegram.MaskPosition, ))
Game = type_builder.build('https://numengo.org/telegram#/$defs/Game', bases=(telegram.Game, ))
Invoice = type_builder.build('https://numengo.org/telegram#/$defs/Invoice', bases=(telegram.Invoice, ))
ShippingAddress = type_builder.build('https://numengo.org/telegram#/$defs/ShippingAddress', bases=(telegram.ShippingAddress, ))
OrderInfo = type_builder.build('https://numengo.org/telegram#/$defs/OrderInfo', bases=(telegram.OrderInfo, ))
SuccessfulPayment = type_builder.build('https://numengo.org/telegram#/$defs/SuccessfulPayment', bases=(telegram.SuccessfulPayment, ))

PassportData = type_builder.build('https://numengo.org/telegram#/$defs/PassportData')#, bases=(telegram.PassportData, ))
PassportFile = type_builder.build('https://numengo.org/telegram#/$defs/PassportFile')#, bases=(telegram.PassportFile, ))
EncryptedPassportElement = type_builder.build('https://numengo.org/telegram#/$defs/EncryptedPassportElement')#, bases=(telegram.EncryptedPassportElement, ))
EncryptedCredentials = type_builder.build('https://numengo.org/telegram#/$defs/EncryptedCredentials')#, bases=(telegram.EncryptedCredentials, ))

#User = type_builder.build('https://numengo.org/telegram#/$defs/User', bases=(telegram.User, ))
#User = type_builder.build('https://numengo.org/telegram#/$defs/User', bases=(telegram.User, ))
#User = type_builder.build('https://numengo.org/telegram#/$defs/User', bases=(telegram.User, ))
#User = type_builder.build('https://numengo.org/telegram#/$defs/User', bases=(telegram.User, ))
