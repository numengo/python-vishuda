import copy

from typing import Type, cast, Dict, Any, Optional, Callable, Awaitable
from copy import deepcopy

from aiogram import types
from aiogram_forms.const import FORMS_MANAGER_DI_KEY
from aiogram_forms.forms import FormsManager
from aiogram_forms.forms.base import Field, Form
from aiogram_forms.middleware import EntityMiddleware
from aiogram_forms.errors import ValidationError
from aiogram_forms.core.entities import Entity
from aiogram_forms import utils

async def show(self, name: str) -> None:
    entity_container: Type['Form'] = self._get_form_by_name(name)
    first_entity = None
    for state in entity_container.state.get_states():
        required = getattr(state.entity, 'required', True)
        if required:
            first_entity = cast(Field, state.entity)
            break
    if not first_entity:
        first_entity = cast(Field, entity_container.state.get_states()[0].entity)
    await self.state.set_state(first_entity.state)
    i18n = self.data.get('i18n')
    label = str(first_entity.label)
    reply_keyboard = translate_keyboard(first_entity.reply_keyboard, i18n)
    await self.event.answer(label, reply_markup=reply_keyboard)  # type: ignore[arg-type]


async def handle(self, form: Type['Form']) -> None:
    """Handle form field."""
    i18n = self.data.get('i18n')
    state_label = await self.state.get_state()
    current_state: 'EntityState' = next(iter([
        st for st in form.state.get_states() if st.state == state_label
    ]))

    field: Field = cast(Field, current_state.entity)
    try:
        value = await field.process(
            await field.extract(self.event)
        )
        #if hasattr(field, 'choices'):
        #    # trick to get a dictionary translation-lazyobject
        #    choices = {str(c[0]): c[0] for c in field.choices}
        #    # get back the lazy object
        #    value = choices.get(value)
        await field.validate(value)
    except ValidationError as error:
        error_message = field.error_messages.get(error.code) or error.message
        #error_message = error_message if not i18n else i18n.gettext(error_message)
        reply_keyboard = translate_keyboard(field.reply_keyboard, i18n)
        await self.event.answer(error_message, reply_markup=reply_keyboard)  # type: ignore[arg-type]
        return

    data = await self.state.get_data()
    form_data = data.get(form.__name__, {})
    form_data.update({field.state.state.split(':')[-1]: value})  # type: ignore[union-attr]
    await self.state.update_data({form.__name__: form_data})

    next_state_index = cast(
        Dict['EntityState', Optional['EntityState']],
        dict(zip(current_state.group, list(current_state.group)[1:]))
    )
    next_entity_state: Optional['EntityState'] = next_state_index.get(current_state)
    if next_entity_state:
        field = next_entity_state.entity
        while not field.required:
            value = None
            if field.default:
                value = field.default
            elif hasattr(field, 'choices'):
                value = field.choices[0][1]
            form_data.update({next_entity_state.state.split(':')[-1]: value})  # type: ignore[union-attr]
            next_entity_state = next_state_index.get(next_entity_state)
            if next_entity_state is None:
                await self.state.set_state(None)
                return await form.callback(self.event, **self.data)
            field = next_entity_state.entity

        next_field: Field = cast(Field, next_entity_state.entity)
        await self.state.set_state(next_field.state)
        _ = i18n.lazy_gettext if i18n else str
        _ = str ## to change to str if successful with LazyGettext
        text = '\n'.join([
                      _(next_field.label),
                      _(next_field.help_text) or ""
                  ] if next_field.help_text else [_(next_field.label)]),
        reply_keyboard = translate_keyboard(next_field.reply_keyboard, i18n)
        await self.event.answer(
            text,
            reply_markup=reply_keyboard
        )
    else:
        await self.state.set_state(None)
        await form.callback(self.event, **self.data)

async def get_data_print(self, name: str, data: Dict[str, Any]) -> Dict[str, Any]:
    data = dict(data)
    entity_container: Type['Form'] = self._get_form_by_name(name)
    form_fields = utils.get_attrs_of_type(entity_container, Entity)
    for fn, field in form_fields:
        if fn in data and field.__class__.__name__ == 'ChoiceField':
            data[fn] = {str(c[1]): c[0] for c in getattr(entity_container, fn).choices}.get(str(data[fn]))
    return data

async def get_labels(self, name) -> Dict[str, Any]:
    labels = {}
    entity_container: Type['Form'] = self._get_form_by_name(name)
    form_fields = utils.get_attrs_of_type(entity_container, Entity)
    for fn, field in form_fields:
        labels[fn] = field.label
    return labels

FormsManager.show = show
FormsManager.handle = handle
FormsManager.get_labels = get_labels
FormsManager.get_data_print = get_data_print

def translate_keyboard(keyboard, i18n=None):
    if not i18n:
        return keyboard
    return keyboard
    _ = i18n.lazy_gettext
    kb = copy.deepcopy(keyboard)
    for bs in kb.keyboard:
        for b in bs:
            b.text = _(b.text)
    return kb


async def entity_middleware_call(
    self,
    handler: Callable[[types.TelegramObject, Dict[str, Any]], Awaitable[Any]],
    event: types.TelegramObject,
    data: Dict[str, Any]
) -> Any:
    i18n_middleware = data.get('i18n_middleware')
    data[FORMS_MANAGER_DI_KEY] = FormsManager(self.dispatcher, event, data)
    if i18n_middleware:
        return await i18n_middleware(handler, event, data)
    return await handler(event, data)

EntityMiddleware.__call__ = entity_middleware_call

def entity_copy(entity):
    return entity.__class__(**{k: v for k, v in entity.__dict__.items() if not k.startswith('_')})

Entity.copy = entity_copy


def create_deep_link(
    username: str,
    command: str,
    payload: str,
    **params
) -> str:
    """
    Create deep link.

    :param username:
    :param link_type: `start` or `startgroup`
    :param payload: any string-convertible data
    :param encode: encode payload with base64url or custom encoder
    :param encoder: custom encoder callable
    :return: deeplink
    """
    from aiogram.utils.link import create_telegram_link
    if not isinstance(payload, str):
        payload = str(payload)

    if len(payload) > 64:
        raise ValueError("Payload must be up to 64 characters long.")

    return create_telegram_link(username, **{command: payload}, **params)


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
    'FormsManager',
    'Form',
    'create_buttons_menu',
    'create_lang_buttons',
]
