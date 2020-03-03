#include "script_component.hpp"
/*
 * Author: Katalam
 * Handle the treatment for the patient cause calling two functions in one action isn't allowed.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * Successful <BOOLEAN>
 *
 * Example:
 * [player, cursorTarget, 'hand_l', 'BloodIV_A', 'BloodIV_A'] call kat_circulation_fnc_handleTreatment;
 *
 * Public: No
 */

params ["_player", "_target", "_selectionName", "_className", "_items"];

private _return = false;

[_player, _target, _selectionName, _className, "", _items] call ace_medical_treatment_fnc_ivBag;

diag_log format ["_player: %1", _player];
diag_log format ["_target: %1", _target];
diag_log format ["_selectionName: %1", _selectionName];
diag_log format ["_className: %1", _className];
diag_log format ["_items: %1", _items];

if ([_target, _className] call FUNC(compatible)) exitWith {};

[_className, _target] call FUNC(treatmentAdvanced_IV);

_return = true;
_return;
