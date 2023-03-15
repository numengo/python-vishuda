# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

import pathlib
import os

from ngoschema.models import instances
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from .things import Person, Organization
from .things.intangibles.structured_values.contact_points import PostalAddress
from .things.intangibles.services.financial_products import BankAccount

from .personas import Person


class ContentType(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/auth/$defs/ContentType"


class Permission(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/auth/$defs/Permission"


class Group(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/auth/$defs/Group"


class User(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/auth/$defs/User"

    def __init__(self, *args, **kwargs):
        instances.Entity.__init__(self, *args, **kwargs)

    @staticmethod
    def get_environ_username():
        return os.environ.get('USERNAME')

#    def set_schema_org(self, person):
#        email
#        description
#        Email
#        address
#
#
#username
#email
#address
#firstName
#lastName
#fn


def get_schema_org(self):
        pass


class BankAccount(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/auth/$defs/BankAccount"

#    def set_schema_org(self, bank_account):
#        holder_name
#        bank_name
#        bank_street
#        bank_city
#        bank_zip
#        agency
#        swift_bic
#        iban
#
#        bankAccountType
#
#
#    def get_schema_org(self):
#        pass
