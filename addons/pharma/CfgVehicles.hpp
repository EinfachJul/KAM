#define QQPATHTOF(var1) QUOTE(QPATHTOF(var1))

class CfgVehicles {
    class WeaponHolder_Single_limited_item_F;

    class kat_PainkillerItem: WeaponHolder_Single_limited_item_F {
        scope = 2;
        scopeCurator = 2;
        displayName= CSTRING(Painkillers_Box_Display);
        author = "Katalam";
        vehicleClass = "Magazines";
        class TransportItems {
            MACRO_ADDITEM(kat_Painkiller,1);
        };
    };
};