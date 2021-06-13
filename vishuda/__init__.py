# -*- coding: utf-8 -*-

"""Top-level package for Vishuda."""

__author__ = """Cedric ROMAN"""
__email__ = 'roman@numengo.com'
__version__ = '0.1.0'

from simple_settings import LazySettings
settings = LazySettings('vishuda.config.settings', 'VISHUDA_.environ')

# PROTECTED REGION ID(vishuda.init) ENABLED START
from ngoschema.loaders import register_module
register_module('vishuda')
import ngomm_cms.models

from .vishuda import *
__all__ = [
    'settings',
]
# PROTECTED REGION END
