from typing import Type, cast, Dict, Any

from aiogram_forms.forms import FormsManager
from aiogram_forms.forms.base import Field, Form
from aiogram_forms.core.entities import Entity
from aiogram_forms import utils


async def show(self, name: str) -> None:
    entity_container: Type['Form'] = self._get_form_by_name(name)
    data = await self.state.get_data()
    for inherited_form, required in getattr(entity_container, 'inherited_forms_required', []):
        form_data = data.get(inherited_form)
        if not form_data and required:
            await self.show(inherited_form)
    states = entity_container.state.get_states()
    if states:
        first_entity = cast(Field, states[0].entity)
        await self.state.set_state(first_entity.state)
        await self.event.answer(str(first_entity.label), reply_markup=first_entity.reply_keyboard)  # type: ignore[arg-type]
    else:
        #await self.state.set_state(None)
        await entity_container.callback(self.event, **self.data)


async def get_data(self, name: str) -> Dict[str, Any]:
    entity_container: Type['Form'] = self._get_form_by_name(name)
    data = await self.state.get_data()
    form_data = data.get(entity_container.__name__)
    if not form_data or not isinstance(form_data, dict):
        form_data = {}
    for inherited_form, required in getattr(entity_container, 'inherited_forms_required', []):
        if required:
            entity_container: Type['Form'] = self._get_form_by_name(inherited_form)
            inherited_form_data = data.get(entity_container.__name__)
            if not inherited_form_data or not isinstance(inherited_form_data, dict):
                inherited_form_data = {}
            form_data.update(inherited_form_data)
    return form_data


async def get_data_print(self, name: str) -> Dict[str, Any]:
    data = await self.get_data(name)
    labels = {}
    entity_container: Type['Form'] = self._get_form_by_name(name)
    form_fields = utils.get_attrs_of_type(entity_container, Entity)
    for fn, field in form_fields:
        labels[fn] = field.label
        if fn in data and field.__class__.__name__ == 'ChoiceField':
            data[fn] = {c[1]: c[0] for c in getattr(entity_container, fn).choices}.get(data[fn])

    for inherited_form, required in getattr(entity_container, 'inherited_forms_required', []):
        entity_container: Type['Form'] = self._get_form_by_name(inherited_form)
        form_fields = utils.get_attrs_of_type(entity_container, Entity)
        for fn, field in form_fields:
            labels[fn] = field.label
            if fn in data and field.__class__.__name__ == 'ChoiceField':
                data[fn] = {c[1]: c[0] for c in getattr(entity_container, fn).choices}.get(data[fn])
    return {labels.get(k, k): v  for k, v in data.items()}


FormsManager.show = show
FormsManager.get_data = get_data
FormsManager.get_data_print = get_data_print


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
