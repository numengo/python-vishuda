
def create_buttons_menu(buttons=[], n_cols=1, header_buttons=[], footer_buttons=[]):
    menu = [buttons[i:i + n_cols] for i in range(0, len(buttons), n_cols)]
    if header_buttons:
        menu.insert(0, header_buttons if isinstance(header_buttons, list) else [header_buttons])
    if footer_buttons:
        menu.append(footer_buttons if isinstance(footer_buttons, list) else [footer_buttons])
    return menu


def create_lang_buttons(languages, state_name='user_lang'):
    from telegram import InlineKeyboardButton
    from pycountry import languages as pylanguages
    from vishuda.i18n import get_lang_flag
    return [InlineKeyboardButton(text=f'{get_lang_flag(l)} {pylanguages.get(alpha_2=l).name}',
                                 callback_data='set_' + state_name + ':' + l)
            for l in languages]


__all__ = [
    'create_buttons_menu',
    'create_lang_buttons',
]
