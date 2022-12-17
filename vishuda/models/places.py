# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema.models import instances
from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngogeo import ngogeo

from .schema_org import SchemaOrg


class GeoCoordinates(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/places/$defs/GeoCoordinates"
    _lazyLoading = True

    def get_point(self):
        pass

    def get_geo(self):
        pass

    def get_postal(self):
        pass

    def get_country(self):
        pass

    def set_schema_org(self, geo_coordinates):
        SchemaOrg.set_schema_org(self, geo_coordinates)

    #def get_schema_org(self):
    #    return SchemaOrg.get_schema_org(self)

    #    def set_schema_org(self, postal_address):
    #        self['street-address'] = postal_address.streetAddress
    #        self['locality'] = postal_address.addressLocality
    #        self['postal-code'] = postal_address.postalCode
    #        self['post-office-box'] = postal_address.postOfficeBoxNumber
    #        self['region'] = postal_address.addressRegion
    #        self['country-name'] = postal_address.addressCountry
    #
    #    def get_schema_org(self):
    #        return PostalAddress(
    #            streetAddress=self['street-address'],
    #            addressLocality=self['locality'],
    #            postOfficeBoxNumber=self['post-office-box'],
    #            postalCode=self['postal-code'],
    #            addressRegion=self['region'],
    #            addressCountry=self['country-name'],
    #        )


class Address(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/places/$defs/Address"


class Card(with_metaclass(SchemaMetaclass)):
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

    def get_schema_org(self):
        pass


class Place(with_metaclass(SchemaMetaclass)):
    _id = r"https://numengo.org/vishuda#/$defs/places/$defs/Place"

    def __init__(self, *args, **kwargs):
        instances.Entity.__init__(self, *args, **kwargs)
