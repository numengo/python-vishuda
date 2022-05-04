import unidecode

from telegram import ReplyKeyboardRemove, ReplyKeyboardMarkup, InlineKeyboardMarkup, \
                     InlineKeyboardButton, ForceReply

from django.core.paginator import Paginator
from django.db.models import Count
from django.forms import ModelForm

from core.telegram import *
from core.utils import unique_space_strip

from . models import UNIT_CHOICES, Basket, Product, GroupBuy, ProductRequest, PickupMethod, PaymentMethod


def product_populars(qs, include_zero=False):

    pop_qs = qs.annotate(requests_n=Count('requests'))
    if not include_zero: pop_qs = pop_qs.filter(requests_n__gt=0)

    return pop_qs.order_by('-requests_n', 'name')


def UNIT_CHOICES_KEYBOARD():
    return map(lambda x: map(lambda y: y[1], x), [u[1] for u in UNIT_CHOICES])


def UNIT_CHOICES_DICT():

    DICT = {}
    list(map(lambda x: list(map(lambda y: DICT.update({y[0]: y[1]}), x)), [u[1] for u in UNIT_CHOICES]))
    return DICT


def UNIT_CHOICES_LOOKUP():

    DICT = {}
    list(map(lambda x: list(map(lambda y: DICT.update({y[1]: y[0]}), x)), [u[1] for u in UNIT_CHOICES]))
    return DICT


def groupbuy_product_mode(update, context, user, mode): 
    context.chat_data['groupbuy_product_mode'] = mode
    pagination_reset(context.chat_data, 'groupbuy_product')
    button(update, context, user, data='groupbuy_product')


@user_arg
@stop_wait_for_reply
def command(update, context, user):

    message = update.message if update.message else update.callback_query.message

    # if message.chat.type == 'group':

    #     products = product_populars(Product.objects.filter(validated=True), include_zero=False)[0:10]

    #     p_list = []

    #     for p in products.values('name', 'requests_n'):
    #         p_list.append('%(name)s (%(requests_n)s commandes)' % p)

    #     txt = """Les produits les plus populaires pour les achats groupés des Cagots :\n\n"""
    #     txt += ('- ' + '\n- '.join(p_list)) if len(p_list) else 'Aucun.'
    #     txt += "\n\nPour participer aux achats groupés clique sur @CagotBot"

    #     update.message.reply_text(txt)

    # else:

    basket, basket_created = Basket.objects.get_or_create(user=user)
    if basket_created: basket.save()

    user_prodreq_ready = bool(user.product_requests.pending().count())
    user_paymed_ready  = bool(user.payment_methods.all().count())
    user_pickmed_ready = bool(user.pickup_methods.all().count() and basket.geolocation)

    kbd_layout = [
                  [InlineKeyboardButton('📦 Produits',                                            callback_data='groupbuy_product_home'),
                   InlineKeyboardButton('🙋 Je veux aider%s' % (" ✅" if basket.helping else ""), callback_data='groupbuy_help_toggle')],

                  [InlineKeyboardButton('👛 Moyens de paiement',                                  callback_data='groupbuy_payment_methods'),
                   InlineKeyboardButton('🤲 Modes de récupération',                               callback_data='groupbuy_pickup'),
                  ],

                  [InlineKeyboardButton('ℹ️ Pourquoi des achats groupés ?',                        url='https://cagots.fr/wiki/Achat_groupé')]]

    groups = GroupBuy.objects.concerned(user).distinct()

    if groups.count(): kbd_layout.append([InlineKeyboardButton('🛍️ Achats groupés me concernant', callback_data='groupbuy_list')])

    kbd_layout.append([InlineKeyboardButton('« Retour', callback_data='core_start')])

    kbd = InlineKeyboardMarkup(kbd_layout)

    ready      = bool(user_prodreq_ready and user_paymed_ready and user_pickmed_ready)
    ready_list = []
    for r in ({'r': user_prodreq_ready, 'txt': 'des produit(s).'},
              {'r': user_paymed_ready,  'txt': 'des moyen(s) de paiement.'},
              {'r': user_pickmed_ready, 'txt': 'des mode(s) de récupération de la livraison.'}):
        ready_list.append('%s %s' % ('✅' if r['r'] else '∅', r['txt']))

    if ready: ready_txt = em2("✅ Tes souhaits de produits sont actifs, tu peux les mettre à jour à volonté.")
    else:     ready_txt = "Tes souhaits de produits __*ne sont pas encore actifs*__, " + \
                          "ils le seront lorsque tu auras choisi :\n\n" + em2('\n'.join(ready_list))

    txt = em2("""Bienvenue dans les achats groupés, ça se déroule en plusieurs étapes :""" + \
          """\n\n""") + \
          """*1* \- On commence par collecter les souhaits des Cagots\. __*Un souhait 🛒 n'est pas une commande dans un achat groupé*__\. """ + \
          em2("""C'est juste une information permettant de savoir qui veut quoi, et du coup si ça vaut le coup de mettre en place des achats groupés pour tel ou tel produit. """ + \
          """\n\n""" + \
          """Si un achat groupé existe déjà pour un ou plusieurs produits que tu souhaites il te sera indiqué 🛍️. """ + \
          """Si un achat groupé est créé après que tu ais exprimé ton souhait pour un ou plusieurs produits, """ + \
          """je te ferai suivre une alerte de l'organisateur de l'achat groupé.""" + \
          """\n\n""") + \
          """*2* \- Lorsqu'un achat groupé te convient, il te faudra __*confirmer ton souhait pour cet achat groupé en particulier*__, """ + \
          em2("""ton souhait deviendra alors une commande, en attente de validation ⏳ par l'organisateur. """) + \
          """\n\n""" + \
          """*3* \- __*L'organisateur valide ✅ ta commande à sa guise*__, """ + \
          em2("""mais cela se fait généralement à la toute fin du processus, """ + \
          """lorsque le nombre de commandes, les prix et les paiements sont arrêtés. """ + \
          """\n\n""" + \
          """Après validation chaque commande devient ferme, avant cette validation tu conserves la possibilité de la modifier.""" + \
          """\n\n-----------\n\n""" + \
          """Si tu veux aider à l'organisation de l'achat clique sur le bouton correspondant, je te recontacterai pour préparer l'achat.""" + \
          """\n\n""" + \
          """Si tu veux aider toi même organiser un achat groupé, passe par l'interface : /web.""" + \
          """\n\n""")
    txt = txt + ready_txt

    edit_or_reply(update, txt, reply_markup=kbd, parse_mode='MarkdownV2')


@user_arg
def message(update, context, user):

    def groupbuy_product_add_unit_prompt():

        context.chat_data['bot_waits_for_reply_to'] = 'groupbuy_product_add_unit'

        kbd_layout = UNIT_CHOICES_KEYBOARD()
        txt        = "Quelle est l'unité de mesure pour quantifier le produit ?" + command_cancel_txt('achats')
        kbd        = ReplyKeyboardMarkup(kbd_layout, one_time_keyboard=True)#, resize_keyboard=True)
        update.message.reply_text(txt, reply_markup=kbd)

    wait_for_reply_data = context.chat_data.get('bot_waits_for_reply_to', None)

    if isinstance(wait_for_reply_data, dict):
        wait_for_reply = wait_for_reply_data['wait_for_reply']
    else:
        wait_for_reply = wait_for_reply_data

    if wait_for_reply:

        # # PRODUCT SEARCH
        # elif wait_for_reply == 'groupbuy_product_search':

        #     s     = unidecode.unidecode(unique_space_strip(update.message.text))
        #     words = s.split(' ')

        #     # Singular
        #     words_singular = [] # TODO: multilingual
        #     for word in words:
        #         if len(word) > 1 and word.endswith('s'): words_singular.append(word[0:-1])
        #         else: words_singular.append(word)
        #     s_singular = ' '.join(words_singular)

        #     products = Product.objects.filter(keywords__icontains=s_singular)

        #     if not products.count() and len(words_singular) > 1:

        #         products = Product.objects.filter(keywords__icontains=words_singular[0])
        #         for word in words_singular[1:]: products = products | Product.objects.filter(keywords__icontains=word)
        #         products = products.distinct()

        #     if products.count():

        #         products = product_populars(products, include_zero=True)

        #         kbd_layout = []

        #         for p in products:

        #             try: pr = ProductRequest.objects.pending().get(user=user, product=p)
        #             except ProductRequest.DoesNotExist: pr = None

        #             if pr: name = '%s (%s) ✅' % (p.name, pr.quantity_unit())
        #             else: name = p.name

        #             kbd_layout.append([InlineKeyboardButton(name, callback_data='groupbuy_product_%s' % p.pk)])

        #         kbd_layout.append([InlineKeyboardButton('« Retour',   callback_data='groupbuy_product'),
        #                            InlineKeyboardButton('➕ Ajouter', callback_data='groupbuy_product_add_name')])

        #         update.message.reply_text("J'ai trouvé :", reply_markup=InlineKeyboardMarkup(kbd_layout))

        #     else:

        #         kbd_layout = []

        #         kbd_layout.append([InlineKeyboardButton('« Retour',     callback_data='groupbuy_product'),
        #                            InlineKeyboardButton('🔎 Réessayer', callback_data='groupbuy_product_search'),
        #                            InlineKeyboardButton('➕ Ajouter',    callback_data='groupbuy_product_add_name')])

        #         # del context.chat_data['bot_waits_for_reply_to']
        #         txt = """Je n'ai pas trouvé de produit correspondant à "%s" 🤔…""" % update.message.text + \
        #               """\n\n""" + \
        #               """Tu peux entrer d'autres mots clés, annuler la recherche, ou rajouter le produit."""
        #         update.message.reply_text(txt, reply_markup=InlineKeyboardMarkup(kbd_layout))
        #         # button(update, context, user, data='groupbuy_product_search')

        # PRODUCT ADD
        if wait_for_reply == 'groupbuy_product_add_name':

            # https://github.com/Achuttarsing/inflecteur
            # https://pypi.org/project/inflect/
            name = unique_space_strip(update.message.text)
            name = name[0].upper() + name[1:] # .capitalize()?

            class ProductFormName(ModelForm):
                class Meta:
                    model = Product
                    fields = ['name']

            form = ProductFormName({'name': name})

            if not form.is_valid():

                update.message.reply_text("""Erreur formulaire 🤔:\n\n%s""" % form_errors_str(form))
                button(update, context, user, data='groupbuy_product_add_name')

            else:

                context.chat_data['groupbuy_pickup_place_new_name'] = name # TODO: Nettoyer
                groupbuy_product_add_unit_prompt()

        elif wait_for_reply == 'groupbuy_product_add_unit':

                errors = None
                unit   = update.message.text.strip()
                form   = None
                name   = context.chat_data['groupbuy_pickup_place_new_name']
                unit   = UNIT_CHOICES_LOOKUP().get(unit, None)

                if not unit: errors = "Unité invalide."

                else:

                    class ProductFormNameUnit(ModelForm):
                        class Meta:
                            model = Product
                            fields = ['name', 'unit']

                    form = ProductFormNameUnit({'name': name, 'unit': unit})

                    if not form.is_valid(): errors = form_errors_str(form)

                if errors:

                    update.message.reply_text("""Erreur formulaire 🤔:\n\n%s""" % errors)
                    groupbuy_product_add_unit_prompt()

                else:

                    product = form.save(commit=False)
                    product.keywords = unidecode.unidecode(name).lower()
                    product.added_by = user
                    product.save()
                    update.message.reply_text("""Le produit "%s" a bien été ajouté, merci !""" % product.name)
                    update.message.reply_text("👍")

                    # logger.info("New product %s (%s)." % (product.name, product.pk))

                    button(update, context, user, data='groupbuy_product_%s' % product.pk)
                    button(update, context, user, data='groupbuy_product_%s_quantity' % product.pk)

        elif wait_for_reply.startswith('groupbuy_product_') and wait_for_reply.endswith('_quantity') :

            q = update.message.text.replace(',', '.')

            p_id = wait_for_reply.split('_')[2]
            p    = Product.objects.get(pk=p_id)

            try: pr = ProductRequest.objects.pending().get(user=user, product=p)
            except ProductRequest.DoesNotExist: pr = None

            class ProductRequestForm(ModelForm):
                class Meta:
                    model = ProductRequest
                    fields = ['user', 'product', 'quantity']

            if pr: form = ProductRequestForm({'user': user, 'product': p, 'quantity': q}, instance=pr)
            else:  form = ProductRequestForm({'user': user, 'product': p, 'quantity': q})

            if not form.is_valid():
                update.message.reply_text("""Erreur formulaire 🤔:\n\n%s""" % form_errors_str(form))
                button(update, context, user, data='groupbuy_product_%s' % p.id)

            else:

                pr = form.save(commit=False)

                if not pr.quantity:

                    if pr.pk:

                        pr.delete()
                        update.message.reply_text("""Produit "%s" décommandé.""" % p.name)

                else:

                    pr.save()
                    update.message.reply_text("""Quantité de "%s" souhaitée : %s.""" % (p.name, pr.quantity_unit()))
                    update.message.reply_text("👍")

                button(update, context, user, data='groupbuy_product')


@user_arg
@stop_wait_for_reply
def button(update, context, user, data=None):

    query = update.callback_query # https://python-telegram-bot.readthedocs.io/en/stable/telegram.callbackquery.html

    if data == None: data = query.data

    if data.find('_NEXT_') != -1: data, data_next = data.split('_NEXT_')
    else: data_next = None

    basket, basket_created = Basket.objects.get_or_create(user=user)
    if basket_created: basket.save()

    # GROUP BUY
    if data == 'groupbuy': command(update, context, user)

    # GROUP BUY LIST
    elif data == 'groupbuy_list':

        groups     = GroupBuy.objects.concerned(user).distinct()
        kbd_layout = []
        txt        = """Trouves ci-dessous les achats groupés en cours qui correspondent à un ou plusieurs de tes souhaits%s.""" % \
                     (" (ou bien dont tu es l'organisateur)" if groups.filter(admin=user).count() else '') + \
                     " Clique dessus les visualiser, et éventuellement confirmer des commandes dans les achats groupés qui t'intéressent."

        for group in groups:

            products = group.products_for_user(user)
            kbd_layout.append([InlineKeyboardButton('🛍️ %s (%s)' % (group.name, products.count()), callback_data='groupbuy_view_%s' % group.pk)])

        kbd_layout.append([InlineKeyboardButton('« Retour', callback_data='groupbuy')])

        kbd = InlineKeyboardMarkup(kbd_layout)

        edit_or_reply(update, txt, reply_markup=kbd)

    elif data.startswith('groupbuy_view_'):

        groups     = (GroupBuy.objects.for_user(user).opened() | GroupBuy.objects.concerned(user)).distinct()
        group_pk   = data.split('_')[2]
        group      = groups.get(pk=group_pk)
        prod_reqs  = (group.product_requests_for_user(user).pending() | group.product_requests_for_user(user).validated().filter(groupbuy_ordered=group)).distinct()
        prods_user = []
        kbd_layout = []
        txt        = group.telegram_info_txt(user)

        if prod_reqs.count():

            cannot_confirm_requests = group.cannot_confirm_requests(basket)
            if cannot_confirm_requests:
                txt += "\n\nTu ne peux pas encore confirmer tes produits dans cet achat groupé car :\n\n\- " + em2("\n- ".join(cannot_confirm_requests))

            for pr in prod_reqs.all():

                if not pr.product in prods_user: prods_user.append(pr.product)

                prefix = ''
                if pr.groupbuy_ordered and pr.groupbuy_ordered == group:
                    if pr.groupbuy_validated: prefix = '✅ '
                    elif pr.groupbuy_ordered: prefix = '⏳ '
                elif not pr.groupbuy_ordered: prefix = '∅ ' # ⭕️⏸⚫️🤐

                cb = 'groupbuy_%s_product_request_%s_confirm' % (group.pk, pr.pk) # if not pr.groupbuy_confirmed else 'BLANK'

                kbd_layout.append([InlineKeyboardButton("%s %s (%s)" % (prefix, pr.product.name, pr.quantity_unit()),
                                                        callback_data=cb)])

            txt += em2("\n\nTrouves ci-dessous les produits que tu as souhaités (de manière générale) et qui sont présents dans cet achat groupé")
            if not cannot_confirm_requests:
                txt += "\. __Cliques sur chaque souhait que tu souhaites confirmer en tant que commande effective *dans cet achat groupé en particulier*__ " + \
                       em2("(ta commande est prise en compte lorsqu'elle est en attente de validation ⏳ ou bien validée ✅, ") + \
                       em2("autrement elle pas prise en compte ∅ dans cet achat groupé) :")
            else: txt += ' \:'

        else: txt += "\n\nTu n'as aucun souhait de produit correspondant à ceux présents dans cet achat groupé\." # TODO: Display the list somewhere.

        back = data_next if data_next else 'groupbuy_list'
        kbd_layout.append([InlineKeyboardButton('« Retour', callback_data=back)])
        kbd = InlineKeyboardMarkup(kbd_layout)

        edit_or_reply(update, txt, reply_markup=kbd, parse_mode='MarkdownV2')

    elif data.startswith('groupbuy_') and data.find('_product_request_') != -1 and data.endswith('_confirm'):

        groups    = GroupBuy.objects.concerned(user).distinct()
        group_pk  = data.split('_')[1]
        group     = groups.get(pk=group_pk)
        p_req_pk  = data.split('_')[4]
        p_req     = group.product_requests_for_user(user).get(pk=p_req_pk)

        cannot_confirm_requests = group.cannot_confirm_request(basket, p_req) + group.cannot_confirm_requests(basket)
        if cannot_confirm_requests:
            cannot_txt = "Tu ne peux pas encore confirmer cet achat :\n\n- " + "\n- ".join(cannot_confirm_requests)
            query_answer(query, cannot_txt, show_alert=True)

        else:

            if p_req.groupbuy_ordered:

                group.request_unconfirm(p_req)
                query_answer(query, "Commande annulée.")

            else:

                group.request_confirm(p_req)
                query_answer(query, "Commande enregistrée, en attente de validation.")

            button(update, context, user, data='groupbuy_view_%s' % group.pk)

    # HELPING
    elif data == "groupbuy_help_toggle":

        basket.helping = True if not basket.helping else False
        if basket.helping: query_answer(query, "Ta proposition d'aide à l'organisation a bien été enregistrée.")
        basket.save()

        command(update, context, user)

    # PRODUCTS
    elif data in ('groupbuy_product', 'groupbuy_product_home'):

        if data == 'groupbuy_product_home':
            pagination_reset(context.chat_data, 'groupbuy_product', extra_keys=['mode']) #, 'order', 'unvalidated'])

        kbd_layout     = []
        page_action    = context.chat_data.get('groupbuy_product_page_action', 'first')
        page_index     = context.chat_data.get('groupbuy_product_page_index',  1)
        mode           = context.chat_data.get('groupbuy_product_mode',        'simple')    # TODO: set default for _toggle
        order          = context.chat_data.get('groupbuy_product_order',       'pop') # TODO: set default for _toggle
        unvalidated    = context.chat_data.get('groupbuy_product_unvalidated', False) # TODO: set default for _toggle
        page_index_new = None

        if mode == 'simple': products = product_populars(Product.objects.filter(validated=True), include_zero=True)[0:10]

        elif mode == 'requested': products = Product.objects.filter(requests__user=user)

        else:

            if unvalidated: products = Product.objects.all()
            else: products = Product.objects.filter(validated=True)

            if order == 'pop': products = product_populars(products, include_zero=True)

        def kbd_products(products): #, kbd_layout, user):

            for p in products:

                try: pr = ProductRequest.objects.pending().get(user=user, product=p)
                except ProductRequest.DoesNotExist: pr = None

                if pr: name = '%s%s%s (%s)' % ('' if p.validated else '⚠️ ', p.name, ' 🛒' if mode != 'requested' else '', pr.quantity_unit())
                else: name = p.name
                if p.buying_groups.active().count(): name += ' 🛍️'

                kbd_layout.append([InlineKeyboardButton(name, callback_data='groupbuy_product_%s' % p.pk)])

        if mode == 'simple':

            kbd_products(products) #, kbd_layout, user)
            kbd_layout.append([InlineKeyboardButton('« Retour',  callback_data='groupbuy'),
                               InlineKeyboardButton('⚙️ Avancé…', callback_data='groupbuy_product_mode_advanced')])

        else:

            # Pagination buttons
            paginator = Paginator(products, 6)

            if page_action == 'first': page_index_new = 1

            elif page_action == "last": page_index_new = paginator.num_pages

            elif page_action == "prev":
                if page_index > 1: page_index_new = page_index - 1
                else: page_index_new = 1

            elif page_action == "next":
                if page_index < paginator.num_pages: page_index_new = page_index + 1
                else: page_index_new = paginator.num_pages

            page = paginator.page(page_index_new)
            context.chat_data['groupbuy_product_page_index'] = page_index_new
            kbd_products(page) #, kbd_layout, user)

            # TODO: faire un callback dummy si déjà sur l'index du bouton.
            kbd_layout.append([InlineKeyboardButton('<< page 1', # « ‹ › » ⏪◀️▶️⏩
                                                    callback_data='groupbuy_product_page_action_first'),
                               InlineKeyboardButton('<',
                                                    callback_data='groupbuy_product_page_action_prev'),
                               InlineKeyboardButton('>',
                                                    callback_data='groupbuy_product_page_action_next'),
                               InlineKeyboardButton('page %s >>' % paginator.num_pages,
                                                    callback_data='groupbuy_product_page_action_last')])

            if mode != 'requested':
                kbd_layout.append([InlineKeyboardButton('→⭐️ / 🔤' if order == 'pop' else '⭐️ / →🔤',
                                                        callback_data='groupbuy_product_order_toggle'),
                                   InlineKeyboardButton('%s Non-modérés' % ('⚠️' if unvalidated else '△'),
                                                        callback_data='groupbuy_product_unvalidated_toggle')])
                kbd_layout.append([InlineKeyboardButton('🛒 Mes souhaits',
                                                        callback_data='groupbuy_product_mode_requested'),
                                   InlineKeyboardButton('➕ Proposer',
                                                        callback_data='groupbuy_product_add_name')]),
                                   # InlineKeyboardButton('🔎 Rechercher',
                                   #                      callback_data='groupbuy_product_search')]),
                kbd_layout.append([InlineKeyboardButton('« Retour', callback_data='groupbuy_product_mode_simple')])

            else: kbd_layout.append([InlineKeyboardButton('« Retour', callback_data='groupbuy_product_mode_advanced')])

        kbd = InlineKeyboardMarkup(kbd_layout)

        if mode == 'simple':
            txt = 'Tu peux choisir parmi les produits les plus populaires souhaités par les Cagots. ' + \
                  """Si tu veux plus de produits ou en proposer clique sur  \"⚙️ Avancé…\""""

        else:

            if mode != 'requested':
                txt = """Tu peux rechercher et choisir des produits parmi ceux déjà souhaités par les Cagots. """ + \
                      """Si tu ne trouves pas un produit tu peux proposer de le rajouter."""
            else: txt = "🛒 Produits souhaités :"

            txt += """\n\n""" + \
                   """- %s produit(s).""" % products.count() + \
                   """\n""" + \
                   """- Page %s sur %s.""" % (page_index_new, paginator.num_pages)

            if mode != 'requested':
                txt += """\n- %s.""" % ('⭐️ Classement par popularité' if order == 'pop' else '🔤 Classement alphabétique')
                if unvalidated:
                    txt += """\n- ⚠️ Produits en attente de modération inclus."""

        edit_or_reply(update, txt, reply_markup=kbd)

    elif data.startswith('groupbuy_product_mode_simple'):    groupbuy_product_mode(update, context, user, 'simple')
    elif data.startswith('groupbuy_product_mode_advanced'):  groupbuy_product_mode(update, context, user, 'advanced')
    elif data.startswith('groupbuy_product_mode_requested'): groupbuy_product_mode(update, context, user, 'requested')

    elif data.startswith('groupbuy_product_order_toggle'):

        order = context.chat_data.get('groupbuy_product_order', 'pop') # TODO: set default for _toggle
        context.chat_data['groupbuy_product_order'] = 'ab' if order == 'pop' else 'pop'

        pagination_reset(context.chat_data, 'groupbuy_product')
        button(update, context, user, data='groupbuy_product')

    elif data.startswith('groupbuy_product_unvalidated_toggle'):

        unvalidated = context.chat_data.get('groupbuy_product_unvalidated', False) # TODO: set default for _toggle
        context.chat_data['groupbuy_product_unvalidated'] = True if not unvalidated else False

        pagination_reset(context.chat_data, 'groupbuy_product')
        button(update, context, user, data='groupbuy_product')

    elif data.startswith('groupbuy_product_page_action_'):

        page_action = data.split('_')[4]
        context.chat_data['groupbuy_product_page_action'] = page_action
        button(update, context, user, data='groupbuy_product')

    # elif data == 'groupbuy_product_search':

    #     context.chat_data['bot_waits_for_reply_to'] = 'groupbuy_product_search'

    #     txt = "Entre un mot clé pour identifier le produit." + command_cancel_txt('achats')
    #     kbd = ForceReply(one_time_keyboard=True, input_field_placeholder='p.ex. farine, sacs poubelle, couches bébé,…')

    #     message = query.message if query else update.message
    #     message.reply_text(txt, reply_markup=kbd)

    # elif data == 'groupbuy_product_requests':

    #         kbd_layout = []
    #         prs        = user.product_requests.pending()

    #         if prs.count():

    #             txt = "Produits souhaités :"

    #             for pr in prs:

    #                 name = '%s (%s)' % (pr.product.name, pr.quantity_unit())
    #                 kbd_layout.append([InlineKeyboardButton(name, callback_data='groupbuy_product_%s' % pr.product.pk)])

    #         else: txt = "Tu n'as demandé aucun produit pour le moment."

    #         kbd_layout.append([InlineKeyboardButton('« Retour',   callback_data='groupbuy_product')])
    #         kbd = InlineKeyboardMarkup(kbd_layout)

    #         message = query.message if query else update.message
    #         message.reply_text(txt, reply_markup=kbd)

    elif data == 'groupbuy_product_add_name':

        context.chat_data['bot_waits_for_reply_to'] = 'groupbuy_product_add_name'

        txt = "Quel est le nom du nouveau produit ?" + \
              """\n\n""" + \
              """Attention soit bien sûr\(e\) que c'est un __produit de première nécessité__\. """ + \
              """\n\nAssure toi aussi qu'il n'y a pas __déjà un un produit équivalent__ proposé ou en attente de modération, """ + \
              """pour éviter de s'éparpiller dans de trop multiples produits\. """ + \
              """On doit rester simple pour cette première expérience\.""" + command_cancel_txt('achats')

        # kbd_layout = []
        # kbd_layout.append([InlineKeyboardButton('❌ Annuler', callback_data='groupbuy_product_search')])
        # kbd = InlineKeyboardMarkup(kbd_layout, input_field_placeholder='p.ex. savon, filtre à eau potable…')

        kbd = ForceReply(one_time_keyboard=True, input_field_placeholder='p.ex. savon, filtre à eau potable…')
        message = query.message if query else update.message
        message.reply_text(txt, reply_markup=kbd, parse_mode='MarkdownV2')

    elif data.startswith('groupbuy_product_') and data.endswith('_quantity') :

        p_id = data.split('_')[2]
        p    = Product.objects.get(pk=p_id)
        unit = UNIT_CHOICES_DICT()[p.unit].lower()
        txt  = """Quelle quantité de "%s" souhaites-tu, en %s ?\n\n0 pour décommander.""" % (p.name, unit) + command_cancel_txt('achats')
        kbd  = ForceReply(one_time_keyboard=True, input_field_placeholder='Quantité en %s(s)…' % unit)

        context.chat_data['bot_waits_for_reply_to'] = 'groupbuy_product_%s_quantity' % p.id

        message = query.message if query else update.message
        message.reply_text(txt, reply_markup=kbd)

    elif data.startswith('groupbuy_product_'):

        p_id = data.split('_')[2]
        p    = Product.objects.get(pk=p_id)

        try: pr = ProductRequest.objects.pending().get(user=user, product=p)
        except ProductRequest.DoesNotExist: pr = None

        kbd_layout = []

        q      = "\n\nQuantité souhaitée : %s." % (pr.quantity_unit() if pr else 'aucune')
        val    = '' if p.validated else '\n\n⚠️ Produit en attente de modération.'
        txt    = """Produit sélectionné : %s.""" % p.name + q + val
        groups = p.buying_groups.active()

        if groups.count():

            txt += "\n\nDisponible dans les achats groupés suivants :"

            for group in groups:

                name  = '🛍️ %s' % group.name
                icons = []

                if user.product_requests.pending().filter(product=p, groupbuy_ordered=group).exists(): icons.append('⏳')
                if user.product_requests.validated().filter(product=p, groupbuy_ordered=group).exists(): icons.append('✅')
                if icons: name += ' %s' % ''.join(icons)

                kbd_layout.append([InlineKeyboardButton(name,
                                                        callback_data='groupbuy_view_%s_NEXT_%s' % (group.pk, data))])

        kbd_layout.append([InlineKeyboardButton('« Retour',            callback_data='groupbuy_product'),
                           InlineKeyboardButton('⚖️ Quantité souhaitée', callback_data='groupbuy_product_%s_quantity' % p.id)])
        kbd = InlineKeyboardMarkup(kbd_layout)

        edit_or_reply(update, txt, reply_markup=kbd)
        # if query: query.edit_message_text(txt, reply_markup=kbd)
        # else: update.message.reply_text(txt, reply_markup=kbd)

    # PAYMENT METHODS
    elif data == "groupbuy_payment_methods":

        payments_user = list(user.payment_methods.all())
        payments      = payments_user.copy()
        payments_dict = []

        for p in PaymentMethod.objects.all().order_by('name'):
            if not p in payments_user: payments.append(p)

        p_count = 1
        for p in payments:

            p_dict = {'payment': p, 'count': 0, 'callback_data': 'groupbuy_payment_method_%s_toggle' % p.id}

            if p in payments_user:
                p_dict['count'] = p_count
                p_count += 1

            payments_dict.append(p_dict)

        kbd_layout = []
        kbd_row    = []

        for p in payments_dict:

            if len(kbd_row) > 1:
                kbd_layout.append(kbd_row)
                kbd_row = []

            btn_str = p['payment'].__str__()
            if p['count']: btn_str = '%s - %s ✅' % (p['count'], btn_str)

            kbd_row.append(InlineKeyboardButton(btn_str, callback_data=p['callback_data']))

        if len(kbd_row): kbd_layout.append(kbd_row)

        kbd_layout.append([InlineKeyboardButton('« Retour', callback_data='groupbuy')])
        kbd = InlineKeyboardMarkup(kbd_layout)

        txt = """Sélectionne les moyens de paiement que tu souhaites utiliser, __par ordre de préférence__\. Il te faut en sélectionner au moins un\.""" + \
              """\n\n""" + \
              """👉 [Plus d'informations sur les moyens de paiement](https://cagots.fr/wiki/Cat%C3%A9gorie:Solution_Monnaie)"""

        edit_or_reply(update, txt, reply_markup=kbd, parse_mode='MarkdownV2')
        # query.edit_message_text(txt, reply_markup=kbd, parse_mode='MarkdownV2')

    elif data.startswith('groupbuy_payment_method_') and data.endswith('_toggle'):

        p_id = data.split('_')[3]
        p    = PaymentMethod.objects.get(pk=p_id)

        if user.payment_methods.filter(pk=p.pk).exists(): user.payment_methods.remove(p)
        else: user.payment_methods.add(p)

        button(update, context, user, data='groupbuy_payment_methods')

    # PICKUP
    elif data == 'groupbuy_pickup':

        pickups_user = list(user.pickup_methods.all())
        pickups      = pickups_user.copy()
        pickups_dict = []

        for p in PickupMethod.objects.all().order_by('name'):
            if not p in pickups_user: pickups.append(p)

        p_count = 1
        for p in pickups:

            p_dict = {'pickup': p, 'count': 0, 'callback_data': 'groupbuy_pickup_method_%s_toggle' % p.id}

            if p in pickups_user:
                p_dict['count'] = p_count
                p_count += 1

            pickups_dict.append(p_dict)

        kbd_layout = []

        for p in pickups_dict:

            btn_str = p['pickup'].__str__()
            if p['count']: btn_str = '%s - %s ✅' % (p['count'], btn_str)

            kbd_layout.append([InlineKeyboardButton(btn_str, callback_data=p['callback_data'])])

        kbd_layout.append([InlineKeyboardButton('🌍📍 Spécifier un lieu de récupération', callback_data='groupbuy_pickup_place')])
        kbd_layout.append([InlineKeyboardButton('« Retour', callback_data='groupbuy')])
        kbd = InlineKeyboardMarkup(kbd_layout)

        if not basket.geolocation: geo = '⏳ _pas encore spécifié_\.'
        else:                      geo = '🌍📍 %s' % em2(basket.geolocation.address)

        txt = """Sélectionne le\(s\) mode\(s\) de récupération que tu souhaites, __par ordre de préférence__\.""" + \
              """\n\n""" + \
              """Si tu souhaites uniquement récupérer la livraison par La Poste \(ou transporteur, ou point relais\), tu peux te contenter """ + \
              """de spécifier le pays comme lieu\. Autrement tu peux renseigner ta ville exacte, une grande """ + \
              """ville proche, ou au minimum le département, selon le niveau de confidentialité que tu désires\. """ + \
              """Je n'ai pas besoin d'en savoir plus sur le lieu, le reste tu le verras avec les organisateurs de l'achat\.""" + \
              """\n\n""" + \
              """__Lieu choisi :__ %s""" % geo

        edit_or_reply(update, txt, reply_markup=kbd, parse_mode='MarkdownV2')
        # if query: query.edit_message_text(txt, reply_markup=kbd, parse_mode='MarkdownV2')
        # else: update.message.reply_text(txt, reply_markup=kbd, parse_mode='MarkdownV2')

    elif data.startswith('groupbuy_pickup_method_') and data.endswith('_toggle'):

        p_id = data.split('_')[3]
        p    = PickupMethod.objects.get(pk=p_id)

        if user.pickup_methods.filter(pk=p.pk).exists(): user.pickup_methods.remove(p)
        else: user.pickup_methods.add(p)

        button(update, context, user, data='groupbuy_pickup')

    elif data in ('groupbuy_pickup_place', 'groupbuy_pickup_place_add'):

        if not user.geolocations.count() or data == 'groupbuy_pickup_place_add':

            # s = lambda update, context, user, g: button(update, context, user, data='groupbuy_pickup_place_%s_select' % g.pk)
            # e = lambda update, context, user: button(update, context, user, data='groupbuy_pickup_place_add')

            context.chat_data['bot_waits_for_reply_to'] = {'wait_for_reply': 'core_user_place_add',
                                                           'reply_success':  'groupbuy_pickup_place_%s_select',
                                                           'reply_error':    'groupbuy_pickup_place_add'}

            txt = "Indique moi un ou plusieurs mots clés pour identifier le lieu de livraison. " + \
                  geolocation_share_position_txt() + command_cancel_txt('achats')
            kbd = ForceReply(one_time_keyboard=True, input_field_placeholder='p.ex. Villeneuve, Tarn et Garonne')
            message = query.message if query else update.message
            message.reply_text(txt, reply_markup=kbd)

        else:

            txt        = "Sélectionne un lieu de livraison dans ton carnet d'adresses :" + command_cancel_txt('achats')
            kbd_layout = []

            for g in user.geolocations.all():
                address = '%s%s' % ('✅ ' if g == basket.geolocation else '', g.address)
                kbd_layout.append([InlineKeyboardButton(address, callback_data='groupbuy_pickup_place_%s_select' % g.pk)])

            del_next = 'groupbuy_pickup_place' if user.geolocations.count() > 1 else 'groupbuy_pickup'
            kbd_layout.append([InlineKeyboardButton('➕ Ajouter un lieu',   callback_data='groupbuy_pickup_place_add'),
                               InlineKeyboardButton('❌ Supprimer un lieu', callback_data='core_user_place_delete_NEXT_%s' % del_next)])
            kbd_layout.append([InlineKeyboardButton('« Retour',             callback_data='groupbuy_pickup')])
            kbd = InlineKeyboardMarkup(kbd_layout)

            edit_or_reply(update, txt, reply_markup=kbd)

    elif data.startswith('groupbuy_pickup_place_') and data.endswith('_select'):

        g_id = data.split('_')[3]
        g    = user.geolocations.get(pk=g_id)

        if g == basket.geolocation:
            basket.geolocation = None
            query_answer(query, 'Lieu de livraison désactivé.')
        else:
            basket.geolocation = g
            query_answer(query, 'Lieu de livraison choisi : %s' % g.address)

        basket.save()

        button(update, context, user, data='groupbuy_pickup')

    query_answer(query)