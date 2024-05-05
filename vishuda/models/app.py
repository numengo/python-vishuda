# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema.models.instances import Entity
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
import appdirs
from pathlib import Path


class Model(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/app/$defs/Model"


class Fixture(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/app/$defs/Fixture"


class View(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/app/$defs/View"


class Namespace(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/app/$defs/Namespace"


class EntryPoint(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/app/$defs/EntryPoint"

    def get_symbol_name(self):
        return self.symbol.__name__

    def get_symbol_module(self):
        return self.symbol.__module__


class App(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/app/$defs/App"

    def get_user_config_dir(self, appname=None, appauthor=None, version=None):
        return Path(appdirs.user_config_dir(appname, appauthor, version))

    def get_user_data_dir(self, appname=None, appauthor=None, version=None):
        return Path(appdirs.user_data_dir(appname, appauthor, version))

    def get_user_cache_dir(self, appname=None, appauthor=None, version=None):
        return Path(appdirs.user_cache_dir(appname, appauthor, version))

    def get_user_state_dir(self, appname=None, appauthor=None, version=None):
        return Path(appdirs.user_state_dir(appname, appauthor, version))

    def get_user_log_dir(self, appname=None, appauthor=None, version=None):
        return Path(appdirs.user_log_dir(appname, appauthor, version))

    #def __init__(self, *args, **kwargs):
    #    Entity.__init__(self, *args, **kwargs)
