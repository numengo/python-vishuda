#!/usr/bin/env python
import logging, os, sys, re, threading, time

from telegram.ext import Updater, ConversationHandler, CommandHandler, CallbackQueryHandler, \
                         MessageHandler, Filters, PicklePersistence, ChatMemberHandler
from telegram.bot import BotCommand
from telegram import BotCommandScopeAllPrivateChats, BotCommandScopeDefault, Update

sys.path.append(os.getcwd())
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "cagots_site.settings")
import django
from django.conf import settings


if settings.TELEGRAM_BOT_DEBUG:

    logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')
    logger = logging.getLogger(__name__)
    logger.info("START\n\n¡¡¡ START !!!\n")

else:

    class StreamToLogger(object):
        """
        Fake file-like stream object that redirects writes to a logger instance.
        """
        def __init__(self, logger, level):
           self.logger = logger
           self.level = level
           self.linebuf = ''

        def write(self, buf):
           for line in buf.rstrip().splitlines():
              self.logger.log(self.level, line.rstrip())

        def flush(self):
            pass

    logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
                        filename=os.path.join(settings.BASE_DIR, 'cagotbot.log'), filemode='a')
    logger = logging.getLogger(__name__)
    sys.stdout = StreamToLogger(logger, logging.INFO)
    sys.stderr = StreamToLogger(logger, logging.ERROR)
    logger.info("¡¡¡ START !!!")


# def error(update, context):
#     sys.stderr.write("ERROR: '%s' caused by '%s'" % (context.error, update))


def background():

    from core.models import TelegramGroupInfoMessage

    while True:
        for t in TelegramGroupInfoMessage.objects.filter(updated=False):
            try: t.update_or_create()
            except: pass
        time.sleep(10)

def main():

    django.setup()

    t = threading.Thread(name='background', target=background)
    t.daemon = True
    t.start()

    from core.telegram import telegram_updater

    updater = telegram_updater()
    dp      = updater.dispatcher

    # Commands
    # TODO: move to core.cagotbot, `commands_default_get` & `commands_all_private_chats_get`.
    from core.cagotbot import commands_get
    cmds = commands_get()
    updater.bot.set_my_commands([BotCommand('apropos', 'ᛉ⩛ Mais qui sont @CagotBot et les @Cagots ? ⩛ᛉ')],
                                scope=BotCommandScopeDefault())
    updater.bot.set_my_commands(map(lambda c: BotCommand(c['command'], c['description']), cmds),
                                scope=BotCommandScopeAllPrivateChats())
    for c in cmds: dp.add_handler(CommandHandler(c['command'], c['cb']))

    # Core
    from core.cagotbot import button as core_button
    from core.cagotbot import message as core_message
    dp.add_handler(CallbackQueryHandler(core_button, pattern=r'^core'))
    dp.add_handler(MessageHandler(Filters.text, core_message))
    dp.add_handler(MessageHandler(Filters.location, core_message), group=0)

    from core.cagotbot import chat_member_any, status_update, new_chat_members, left_chat_member
    dp.add_handler(ChatMemberHandler(chat_member_any, ChatMemberHandler.ANY_CHAT_MEMBER))
    dp.add_handler(MessageHandler(Filters.status_update, status_update), group=1)
    dp.add_handler(MessageHandler(Filters.status_update.new_chat_members, new_chat_members))
    dp.add_handler(MessageHandler(Filters.status_update.left_chat_member, left_chat_member))
    # TODO: move group_migrate_event() to core.cagotbot
    def group_migrate_event(update, context):
        # Critical but not well tested because can't simulate this event for debug.
        #
        # https://github-wiki-see.page/m/python-telegram-bot/python-telegram-bot/wiki/Storing-bot,-user-and-chat-related-data
        logger.warning("group_migrate_event: %s" % update)
        from core.models import TelegramGroup
        if update.message and update.message.migrate_to_chat_id:
            id_new = update.message.migrate_to_chat_id
            id_old = update.message.chat_id
            try:
                group = TelegramGroup.objects.get(id=id_old)
                group.id_new = id_new
                group.save()
                group.sync()
                logger.info("Group successfully migrated: %s" % update)
            except TelegramGroup.DoesNotExist: pass
    dp.add_handler(MessageHandler(Filters.status_update.migrate, group_migrate_event))

    # Market
    from market.cagotbot import button as market_button
    from market.cagotbot import message as market_message
    dp.add_handler(CallbackQueryHandler(market_button, pattern=r'^groupbuy')) # For the moment market is only groupbuy.
    dp.add_handler(MessageHandler(Filters.text, market_message), group=2)

    # Solaris
    from solaris.cagotbot import button as solaris_button
    # from solaris.cagotbot import message as solaris_message
    dp.add_handler(CallbackQueryHandler(solaris_button, pattern=r'^solaris'))
    # dp.add_handler(MessageHandler(Filters.text, solaris_message), group=1)

    # # Network
    # from network.cagotbot import button as network_button
    # # from network.cagotbot import message as network_message
    # dp.add_handler(CallbackQueryHandler(network_button, pattern=r'^network'))
    # # dp.add_handler(MessageHandler(Filters.text, network_message), group=3)

    # dp.add_error_handler(error)
    updater.start_polling(allowed_updates=Update.ALL_TYPES) # updater.start_polling()
    updater.idle()

if __name__ == '__main__':
    main()