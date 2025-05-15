from collections.abc import Sequence
from emoji import emojize

from ngoschema.datatypes import Symbol


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
