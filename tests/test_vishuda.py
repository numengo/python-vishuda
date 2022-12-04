#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""Tests for `vishuda` package."""
from click.testing import CliRunner

from vishuda.cli import cli

# PROTECTED REGION ID(vishuda.tests.test_vishuda) ENABLED START
def test_vishuda_schema_org():
    from vishuda.models import Thing
    from vishuda.models.things import Intangible
    from vishuda.models.things.intangibles import Enumeration, EntryPoint

    a = issubclass(Enumeration, Intangible)
    b = issubclass(Enumeration, Thing)
    c = issubclass(Intangible, Thing)
    d = issubclass(Intangible, Enumeration)
    assert a and b and c
    assert not d

    e = Enumeration()
    assert isinstance(e, Enumeration)
    assert isinstance(e, Intangible)
    assert isinstance(e, Thing)
    assert not  isinstance(e, EntryPoint)


def test_vishuda():
    from vishuda.models.media_files import AudioFile, ImageFile, VideoFile

    image_file = ImageFile(filepath='/Users/cedric/Nextcloud/Documents/mindmaps/yoni-mudra.jpg')
    image_file_info = image_file.file_info
    image_mime = image_file.file_info.mimetype
    image_info = image_file.image_info
    assert image_info.height

    image_file = ImageFile(filepath='/Users/cedric/Devel/python/python-nonosolaris/keep_calm_nonosolaris.png')
    image_file_info = image_file.file_info
    image_mime = image_file.file_info.mimetype
    image_info = image_file.image_info
    assert image_info.height

    video_file = VideoFile(filepath='/Users/cedric/Videos/Documentaries/initiates-2-3.mp4')
    #videofile = VideoFile(filepath='/Users/cedric/Videos/Documentaries/« Anunnaki » avec Michel Deseille - NURÉA TV-7VpP5jX70II.mp4')
    video_file_info = video_file.file_info
    video_mime = video_file.file_info.mimetype
    video_info = video_file.video_info
    assert video_info.height

    video_file = VideoFile(filepath='/Volumes/finewish128/Misc/engineering/ac-basics-learn-all-about.mp4')
    video_mime = video_file.file_info.mimetype
    video_info = video_file.video_info

    audio_file = AudioFile(filepath='/Users/cedric/Music/medecine songs/Mistico - Suddhosi Buddhosi.mp3')
    audio_file_info = audio_file.file_info
    audio_mime = audio_file.file_info.mimetype
    stream_info = audio_file.stream_info
    tags = audio_file.tags
    tn = tags.tracknumber
    assert tn


def test_vishuda_():
    from vishuda import settings
    from vishuda.models.chatbot.advanced import ChatbotAdvanced
    chatbot = ChatbotAdvanced(filepath='../vishuda/static/doctor.txt')
    chatbot.load()
    chatbot.initial()
    chatbot.respond('hello, how are you?')


def test_vishuda2():
    from vishuda import settings
    settings.configure(TELEGRAM_BOT_TOKEN=TOKEN)
    from vishuda import telegram_bot
    tb = telegram_bot.bot

    test_telebot(tb)
    test_telebot2(tb)


def test_telebot(tb):
    # https://github.com/eternnoir/pyTelegramBotAPI#telegram-channel
    # getMe
    user = tb.get_me()

    # setWebhook
    tb.set_webhook(url="http://example.com", certificate=open('mycert.pem'))
    # unset webhook
    tb.remove_webhook()

    # getUpdates
    updates = tb.get_updates()
    # or
    updates = tb.get_updates(1234, 100, 20)  # get_Updates(offset, limit, timeout):

    # sendMessage
    tb.send_message(chat_id, text)

    # editMessageText
    tb.edit_message_text(new_text, chat_id, message_id)

    # forwardMessage
    tb.forward_message(to_chat_id, from_chat_id, message_id)

    # All send_xyz functions which can take a file as an argument, can also take a file_id instead of a file.
    # sendPhoto
    photo = open('/tmp/photo.png', 'rb')
    tb.send_photo(chat_id, photo)
    tb.send_photo(chat_id, "FILEID")

    # sendAudio
    audio = open('/tmp/audio.mp3', 'rb')
    tb.send_audio(chat_id, audio)
    tb.send_audio(chat_id, "FILEID")

    ## sendAudio with duration, performer and title.
    tb.send_audio(CHAT_ID, file_data, 1, 'eternnoir', 'pyTelegram')

    # sendVoice
    voice = open('/tmp/voice.ogg', 'rb')
    tb.send_voice(chat_id, voice)
    tb.send_voice(chat_id, "FILEID")

    # sendDocument
    doc = open('/tmp/file.txt', 'rb')
    tb.send_document(chat_id, doc)
    tb.send_document(chat_id, "FILEID")

    # sendSticker
    sti = open('/tmp/sti.webp', 'rb')
    tb.send_sticker(chat_id, sti)
    tb.send_sticker(chat_id, "FILEID")

    # sendVideo
    video = open('/tmp/video.mp4', 'rb')
    tb.send_video(chat_id, video)
    tb.send_video(chat_id, "FILEID")

    # sendVideoNote
    videonote = open('/tmp/videonote.mp4', 'rb')
    tb.send_video_note(chat_id, videonote)
    tb.send_video_note(chat_id, "FILEID")

    # sendLocation
    tb.send_location(chat_id, lat, lon)

    # sendChatAction
    # action_string can be one of the following strings: 'typing', 'upload_photo', 'record_video', 'upload_video',
    # 'record_audio', 'upload_audio', 'upload_document' or 'find_location'.
    tb.send_chat_action(chat_id, action_string)

    # getFile
    # Downloading a file is straightforward
    # Returns a File object
    import requests
    file_info = tb.get_file(file_id)

    file = requests.get('https://api.telegram.org/file/bot{0}/{1}'.format(API_TOKEN, file_info.file_path))

def test_telebot2(tb):
    # https://github.com/eternnoir/pyTelegramBotAPI#telegram-channel
    from telebot import types

    # Using the ReplyKeyboardMarkup class
    # It's constructor can take the following optional arguments:
    # - resize_keyboard: True/False (default False)
    # - one_time_keyboard: True/False (default False)
    # - selective: True/False (default False)
    # - row_width: integer (default 3)
    # row_width is used in combination with the add() function.
    # It defines how many buttons are fit on each row before continuing on the next row.
    markup = types.ReplyKeyboardMarkup(row_width=2)
    itembtn1 = types.KeyboardButton('a')
    itembtn2 = types.KeyboardButton('v')
    itembtn3 = types.KeyboardButton('d')
    markup.add(itembtn1, itembtn2, itembtn3)
    tb.send_message(chat_id, "Choose one letter:", reply_markup=markup)

    # or add KeyboardButton one row at a time:
    markup = types.ReplyKeyboardMarkup()
    itembtna = types.KeyboardButton('a')
    itembtnv = types.KeyboardButton('v')
    itembtnc = types.KeyboardButton('c')
    itembtnd = types.KeyboardButton('d')
    itembtne = types.KeyboardButton('e')
    markup.row(itembtna, itembtnv)
    markup.row(itembtnc, itembtnd, itembtne)
    tb.send_message(chat_id, "Choose one letter:", reply_markup=markup)


if __name__ == '__main__':
    # to run test file standalone
    test_vishuda_schema_org()

# PROTECTED REGION END
