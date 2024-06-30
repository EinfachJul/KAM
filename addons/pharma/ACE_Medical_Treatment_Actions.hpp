class ACE_Medical_Treatment_Actions {
    class Morphine;
    class Carbonate: Morphine {
        displayName = CSTRING(Take_Carbonate);
        displayNameProgress = CSTRING(Using);
        category = "medication";
        treatmentLocations = 0;
        allowedSelections[] = {"Head"};
        allowSelfTreatment = 1;
        medicRequired = QGVAR(medLvl_Carbonate);
        treatmentTime = QGVAR(treatmentTime_Carbonate);
        items[] = {"kat_Carbonate"};
        callbackSuccess = QFUNC(treatmentAdvanced_Carbonate);
        animationPatient = "";
        animationPatientUnconscious = "AinjPpneMstpSnonWrflDnon_rolltoback";
        animationPatientUnconsciousExcludeOn[] = {"ainjppnemstpsnonwrfldnon"};
        sounds[] = {{QPATHTO_R(sounds\take_painkillers.wav),5,1,15}};
        litter[] = {};
        consumeItem = 0;
    };
    class Reorientation: Carbonate {
        displayName = CSTRING(Take_Reorient);
        displayNameProgress = CSTRING(Reorienting);
        allowedSelections[] = {"Head"};
        allowSelfTreatment = 0;
        medicRequired = QGVAR(medLvl_Reorientation);
        treatmentTime = QGVAR(treatmentTime_Reorientation);
        items[] = {};
        condition = QUOTE(!([_patient] call ace_common_fnc_isAwake) && GVAR(Reorientation_Enable));
        litter[] = {};
        callbackSuccess = QFUNC(treatmentAdvanced_Reorientation);
        animationMedic = "AinvPknlMstpSnonWnonDnon_medicUp4";
        animationMedicProne = "AinvPknlMstpSnonWnonDnon_medicUp4";
        sounds[] = {};
    };
};
