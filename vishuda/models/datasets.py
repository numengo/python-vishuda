# -*- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

import pandas as pd
import geopandas as gpd
import numpy as np

from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.models import datasets


class NdArray(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/datasets/$defs/NdArray"


class Index(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/datasets/$defs/Index"


class DatetimeIndex(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/datasets/$defs/DatetimeIndex"


class Series(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/datasets/$defs/Series"


class TimeSeries(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/datasets/$defs/TimeSeries"


class Dataframe(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/datasets/$defs/Dataframe"


class DataframeSubset(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/datasets/$defs/DataframeSubset"

