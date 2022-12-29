# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

import dpath.util
#import dpath.path
from collections import ChainMap

from ngoschema import type_builder
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from .i18n import activate

Thing = type_builder.load('https://schema.org/#/$defs/Thing')


class SchemaOrg(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/schema_org/$defs/SchemaOrg"
    _lazyLoading = True
    _object2schema_org = None

    def __init__(self, value=None, **opts):
        # if initialized with a Thing, switch it to schema_org to use the setter
        validate = opts.pop('validate', not self._lazyLoading)
        if value and isinstance(value, Thing):
            opts['schema_org'] = value
            value = None
        ObjectProtocol.__init__(self, value=value, validate=False, **opts)
        # create a chained object2schema_org protected member that inherits from ancestors
        local = dict(self.object2schema_org or {})
        parents = [b.object2schema_org.ptype.default() for b in self._pbases if hasattr(b, 'object2schema_org')]
        # get identical parameters automatically
        cls_schema_org = self._items_type(self, 'schema_org')
        aliases = self._aliases
        dependencies = self._dependencies
        identical = self._propertiesAllowed.intersection(cls_schema_org._propertiesAllowed)
        # unalias the dictionary as we re going to deal with the dependencies
        self._object2schema_org = ChainMap(local, {aliases.get(k, k): k for k in identical}, *parents)
        # add dependencies to schema_org and as_schema_org
        for k in self._object2schema_org.keys():
            dependencies.setdefault(k, set())
            dependencies[k].add('schema_org')
        dependencies['as_schema_org'] = set(self._object2schema_org.keys())
        self._localized = set(self.localized).union([aliases.get(k, k) for k in self.localized])
        if validate:
            self.do_validate(items=False)

    def get_as_schema_org(self):
        ret = {}
        language = self.language
        localized = self._localized
        activate(language)
        for ok, sok in self._object2schema_org.items():
            v = self[ok]
            if v is not None:
                if sok in localized:
                    v = _(v)
                elif isinstance(v, SchemaOrg):
                    v.language = self.language
                    v = v.as_schema_org
                dpath.util.new(ret, sok, v)
        cls_schema_org = self._items_type(self, 'schema_org')
        return cls_schema_org(ret)

    def set_schema_org(self, instance):
        for ok, sok in self._object2schema_org.items():
            v = instance[sok]
            if v is not None:
                self._set_dataValidated(ok, v)
