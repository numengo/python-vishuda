# *- coding: utf-8 -*-
"""telebot API Telbot."""
from typing import Union, List
import inflection

from ngoschema import type_builder
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.models import Instance
from gettext import gettext
from . import telebot_widgets
from .. import settings

_ = gettext


class TelebotInstance(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/TelebotInstance'
    _telebot = None

    def set_context(self, context, **opts):
        Instance.set_context(self, context, **opts)
        self._telebot = next((m for m in self._context.maps if isinstance(m, Telebot)), None)
        self._parent_command = next((m for m in self._context.maps if isinstance(m, Command)), None)
        self._parent_state = next((m for m in self._context.maps if isinstance(m, State)), None)
        self._parent_states_group = next((m for m in self._context.maps if isinstance(m, StatesGroup)), None)
        self._parent_entry_point = next((m for m in self._context.maps if isinstance(m, EntryPoint)), None)
        if '_telebot' in self._properties:
            self._set_dataValidated('_telebot', self._telebot)
        if '_parentEntryPoint' in self._properties:
            self._set_dataValidated('_parentEntryPoint', self._parent_entry_point)
        if '_parentCommand' in self._properties:
            self._set_dataValidated('_parentCommmand', self._parent_command)
        if '_parentStatesGroup' in self._properties:
            self._set_dataValidated('_parentStatesGroup', self._parent_states_group)
        if '_parentState' in self._properties:
            self._set_dataValidated('_parentState', self._parent_state)


class Action(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/actions/$defs/Action'

    def get_triggers(self):
        triggers = ['command', 'message', 'edited_message', 'channel_post', 'edited_channel_post',
                    'inline_query', 'chosen_inline_result', 'callback_query', 'shipping_query',
                    'pre_checkout_query', 'poll', 'poll_answer', 'my_chat_member', 'chat_member']
        return {trigger: self[trigger] for trigger in triggers if trigger in self}


Message = type_builder.load('https://numengo.org/telebot#/$defs/actions/$defs/Message')
Command = type_builder.load('https://numengo.org/telebot#/$defs/actions/$defs/Command')

Callback = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/callables/$defs/Callback')
DataGetter = type_builder.load('https://numengo.org/telebot#/$defs/dialog/$defs/callables/$defs/DataGetter')


class DeepLink(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/DeepLink'

    def get_url(self):
        from telegram import helpers
        if self.bot_username:
            return helpers.create_deep_linked_url(self.bot_username, self.payload, group=self.group)

    def get_link(self, link_text=None):
        link_text = link_text or self.link_text
        url = self.url
        if url:
            return f'<a href="{url}">{link_text}</a>'


class State(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/State'

    def get_required(self):
        required = self._items_evaluate('required')
        return required if required is not None else True


class StatesGroup(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/StatesGroup'

    def __init__(self, *states, **kwargs):
        if states:
            kwargs['states'] = kwargs.get('states', []) + list(states)
        Instance.__init__(self, **kwargs)
        self.states


class BotConfig(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/BotConfig'


class Widget(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/dialog/$defs/widgets/$defs/Widget'


class Window(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/dialog/$defs/Window'


class Dialog(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/dialog/$defs/Dialog'


class EntryPoint(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/EntryPoint'


class Telebot(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/Telebot'

    def __init__(self, value=None, context=None, **opts):
        TelebotInstance.__init__(self, value, context=context, **opts)
