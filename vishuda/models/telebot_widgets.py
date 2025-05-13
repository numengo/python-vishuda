# *- coding: utf-8 -*-
"""telebot widgets declaration """
from typing import Union, List

from ngoschema import type_builder
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.models import Instance

from .. import settings


Widget = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/Widget')

# text widgets
TextWidget = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/texts/$defs/TextWidget')
Const = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/texts/$defs/Const')
Format = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/texts/$defs/Format')
I18NFormat = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/texts/$defs/I18NFormat')
Multi = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/texts/$defs/Multi')
Case = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/texts/$defs/Case')
Progress = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/texts/$defs/Progress')
Jinja = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/texts/$defs/Jinja')

# keyboard widgets
KeyboardWidget    = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/KeyboardWidget')
Button            = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/Button')
Url               = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/Url')
WebApp            = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/WebApp')
SwitchInlineQuery = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/SwitchInlineQuery')
Group             = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/Group')
Row               = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/Row')
Column            = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/Column')
ScrollingGroup    = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/ScrollingGroup')
ListGroup         = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/ListGroup')
Checkbox          = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/Checkbox')
Select            = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/Select')
Radio             = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/Radio')
Multiselect       = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/Multiselect')
Calendar          = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/Calendar')
Counter           = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/Counter')
SwitchTo          = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/SwitchTo')
Next              = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/Next')
Back              = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/Back')
Start             = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/Start')
Cancel            = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/keyboards/$defs/Cancel')

# inputs
InputWidget       = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/input/$defs/InputWidget')
MessageInput      = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/input/$defs/MessageInput')
TextInput         = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/input/$defs/TextInput')

# media
MediaWidget       = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/media/$defs/MediaWidget')
StaticMedia       = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/media/$defs/StaticMedia')
DynamicMedia      = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/media/$defs/DynamicMedia')


def create_text_widget(text):
    from vishuda.i18n import is_constant_string
    return Const(text=text) if is_constant_string(text) else I18NFormat(text=text)

def create_tokenized_string_widget(text):
    if isinstance(text, str):
        return create_text_widget(text)
    if text is None:
        return None
    texts = [create_tokenized_string_widget(t) for t in text if t is not None]
    multi = Multi(texts=texts, sep=' ')
    if any([isinstance(t, Multi) for t in texts]):
        multi.sep = '\n'
    return multi
