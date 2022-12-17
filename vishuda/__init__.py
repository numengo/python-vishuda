# -*- coding: utf-8 -*-

"""Top-level package for Vishuda."""

__author__ = """Cedric ROMAN"""
__email__ = 'roman@numengo.com'
__version__ = '0.1.0'

from simple_settings import LazySettings
settings = LazySettings('vishuda.config.settings')

# PROTECTED REGION ID(vishuda.init) ENABLED START
from ngoschema import DEFAULT_CONTEXT, APP_CONTEXT
DEFAULT_CONTEXT.add_local_entries(**getattr(settings, 'DEFAULT_CONTEXT', {}))
APP_CONTEXT.add_local_entries(_vishuda_env=settings.as_dict())

from ngoschema.loaders import register_module
register_module('vishuda')
import ngogeo
import ngomm_cms
#import ngomm_cms.models

from .vishuda import *
__all__ = [
    'settings',
]
# PROTECTED REGION END
