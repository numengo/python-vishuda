from telegram import InlineKeyboardMarkup, InlineKeyboardButton #, ReplyKeyboardRemove, ForceReply

from core.telegram import *

from . models import Activity

@user_arg
@stop_wait_for_reply
def command(update, context, user):

    message = update.message if update.message else update.callback_query.message

    kbd_layout = [
                  [InlineKeyboardButton('🌍📍 Où ?',                     callback_data='network_places'),
                   InlineKeyboardButton('⛑👩‍🍳 Activités / Compétences', callback_data='network_activity')], # ⛳️⚽️⚕️👩‍🍳👷‍♂️👩‍🎨🧶🪡⛑🤼⛹️🧘‍♂️🎹🩺

                  [InlineKeyboardButton('🚜🛠 Matériel',                 callback_data='network_hardware'), # 🚜🚧🗜🎥🛠
                   InlineKeyboardButton('🏠 Hébergement',                callback_data='network_hosting')],

                  [InlineKeyboardButton('💦🌲⛰ Ressources',             callback_data='network_ressources'), # 🌍💦🪵🌲🌾🏕⛰
                   InlineKeyboardButton('☀️ Solaris',                     callback_data='network_solaris')],

                  [InlineKeyboardButton('« Retour',                      callback_data='core_start')]
                 ]
    kbd = InlineKeyboardMarkup(kbd_layout)

    txt = """Bienvenue dans le réseau des Cagots 🙂""" + \
          """\n\n""" + \
          """J'aurais besoin que tu me communiques quelques renseignements sur toi """ + \
          """pour que je puisse te mettre en relation avec les Cagots près de chez toi, """ + \
          """développer un réseau d'entraide, etc. Pour le moment je collecte les informations, """ + \
          """lorsque j'en aurai suffisamment je te recontacterai pour te dire comment trouver ce que tu cherches. """ + \
          """Toutes les premières mises en relation passeront par moi, il n'y aura pas de contact direct sans l'accord des deux parties.""" + \
          """\n\n""" + \
          """☀️ Je t'invite aussi à te rapprocher du réseau Solaris. C'est un "Internet Humain", le plus développé sur le plan local. """ + \
          """Je pourrai t'aider à trouver la cellule Solaris la plus proche de chez toi. """

    edit_or_reply(update, txt, reply_markup=kbd)


@user_arg
@stop_wait_for_reply
def button(update, context, user, data=None):

    query = update.callback_query # https://python-telegram-bot.readthedocs.io/en/stable/telegram.callbackquery.html

    if data == None: data = query.data

    if data.find('_NEXT_') != -1: data, data_next = data.split('_NEXT_')
    else: data_next = None

    # NETWORK
    if data == "network": command(update, context, user)

    query_answer(query)