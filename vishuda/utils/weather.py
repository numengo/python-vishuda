# *- coding: utf-8 -*-

# https://github.com/irevenko/info-bot/blob/master/utils/weather.py

import pyowm
from ... import settings

owm = pyowm.OWM(settings.OWM_TOKEN)


def get_forecast(place):
	observation = owm.weather_at_place(place)
	weather = observation.get_weather()
	temperature = weather.get_temperature('celsius')["temp"]
	wind = weather.get_wind()['speed']
	clouds = weather.get_clouds()
	humidity = weather.get_humidity()
	forecast = f"🏙 In {place} is currently {weather.get_detailed_status()} \n🌡️ {temperature} °C \n💨 {wind} m/s \n🌫️ {clouds} % \n💦 {humidity} %"
	return forecast
