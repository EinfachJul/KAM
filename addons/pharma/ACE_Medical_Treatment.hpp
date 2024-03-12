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
            incompatibleMedication[] = {};
            viscosityChange = 0;
            onOverDose = "";
        };
        class Painkillers {
            painReduce = 0.3;
            hrIncreaseLow[] = {0, 5};
            hrIncreaseNormal[] = {5, 10};
            hrIncreaseHigh[] = {5, 15};
            timeInSystem = 600;
            timeTillMaxEffect = 90;
            maxDose = 10;
            incompatibleMedication[] = {};
            viscosityChange = -5;
            onOverDose = "";
        };
    };
};
