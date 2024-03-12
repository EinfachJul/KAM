#include "..\script_component.hpp"
/*
 * Author: Mazinski.H, Blue
 * Checks for Carbonate Wakeup values to restore consciousness
 *
 * Arguments:
 * 0: Medic <OBJECT>
 * 1: Patient <OBJECT>
 *
 * Return Value:
 * None
 *`
 * Example:
 * [player, cursorTarget] call kat_pharma_fnc_treatmentAdvanced_CarbonateLocal;
 *
 * Public: No
 */

params ["_medic", "_patient"];

private _bloodPressureH = [_patient] call ACEFUNC(medical_status,getBloodPressure) select 1;

if ((floor (random 100) < ((linearConversion [50, 100, _bloodPressureH, 0, GVAR(carbonateChance), true]) min (linearConversion [140, 200, _bloodPressureH, GVAR(carbonateChance), 0, true]))) && {[_patient] call FUNC(hasStableVitals)}) then {
    [_patient, false] call ACEFUNC(medical,setUnconscious);
};
