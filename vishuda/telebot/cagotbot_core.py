import re, unidecode
from telegram import ReplyKeyboardRemove, InlineKeyboardMarkup, InlineKeyboardButton, ForceReply

from django.forms import ModelForm
from django.urls import reverse

from sesame.utils import get_query_string

from . telegram import *
from . models import User, Geolocation, Email, PhoneNumber, FindMe, TelegramGroup
from . utils import GEOLOCATORS


def commands_get():

    from market.cagotbot  import command as command_market
    from network.cagotbot import command as command_network
    from solaris.cagotbot import command as command_solaris

    cmds = [{'command':     'start',
             'cb':          start,
             'cb_btn':      'core_start',
             'description': '🚀 Démarrer'},

            {'command':     'apropos',
             'cb':          about,
             'cb_btn':      'core_about',
             'description': 'ᛉ⩛ Mais qui sont les @Cagots ? ⩛ᛉ'},

            # {'command':     'reseau',
            #  'cb':          command_network,
            #  'cb_btn':      'network',
            #  'description': '👨\u200d👩\u200d👧\u200d👦 Les Cagots près de chez toi'},

            {'command':     'achats',
             'cb':          command_market, # For the moment market is only groupbuy.
             'cb_btn':      'groupbuy',
             'description': '🛍️ Achats groupés'},

            {'command':     'solaris',
             'cb':          command_solaris,
             'cb_btn':      'solaris',
             'description': '🌞 Réseau Solaris'},

            {'command':     'web',
             'cb':          web,
             'cb_btn':      'core_web',
             'description': '🖥🖱️ Services Web'},

            {'command':     'partager',
             'cb':          share,
             'cb_btn':      'core_share',
             'description': '📢 Faire connaître @CagotBot'},

            {'command':     'prevention_telegram',
             'cb':          prevention_telegram,
             'cb_btn':      'core_prevention_telegram',
             'description': '🕊 Prévention coupure Telegram'}] # 💪✊🏃‍♂️🕊🔗🤝

    return cmds


@user_arg
@stop_wait_for_reply
def start(update, context, user):

    txt = """Bienvenue sur @CagotBot, le bot des @Cagots !""" + \
          """\n\n""" + \
          """Je suis un jeune bot en développement, si tu trouves des bugs n'hésites pas à le signaler sur @Cagots """ + \
          """(vérifie en mettant Telegram à jour d'abord STP)."""

    kbd_layout = []

    for c in commands_get():
        if 'cb_btn' in c and c['cb_btn'] != 'core_start':
            kbd_layout.append([InlineKeyboardButton(c['description'], callback_data=c['cb_btn'])])

    kbd = InlineKeyboardMarkup(kbd_layout)
    edit_or_reply(update, txt, reply_markup=kbd)


@user_arg
@stop_wait_for_reply
def about(update, context, user):

    message = update.message if update.message else update.callback_query.message

    if message.chat.type == 'group':
        intro = """Salut, je suis @CagotBot, le bot qui aide les exclus à s'organiser face à l'apartheid "sanitaire" !""" + \
              """\n\n""" + \
              """Viens discuter avec moi (clique sur mon pseudo @CagotBot) pour commencer à voir ce que je peux faire pour toi 😉""" + \
              """\n\n"""
    else: intro = ''

    message.reply_text(intro + \
        """ᛉ⩛ Mais qui sont les @Cagots ? ⩛ᛉ"""
        """\n\n"""
        """Nous avons imprimé quelques petits tracts cet été pour rappeler l'histoire des @Cagots. """
        """Le Maquis à Paris en a reçu un, personne ne le lit mieux que lui ! 👇"""
        """\n\n"""
        """https://www.youtube.com/watch?v=7lud_IjuAdk""", reply_markup=ReplyKeyboardRemove())


@user_arg
@stop_wait_for_reply
def web(update, context, user):

    if update.callback_query:
        if update.callback_query.data == 'core_web_refresh':
            query_answer(update.callback_query, sesame_refresh_answer_txt)
        elif update.callback_query.data == 'core_web_password_reset':
            user.password = ''
            user.save()
            query_answer(update.callback_query,
                        'Mot-de-passe réinitialisé, clique sur\n« 🖥🖱️ Accéder aux services Web »\npour te reconnecter et entrer un nouveau mot-de-passe.',
                        show_alert=True)

    txt = """Certains services de @CagotBot sont accessibles de façon partielle, complémentaire (ou exclusive) via le Web. """ + \
          """De toute façon à terme il nous faudra nous passer de Telegram, pour des raisons d'indépendance, et donc privilégier le Web."""

    registered = user.registered()

    if not registered:
        txt += """\n\nTu n'as pas encore finalisé ton identification sur le Web. """ + \
              """Tu peux y accéder quand même en cliquant sur le lien ci-dessous. """ + \
              """Mais une fois en ligne prends quelques secondes pour t'inscrire, comme ça tu seras indépendant de Telegram 😉""" + sesame_refresh_txt

    if bool(user.username): txt += """\n\nTon nom d'utilisateur est %s.""" % user.username

    kbd_layout = []

    url = '%s%s' % (settings.BASE_URL_TO_SELF, reverse('core:home'))
    if not registered: url = '%s%s' % (url, get_query_string(user))
    kbd_layout.append([InlineKeyboardButton('🖥🖱️ Accéder aux services Web', url=url)])

    if registered:
        kbd_layout.append([InlineKeyboardButton('🧹 Réinitialiser le mot-de-passe', callback_data='core_web_password_reset')])

    back = [InlineKeyboardButton('« Retour', callback_data='core_start')]
    if not registered: back.append(InlineKeyboardButton('🔄', callback_data='core_web_refresh'))
    kbd_layout.append(back)

    kbd = InlineKeyboardMarkup(kbd_layout)

    edit_or_reply(update, txt, reply_markup=kbd)


@user_arg
@stop_wait_for_reply
def share(update, context, user):

    message = update.message if update.message else update.callback_query.message
    message.reply_text(
        """Tu connais des exclus que je puisse aider ? N'hésite pas à partager le message ci-dessous avec tes groupes, """ + \
        """tchats, contacts, etc… 😉\n\n👇""", reply_markup=ReplyKeyboardRemove())
    message.reply_text(
        """Découvre @CagotBot ! Le bot qui aide les exclus à s'organiser face à l'apartheid "sanitaire" 😉""")


@user_arg
@stop_wait_for_reply
def prevention_telegram(update, context, user):

    message = update.message if update.message else update.callback_query.message
    txt     = """Telegram est un super outil, mais il n'est pas sûr qu'on y ait toujours accès. """ + \
              """Si on ne se prépare pas à l'éventualité d'en être privés, nous risquons d'être pris au dépourvu. """ + \
              """Quelques gestes simples peuvent nous prémunir d'être privé de notre réseau de Cagots tributaire de Telegram. """ + \
              """\n\n""" + \
              """Pour le moment on va se contenter de collecter quelques données de base pour pouvoir recontacter les Cagots hors Telegram, """ + \
              """par des moyens de télécommunications, ou bien physiquement. Toutes ces données sont facultatives. Elles ne sont pas publiques, """ + \
              """on les garde juste sous le coude "au cas où", en espérant ne jamais avoir à y recourir… 🤞""" + \
              """\n\n""" + \
              """Fais le tant qu'il est temps, c'est facile, rapide, et ça peut rapporter gros ! 😉""" + \
              """\n\n""" + \
              """Tu peux me laisser ton nom et un ou plusieurs :""" + \
              """\n\n""" + \
              """→ ✉️ adresse courriel,\n""" + \
              """→ 📞 numéro de téléphone,\n""" + \
              """→ 🌍📍 lieu,\n""" + \
              """→ 📝 post-it explicatif, p.ex. : "Pseudo cibiste : tartampion27", "Demander Sergio au boucher du village", etc."""

    kbd_layout = []

    l = []

    if bool(user.first_name): l.append('Prénom : %s'         % user.first_name)
    if bool(user.last_name):  l.append('Nom de famille : %s' % user.last_name)

    emails = user.emails.filter(find_me=True)
    if emails.count():
        l.append('')
        for e in emails: l.append('✉️ %s' % e.email)

    phones = user.phone_numbers.filter(find_me=True)
    if phones.count():
        l.append('')
        for p in phones: l.append('📞 %s' % p.number)

    addresses = user.geolocations.filter(find_me=True)
    if addresses.count():
        l.append('')
        for a in addresses: l.append('\n🌍📍 %s' % a.address)

    find_me = user.find_me.all()
    for f in find_me: l.append('\n📝 %s' % f.text)

    if len(l): txt += "\n\n----------- Tes informations -----------\n\n" + '\n'.join(l)

    kbd_layout.append([InlineKeyboardButton('Prénom',         callback_data='core_user_first_name'),
                       InlineKeyboardButton('Nom de famille', callback_data='core_user_last_name')])
    kbd_layout.append([InlineKeyboardButton('✉️ Courriel',     callback_data='core_user_find_me_email'),
                       InlineKeyboardButton('📞 Téléphone',   callback_data='core_user_find_me_phone')])
    kbd_layout.append([InlineKeyboardButton('🌍📍 Lieu',      callback_data='core_user_find_me_address'),
                       InlineKeyboardButton('📝 Post-it',     callback_data='core_user_find_me_postit')])
    kbd_layout.append([InlineKeyboardButton('« Retour',       callback_data='core_start')])

    kbd = InlineKeyboardMarkup(kbd_layout)
    edit_or_reply(update, txt, reply_markup=kbd)


def update_get_group(update):

    chat = None
    group = None

    if update.my_chat_member: chat = update.my_chat_member.chat # When the bot is invited to a group.
    elif update.chat_member:  chat = update.chat_member.chat
    elif update.message and update.message.chat: chat = update.message.chat

    if chat:

        try: group = TelegramGroup.objects.get(id_new=chat.id)
        except TelegramGroup.DoesNotExist:
            group, group_created = TelegramGroup.objects.get_or_create(id=chat.id)

    return group


def new_chat_members(update, context):

    group = update_get_group(update)

    if update.message and update.message.new_chat_members:

        from core.telegram import dj_user_from_tg_user

        for m in update.message.new_chat_members:
            user = dj_user_from_tg_user(m)
            group.members.add(user)

        group.sync_related_users()


def left_chat_member(update, context):

    group = update_get_group(update)

    if update.message and update.message.left_chat_member:

        from core.telegram import dj_user_from_tg_user

        m = update.message.left_chat_member
        user = dj_user_from_tg_user(m)
        group.members.remove(user)

        group.sync_related_users()


def chat_member_any(update, context):
    group = update_get_group(update)
    if group: group.sync() 


def status_update(update, context):
    group = update_get_group(update)
    if group: group.sync() 


@user_arg
def message(update, context, user):

    wait_for_reply_data = context.chat_data.get('bot_waits_for_reply_to', None)

    if isinstance(wait_for_reply_data, dict):
        wait_for_reply = wait_for_reply_data['wait_for_reply']
    else:
        wait_for_reply = wait_for_reply_data

    if wait_for_reply:

        # PLACE
        if wait_for_reply == 'core_user_place_add':

            g = None

            # from telegram import ChatAction
            # context.bot.send_chat_action(chat_id=update.message.chat.id, action=ChatAction.TYPING)

            for geolocator in GEOLOCATORS:

                if update.message.location:
                    s = "%s,%s" % (update.message.location.latitude, update.message.location.longitude)
                    func = 'reverse'
                else:
                    s = update.message.text
                    func = 'geocode'
                    if not bool(re.findall(r'[a-zA-Z]', unidecode.unidecode(s))): # If no chars, might be coordinates.
                        if len(re.findall(r'[0-9]+,[0-9]+', s)) == 2:             # If two comma-decimals might be French-like locale format.
                            s_coords = s.replace(',', '.')
                        else:
                            s_coords = s
                        s_coords_find = re.findall(r'[0-9]+\.[0-9]+', s_coords)
                        if len(s_coords_find) == 2:                              # If two decimals, very likely to be coordinates.
                            s = ' '.join(s_coords_find)
                            func = 'reverse'

                try:
                    # # params = {}
                    # # if user.telegram.language_code: params['language'] = user.telegram.language_code
                    # # g = geolocator.geocode(s, **params)
                    g = getattr(geolocator, func)(s)
                    if g: break

                except: pass

            if g and bool(g.address.strip()):

                try:

                    geo = Geolocation.objects.get(user=user, latitude=g.latitude, longitude=g.longitude)
                    update.message.reply_text("L'adresse suivante est déjà dans ton carnet d'adresses :\n\n🌍📍 %s" % geo.address,
                                              reply_markup=ReplyKeyboardRemove())

                except Geolocation.DoesNotExist:

                    geo = Geolocation(user=user, address=g.address, latitude=g.latitude, longitude=g.longitude, geopy=g)
                    geo.save()
                    update.message.reply_text("J'ai trouvé :\n\n🌍📍 %s\n\n" % geo.address + \
                                              "Je l'ai rajouté à ton carnet d'adresses, si ce n'est pas le bon lieu recommence l'opération 🙂",
                                              # "Il n'est pas encore possible de supprimer des lieux du carnet d'adresses, " + \
                                              # "en attendant ignore juste les lieux inutilisées.",
                                              reply_markup=ReplyKeyboardRemove())

                btn = button_namespace_get(wait_for_reply_data['reply_success'])
                btn(update, context, user, data=wait_for_reply_data['reply_success'] % geo.pk)

            else:

                update.message.reply_text("""Je n'ai pas trouvé de lieu correspondant à "%s" 🤔…""" % s)
                btn = button_namespace_get(wait_for_reply_data['reply_error'])
                btn(update, context, user, data=wait_for_reply_data['reply_error'])

        # NAME
        elif wait_for_reply in ('core_user_first_name', 'core_user_last_name',):

            n      = update.message.text.strip()
            field  = wait_for_reply.replace('core_user_', '')
            target = 'prénom' if field == 'first_name' else 'nom de famille'
            action = 'modifié'

            if n.lower() == 'rien':
                n      = ''
                action = 'retiré'

            class UserNameForm(ModelForm):
                class Meta:
                    model = User
                    fields = [field]

            form = UserNameForm({**{field: n}}, instance=user)

            if not form.is_valid():

                update.message.reply_text("""Erreur formulaire 🤔:\n\n%s""" % form_errors_str(form))
                button(update, context, user, data=wait_for_reply)

            else:

                user = form.save()
                update.message.reply_text("""Ton %s a bien été %s, merci !""" % (target, action))
                update.message.reply_text("👍")

                button(update, context, user, data='core_prevention_telegram')

        # EMAIL
        elif wait_for_reply == 'core_user_email_add':

            e = update.message.text.lower().strip()

            class EmailForm(ModelForm):
                class Meta:
                    model = Email
                    fields = ['email', 'user']

            form = EmailForm({'email': e, 'user': user})

            if not form.is_valid():

                update.message.reply_text("""Erreur formulaire 🤔:\n\n%s""" % form_errors_str(form))
                btn = button_namespace_get(wait_for_reply_data['reply_error'])
                btn(update, context, user, data=wait_for_reply_data['reply_error'])

            else:

                email = form.save()
                update.message.reply_text("""Le courriel %s a bien été ajouté, merci !""" % email.email)
                update.message.reply_text("👍")

                btn = button_namespace_get(wait_for_reply_data['reply_success'])
                btn(update, context, user, data=wait_for_reply_data['reply_success'] % email.pk)

        # PHONE
        elif wait_for_reply == 'core_user_phone_add':

            p = update.message.text.strip()

            class PhoneNumberForm(ModelForm):
                class Meta:
                    model = PhoneNumber
                    fields = ['number', 'user']

            form = PhoneNumberForm({'number': p, 'user': user})

            if not form.is_valid():

                update.message.reply_text("""Erreur formulaire 🤔:\n\n%s""" % form_errors_str(form))
                btn = button_namespace_get(wait_for_reply_data['reply_error'])
                btn(update, context, user, data=wait_for_reply_data['reply_error'])

            else:

                phone = form.save()
                update.message.reply_text("""Le numéro de téléphone %s a bien été ajouté, merci !""" % phone.number)
                update.message.reply_text("👍")

                btn = button_namespace_get(wait_for_reply_data['reply_success'])
                btn(update, context, user, data=wait_for_reply_data['reply_success'] % phone.pk)

        # FIND ME
        elif wait_for_reply == 'core_user_find_me_postit_add':

            f = update.message.text.strip()

            class FindMeForm(ModelForm):
                class Meta:
                    model = FindMe
                    fields = ['text', 'user']

            form = FindMeForm({'text': f, 'user': user})

            if not form.is_valid():

                update.message.reply_text("""Erreur formulaire 🤔:\n\n%s""" % form_errors_str(form))
                button(update, context, user, data='core_user_find_me_postit_add')

            else:

                form.save()
                update.message.reply_text("""Le post-it a bien été ajouté, merci !""")
                update.message.reply_text("👍")

                button(update, context, user, data='core_prevention_telegram')


@user_arg
@stop_wait_for_reply
def button(update, context, user, data=None):

    query = update.callback_query # https://python-telegram-bot.readthedocs.io/en/stable/telegram.callbackquery.html

    if data == None: data = query.data

    if data.find('_NEXT_') != -1: data, data_next = data.split('_NEXT_')
    else: data_next = None

    # START
    if data == "core_start": start(update, context, user)

    # ABOUT
    if data == "core_about": about(update, context, user)

    # WEB
    if data in ("core_web", "core_web_refresh", "core_web_password_reset"): web(update, context, user)

    # SHARE
    elif data == "core_share": share(update, context, user)

    # PREVENTION TELEGRAM
    elif data == "core_prevention_telegram": prevention_telegram(update, context, user)

    elif data in ('core_user_first_name', 'core_user_last_name',):

        field              = data.replace('core_user_', '')
        current            = getattr(user, field)
        target             = 'prénom' if field == 'first_name' else 'nom de famille'
        target_placeholder = 'Jean-Michel, Brigitte, etc.' if data == 'core_user_first_name' else 'Trogneux, etc.'
        delete             = ' (tape "rien" pour supprimer)' if bool(current) else ''

        context.chat_data['bot_waits_for_reply_to'] = data
        txt = "Renseigne ton %s STP%s :" % (target, delete) + command_cancel_txt('prevention_telegram')
        kbd = ForceReply(one_time_keyboard=True, input_field_placeholder='P.ex. %s' % target_placeholder)
        message = query.message if query else update.message
        message.reply_text(txt, reply_markup=kbd)

    # EMAIL
    elif data in ("core_user_find_me_email", "core_user_find_me_email_add"):

        if not user.emails.count() or data == "core_user_find_me_email_add":

            context.chat_data['bot_waits_for_reply_to'] = {'wait_for_reply': 'core_user_email_add',
                                                           'reply_success':  'core_user_find_me_email_%s_toggle',
                                                           'reply_error':    'core_user_find_me_email_add'}

            txt = "Renseigne un nouveau courriel sur lequel on puisse te joindre STP :" + command_cancel_txt('prevention_telegram')
            kbd = ForceReply(one_time_keyboard=True, input_field_placeholder='P.ex. contact@cagots.fr')
            message = query.message if query else update.message
            message.reply_text(txt, reply_markup=kbd)


        else:

            txt        = "Sélectionne un ou plusieurs courriels sur lesquels on puisse te joindre dans ton carnet de courriels :" + command_cancel_txt('prevention_telegram')
            kbd_layout = []

            for email in user.emails.all():
                e = '%s%s' % ('✅ ' if email.find_me else '', email.email)
                kbd_layout.append([InlineKeyboardButton(e, callback_data='core_user_find_me_email_%s_toggle' % email.pk)])

            del_next = 'core_user_find_me_email' if user.emails.count() > 1 else 'core_prevention_telegram'
            kbd_layout.append([InlineKeyboardButton('➕ Ajouter un courriel',   callback_data='core_user_find_me_email_add'),
                               InlineKeyboardButton('❌ Supprimer un courriel', callback_data='core_user_email_delete_NEXT_%s' % del_next)])
            kbd_layout.append([InlineKeyboardButton('« Retour',                callback_data='core_prevention_telegram')])
            kbd = InlineKeyboardMarkup(kbd_layout)

            edit_or_reply(update, txt, reply_markup=kbd)

    elif data.startswith('core_user_find_me_email_') and data.endswith('_toggle'):

        e_id  = data.split('_')[5]
        email = user.emails.get(pk=e_id)

        email.find_me = False if email.find_me else True
        email.save()

        if user.emails.count() == 1: button(update, context, user, data='core_prevention_telegram')
        else: button(update, context, user, data='core_user_find_me_email')

    elif data == "core_user_email_delete":

        txt        = "Choisis le courriel à supprimer de ton carnet de courriels 👇"
                     # "fais attention à ce qu'il ne soit pas utilisé ailleurs, l'opération n'est pas réversible 👇"
        kbd_layout = []

        for email in user.emails.all():

            cb_data = 'core_user_email_%s_delete' % email.pk
            if data_next: cb_data = '%s_NEXT_%s' % (cb_data, data_next)

            kbd_layout.append([InlineKeyboardButton('❌ %s' % email.email, callback_data=cb_data)])

        if data_next: kbd_layout.append([InlineKeyboardButton('« Retour', callback_data=data_next)])

        kbd = InlineKeyboardMarkup(kbd_layout)

        edit_or_reply(update, txt, reply_markup=kbd)

    elif data.startswith('core_user_email_') and data.endswith('_delete'):

        e_id   = data.split('_')[3]
        e      = user.emails.get(pk=e_id)
        cannot = e.cannot_delete(user)

        if cannot:

            cannot_txt = "Tu ne peux pas encore supprimer ce courriel car :\n\n- " + "\n- ".join(cannot)
            query_answer(query, cannot_txt, show_alert=True)
            return

        a = """%s supprimé avec succès du carnet de courriels.""" % e.email
        e.delete()
        query_answer(query, a)

        if data_next: button_namespace_get(data_next)(update, context, user, data=data_next)

    # PHONE
    elif data in ("core_user_find_me_phone", "core_user_find_me_phone_add"):

        if not user.phone_numbers.count() or data == "core_user_find_me_phone_add":

            context.chat_data['bot_waits_for_reply_to'] = {'wait_for_reply': 'core_user_phone_add',
                                                           'reply_success':  'core_user_find_me_phone_%s_toggle',
                                                           'reply_error':    'core_user_find_me_phone_add'}

            txt = "Renseigne un nouveau numéro de téléphone auquel on puisse te joindre STP (préfixe international, p.ex. 06… en France est +336… à l'international)  :" + command_cancel_txt('prevention_telegram')
            kbd = ForceReply(one_time_keyboard=True, input_field_placeholder='P.ex. +33 1 23 45 76 89')
            message = query.message if query else update.message
            message.reply_text(txt, reply_markup=kbd)


        else:

            txt        = "Sélectionne un ou plusieurs numéros auxquels on puisse te joindre dans ton carnet de numéros :" + command_cancel_txt('prevention_telegram')
            kbd_layout = []

            for phone in user.phone_numbers.all():
                p = '%s%s' % ('✅ ' if phone.find_me else '', phone.number)
                kbd_layout.append([InlineKeyboardButton(p, callback_data='core_user_find_me_phone_%s_toggle' % phone.pk)])

            del_next = 'core_user_find_me_phone' if user.phone_numbers.count() > 1 else 'core_prevention_telegram'
            kbd_layout.append([InlineKeyboardButton('➕ Ajouter un numéro',    callback_data='core_user_find_me_phone_add'),
                               InlineKeyboardButton('❌ Supprimer un numéro',  callback_data='core_user_phone_delete_NEXT_%s' % del_next)])
            kbd_layout.append([InlineKeyboardButton('« Retour',                callback_data='core_prevention_telegram')])
            kbd = InlineKeyboardMarkup(kbd_layout)

            edit_or_reply(update, txt, reply_markup=kbd)

    elif data.startswith('core_user_find_me_phone_') and data.endswith('_toggle'):

        p_id  = data.split('_')[5]
        phone = user.phone_numbers.get(pk=p_id)

        phone.find_me = False if phone.find_me else True
        phone.save()

        if user.phone_numbers.count() == 1: button(update, context, user, data='core_prevention_telegram')
        else: button(update, context, user, data='core_user_find_me_phone')

    elif data == "core_user_phone_delete":

        txt        = "Choisis le numéro à supprimer de ton carnet de numéros 👇"
                     # "fais attention à ce qu'il pas utilisé ailleurs, l'opération n'est pas réversible 👇"
        kbd_layout = []

        for phone in user.phone_numbers.all():

            cb_data = 'core_user_phone_%s_delete' % phone.pk
            if data_next: cb_data = '%s_NEXT_%s' % (cb_data, data_next)

            kbd_layout.append([InlineKeyboardButton('❌ %s' % phone.number, callback_data=cb_data)])

        if data_next: kbd_layout.append([InlineKeyboardButton('« Retour', callback_data=data_next)])

        kbd = InlineKeyboardMarkup(kbd_layout)

        edit_or_reply(update, txt, reply_markup=kbd)

    elif data.startswith('core_user_phone_') and data.endswith('_delete'):

        p_id   = data.split('_')[3]
        p      = user.phone_numbers.get(pk=p_id)
        cannot = p.cannot_delete(user)

        if cannot:

            cannot_txt = "Tu ne peux pas encore supprimer ce numéro car :\n\n- " + "\n- ".join(cannot)
            query_answer(query, cannot_txt, show_alert=True)
            return

        a    = """%s supprimé avec succès du carnet de numéros.""" % p.number
        p.delete()
        query_answer(query, a)

        if data_next: button_namespace_get(data_next)(update, context, user, data=data_next)

    # PLACE
    elif data in ("core_user_find_me_address", "core_user_find_me_address_add"):

        if not user.geolocations.count() or data == "core_user_find_me_address_add":

            context.chat_data['bot_waits_for_reply_to'] = {'wait_for_reply': 'core_user_place_add',
                                                           'reply_success':  'core_user_find_me_address_%s_toggle',
                                                           'reply_error':    'core_user_find_me_address_add'}


            txt = "Indique moi un ou plusieurs mots clés pour localiser la nouvelle adresse où on peut te trouver. " + \
                  geolocation_share_position_txt() + command_cancel_txt('prevention_telegram')
            # txt = "Renseigne un nouveau numéro de téléphone auquel on puisse te joindre STP (préfixe international, p.ex. 06… en France est +336… à l'international)  :" + command_cancel_txt('prevention_telegram')

            kbd = ForceReply(one_time_keyboard=True, input_field_placeholder='P.ex. 57 rue de Varenne, Paris 75007')
            message = query.message if query else update.message
            message.reply_text(txt, reply_markup=kbd)


        else:

            txt        = "Sélectionne un ou plusieurs lieux où on puisse te trouver dans ton carnet d'adresses :" + command_cancel_txt('prevention_telegram')
            kbd_layout = []

            for geo in user.geolocations.all():
                g = '%s%s' % ('✅ ' if geo.find_me else '', geo.address)
                kbd_layout.append([InlineKeyboardButton(g, callback_data='core_user_find_me_address_%s_toggle' % geo.pk)])

            del_next = 'core_user_find_me_address' if user.geolocations.count() > 1 else 'core_prevention_telegram'
            kbd_layout.append([InlineKeyboardButton('➕ Ajouter une adresse',   callback_data='core_user_find_me_address_add'),
                               InlineKeyboardButton('❌ Supprimer une adresse', callback_data='core_user_place_delete_NEXT_%s' % del_next)])
            kbd_layout.append([InlineKeyboardButton('« Retour',                callback_data='core_prevention_telegram')])
            kbd = InlineKeyboardMarkup(kbd_layout)

            edit_or_reply(update, txt, reply_markup=kbd)

    elif data.startswith('core_user_find_me_address_') and data.endswith('_toggle'):

        g_id = data.split('_')[5]
        geo  = user.geolocations.get(pk=g_id)

        geo.find_me = False if geo.find_me else True
        geo.save()

        if user.geolocations.count() == 1: button(update, context, user, data='core_prevention_telegram')
        else: button(update, context, user, data='core_user_find_me_address')

    elif data == "core_user_place_delete":

        txt        = "Choisis le lieu à supprimer de ton carnet d'adresses 👇"
                     # "fais attention à ce qu'elle ne soit pas utilisée ailleurs, l'opération n'est pas réversible 👇"
        kbd_layout = []

        for g in user.geolocations.all():

            cb_data = 'core_user_place_%s_delete' % g.pk
            if data_next: cb_data = '%s_NEXT_%s' % (cb_data, data_next)

            kbd_layout.append([InlineKeyboardButton('❌ %s' % g.address, callback_data=cb_data)])

        if data_next: kbd_layout.append([InlineKeyboardButton('« Retour', callback_data=data_next)])

        kbd = InlineKeyboardMarkup(kbd_layout)

        edit_or_reply(update, txt, reply_markup=kbd)

    elif data.startswith('core_user_place_') and data.endswith('_delete'):

        g_id   = data.split('_')[3]
        g      = user.geolocations.get(pk=g_id)
        cannot = g.cannot_delete(user)

        if cannot:

            cannot_txt = "Tu ne peux pas encore supprimer ce lieu car :\n\n- " + "\n- ".join(cannot)
            query_answer(query, cannot_txt, show_alert=True)
            return

        a    = """"%s" supprimé avec succès du carnet d'adresses.""" % g.address
        g.delete()
        query_answer(query, a)

        if data_next: button_namespace_get(data_next)(update, context, user, data=data_next)

    # FIND ME
    elif data in ("core_user_find_me_postit", "core_user_find_me_postit_add"):

        if not user.find_me.count() or data == "core_user_find_me_postit_add":

            context.chat_data['bot_waits_for_reply_to'] = {'wait_for_reply': 'core_user_find_me_postit_add',
                                                           'reply_success':  'core_prevention_telegram',
                                                           'reply_error':    'core_user_find_me_postit'}

            txt = "Écrit un post-it sur une façon de te trouver STP :" + command_cancel_txt('prevention_telegram')
            kbd = ForceReply(one_time_keyboard=True, input_field_placeholder='P.ex. Laverie de la gare à 14h30 les mercredis.')
            message = query.message if query else update.message
            message.reply_text(txt, reply_markup=kbd)

        else:

            txt        = """Post-it explicatifs sur comment te joindre, clique dessus pour supprimer, """ + \
                         """ou "📝 Ajouter post-it" pour en créer un nouveau :""" + command_cancel_txt('prevention_telegram')
            kbd_layout = []
            del_next   = 'core_user_find_me_postit' if user.find_me.count() > 1 else 'core_prevention_telegram'

            for f in user.find_me.all():
                kbd_layout.append([InlineKeyboardButton('❌ %s' % f.text,
                                                        callback_data='core_user_find_me_postit_%s_delete_NEXT_%s' % (f.pk, del_next))])

            kbd_layout.append([InlineKeyboardButton('« Retour',             callback_data='core_prevention_telegram'),
                               InlineKeyboardButton('📝 Ajouter post-it',   callback_data='core_user_find_me_postit_add')])
            kbd = InlineKeyboardMarkup(kbd_layout)

            edit_or_reply(update, txt, reply_markup=kbd)

    elif data.startswith('core_user_find_me_postit_') and data.endswith('_delete'):

        p_id = data.split('_')[5]
        p    = user.find_me.get(pk=p_id)
        a    = """Post-it supprimé avec succès."""
        p.delete()
        query_answer(query, a)

        if data_next: button_namespace_get(data_next)(update, context, user, data=data_next)

    query_answer(query)