# *- coding: utf-8 -*-

from ngoschema import type_builder

FlightReservation = type_builder.load('https://schema.org/#/$defs/FlightReservation')
FoodEstablishmentReservation = type_builder.load('https://schema.org/#/$defs/FoodEstablishmentReservation')
TrainReservation = type_builder.load('https://schema.org/#/$defs/TrainReservation')
RentalCarReservation = type_builder.load('https://schema.org/#/$defs/RentalCarReservation')
EventReservation = type_builder.load('https://schema.org/#/$defs/EventReservation')
TaxiReservation = type_builder.load('https://schema.org/#/$defs/TaxiReservation')
LodgingReservation = type_builder.load('https://schema.org/#/$defs/LodgingReservation')
ReservationPackage = type_builder.load('https://schema.org/#/$defs/ReservationPackage')
BusReservation = type_builder.load('https://schema.org/#/$defs/BusReservation')
BoatReservation = type_builder.load('https://schema.org/#/$defs/BoatReservation')

__all__ = [
    'FlightReservation',
    'FoodEstablishmentReservation',
    'TrainReservation',
    'RentalCarReservation',
    'EventReservation',
    'TaxiReservation',
    'LodgingReservation',
    'ReservationPackage',
    'BusReservation',
    'BoatReservation',
]
