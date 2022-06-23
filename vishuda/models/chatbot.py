# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

import re
import random

from ngoschema.models import instances
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.registries import repositories_registry
from ngoschema.repositories import MemoryRepository

from nltk.chat.util import Chat, reflections


class Pair(with_metaclass(SchemaMetaclass)):
    """Each pattern is a regular expression matching the user's statement or question,
        e.g. r'I like (.*)'.  For each such pattern a list of possible responses
        is given, e.g. ['Why do you like %1', 'Did you ever dislike %1'].  Material
        which is matched by parenthesized sections of the patterns (e.g. .*) is mapped to
        the numbered positions in the responses, e.g. %1."""
    _id = 'https://numengo.org/vishuda#/$defs/app/$defs/chatbot/$defs/Pair'


class Chatbot(with_metaclass(SchemaMetaclass, Chat)):
    """ This object represents a chatbot.

    :param pairs: list of patterns and responses.
    :param reflections: A mapping between first and second person expressions
    """
    _id = 'https://numengo.org/vishuda#/$defs/app/$defs/chatbot/$defs/Chatbot'

    def __init__(self, *args, **kwargs):
        ObjectProtocol.__init__(self, *args, **kwargs)
        Chat.__init__(self, [[p.regex, p.responses] for p in self.pairs], self.reflections)

    def translate(self, str, dict):
        """ take a string, replace any words found in dict.keys()  with the corresponding dict.values() """
        words = str.lower().split()
        keys = dict.keys();
        for i in range(0,len(words)):
            if words[i] in keys:
              words[i] = dict[words[i]]
        return ' '.join(words)

    def respond2(self, str):
        """take a string, a set of regexps, and a corresponding
         set of response lists; find a match, and return a randomly
         chosen response from the corresponding list."""
        # find a match among keys
        for i in range(0, len(self.keys)):
            match = self.keys[i].match(str)
            if match:
                # found a match ... stuff with corresponding value
                # chosen randomly from among the available options
                resp = random.choice(self.values[i])
                # we've got a response... stuff in reflected text where indicated
                pos = resp.find('%')
                while pos > -1:
                    num = int(resp[pos+1:pos+2])
                    resp = resp[:pos] + \
                      self.translate(match.group(num), self.reflections) + \
                      resp[pos+2:]
                    pos = resp.find('%')
                # fix munged punctuation at the end
                if resp[-2:] == '?.': resp = resp[:-2] + '.'
                if resp[-2:] == '??': resp = resp[:-2] + '?'
                return resp
