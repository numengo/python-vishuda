# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

import inflection

from ngoschema.models import instances
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngogeo.territories import get_world, Postal, Country, City, Location
from ngoschema.registries import repositories_registry
from ngoschema.repositories import MemoryRepository

from .things.intangibles.structured_values import GeoCoordinates as GeoCoordinates_so
from .things.intangibles.structured_values.contact_points import PostalAddress as PostalAddress_so
from .things import Place as Place_so
from .schema_org import SchemaOrg, SchemaOrgMetaclass
from .emojis.flags import country_flag

world = get_world()
#world = None


class HasCountry(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/emojis/$defs/HasCountry"

    def get_country_emoji(self):
        if self.country:
            flag_name = 'flag_' + inflection.underscore(self.country.name)
            return getattr(country_flag, flag_name, None)


class Address(with_metaclass(SchemaOrgMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/places/$defs/Address"

    def get_country(self):
        country = self.addressCountry
        res = world.find_by_name(country) if country else None
        return res

    def get_postal(self):
        country = self.country
        postal_code = self.postalCode
        if country and postal_code:
            country.with_postals = True
            pc = country.search_postal_code(postal_code, unique=True)
            if len(pc):
                return Postal(postal=pc, parent=country)

    def get_city(self):
        country = self.country
        locality = self.locality
        postal_code = self.postalCode
        if country and (locality or postal_code):
            country.with_postals = True
            return country.locate_city(name=locality, postal_code=postal_code)

    def get_admin(self):
        city = self.city
        if city is not None:
            return city.admin3


class GeoCoordinates(with_metaclass(SchemaOrgMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/places/$defs/GeoCoordinates"
    _lazyLoading = True

    def get_country(self):
        country = self.postalAddress.country if self.postalAddress is not None else None
        if country is None:
            location = self.location
            if location:
                country = world.locate_country(location, point_crs=self.crs)
        return country

    def get_admin(self):
        admin = self.postalAddress.admin if self.postalAddress is not None else None
        if admin is None:
            country = self.country
            location = self.location
            if location and country:
                country.with_postals = True
                admin = country.locate(location, point_crs=self.crs)
        return admin

    def geoname(self):
        gid = self.geonameid
        if gid:
            return self.admin.find_geoname_id(gid)


class Card(with_metaclass(SchemaOrgMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/places/$defs/Card"

#    def set_schema_org(self, card):
#        if isinstance(card, Person):
#            address
#            familyName
#            givenName
#            additionalName
#            honorificPrefix
#            honorificSuffix
#            nickname
#            email
#            tel
#            adr
#            geo
#            tz
#            photo
#            logo
#            sound
#            bday
#            title
#            role
#            org
#            organizationName
#            organizationUnit
#        elif isinstance(card, Organization):
#            address
#            email
#            faxNumber
#            legalName
#            location
#            telephone


class Place(with_metaclass(SchemaOrgMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/places/$defs/Place"

    def __init__(self, *args, **kwargs):
        instances.Entity.__init__(self, *args, **kwargs)
        SchemaOrg.__init__(self, *args, **kwargs)


@repositories_registry.register()
class PlaceRepository(with_metaclass(SchemaMetaclass, MemoryRepository)):
    instanceClass = Place


place_repo = PlaceRepository()
