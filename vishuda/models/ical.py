# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

import re
import random

from ngoschema.models import instances
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.registries import repositories_registry
from ngoschema.repositories import MemoryRepository

import icalendar


class Event(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/ical/$defs/Event'


class Todo(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/ical/$defs/Todo'


class Journal(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/ical/$defs/Journal'


class FreeBusy(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/ical/$defs/FreeBusy'


class Timezone(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/ical/$defs/Timezone'


class Alarm(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/ical/$defs/Alarm'


class Calendar(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/ical/$defs/Calendar'
