import pycountry

#LANGUAGES = ['en', 'fr', 'ru', 'es', 'pt']
LANGUAGES = ['en', 'fr']

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

TELEGRAM_BOT_TOKEN = ''


CHATBOT_REFLECTIONS = {
  "am": "are",
  "was": "were",
  "i": "you",
  "i'd": "you would",
  "i've": "you have",
  "i'll": "you will",
  "my": "your",
  "are": "am",
  "you've": "I have",
  "you'll": "I will",
  "your": "my",
  "yours": "mine",
  "you": "me",
  "me": "you"
}
