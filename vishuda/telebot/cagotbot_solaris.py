from telegram import InlineKeyboardMarkup, InlineKeyboardButton #, ReplyKeyboardRemove, ForceReply

from django.urls import reverse
from django.conf import settings
from django.core.paginator import Paginator

from sesame.utils import get_query_string

from core.telegram import *

from . models import Entity

@user_arg
@stop_wait_for_reply
def command(update, context, user):

    message = update.message if update.message else update.callback_query.message

    kbd_layout = [[InlineKeyboardButton('🌞 En savoir plus sur Solaris', url='https://cagots.fr/wiki/R%C3%A9seau_Solaris')]]
    if user.telegram_groups_admin.filter(groupbuy__isnull=True).count():
        kbd_layout.append([InlineKeyboardButton('🔗 Connecter un groupe Telegram à une cellule Solaris', callback_data='solaris_connect')])
    kbd_layout.append([InlineKeyboardButton('« Retour', callback_data='core_start')])

    kbd = InlineKeyboardMarkup(kbd_layout)

    txt = """Le réseau SOLARIS France est un «  Internet Humain », un réseau d’entraide """ + \
          """et de solidarité qui commence dans votre voisinage direct.""" + \
          """\n\n""" + \
          """Il est bien sûr totalement gratuit. Il représente le rassemblement d’êtres humains qui chacun, """ + \
          """bénévolement, agit pour tous et qui ensemble, lorsque nécessaire, agissent pour un.""" + \
          """\n\n""" + \
          """Il fonctionne en arborescence au sein d’un maillage physique de toutes les personnes qui s’y joignent. """ + \
          """Plus le maillage est étroit, mieux il fonctionne. Il débute donc tout autour de vous.""" + \
          """\n\n""" + \
          """Dans les temps difficiles que nous vivons, il va permettre à ce que personne ne demeure isolé face à ses problèmes. """ + \
          """Il apportera des réponses rapides et de proximité aux besoins de chacun. """ + \
          """Il mettra en lien les hommes et renforcera ce lien, plus qu’il ne l’a jamais été.""" + \
          """\n\n""" + \
          """Il se pourvoie de ses propres moyens de communication en cas de rupture des moyens traditionnels.""" + \
          """\n\n""" + \
          """Il fonctionne organiquement grâce à une bonne circulation de l’information, sans hiérarchie, sans chef."""

    edit_or_reply(update, txt, reply_markup=kbd)


@user_arg
@stop_wait_for_reply
def button(update, context, user, data=None):

    query = update.callback_query

    if data == None: data = query.data

    if data.find('_NEXT_') != -1: data, data_next = data.split('_NEXT_')
    else: data_next = None

    # SOLARIS
    if data == "solaris": command(update, context, user)

    elif data in ('solaris_connect', 'solaris_connect_refresh'):

        registered = user.registered()
        kbd_layout = []
        txt        = "Choisis ci-dessous le groupe Telegram que tu souhaites connecter à une cellule Solaris. " + \
                     "Cela ouvrira un lien vers l'interface d'administration de la cellule."

        if not registered: txt += sesame_refresh_txt
        # """Si tu veux simplement te connecter à la cartographie clique sur « 🌍📍 Connection à la cartographie ».""" + \

        paginator = Paginator(user.telegram_groups_admin.filter(groupbuy__isnull=True), 10)

        if paginator.num_pages == 1: pagination_reset(context.chat_data, 'solaris_connect')

        page_action    = context.chat_data.get('solaris_connect_page_action', 'first')
        page_index     = context.chat_data.get('solaris_connect_page_index',  1)
        page_index_new = None

        def kbd_groups(groups):

            for t in groups:

                if hasattr(t, 'solaris_entity'):
                    rev = reverse('solaris:entity_update', kwargs={'pk': t.solaris_entity.id})
                    icon = '🌞'
                    tg_pk = ''
                else:
                    rev = reverse('solaris:entity_create') # TODO: page publique si attente validation.
                    icon = '🔗'
                    tg_pk = '%stelegram=%s' % ('?' if registered else '&', t.id)

                if not registered:
                    _generate_url = lambda base: '%s%s%s%s' % (base, rev, get_query_string(user), tg_pk)
                else:
                    _generate_url = lambda base: '%s%s%s' % (base, rev, tg_pk)

                url = _generate_url(settings.BASE_URL_TO_SELF)
                if settings.DEBUG: url = telegram_link_button_debug(url, msg='for %s' % t.title)

                kbd_layout.append([InlineKeyboardButton('%s %s' % (icon, t.title), url=url)])


        if page_action == 'first': page_index_new = 1

        elif page_action == "last": page_index_new = paginator.num_pages

        elif page_action == "prev":
            if page_index > 1: page_index_new = page_index - 1
            else: page_index_new = 1

        elif page_action == "next":
            if page_index < paginator.num_pages: page_index_new = page_index + 1
            else: page_index_new = paginator.num_pages

        page = paginator.page(page_index_new)
        context.chat_data['solaris_connect_page_index'] = page_index_new
        kbd_groups(page) #, kbd_layout, user)

        if paginator.num_pages > 1:
            kbd_layout.append([InlineKeyboardButton('<< page 1', # « ‹ › » ⏪◀️▶️⏩
                                                    callback_data='solaris_connect_page_action_first'),
                               InlineKeyboardButton('<',
                                                    callback_data='solaris_connect_page_action_prev'),
                               InlineKeyboardButton('>',
                                                    callback_data='solaris_connect_page_action_next'),
                               InlineKeyboardButton('page %s >>' % paginator.num_pages,
                                                    callback_data='solaris_connect_page_action_last')])

        # url = '%s%s' % (settings.BASE_URL_TO_SELF, reverse('solaris:entity_list'))
        # if not registered: url = '%s%s' % (url, get_query_string(user))
        # if settings.DEBUG: url = telegram_link_button_debug(url, msg='for connection carto')
        # kbd_layout.append([InlineKeyboardButton('🌍📍 Connection à la cartographie', url=url)])

        back = [InlineKeyboardButton('« Retour', callback_data='solaris')]
        if not registered: back.append(InlineKeyboardButton('🔄', callback_data='solaris_connect_refresh'))
        kbd_layout.append(back)
        kbd = InlineKeyboardMarkup(kbd_layout)

        if data == 'solaris_connect_refresh': query_answer(query, sesame_refresh_answer_txt)

        edit_or_reply(update, txt, reply_markup=kbd)

    elif data.startswith('solaris_connect_page_action_'):

        page_action = data.split('_')[4]
        context.chat_data['solaris_connect_page_action'] = page_action
        button(update, context, user, data='solaris_connect')

    elif data in ('solaris_connect_connected'): query_answer(query, "Ce groupe est déjà connecté à une cellule.")

    query_answer(query)