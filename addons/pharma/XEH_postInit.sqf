#include "script_component.hpp"

[QGVAR(carbonateLocal), LINKFUNC(treatmentAdvanced_CarbonateLocal)] call CBA_fnc_addEventHandler;
[QGVAR(reorientationLocal), LINKFUNC(treatmentAdvanced_ReorientationLocal)] call CBA_fnc_addEventHandler;
[QGVAR(medicationLocal), LINKFUNC(medicationLocal)] call CBA_fnc_addEventHandler;