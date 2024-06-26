from typing import Any
from aiogram_forms.forms.fields import (
    TextField as TextField_required,
    EmailField as EmailField_required,
    PhoneNumberField as PhoneNumberField_required,
    ChoiceField as ChoiceField_required
)
from aiogram_forms.forms.base import Field


class OptionalField(Field):
    """Field implementation with `reauired` attribute """
    required = True
    default = None

    def __init__(self, *args, required=True, default=None, **kwargs):
        super().__init__(*args, **kwargs)  # type: ignore[arg-type]
        self.required = required
        self.default = default


TextField = type('TextField', (OptionalField, TextField_required), {})
EmailField = type('EmailField', (OptionalField, EmailField_required), {})
PhoneNumberField = type('PhoneNumberField', (OptionalField, PhoneNumberField_required), {})
ChoiceField = type('ChoiceField', (OptionalField, ChoiceField_required), {})

class ChoiceField(OptionalField, ChoiceField_required):

    async def process(self, value: str) -> Any:
        # overried method to test against str(label) in case of i18n LazyObject
        for label, key in self.choices:
            if value == str(label):
                return key
        return None


__all__ = [
    'TextField',
    'EmailField',
    'PhoneNumberField',
    'ChoiceField'
]
