from collections.abc import Sequence
from emoji import emojize

from ngoschema.datatypes import Symbol
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol


def emojize_string(string):
    if string.startswith('vishuda.emojis'):
        return str(Symbol.convert(string))
    return emojize(string)


def emojize_tokenized_string(tokens):
    if isinstance(tokens, str):
        return emojize_string(tokens)
    tokens = list(tokens)
    for i, tok in enumerate(tokens):
        tokens[i] = emojize_tokenized_string(tok)
    return tokens


class HasEmojis(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/emojis/$defs/HasEmojis'

    def get_emoji(self):
        emoji = self._get_data('emoji')
        return emojize_string(emoji) if emoji else None

    def get_emojis(self):
        emojis = self._get_data('emojis')
        emoji = self.emoji
        if emojis:
            return [emojize_string(e) for e in emojis]
        elif emoji:
            return [emoji]
        else:
            return []

    def get_emoji_after(self):
        emoji = self._get_data('emoji_after')
        return emojize_string(emoji) if emoji else None

    def get_emojis_after(self):
        emojis = self._get_data('emojis_after')
        emoji = self.emoji_after
        if emojis:
            return [emojize_string(e) for e in emojis]
        elif emoji:
            return [emoji]
        else:
            return []
