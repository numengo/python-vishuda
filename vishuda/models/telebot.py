# *- coding: utf-8 -*-
"""telebot API Telbot."""
from typing import Union, List

from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.models import Instance
from .. import settings


class Action(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/actions/$defs/Action'


class Message(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/actions/$defs/Message'


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


class StatesGroup(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/StatesGroup'

    def __init__(self, *states, **kwargs):
        if states:
            kwargs['states'] = kwargs.get('states', []) + list(states)
        Instance.__init__(self, **kwargs)
        self.states

    def get_states(self):
        sgs = self._get_data('states')
        return sgs if sgs else [State(name=self.states_group_name)]

    def set_states(self, states):
        sgn = self.states_group_name
        for state in states:
            state.state_full_name = f'{sgn}__{state.state_name}'


class BotConfig(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/BotConfig'


class Telebot(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/telebot#/$defs/Telebot'

    def __init__(self, value=None, context=None, **opts):
        ObjectProtocol.__init__(self, value, context=context, **opts)
