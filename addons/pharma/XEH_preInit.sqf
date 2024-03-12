#include "script_component.hpp"

ADDON = false;

PREP_RECOMPILE_START;
#include "XEH_PREP.hpp"
PREP_RECOMPILE_END;

#define CBA_SETTINGS_CAT "KAT - ADV Medical: Pharmacy"

// Reorientation Settings Category
[
    QGVAR(Reorientation_Enable),
    "CHECKBOX",
    [LLSTRING(SETTING_Reorientation_Enable), LLSTRING(SETTING_Reorientation_Enable_DESC)],
    [CBA_SETTINGS_CAT, LSTRING(SubCategory_Reorientation)],
    [true],
    true
] call CBA_Settings_fnc_init;

[
    QGVAR(medLvl_Reorientation),
    "LIST",
    [LLSTRING(SETTING_Allow_Reorientation),LLSTRING(SETTING_Allow_Reorientation_DESC)],
    [CBA_SETTINGS_CAT, LSTRING(SubCategory_Reorientation)],
    [[0, 1, 2], [ACELSTRING(medical_treatment,Anyone), ACELSTRING(medical_treatment,Medics), ACELSTRING(medical_treatment,Doctors)], 0],
    true
] call CBA_settings_fnc_init;

[
    QGVAR(treatmentTime_Reorientation),
    "SLIDER",
    [LLSTRING(treatmentTime_Reorientation)],
    [CBA_SETTINGS_CAT, LSTRING(SubCategory_Reorientation)],
    [0.1, 10, 2, 1],
    true
] call CBA_Settings_fnc_init;


[
    QGVAR(Reorientation_Slap),
    "CHECKBOX",
    [LLSTRING(SETTING_Reorientation_Slap), LLSTRING(SETTING_Reorientation_Slap_DESC)],
    [CBA_SETTINGS_CAT, LSTRING(SubCategory_Reorientation)],
    [true],
    true
] call CBA_Settings_fnc_init;

[
    QGVAR(reorientationChance),
    "SLIDER",
    LLSTRING(SETTING_reorientationChance),
    [CBA_SETTINGS_CAT, LSTRING(SubCategory_Reorientation)],
    [0, 100, 50, 0],
    true
] call CBA_Settings_fnc_init;

// Carbonate Settings Category
[
    QGVAR(medLvl_Carbonate),
    "LIST",
    [LLSTRING(medLvl_Carbonate)],
    [CBA_SETTINGS_CAT, LSTRING(SubCategory_Carbonate)],
    [[0, 1, 2], [ACELSTRING(medical_treatment,Anyone), ACELSTRING(medical_treatment,Medics), ACELSTRING(medical_treatment,Doctors)], 0],
    true
] call CBA_Settings_fnc_init;

[
    QGVAR(treatmentTime_Carbonate),
    "SLIDER",
    [LLSTRING(treatmentTime_Carbonate)],
    [CBA_SETTINGS_CAT, LSTRING(SubCategory_Carbonate)],
    [0.1, 10, 7, 1],
    true
] call CBA_Settings_fnc_init;

[
    QGVAR(carbonateChance),
    "SLIDER",
    LLSTRING(SETTING_carbonateChance),
    [CBA_SETTINGS_CAT, LSTRING(SubCategory_Carbonate)],
    [0, 100, 100, 0],
    true
] call CBA_Settings_fnc_init;

ADDON = true;
