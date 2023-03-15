# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema.models import instances
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.repositories import MemoryRepository
from ngoschema.registries import repositories_registry

from .schema_org import SchemaOrg, SchemaOrgMetaclass
from . import places
from .things import Organization as Organization_so, Person as Person_so


#class User(with_metaclass(SchemaMetaclass)):
#    _id = r"https://numengo.org/vishuda#/$defs/personas/$defs/User"
#
#    def __init__(self, *args, **kwargs):
#        instances.Entity.__init__(self, *args, **kwargs)


class Organization(with_metaclass(SchemaOrgMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/personas/$defs/Organization"

    def __init__(self, *args, **kwargs):
        instances.Entity.__init__(self, *args, **kwargs)


class Person(with_metaclass(SchemaOrgMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/personas/$defs/Person"

    def __init__(self, *args, **kwargs):
        instances.Entity.__init__(self, *args, **kwargs)

    def get_birthAstroChart(self):
        d = self.bday
        p = self.birthPlace
        if p is not None and d is not None:
            from ngoeso.astro.models import AstrologicalChart
            return AstrologicalChart(date=d, time=self.birthTime, location=p.city)

    def get_birthAstroChinese(self):
        d = self.bday
        if d is not None:
            from ngoeso.astro.models import ChineseZodiac
            return ChineseZodiac(birth_date=d)


class Merchant(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/personas/$defs/Merchant"


class Manufacturer(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/personas/$defs/Manufacturer"


class Customer(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/personas/$defs/Customer"


class BusinessCustomer(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/personas/$defs/BusinessCustomer"


@repositories_registry.register()
class PersonRepository(with_metaclass(SchemaMetaclass, MemoryRepository)):
    _instanceClass = Person


person_repo = PersonRepository()


@repositories_registry.register()
class OrganizationRepository(with_metaclass(SchemaMetaclass, MemoryRepository)):
    _instanceClass = Organization


organization_repo = OrganizationRepository()
