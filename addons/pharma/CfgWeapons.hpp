class CfgWeapons {
    class ACE_ItemCore;
    class CBA_MiscItem_ItemInfo;

    class kat_Carbonate: ACE_ItemCore {
        scope = 2;
        author = "Katalam";
        displayName = CSTRING(Carbonate_Box_Display);
        descriptionShort = CSTRING(Carbonate_DescShort);
        model = "\A3\Structures_F_EPA\Items\Medical\Painkillers_F.p3d";
        picture = QPATHTOF(ui\icon_Carbonate.paa);
        ACE_isMedicalItem = 1;

        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 1;
        };
    };
};
