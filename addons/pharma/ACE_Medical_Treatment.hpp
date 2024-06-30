class ACE_ADDON(Medical_Treatment) {
    class Medication {
        class Carbonate {
            painReduce = 0;
            hrIncreaseLow[] = {5, 10};
            hrIncreaseNormal[] = {10, 15};
            hrIncreaseHigh[] = {15, 20};
            timeInSystem = 30;
            timeTillMaxEffect = 2;
            maxDose = 10;
            maxDoseDeviation = 2;
            incompatibleMedication[] = {};
            viscosityChange = 0;
            onOverDose = "";
        };
    };
};
