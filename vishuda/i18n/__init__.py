# *- coding: utf-8 -*-
import re
import emoji

from ngoschema.loaders.module import register_locale_dir
from threading import local
from gettext import GNUTranslations
import gettext as gettext_module

from .. import settings

# pycountry provides locales for countries, languages, currencies
register_locale_dir('pycountry', 'locales')

# Translations are cached in a dictionary for every language.
# The active translations are stored by threadid to make them thread local.
_translations = {}
_active_language = local()
_active = local()

# The default translation is based on the settings file.
_default = None

# Format of Accept-Language header values. From RFC 2616, section 14.4 and 3.9
# and RFC 3066, section 2.1
accept_language_re = re.compile(r'''
        ([A-Za-z]{1,8}(?:-[A-Za-z0-9]{1,8})*|\*)      # "en", "en-au", "x-y-z", "es-419", "*"
        (?:\s*;\s*q=(0(?:\.\d{,3})?|1(?:\.0{,3})?))?  # Optional "q=1.00", "q=0.8"
        (?:\s*,\s*|$)                                 # Multiple accepts per header.
        ''', re.VERBOSE)

language_code_re = re.compile(
    r'^[a-z]{1,8}(?:-[a-z0-9]{1,8})*(?:@[a-z0-9]{1,20})?$',
    re.IGNORECASE
)

language_code_prefix_re = re.compile(r'^/(\w+([@-]\w+)?)(/|$)')


def to_language(locale):
    """Turn a locale name (en_US) into a language name (en-us)."""
    p = locale.find('_')
    if p >= 0:
        return locale[:p].lower() + '-' + locale[p + 1:].lower()
    else:
        return locale.lower()


def to_locale(language):
    """Turn a language name (en-us) into a locale name (en_US)."""
    language = language.lower()
    parts = language.split('-')
    try:
        country = parts[1]
    except IndexError:
        return language
    # A language with > 2 characters after the dash only has its first
    # character after the dash capitalized; e.g. sr-latn becomes sr_Latn.
    # A language with 2 characters after the dash has both characters
    # capitalized; e.g. en-us becomes en_US.
    parts[1] = country.title() if len(country) > 2 else country.upper()
    return parts[0] + '_' + '-'.join(parts[1:])


def find_module_domains():
    from vishuda.models.i18n import LocaleDirDomains
    from ngoschema.loaders.module import locale_module_loader
    return {
        module : LocaleDirDomains(
            module=module,
            locale_dir=locale_module_loader.subfolder(module),
            domains=domains)
        for module, domains in settings.LOCALE_MODULE_DOMAINS.items()}


module_domains = find_module_domains()


def make_i18n(languages=None):
    from vishuda.models.i18n import I18nCore
    languages = languages or settings.LANGUAGES
    i18n_core = I18nCore(
        languages=languages,
        locale_dir_domains=list(module_domains.values()),
    )
    return i18n_core


def find_locales(languages=None):
    """
    Load all compiled locales from path

    :return: dict with locales
    """
    from vishuda.models.i18n import Locale
    languages = languages or settings.LANGUAGES
    return {
        lang: Locale(
            locale_dirs=list(module_domains.values()),
            locale=lang)
        for lang in languages}


#_translations = find_locales(settings.LANGUAGES)
_translations = make_i18n().get_locales_root()

def active_language():
    return getattr(_active_language, 'value', None)


def activate(language):
    """
    Fetch the translation object for a given language and install it as the
    current translation object for the current thread.
    """
    if not language:
        return
    _active.value = t = _translations.get(language)
    if t is not None:
        t.install(['gettext', 'ngettext', 'lgettext', 'lngettext'])
    _active_language.value = language
    return t


def deactivate():
    """
    Uninstall the active translation object so that further _() calls resolve
    to the default translation object.
    """
    if hasattr(_active, "value"):
        del _active.value
    if hasattr(_active_language, "value"):
        del _active_language.value


def deactivate_all():
    """
    Make the active translation object a NullTranslations() instance. This is
    useful when we want delayed translations to appear as the original string
    for some reason.
    """
    _active.value = gettext_module.NullTranslations()
    _active.value.to_language = lambda *args: None


def is_constant_string(s: str) -> bool:
    """
    Determines if a string is a constant (not translatable).
    Returns True if the string is a constant, False if it should be translated.
    """
    # 1. Empty string or whitespace only
    if not s or s.isspace():
        return True

    # 2. String containing only emojis
    if emoji.is_emoji(s) or all(emoji.is_emoji(c) for c in s):
        return True

    # 3. String containing only punctuation, symbols, or digits (no letters)
    if re.match(r'^[\W\d]+$', s):  # \W = non-letters, \d = digits
        return True

    # 4. Specific cases: URLs, hashtags, mentions, etc.
    if re.match(r'^(https?://|#|@)\S+$', s):
        return True

    # 5. If the string contains letters, assume it's a word or phrase to translate
    return False


def get_localized_message(message, locale):
    cur_lang = active_language()
    translations = activate(locale)
    output = translations.gettext(message)
    if cur_lang != locale:
        activate(cur_lang)
    return output
