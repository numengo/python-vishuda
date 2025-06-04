import ast
import os
import logging
from typing import Any, Awaitable, Callable, Dict, Union

from aiogram import BaseMiddleware
from aiogram.dispatcher.event.bases import SkipHandler, CancelHandler
from aiogram.dispatcher.flags import get_flag
from aiogram.types import CallbackQuery, Message

from vishuda import settings

FROM_USER_ID_KEY = settings.FROM_USER_ID_KEY
FROM_USER_FIRST_NAME_KEY = settings.FROM_USER_FIRST_NAME_KEY
FROM_USER_LAST_NAME_KEY = settings.FROM_USER_LAST_NAME_KEY
FROM_USER_USERNAME_KEY = settings.FROM_USER_USERNAME_KEY

class FromUserInfoMiddleware(BaseMiddleware):

    async def __call__(self, handler, event, data):
        user = event.from_user
        if user:
            data[FROM_USER_ID_KEY] = user.id
            data[FROM_USER_FIRST_NAME_KEY] = user.first_name
            data[FROM_USER_LAST_NAME_KEY] = user.last_name
            data[FROM_USER_USERNAME_KEY] = user.username
        return await handler(event, data)


ADMINS = settings.TELEBOT_ADMINS


class AuthMiddleware(BaseMiddleware):
    async def __call__(self, handler, event, data):
        authorized_users = ast.literal_eval(os.getenv("TELEGRAM_USERS", "{}"))

        if event.from_user.id not in authorized_users.values():
            logging.warning(f"No authorized user={event.from_user.username} id={event.from_user.id}")
            raise SkipHandler()
        return await handler(event, data)


class AuthorizationMiddleware(BaseMiddleware):
    """Helps to check if user is authorized to use the bot"""

    async def __call__(self, handler, event, data):
        if not isinstance(event, Message):
            return await handler(event, data)

        authorization = get_flag(data, "authorization")
        print("Authorization: ", authorization)
        if authorization is not None:
            if authorization["is_authorized"]:
                if event.chat.id in ADMINS:
                    return await handler(event, data)
                else:
                    return None
        else:
            return await handler(event, data)
