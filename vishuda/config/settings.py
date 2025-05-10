import pycountry

_ = lambda x: x


LANGUAGES = ['en', 'fr', 'ru', 'es', 'pt']
#LANGUAGES = ['en', 'fr']
DEFAULT_LANGUAGE = 'en'

LOCALE_MODULE_DOMAINS = {
    'pycountry' : [
        'iso639-3',  # Languages
        'iso3166-1',  # Countries
        'iso3166-2',  # Subdivisions of countries
        'iso4217',  # Currencies
        'iso15924',  # Scripts
    ],
    'vishuda': 'vishuda'
}

I18N_FORMAT_KEY = "telebot_i18n_format"

TELEGRAM_BOT_TOKEN = ''


CHATBOT_REFLECTIONS = {
  _("am"): _("are"),
  _("was"): _("were"),
  _("i"): _("you"),
  _("i'd"): _("you would"),
  _("i've"): _("you have"),
  _("i'll"): _("you will"),
  _("my"): _("your"),
  _("are"): _("am"),
  _("you've"): _("I have"),
  _("you'll"): _("I will"),
  _("your"): _("my"),
  _("yours"): _("mine"),
  _("you"): _("me"),
  _("me"): _("you")
}


SIMPLE_SETTINGS = {
    'OVERRIDE_BY_ENV': True,
}
