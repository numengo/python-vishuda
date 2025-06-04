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

STATETYPE_EMOJI_MAPPING = {
    "entry_point": ":house:",
    "function": ":hammer_and_wrench:",
    "command": ":gear:",
    "execute": ':rocket:',
    "parameter": ":wrench:",
    "required": ":double_exclamation_mark:",
    "missing": ":warning:",
    "input": ":inbox_tray:",
    "output": ":outbox_tray:",
    "choices": ":clipboard:",
    "string": ":input_latin_letters:",
    "enum": ":clipboard:",
    "number": ":input_numbers:",
    "float": ":straight_ruler:",
    "array": ":page_facing_up:",
    "object": ":package:",
    "path": ":paperclip:",
    "date": ":calendar:",
    "method": ":hammer_and_wrench:",
    "image": ":framed_picture:",
    "boolean": ":check_mark:",
    "error": ":no_entry:",
    "url": ":link:",
    "group": ":busts_in_silhouette:",
    "ip": ":globe_with_meridians:",
}

I18N_FORMAT_KEY = "telebot_i18n_format"
FROM_USER_ID_KEY = "telebot_user_id"
FROM_USER_FIRST_NAME_KEY = "telebot_user_first_name"
FROM_USER_LAST_NAME_KEY = "telebot_user_last_name"
FROM_USER_USERNAME_KEY = "telebot_user_username"

TELEBOT_ADMINS = []

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
