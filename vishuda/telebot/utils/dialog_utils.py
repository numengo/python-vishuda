
from aiogram_dialog.api.protocols import DialogManager


async def redirect_if_missing_params(dialog_manager: DialogManager, data: dict, required_params: dict):
    for param, state in required_params.items():
        if not data.get(f"is_{param}_defined", False):
            await dialog_manager.switch_to(state)
            return False
    return True
