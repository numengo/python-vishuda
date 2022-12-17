# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

import re

from ngoschema.models import instances
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from threading import local
import gettext

# Translations are cached in a dictionary for every language.
# The active translations are stored by threadid to make them thread local.
_translations = {}
_active = local()


#class LocaleDirDomains(with_metaclass(SchemaMetaclass)):
#    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/LocaleDirDomains"


#class Translations(with_metaclass(SchemaMetaclass)):
#    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/Translations"


class Translatable(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/Translatable"


class TranslatableMixin(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/TranslatableMixin"


class TranslatationMixin(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/i18n/$defs/TranslatationMixin"
