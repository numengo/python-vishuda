from typing import Type, cast, Dict, Any

from aiogram_forms.forms import FormsManager
from aiogram_forms.forms.base import Field, Form
from aiogram_forms.core.entities import Entity
from aiogram_forms import utils


async def show(self, name: str) -> None:
    entity_container: Type['Form'] = self._get_form_by_name(name)
    data = await self.state.get_data()
    #defaults = {}
    for inherited_form, required in getattr(entity_container, 'inherited_forms_required', []):
        form_data = data.get(inherited_form)
        if not form_data:
            if required:
                return await self.show(inherited_form)
            else:
                # set default value
                entity_container: Type['Form'] = self._get_form_by_name(inherited_form)
                form_fields = utils.get_attrs_of_type(entity_container, Entity)
                form_data = {}
                for field_name, field in form_fields:
                    if getattr(field, 'default', None):
                        form_data[field_name] = field.default
                    elif getattr(field, 'choices', None):
                        form_data[field_name] = field.choices[0][1]
                data.update(form_data)

    states = entity_container.state.get_states()
    if states:
        first_entity = cast(Field, states[0].entity)
        await self.state.set_state(first_entity.state)
        await self.event.answer(str(first_entity.label), reply_markup=first_entity.reply_keyboard)  # type: ignore[arg-type]
    else:
        #await self.state.set_state(None)
        await entity_container.callback(self.event, **self.data)


async def handle(self, form: Type['Form']) -> None:
        """Handle form field."""
        state_label = await self.state.get_state()
        current_state: 'EntityState' = next(iter([
            st for st in form.state.get_states() if st.state == state_label
        ]))

        field: Field = cast(Field, current_state.entity)
        try:
            value = await field.process(
                await field.extract(self.event)
            )
            await field.validate(value)
        except ValidationError as error:
            error_message = field.error_messages.get(error.code) or error.message
            await self.event.answer(error_message, reply_markup=field.reply_keyboard)  # type: ignore[arg-type]
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
            next_field: Field = cast(Field, next_entity_state.entity)
            await self.state.set_state(next_field.state)
            await self.event.answer(
                '\n'.join([
                    str(next_field.label),
                    str(next_field.help_text) or ""
                ] if next_field.help_text else [str(next_field.label)]),
                reply_markup=next_field.reply_keyboard
            )
        else:
            await self.state.set_state(None)
            await form.callback(self.event, **self.data)


async def get_data(self, name: str) -> Dict[str, Any]:
    entity_container: Type['Form'] = self._get_form_by_name(name)
    data = await self.state.get_data()
    form_data = data.get(entity_container.__name__)
    if not form_data or not isinstance(form_data, dict):
        form_data = {}
    for inherited_form, required in getattr(entity_container, 'inherited_forms_required', []):
        entity_container: Type['Form'] = self._get_form_by_name(inherited_form)
        inherited_form_data = data.get(entity_container.__name__)
        if not inherited_form_data or not isinstance(inherited_form_data, dict):
            inherited_form_data = {}
        if required:
            form_data.update(inherited_form_data)
    return form_data


async def get_data_print(self, name: str) -> Dict[str, Any]:
    data = dict(await self.get_data(name))
    entity_container: Type['Form'] = self._get_form_by_name(name)
    form_fields = utils.get_attrs_of_type(entity_container, Entity)
    for fn, field in form_fields:
        if fn in data and field.__class__.__name__ == 'ChoiceField':
            data[fn] = {c[1]: c[0] for c in getattr(entity_container, fn).choices}.get(data[fn])

    for inherited_form, required in getattr(entity_container, 'inherited_forms_required', []):
        entity_container: Type['Form'] = self._get_form_by_name(inherited_form)
        form_fields = utils.get_attrs_of_type(entity_container, Entity)
        for fn, field in form_fields:
            if fn in data and field.__class__.__name__ == 'ChoiceField':
                data[fn] = {c[1]: c[0] for c in getattr(entity_container, fn).choices}.get(data[fn])
    return data

async def get_labels(self, name) -> Dict[str, Any]:
    labels = {}
    entity_container: Type['Form'] = self._get_form_by_name(name)
    form_fields = utils.get_attrs_of_type(entity_container, Entity)
    for fn, field in form_fields:
        labels[fn] = field.label
    for inherited_form, required in getattr(entity_container, 'inherited_forms_required', []):
        entity_container: Type['Form'] = self._get_form_by_name(inherited_form)
        form_fields = utils.get_attrs_of_type(entity_container, Entity)
        for fn, field in form_fields:
            labels[fn] = field.label
    return labels


FormsManager.show = show
FormsManager.handle = handle
FormsManager.get_data = get_data
FormsManager.get_data_print = get_data_print
FormsManager.get_labels = get_labels


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
