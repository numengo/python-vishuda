#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""Tests for `telebot` package."""

import logging
import asyncio
import sys
from datetime import datetime
from typing import Any

from time import time
import multiprocessing as mp

from aiogram import Bot, Dispatcher, F, types, filters, Router
from aiogram.utils.keyboard import ReplyKeyboardBuilder, KeyboardButton

from aiogram.fsm.context import FSMContext
from aiogram3_form import Form, FormField
from aiogram.enums import ParseMode
from aiogram.filters import CommandStart
from aiogram.filters.callback_data import CallbackData

from vishuda import settings


bot = Bot(token=settings.TELEGRAM_BOT_TOKEN)
dp = Dispatcher()
router = Router()
dp.include_router(router)


class NameForm(Form):
    first_name: str = FormField(enter_message_text="Enter your first name please")
    second_name: str = FormField(
        enter_message_text="Enter your second name please",
        filter=(F.text.len() > 10) & F.text,
    )
    age: int = FormField(enter_message_text="Enter age as integer")


@NameForm.submit(router=router)
async def name_form_submit_handler(form: NameForm):
    # handle form submitted data
    # also supports aiogram standart DI (e. g. middlewares, filter data, etc)
    # you can do anything you want in here
    await form.answer(f"{form.first_name} {form.second_name} of age {form.age}")


# KEYBOARDS
FRUITS = ("Orange", "Apple", "Banana")

fruits_markup = (
    ReplyKeyboardBuilder().add(*(KeyboardButton(text=f) for f in FRUITS)).as_markup()
)


class FruitFormKeyboard(Form):
    fruit: str = FormField(
        enter_message_text="Pick your favorite fruit",
        filter=F.text.in_(FRUITS) & F.text,
        reply_markup=fruits_markup,
    )


# FORM FILTERS
def sync_fruit_form_filter(message: types.Message) -> str:
    if message.text not in FRUITS:
        return False

    return message.text


async def async_fruit_form_filter(
    message: types.Message,
): ...  # some async fruit filtering


class FruitFormFilter(Form):
    fruit: str = FormField(
        enter_message_text="Pick your favorite fruit",
        filter=sync_fruit_form_filter,  # you can pass an async filter here as well
        reply_markup=fruits_markup,
        error_message_text="Thats an invalid fruit",
    )


# ENTER CALLBACK
async def enter_fruit_callback(chat_id: int, user_id: int, data: dict[str, Any]):
    # do whatever you want in here
    print(f"user {user_id} has just entered the fruit callback in chat {chat_id}!")

    return await bot.send_message(
        chat_id, "Hey, pick your favorite fruit please", reply_markup=fruits_markup
    )


class FruitFormCallback(Form):
    fruit: str = FormField(
        enter_callback=enter_fruit_callback,
        filter=sync_fruit_form_filter,
        error_message_text="Thats an invalid fruit",
    )


@router.message(F.text == "/form_name")
async def form_name_handler(_, state: FSMContext):
    await NameForm.start(bot, state)  # start your form


@router.message(F.text == "/form_fruit_filter")
async def form_fruit_filter_handler(_, state: FSMContext):
    await FruitFormFilter.start(bot, state)  # start your form


@router.message(F.text == "/form_fruit_keyboard")
async def form_fruit_keyboard_handler(_, state: FSMContext):
    await FruitFormKeyboard.start(bot, state)  # start your form


@router.message(F.text == "/form_fruit_callback")
async def form_fruit_callback_handler(_, state: FSMContext):
    await FruitFormCallback.start(bot, state)  # start your form


async def main() -> None:
    # Initialize Bot instance with a default parse mode which will be passed to all API calls
    # And the run events dispatching
    await dp.start_polling(bot)


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO, stream=sys.stdout)
    asyncio.run(main())
