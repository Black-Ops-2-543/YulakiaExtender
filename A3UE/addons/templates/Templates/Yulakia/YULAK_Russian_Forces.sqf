//these variables determine whether specified dlcs are loaded
private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasHelicopters = "heli" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;
private _hasJets = "jets" in A3A_enabledDLC;
private _hasArtOfWar = "aow" in A3A_enabledDLC;
private _hasGM = "gm" in A3A_enabledDLC;
private _hasCSLA = "csla" in A3A_enabledDLC;
private _hasRF = "rf" in A3A_enabledDLC;
private _hasSOG = "vn" in A3A_enabledDLC;
private _hasSPE = "spe" in A3A_enabledDLC;
private _hasEF = "ef" in A3A_enabledDLC;

#include "..\..\script_component.hpp" // TAKE NOTE OF THIS. WITHOUT THIS, YOU CAN'T USE MACROS LIKE QPATHTOFOLDER.

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "Russian"] call _fnc_saveToTemplate; 						                                        //this line determines the faction name -- Example: ["name", "NATO"] - ENTER ONLY ONE OPTION
["spawnMarkerName", "Russian Support Corridor"] call _fnc_saveToTemplate; 			                        //this line determines the name tag for the "carrier" on the map -- Example: ["spawnMarkerName", "NATO support corridor"] - ENTER ONLY ONE OPTION. Format and localize function can be used for translation

["flag", "Flag_AAF_F"] call _fnc_saveToTemplate; 						                                    //this line determines the flag -- Example: ["flag", "Flag_NATO_F"] - ENTER ONLY ONE OPTION
["flagTexture", QPATHTOFOLDER(Templates\Yulakia\flag_ru_co.paa)] call _fnc_saveToTemplate; 	                //this line determines the flag texture -- Example: ["flagTexture", "\A3\Data_F\Flags\Flag_NATO_CO.paa"] - ENTER ONLY ONE OPTION
["flagMarkerType", "russian_flag"] call _fnc_saveToTemplate; 			                                    //this line determines the flag marker type -- Example: ["flagMarkerType", "flag_NATO"] - ENTER ONLY ONE OPTION

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate; 	                                                //Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate;                                               //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate;                                               //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["O_R_LSV_02_unarmed_F"]] call _fnc_saveToTemplate; 			                                //this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed", ["RUS_VDV_kamaz4386", "rhs_tigr_m_vmf", "Kraz_Spartan"]] call _fnc_saveToTemplate; 		                                //this line determines light and unarmed vehicles. -- Example: ["vehiclesLightUnarmed", ["B_MRAP_01_F"]] -- Array, can contain multiple assets
["vehiclesLightArmed",["O_R_LSV_02_AT_F", "RHS_GRU_asn233115sts", "Kraz_Spartan_dshk"]] call _fnc_saveToTemplate; 		            //this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["O_R_Truck_03_covered_F", "RUS_GRU_ural63095"]] call _fnc_saveToTemplate; 			//this line determines the trucks -- Example: ["vehiclesTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesCargoTrucks", ["rhs_kamaz5350_flatbed_cover_vmf"]] call _fnc_saveToTemplate; 		//this line determines cargo trucks -- Example: ["vehiclesCargoTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesAmmoTrucks", ["O_R_Truck_03_ammo_F"]] call _fnc_saveToTemplate; 		                            //this line determines ammo trucks -- Example: ["vehiclesAmmoTrucks", ["B_Truck_01_ammo_F"]] -- Array, can contain multiple assets
["vehiclesRepairTrucks", ["O_R_Truck_03_repair_F"]] call _fnc_saveToTemplate; 		                            //this line determines repair trucks -- Example: ["vehiclesRepairTrucks", ["B_Truck_01_Repair_F"]] -- Array, can contain multiple assets
["vehiclesFuelTrucks", ["O_R_Truck_03_fuel_F"]] call _fnc_saveToTemplate;		                                //this line determines fuel trucks -- Array, can contain multiple assets
["vehiclesMedical", ["O_R_Truck_03_medical_F", "O_R_Truck_02_medical_F"]] call _fnc_saveToTemplate;			                            //this line determines medical vehicles -- Array, can contain multiple assets
["vehiclesLightAPCs", ["red_k16_r", "RUS_MSV_btr82a"]] call _fnc_saveToTemplate;		
["vehiclesAPCs", ["red_k18_r", "red_k17_r", "TV_kgn25_NSVT", "O_R_APC_Wheeled_04_cannon_ard_F"]] call _fnc_saveToTemplate; 		//this line determines APCs -- Example: ["vehiclesAPCs", ["B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_CRV_F"]] -- Array, can contain multiple assets
["vehiclesAirborne", ["RUS_VDV_bmd4m"]] call _fnc_saveToTemplate;
["vehiclesIFVs", ["TV_kgn25_2A92", "rhs_t15_tv", "TV_kgn25_2A42", "O_BMPT", "rhs_bmp3mera_msv", "RUS_MSV_bmp2m", "RUS_VDV_bmd4m"]] call _fnc_saveToTemplate;				                                                //this line determines IFVs
["vehiclesTanks", ["rhs_t14_tv", "RUS_MSV_t90m", "rhs_t90sab_tv", "rhs_t90saa_tv", "rhs_tv_t80bvm", "RUS_MSV_t72b3m"]] call _fnc_saveToTemplate; 			                                //this line determines tanks -- Example: ["vehiclesTanks", ["B_MBT_01_cannon_F", "B_MBT_01_TUSK_F"]] -- Array, can contain multiple assets
["vehiclesLightTanks", ["rhs_sprut_vdv"]] call _fnc_saveToTemplate;
["vehiclesAA", ["mkk_sa22m_pantsir_r", "mkk_2s6m_tunguska"]] call _fnc_saveToTemplate; 				                                    //this line determines AA vehicles -- Example: ["vehiclesAA", ["B_APC_Tracked_01_AA_F"]] -- Array, can contain multiple assets

["vehiclesTransportBoats", ["O_R_Boat_Transport_01_ard_F"]] call _fnc_saveToTemplate; 	                                                        //this line determines transport boats -- Example: ["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesGunBoats", ["O_R_Boat_Armed_01_hmg_ard_F"]] call _fnc_saveToTemplate; 			                                                    //this line determines gun boats -- Example: ["vehiclesGunBoats", ["B_Boat_Armed_01_minigun_F"]] -- Array, can contain multiple assets
["vehiclesAmphibious", ["rhs_bmp3mera_msv"]] call _fnc_saveToTemplate; 		//this line determines amphibious vehicles  -- Example: ["vehiclesAmphibious", ["B_APC_Wheeled_01_cannon_F"]] -- Array, can contain multiple assets

["vehiclesPlanesCAS", ["RHS_Su25SM_vvs"]] call _fnc_saveToTemplate; 		                                            //this line determines CAS planes -- Example: ["vehiclesPlanesCAS", ["B_Plane_CAS_01_dynamicLoadout_F"]] -- Array, can contain multiple assets
["vehiclesPlanesAA", ["rhs_mig29sm_vmf", "RHS_VKS_su57"]] call _fnc_saveToTemplate; 			                                                        //this line determines air supperiority planes -- Example: ["vehiclesPlanesAA", ["B_Plane_Fighter_01_F"]] -- Array, can contain multiple assets
["vehiclesPlanesTransport", ["RHS_Mi8mt_Cargo_vvs"]] call _fnc_saveToTemplate; 	                                                                                //this line determines transport planes -- Example: ["vehiclesPlanesTransport", ["B_T_VTOL_01_infantry_F"]] -- Array, can contain multiple assets

["vehiclesHelisLight", ["RHS_Mi8T_vvs", "RHS_Mi8mt_vvs"]] call _fnc_saveToTemplate; 		                                                    //this line determines light helis -- Example: ["vehiclesHelisLight", ["B_Heli_Light_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisTransport", ["RHS_Mi8T_vvs", "RHS_Mi8mt_vvs"]] call _fnc_saveToTemplate; 	                            //this line determines transport helis -- Example: ["vehiclesHelisTransport", ["B_Heli_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisLightAttack", ["RHS_Mi8MTV3_vvs", "RHS_Mi8MTV3_heavy_vvs"]] call _fnc_saveToTemplate;		                                        //this line determines light attack helicopters
["vehiclesHelisAttack", ["LS_Ka52_F", "rhs_mi28n_vvs", "RHS_Mi24V_vvs"]] call _fnc_saveToTemplate; 		                                            //this line determines attack helis -- Example: ["vehiclesHelisAttack", ["B_Heli_Attack_01_F"]] -- Array, can contain multiple assets

["vehiclesArtillery", ["RUS_MSV_2s19m1", "RUS_MSV_2b26"]] call _fnc_saveToTemplate;		                                            //this line determines SPAs
["magazines", createHashMapFromArray [
["RUS_MSV_2s19m1", ["rhs_mag_HE_2a33"]],
["RUS_MSV_2b26",["VTN_9M522_40"]]
]] call _fnc_saveToTemplate;			                                                                                                    //this line determines ammo to be used with specified SPA, hashMap makes sure that SPA gets proper ammo

["uavsAttack", ["orion_F_KORNET_OPF"]] call _fnc_saveToTemplate; 				                                                    //this line determines attack UAVs -- Example: ["uavsAttack", ["B_UAV_02_CAS_F"]] -- Array, can contain multiple assets
["uavsPortable", ["O_R_UAV_01_F"]] call _fnc_saveToTemplate; 				                                                                    //this line determines portable UAVs -- Example: ["uavsPortable", ["B_UAV_01_F"]] -- Array, can contain multiple assets

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", ["rhs_tigr_sts_vv"]] call _fnc_saveToTemplate;        //this line determines lightly armed militia vehicles -- Example: ["vehiclesMilitiaLightArmed", ["B_G_Offroad_01_armed_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaTrucks", ["rhs_kamaz5350_vv"]] call _fnc_saveToTemplate; 	        //this line determines militia trucks (unarmed) -- Example: ["vehiclesMilitiaTrucks", ["B_G_Van_01_transport_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaCars", ["O_R_LSV_02_unarmed_F"]] call _fnc_saveToTemplate; 		//this line determines militia cars (unarmed) -- Example: ["vehiclesMilitiaCars", ["B_G_Offroad_01_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaAPCs", ["rhs_btr80_vv"]] call _fnc_saveToTemplate;				    //this line determines militia APCs

["vehiclesPolice", ["rhs_tigr_vv"]] call _fnc_saveToTemplate; 			            //this line determines police cars -- Example: ["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] -- Array, can contain multiple assets

["staticMGs", ["rhs_KORD_high_MSV"]] call _fnc_saveToTemplate; 					    //this line determines static MGs -- Example: ["staticMG", ["B_HMG_01_high_F"]] -- Array, can contain multiple assets
["staticAT", ["rhs_Kornet_9M133_2_msv"]] call _fnc_saveToTemplate; 					//this line determinesstatic ATs -- Example: ["staticAT", ["B_static_AT_F"]] -- Array, can contain multiple assets
["staticAA", ["rhs_Igla_AA_pod_msv"]] call _fnc_saveToTemplate; 					//this line determines static AAs -- Example: ["staticAA", ["B_static_AA_F"]] -- Array, can contain multiple assets
["staticMortars", ["RUS_MSV_2b14"]] call _fnc_saveToTemplate; 				        //this line determines static mortars -- Example: ["staticMortars", ["B_Mortar_01_F"]] -- Array, can contain multiple assets
["staticHowitzers", ["RUS_MSV_2a18m"]] call _fnc_saveToTemplate;					//this line determines static howitzers. Basically it's just a stronger mortar, use same syntax as above.

["vehicleRadar", "O_R_Radar_System_02_F"] call _fnc_saveToTemplate;
["vehicleSam", "O_R_SAM_System_04_F"] call _fnc_saveToTemplate;  

["mortarMagazineHE", "rhs_mag_3vo18_10"] call _fnc_saveToTemplate; 			    //this line determines available HE-shells for the static mortars - !needs to be compatible with the mortar! -- Example: ["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] - ENTER ONLY ONE OPTION
["mortarMagazineSmoke", "rhs_mag_d832du_10"] call _fnc_saveToTemplate; 		//this line determines smoke-shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] - ENTER ONLY ONE OPTION
["mortarMagazineFlare", "rhs_mag_3vs25m_10"] call _fnc_saveToTemplate;		//this line determines flare shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Flare_white"] - ENTER ONLY ONE OPTION

["howitzerMagazineHE", "rhs_mag_3of56_10"] call _fnc_saveToTemplate;			                    //this line determines available HE-shells for the static howitzers - !needs to be compatible with the howitzer! -- same syntax as above - ENTER ONLY ONE OPTION

//Minefield definition
["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

["animations", [
    ["O_R_LSV_02_unarmed_F", ["Unarmed_Doors_Hide", 0.25]],
    ["O_R_LSV_02_AT_F",      ["Unarmed_Doors_Hide", 0.04]],
    ["rhs_tigr_m_vmf",       [        "spare_hide", 0.12]],
    ["rhs_t14_tv",           [         "Hide_Slat", 0.08]],
    ["RUS_MSV_t72b3m",       [   "hide_hull_slats", 0.20]],
    ["RUS_MSV_t90m",         [   "hide_hull_slats", 0.12,          "hide_log", 0.55]],
    ["rhs_t90sab_tv",        [   "hide_hull_slats", 0.12,          "hide_log", 0.55]],
    ["RUS_MSV_btr82a",       [   "crate_l1_unhide", 0.50,   "crate_l2_unhide", 0.50,  "crate_r1_unhide", 0.50, "crate_r2_unhide", 0.50, "wheel_1_unhide", 0.65]],
    ["rhs_btr80_vv",         [   "crate_l1_unhide", 0.50,   "crate_l2_unhide", 0.50,  "crate_r1_unhide", 0.50, "crate_r2_unhide", 0.50, "wheel_1_unhide", 0.65]],
    ["rhs_tv_t80bvm",        [   "armor_roof_hide", 0.75, "rudder_skirt_hide", 0.40, "fuel_barrel_hide", 0.40,   "wood_log_hide", 0.85,     "chain_hide", 0.30, "rudder_plate_hide", 0.20]]
]] call _fnc_saveToTemplate;

["variants", [
    ["rhs_mig29sm_vmf", ["Gray",     1]],
    ["RUS_MSV_2s19m1",  ["green",    1]],
    ["RUS_VDV_bmd4m",   ["standard", 1]]
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

private _characters = [
    "WhiteHead_02",
    "WhiteHead_18",
    "WhiteHead_04",
    "WhiteHead_07",
    "WhiteHead_08",
    "Ivan",
    "WhiteHead_16",
    "WhiteHead_11",
    "WhiteHead_22_l",
    "WhiteHead_17",
    "WhiteHead_21",
    "WhiteHead_12",
    "WhiteHead_14",
    "WhiteHead_20",
    "WhiteHead_33",
    "RuHead_00",
    "RuHead_02",
    "RuHead_03",
    "RuHead_04",
    "RuHead_05",
    "RuHead_06",
    "RuHead_07",
    "RuHead_08",
    "RuHead_09",
    "RuHead_11",
    "RuHead_12",
    "Vissim"
];

if (_hasWS) then {
    _characters append ["lxWS_Gustavo_Head", "lxWS_Journalist_Head"];
};
if (_hasLawsOfWar) then {
    _characters append ["WhiteHead_23"];
};
if (_hasContact) then {
    _characters append ["WhiteHead_24", "RussianHead_4", "LivonianHead_5", "WhiteHead_25", "LivonianHead_2", "RussianHead_1", "WhiteHead_27", "WhiteHead_28", "LivonianHead_3", "RussianHead_3", "RussianHead_2", "LivonianHead_10", "WhiteHead_32", "WhiteHead_30", "LivonianHead_8", "LivonianHead_4", "LivonianHead_9"];
};

["faces", _characters] call _fnc_saveToTemplate;

private _languages = [
    "RHS_Male01RUS",
    "RHS_Male02RUS",
    "RHS_Male03RUS",
    "RHS_Male04RUS",
    "RHS_Male05RUS"
];
if (_hasContact) then {
    _languages append ["Male01RUS", "Male02RUS", "Male03RUS"];
};

["voices", _languages] call _fnc_saveToTemplate;

["insignia", []] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", []];
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["designatedGrenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];

_loadoutData set ["lightATLaunchers", [["rhs_weap_rpg26", "", "", "", ["RPG26_F"], [], ""]]];
_loadoutData set ["ATLaunchers", [["launch_min_rf_RPG32", "", "", "", ["RPG32_F", "RPG32_HE_F"], [], ""]]];
_loadoutData set ["missileATLaunchers", [["launch_min_rf_RPG32", "", "", "", ["RPG32_F", "RPG32_HE_F"], [], ""]]];
_loadoutData set ["AALaunchers", [["Verba_9k333", "", "", "", ["9m336"], [], ""]]];
_loadoutData set ["sidearms", []];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]]; 					        //this line determines the AT mines which can be carried by units -- Example: ["ATMine_Range_Mag"] -- Array, can contain multiple assets
_loadoutData set ["APMines", ["APERSMine_Range_Mag"]]; 					        //this line determines the APERS mines which can be carried by units -- Example: ["APERSMine_Range_Mag"] -- Array, can contain multiple assets
_loadoutData set ["lightExplosives", ["DemoCharge_Remote_Mag"]]; 			    //this line determines light explosives -- Example: ["DemoCharge_Remote_Mag"] -- Array, can contain multiple assets
_loadoutData set ["heavyExplosives", ["SatchelCharge_Remote_Mag"]]; 			//this line determines heavy explosives -- Example: ["SatchelCharge_Remote_Mag"] -- Array, can contain multiple assets

_loadoutData set ["antiInfantryGrenades", ["rhs_mag_rgn", "rhs_mag_rgo"]];
_loadoutData set ["antiTankGrenades", ["rhsgref_mag_rkg3em"]];
_loadoutData set ["smokeGrenades", ["rhs_mag_rdg2_white"]];
_loadoutData set ["signalsmokeGrenades", ["rhs_nspd", "rhs_nspn_green", "rhs_nspn_red", "rhs_nspn_yellow"]];

private _nvgs = ["O_NVGoggles_blk_F"];
if (A3A_hasACE) then {
    _nvgs append ["ACE_NVG_Gen4_Black", "ACE_NVG_Gen4_Green", "ACE_NVG_Wide_Black", "ACE_NVG_Wide_Green"];
} else {
    _nvgs append ["NVGoggles_INDEP", "NVGoggles_OPFOR"];
};
if (_hasContact) then {
    _nvgs append ["O_NVGoggles_grn_F"];
};
if (_hasApex) then {
    _nvgs append ["NVGogglesB_grn_F", "NVGogglesB_blk_F"];
};


//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];				    //this line determines map
_loadoutData set ["watches", ["ItemWatch"]];		    //this line determines watch
_loadoutData set ["compasses", ["ItemCompass"]];	    //this line determines compass
_loadoutData set ["radios", ["ItemRadio"]];			    //this line determines radio
_loadoutData set ["gpses", ["ItemGPS"]];			    //this line determines GPS
_loadoutData set ["NVGs", _nvgs];		    //this line determines NVGs -- Array, can contain multiple assets
_loadoutData set ["binoculars", ["VTN_B15"]];		    //this line determines the binoculars
_loadoutData set ["rangefinders", ["rhs_pdu4"]];

_loadoutData set ["traitorUniforms", ["U_BG_Guerrilla_6_1"]];		                            
_loadoutData set ["traitorVests", ["V_TacVest_oli", "V_TacVest_camo", "V_BandollierB_oli"]];	
_loadoutData set ["traitorHats", ["H_Watchcap_camo", "H_Watchcap_khk", "H_Bandanna_khk", "H_Cap_oli", "H_Booniehat_oli", "rhs_headband", "Aegis_H_Milcap_nohs_grn_F"]];

_loadoutData set ["officerUniforms", ["U_O_R_OfficerUniform_taiga_F"]];		                                    //this line determines officer uniforms for assassination mission
_loadoutData set ["officerVests", ["V_Rangemaster_belt_taiga_F", "V_BandollierB_taiga_F"]];			                                    //this line determines officer vesets for assassination mission
_loadoutData set ["officerHats", ["rhs_beret_milp"]];	                                    //this line determines officer headgear for assassination missions

_loadoutData set ["uniforms", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["vests", []];						//don't fill this line - this is only to set the variable
_loadoutData set ["backpacks", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["longRangeRadios", ["Radio_Russia"]];
_loadoutData set ["helmets", []];					//don't fill this line - this is only to set the variable

private _balaclavas = ["rhs_balaclava", "RUS_Balaclava_black_1", "RUS_Balaclava_Green_3", "RUS_Balaclava_Green_4", "G_Balaclava_oli", "rhs_balaclava1_olive", "min_rf_balaclava_goggles_olive", "G_Balaclava_light_blk_F"];
if (_hasWS) then {
    _balaclavas append ["G_Balaclava_oli_lxWS", "G_Balaclava_blk_lxWS"];
};

private _goggles = ["G_Combat_Goggles_blk_F"];
if (_hasApex) then {
    _goggles append ["G_Combat_Goggles_tna_F"];
};

_loadoutData set ["glasses", ["G_Tactical_Clear"]];
_loadoutData set ["goggles", _goggles];
_loadoutData set ["covering", _balaclavas];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];                           //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];                     //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];                           //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private   _squadLeaderItems = ["MineDetector"];
private      _riflemanItems = [];
private         _medicItems = [];
private     _grenadierItems = ["rhs_ec75_mag"];
private          _demoItems = ["rhs_ec200_mag", "MineDetector"];
private      _engineerItems = ["ToolKit"];
private _lightAntiTankItems = [];
private      _antiTankItems = [];
private       _antiAirItems = [];
private _machineGunnerItems = [];
private      _marksmanItems = [];
private        _sniperItems = [];
private        _policeItems = [];
private          _crewItems = [];
private       _unarmedItems = [];

if (A3A_hasACE) then {
    _squadLeaderItems append   ["ACE_Flashlight_XL50", "ACE_EntrenchingTool", "ACE_IR_Strobe_Item", "ACE_Clacker"];
    _riflemanItems append      ["ACE_Flashlight_XL50"];
    _medicItems append         ["ACE_Flashlight_XL50", "ACE_bloodIV_500", "ACE_bloodIV_500", "ACE_personalAidKit", "ACE_splint", "ACE_tourniquet", "ACE_tourniquet", "ACE_tourniquet", "ACE_tourniquet", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot"];
    _grenadierItems append     ["ACE_Flashlight_XL50", "ACE_Clacker"];
    _demoItems append          ["ACE_Flashlight_XL50", "ACE_DefusalKit", "ACE_M26_Clacker"];
    _engineerItems append      ["ACE_Flashlight_XL50", "ACE_EntrenchingTool", "ACE_DefusalKit"];
    _lightAntiTankItems append ["ACE_Flashlight_XL50"];
    _antiTankItems append      ["ACE_Flashlight_XL50"];
    _antiAirItems append       ["ACE_Flashlight_XL50"];
    _machineGunnerItems append ["ACE_Flashlight_XL50", "ACE_SpareBarrel", "ACE_Tripod"];
    _marksmanItems append      ["ACE_Flashlight_XL50"];
    _sniperItems append        ["ACE_Flashlight_XL50", "ACE_ATragMX", "ACE_SpottingScope", "ACE_Kestrel4500"];
    _policeItems append        ["ACE_Flashlight_XL50"];
    _crewItems append          ["ACE_IR_Strobe_Item"];
    _unarmedItems append       [];
};

_loadoutData set ["items_squadLeader_extras",      _squadLeaderItems];
_loadoutData set ["items_rifleman_extras",         _riflemanItems];
_loadoutData set ["items_medic_extras",            _medicItems];
_loadoutData set ["items_grenadier_extras",        _grenadierItems];
_loadoutData set ["items_explosivesExpert_extras", _demoItems];
_loadoutData set ["items_engineer_extras",         _engineerItems];
_loadoutData set ["items_lat_extras",              _lightAntiTankItems];
_loadoutData set ["items_at_extras",               _antiTankItems];
_loadoutData set ["items_aa_extras",               _antiAirItems];
_loadoutData set ["items_machineGunner_extras",    _machineGunnerItems];
_loadoutData set ["items_marksman_extras",         _marksmanItems];
_loadoutData set ["items_sniper_extras",           _sniperItems];
_loadoutData set ["items_police_extras",           _policeItems];
_loadoutData set ["items_crew_extras",             _crewItems];
_loadoutData set ["items_unarmed_extras",          _unarmedItems];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
if (_hasContact) then {
    _sfLoadoutData set ["backpacks", ["B_Carryall_taiga_F", "B_FieldPack_taiga_F"]];
} else {
    _sfLoadoutData set ["backpacks", ["Aegis_B_patrolBackpack_RUtaiga_F", "B_AssaultPack_taiga_F"]];
};
if (_hasApex) then {
    _sfLoadoutData set ["binoculars", ["Laserdesignator_01_khk_F"]];
} else { if (_hasMarksman) then {
    _sfLoadoutData set ["binoculars", ["Laserdesignator_03"]];
} else {
    _sfLoadoutData set ["binoculars", ["rhs_pdu4"]];
}};

_sfLoadoutData set ["uniforms", ["Aegis_U_O_CombatFatigues_rutaiga_F"]];
_sfLoadoutData set ["vests", ["Aegis_V_ChestrigEast_RUtaiga_F", "Aegis_V_OCarrierLuchnik_Lite_F", "Aegis_V_OCarrierLuchnik_Lite_F"]];
_sfLoadoutData set ["Hvests", ["Aegis_V_OCarrierLuchnik_CQB_F", "Aegis_V_OCarrierLuchnik_CQB_F", "Aegis_V_OCarrierLuchnik_GL_F"]];
_sfLoadoutData set ["helmets", ["H_HelmetLuchnik_cover_rutaiga_F"]];

_sfLoadoutData set ["slRifles", [
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "optic_MRCO",             ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_ffg2"],
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "optic_MRCO",             ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhsusf_acc_grip2"],
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "optic_Aco",              ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_ffg2"],
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "rhsusf_acc_su230a_mrds", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_rk6"],
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "rhsusf_acc_su230a_mrds", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_ffg2"],
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "Aegis_optic_1p87",       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhsusf_acc_grip2"]
]];
_sfLoadoutData set ["rifles", [
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "Aegis_optic_ICO",  ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_grip_ffg2"]
]];
_sfLoadoutData set ["carbines", [
    []
]];
_sfLoadoutData set ["grenadeLaunchers", [
    []
]];
_sfLoadoutData set ["SMGs", [
    []
]];
_sfLoadoutData set ["machineGuns", [
    []
]];
_sfLoadoutData set ["marksmanRifles", [
    ["srifle_min_rf_vs_121", "muzzle_min_rf_pbs_1", "rhs_acc_perst1ik_ris", "optic_DMS", ["10Rnd_762x54_Mag"], [], "rhs_acc_harris_swivel"]
]];
_sfLoadoutData set ["sniperRifles", [
    ["rhs_weap_t5000", "", "", "rhs_acc_dh520x56", ["5Rnd_min_rf_338_Mag"], [], "rhs_acc_harris_swivel"]
]];
_sfLoadoutData set ["sidearms", [
    ["rhs_weap_6b_6p9", "rhs_acc_6p9_suppressor", "", "", ["rhs_mag_9x18_8_57N181S"], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["uniforms", ["rhs_uniform_vkpo_alt", "rhs_uniform_vkpo_gloves_alt", "rhs_uniform_vkpo_gloves_alt", "rhs_uniform_vkpo_gloves_alt"]];
_eliteLoadoutData set ["slUniforms", ["rhs_uniform_emr_patchless"]];
_eliteLoadoutData set ["vests", ["rhs_6b5_sniper", "rhs_6b5", "rhs_6b5_rifleman", "V_PlateCarrier2_oli", "rhs_6b23_digi_6sh92_radio", "rhs_6b23_digi_6sh92_vog", "rhs_6b23_digi_6sh92_vog_headset", "rhs_6b23_6sh116_vog"]];
_eliteLoadoutData set ["Hvests", ["rhs_6b13_EMR_6sh92", "rhs_6b13_EMR_6sh92_radio", "rhs_6b13_EMR_6sh92_vog", "rhs_6b43", "rhs_6b13_EMR"]];
_eliteLoadoutData set ["backpacks", ["min_rf_torna_flora", "rhs_tortila_emr", "rhs_tortila_emr", "rhs_tortila_emr", "min_rf_backpack_flora", "min_rf_backpack_flora", "Aegis_B_patrolBackpack_eaf_F"]];
_eliteLoadoutData set ["helmets", ["RUS_6B47_EMR", "RUS_6B47_EMR_shapka", "min_rf_helmet_flora"]];
_eliteLoadoutData set ["binoculars", ["rhs_pdu4"]];

private _eliteSLRifles = [
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "Aegis_optic_1p87",     ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_rk6"],
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "Aegis_optic_1p87",     ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_ffg2"],
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "Aegis_optic_ICO",      ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_rk6"],
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "optic_MRCO",           ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_ffg2"],
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "optic_MRCO",           ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_rk6"],
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "MMM_Acc_IT_1TWS_615A", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_ffg2"],
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "rhs_acc_ekp8_18",      ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_rk6"],
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "rhs_acc_ekp8_18",      ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_ffg2"],
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "rhsusf_acc_ELCAN",     ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_ffg2"],
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "optic_Aco",            ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_ffg2"]
]; 
if (_hasContact) then {
_eliteSLRifles append [["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "optic_Arco_AK_blk_F", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_ffg2"], ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "optic_Arco_AK_blk_F", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_rk6"], ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "optic_Arco_AK_blk_F", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhsusf_acc_grip3"]];
} else { if (_hasApex) then {
_eliteSLRifles append [
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "optic_Arco_blk_F", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_ffg2"],
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "optic_Arco_blk_F", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_rk6"],
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "optic_Arco_blk_F", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhsusf_acc_grip3"]
];
} else {
_eliteSLRifles append [
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "rhsusf_acc_su230a_mrds", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_ffg2"],
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "rhsusf_acc_su230a_mrds", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_rk6"],
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "rhsusf_acc_su230a_mrds", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhsusf_acc_grip3"]
];
}};

private _eliteGrenadeLaunchers = [
    ["MMM_weap_AK12_GP34", "", "rhs_acc_perst3_2dp_h", "Aegis_optic_1p87",     ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], ""],
    ["MMM_weap_AK12_GP34", "", "rhs_acc_perst3_2dp_h", "Aegis_optic_1p87",     ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], ""],
    ["MMM_weap_AK12_GP34", "", "rhs_acc_perst3_2dp_h", "Aegis_optic_ICO",      ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], ""],
    ["MMM_weap_AK12_GP34", "", "rhs_acc_perst3_2dp_h", "optic_MRCO",           ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], ""],
    ["MMM_weap_AK12_GP34", "", "rhs_acc_perst3_2dp_h", "optic_MRCO",           ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], ""],
    ["MMM_weap_AK12_GP34", "", "rhs_acc_perst3_2dp_h", "MMM_Acc_IT_1TWS_615A", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], ""],
    ["MMM_weap_AK12_GP34", "", "rhs_acc_perst3_2dp_h", "rhs_acc_ekp8_18",      ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], ""],
    ["MMM_weap_AK12_GP34", "", "rhs_acc_perst3_2dp_h", "rhs_acc_ekp8_18",      ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], ""],
    ["MMM_weap_AK12_GP34", "", "rhs_acc_perst3_2dp_h", "rhsusf_acc_ELCAN",     ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], ""],
    ["MMM_weap_AK12_GP34", "", "rhs_acc_perst3_2dp_h", "optic_Aco",            ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], ""]
];
if (_hasContact) then {
_eliteGrenadeLaunchers append [
    ["MMM_weap_AK12_GP34", "", "rhs_acc_perst3_2dp_h", "optic_Arco_AK_blk_F", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], ""]
];
} else { if (_hasApex) then {
_eliteGrenadeLaunchers append [
    ["MMM_weap_AK12_GP34", "", "rhs_acc_perst3_2dp_h", "optic_Arco_blk_F", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], ""]
];
} else {
_eliteGrenadeLaunchers append [
    ["MMM_weap_AK12_GP34", "", "rhs_acc_perst3_2dp_h", "rhsusf_acc_su230a_mrds", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], ""]
];
}};

_eliteLoadoutData set ["slRifles", _eliteSLRifles];
_eliteLoadoutData set ["grenadeLaunchers", _eliteGrenadeLaunchers];

if (_hasContact && _hasApex) then {
    _eliteLoadoutData set ["rifles", [
        ["arifle_AK12_F", "", "rhs_acc_perst3",   "Aegis_optic_1p87",       ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],
        ["arifle_AK12_F", "", "rhs_acc_perst3",   "optic_Aco",              ["30Rnd_762x39_AK12_Mag_F"], [], ""],
        ["arifle_AK12_F", "", "rhs_acc_perst3",   "optic_MRCO",             ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],
        ["arifle_AK12_F", "", "rhs_acc_perst3",   "optic_Arco_AK_blk_F",    ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],
        ["arifle_AK12_F", "", "rhs_acc_perst3",   "rhs_acc_ekp8_18",        ["30Rnd_762x39_AK12_Mag_F"], [], ""],
        ["arifle_AK12_F", "", "rhs_acc_perst3",   "rhs_acc_okp7_picatinny", ["30Rnd_762x39_AK12_Mag_F"], [], ""],
        ["arifle_AK12_F", "", "rhs_acc_Zenit2dp", "MMM_Acc_IT_1TWS_615A",   ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],
        ["arifle_AK12_F", "", "rhs_acc_Zenit2dp", "optic_Aco",              ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],
        ["arifle_AK12_F", "", "rhs_acc_Zenit2dp", "Aegis_optic_1p87",       ["30Rnd_762x39_AK12_Mag_F"], [], ""],
        ["arifle_AK12_F", "", "rhs_acc_Zenit2dp", "optic_Arco_AK_blk_F",    ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],

        ["arifle_AK12_lush_F", "", "rhs_acc_Zenit2dp", "optic_Arco_AK_lush_F",  ["30Rnd_762x39_AK12_Lush_Mag_F"], [], "bipod_02_F_lush"],
        ["arifle_AK12_lush_F", "", "rhs_acc_Zenit2dp", "Aegis_optic_1p87_lush", ["30Rnd_762x39_AK12_Lush_Mag_F"], [], "bipod_02_F_lush"],
        ["arifle_AK12_lush_F", "", "rhs_acc_perst3",   "Aegis_optic_1p87_lush", ["30Rnd_762x39_AK12_Lush_Mag_F"], [], ""]
    ]];
    _eliteLoadoutData set ["carbines", [
        ["arifle_AK12U_F", "", "rhs_acc_perst3",       "Aegis_optic_1p87", ["30Rnd_762x39_AK12_Mag_F"], [], ""],
        ["arifle_AK12U_F", "", "rhs_acc_perst3",       "optic_Aco",        ["30Rnd_762x39_AK12_Mag_F"], [], ""],
        ["arifle_AK12U_F", "", "rhs_acc_perst3",       "rhs_acc_rakursPM", ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],
        ["arifle_AK12U_F", "", "rhs_acc_perst1ik_ris", "Aegis_optic_ICO",  ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],
        ["arifle_AK12U_F", "", "rhs_acc_perst1ik_ris", "rhs_acc_ekp8_18",  ["30Rnd_762x39_AK12_Mag_F"], [], ""],
        ["arifle_AK12U_F", "", "rhs_acc_Zenit2dp",     "optic_Aco",        ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],
        ["arifle_AK12U_F", "", "rhs_acc_Zenit2dp",     "Aegis_optic_1p87", ["30Rnd_762x39_AK12_Mag_F"], [], ""],
        ["arifle_AK12U_F", "", "rhs_acc_Zenit2dp",     "Aegis_optic_ICO",  ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],

        ["arifle_AK12U_lush_F", "", "rhs_acc_Zenit2dp", "Aegis_optic_1p87_lush", ["30Rnd_762x39_AK12_Lush_Mag_F"], [], ""],
        ["arifle_AK12U_lush_F", "", "rhs_acc_perst3",   "Aegis_optic_1p87_lush", ["30Rnd_762x39_AK12_Lush_Mag_F"], [], "bipod_02_F_lush"]
    ]];
} else {
    _eliteLoadoutData set ["rifles", [
        ["arifle_AK12_545_F", "", "rhs_acc_perst3",   "Aegis_optic_1p87",       ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],
        ["arifle_AK12_545_F", "", "rhs_acc_perst3",   "optic_Aco",              ["30Rnd_762x39_AK12_Mag_F"], [], ""],
        ["arifle_AK12_545_F", "", "rhs_acc_perst3",   "optic_MRCO",             ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],
        ["arifle_AK12_545_F", "", "rhs_acc_perst3",   "rhsusf_acc_su230_mrds",  ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],
        ["arifle_AK12_545_F", "", "rhs_acc_perst3",   "rhs_acc_ekp8_18",        ["30Rnd_762x39_AK12_Mag_F"], [], ""],
        ["arifle_AK12_545_F", "", "rhs_acc_perst3",   "rhs_acc_okp7_picatinny", ["30Rnd_762x39_AK12_Mag_F"], [], ""],
        ["arifle_AK12_545_F", "", "rhs_acc_Zenit2dp", "MMM_Acc_IT_1TWS_615A",   ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],
        ["arifle_AK12_545_F", "", "rhs_acc_Zenit2dp", "optic_Aco",              ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],
        ["arifle_AK12_545_F", "", "rhs_acc_Zenit2dp", "Aegis_optic_1p87",       ["30Rnd_762x39_AK12_Mag_F"], [], ""],
        ["arifle_AK12_545_F", "", "rhs_acc_Zenit2dp", "rhsusf_acc_su230_mrds",  ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"]
    ]];
    _eliteLoadoutData set ["carbines", [
        ["arifle_AK12U_F", "", "rhs_acc_perst3",       "Aegis_optic_1p87",       ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],
        ["arifle_AK12U_F", "", "rhs_acc_perst3",       "optic_Aco",              ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],
        ["arifle_AK12U_F", "", "rhs_acc_Zenit2dp",     "rhs_acc_rakursPM",       ["30Rnd_762x39_AK12_Mag_F"], [], ""],
        ["arifle_AK12U_F", "", "rhs_acc_Zenit2dp",     "rhs_acc_okp7_picatinny", ["30Rnd_762x39_AK12_Mag_F"], [], ""],
        ["arifle_AK12U_F", "", "rhs_acc_perst3",       "rhs_acc_ekp8_18",        ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],
        ["arifle_AK12U_F", "", "rhs_acc_perst1ik_ris", "optic_Aco",              ["30Rnd_762x39_AK12_Mag_F"], [], ""],
        ["arifle_AK12U_F", "", "rhs_acc_perst1ik_ris", "Aegis_optic_1p87",       ["30Rnd_762x39_AK12_Mag_F"], [], "bipod_02_F_blk"],
        ["arifle_AK12U_F", "", "rhs_acc_Zenit2dp",     "rhs_acc_okp7_picatinny", ["30Rnd_762x39_AK12_Mag_F"], [], ""]
    ]];
};

_eliteLoadoutData set ["SMGs", [
    ["KA_PP19_MTK83", "", "", "Aegis_optic_1p87",       ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "", "", "Aegis_optic_1p87",       ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "", "", "optic_Aco_smg",          ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "", "", "optic_Aco_smg",          ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "", "", "optic_Yorris",           ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "", "", "rhs_acc_ekp8_18",        ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "", "", "rhs_acc_rakursPM",       ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "", "", "rhs_acc_okp7_picatinny", ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],

    ["KA_Vityaz", "", "", "Aegis_optic_1p87", ["KA_30Rnd_9x19_7N31_AP_Mag", "KA_30Rnd_9x19_LIBRASNAIL_AP_Mag"], [], ""],
    ["KA_Vityaz", "", "", "Aegis_optic_1p87", ["KA_30Rnd_9x19_7N31_AP_Mag", "KA_30Rnd_9x19_LIBRASNAIL_AP_Mag"], [], ""],
    ["KA_Vityaz", "", "", "optic_Aco_smg",    ["KA_30Rnd_9x19_7N31_AP_Mag", "KA_30Rnd_9x19_LIBRASNAIL_AP_Mag"], [], ""],
    ["KA_Vityaz", "", "", "optic_Aco_smg",    ["KA_30Rnd_9x19_7N31_AP_Mag", "KA_30Rnd_9x19_LIBRASNAIL_AP_Mag"], [], ""],
    ["KA_Vityaz", "", "", "optic_Aco_smg",    ["KA_30Rnd_9x19_7N31_AP_Mag", "KA_30Rnd_9x19_LIBRASNAIL_AP_Mag"], [], ""],
    ["KA_Vityaz", "", "", "rhs_acc_rakursPM", ["KA_30Rnd_9x19_7N31_AP_Mag", "KA_30Rnd_9x19_LIBRASNAIL_AP_Mag"], [], ""],
    ["KA_Vityaz", "", "", "rhs_acc_ekp8_18",  ["KA_30Rnd_9x19_7N31_AP_Mag", "KA_30Rnd_9x19_LIBRASNAIL_AP_Mag"], [], ""],
    ["KA_Vityaz", "", "", "rhs_acc_ekp8_18",  ["KA_30Rnd_9x19_7N31_AP_Mag", "KA_30Rnd_9x19_LIBRASNAIL_AP_Mag"], [], ""],
    ["KA_Vityaz", "", "", "Aegis_optic_ICO",  ["KA_30Rnd_9x19_7N31_AP_Mag", "KA_30Rnd_9x19_LIBRASNAIL_AP_Mag"], [], ""]
]];
_eliteLoadoutData set ["machineGuns", [
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],

    ["LMG_min_rf_6p69", "", "", "rhs_acc_ekp8_18",        ["100Rnd_min_rf_762x54_Box"], [], ""],
    ["LMG_min_rf_6p69", "", "", "rhs_acc_ekp8_18",        ["100Rnd_min_rf_762x54_Box"], [], ""],
    ["LMG_min_rf_6p69", "", "", "rhs_acc_rakursPM",       ["100Rnd_min_rf_762x54_Box"], [], ""],
    ["LMG_min_rf_6p69", "", "", "rhs_acc_rakursPM",       ["100Rnd_min_rf_762x54_Box"], [], ""],
    ["LMG_min_rf_6p69", "", "", "rhsusf_acc_su230a_mrds", ["100Rnd_min_rf_762x54_Box"], [], ""],
    ["LMG_min_rf_6p69", "", "", "rhsusf_acc_RX01",        ["100Rnd_min_rf_762x54_Box"], [], ""],
    ["LMG_min_rf_6p69", "", "", "Aegis_optic_ICO",        ["100Rnd_min_rf_762x54_Box"], [], ""],
    ["LMG_min_rf_6p69", "", "", "rhs_acc_ekp8_18",        ["100Rnd_min_rf_762x54_Box"], [], ""],
    ["LMG_min_rf_6p69", "", "", "rhs_acc_ekp8_18",        ["100Rnd_min_rf_762x54_Box"], [], ""],
    ["LMG_min_rf_6p69", "", "", "rhs_acc_rakursPM",       ["100Rnd_min_rf_762x54_Box"], [], ""],
    ["LMG_min_rf_6p69", "", "", "rhsusf_acc_su230a_mrds", ["100Rnd_min_rf_762x54_Box"], [], ""],
    ["LMG_min_rf_6p69", "", "", "rhsusf_acc_RX01",        ["100Rnd_min_rf_762x54_Box"], [], ""],
    ["LMG_min_rf_6p69", "", "", "Aegis_optic_ICO",        ["100Rnd_min_rf_762x54_Box"], [], ""]
]];
_eliteLoadoutData set ["marksmanRifles", [
    ["srifle_min_rf_vs_121", "", "rhs_acc_perst1ik_ris", "optic_DMS", ["10Rnd_762x54_Mag"], [], ""]
]];
_eliteLoadoutData set ["sniperRifles", [
    ["MMM_weap_SV98M", "", "", "rhs_acc_dh520x56", ["MMM_mag_SV98_7N1", "MMM_mag_SV98_7N14"], [], ""],
    ["MMM_weap_SV98M", "", "", "rhs_acc_dh520x56", ["MMM_mag_SV98_7N1", "MMM_mag_SV98_7N14"], [], ""],
    ["MMM_weap_SV98M", "", "", "rhs_acc_dh520x56", ["MMM_mag_SV98_7N1", "MMM_mag_SV98_7N14"], [], ""],
    
    ["rhs_weap_t5000", "", "", "rhs_acc_dh520x56", ["5Rnd_min_rf_338_Mag"], [], "rhs_acc_harris_swivel"]
]];
_eliteLoadoutData set ["sidearms", [
    ["rhs_weap_pya", "", "", "", ["rhs_mag_9x19_17", "rhs_mag_9x19_7n31_17"], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["uniforms", ["min_rf_flora", "min_rf_flora", "min_rf_flora", "min_rf_flora", "min_rf_flora", "min_rf_flora_lite", "min_rf_flora_lite"]];
_militaryLoadoutData set ["vests", ["rhs_6b45_rifleman_EMR", "rhs_6b45_rifleman_ranger", "6sh116_EMR", "6sh116_EMR_OD_MIX", "6sh116_OD_EMR_MIX", "6sh116_EMR_GL", "6sh116_EMR_OD_MIX_GL", "6sh116_OD_EMR_MIX_GL", "min_rf_lite_vest_flora", "min_rf_lite_vest_GL_flora", "Aegis_V_CarrierRigKBT_01_recon_olive_F", "Aegis_V_CarrierRigKBT_01_cqb_olive_F", "rus_6b46_rifleman_warbelt", "rus_6b46_senior_rifleman_warbelt", "rus_6b46_rifleman", "rus_6b46_senior_rifleman", "rus_6b45_rifleman_warbelt", "rus_6b45_senior_rifleman_warbelt", "rus_6b45_sniper_azart_warbelt", "RUS_6b23_emr", "RUS_6b23_6sh122_EMR"]];
_militaryLoadoutData set ["Hvests", ["rhs_6b23_6sh113", "rhs_6b23_6sh116_vog", "rhs_6b23_digi_6sh92", "rhs_6b23_digi_6sh92_headset", "rhs_6b23_digi_6sh92_radio", "rhs_6b23_digi_6sh92_vog", "rhs_6b23_digi_6sh92_vog_headset", "rhs_6b23_digi_vydra_3m", "rhs_6b3", "rhs_6b3_AK_2", "rhs_6b3_R148", "min_rf_armor_vest_M_flora", "min_rf_armor_vest_flora", "min_rf_armor_vest_GL_flora"]];
_militaryLoadoutData set ["backpacks", ["rhs_rk_sht_30_emr", "RUS_6b46_backpack", "RUS_6Sh117_backpack", "RUS_6Sh117_backpack_shovel", "rhssaf_kitbag_smb", "B_Kitbag_sgg", "rhssaf_alice_smb", "min_rf_torna_flora", "min_rf_torna_green", "B_Carryall_oli", "rhs_tortila_emr"]];
_militaryLoadoutData set ["helmets", ["rhs_6b26_digi", "rhs_6b26_green", "rhs_6b27m_digi", "rhs_6b27m_green", "rhs_6b28", "rhs_6b47", "rhs_6b47_6m2_1", "rhs_6b7_1m_emr", "Aegis_H_Helmet_Virtus_Headset_rgr_F"]];
_militaryLoadoutData set ["binoculars", ["VTN_B15"]];

private _militarySLRifles = [
    ["arifle_min_rf_aek_a545", "", "rhs_acc_2dpZenit_ris", "Aegis_optic_ICO",       ["30Rnd_min_rf_545x39_Mag"], [], ""],
    ["arifle_min_rf_aek_a545", "", "rhs_acc_perst3",       "rhs_acc_ekp8_18",       ["30Rnd_min_rf_545x39_Mag"], [], ""],
    ["arifle_min_rf_aek_a545", "", "rhs_acc_perst3",       "optic_min_rf_ekp_8_18", ["30Rnd_min_rf_545x39_Mag"], [], ""],
    ["arifle_min_rf_aek_a545", "", "rhs_acc_2dpZenit_ris", "Aegis_optic_ICO",       ["30Rnd_min_rf_545x39_Mag"], [], ""],
    ["arifle_min_rf_aek_a545", "", "rhs_acc_perst3",       "rhs_acc_ekp8_18",       ["30Rnd_min_rf_545x39_Mag"], [], ""],
    ["arifle_min_rf_aek_a545", "", "rhs_acc_perst3",       "optic_min_rf_ekp_8_18", ["30Rnd_min_rf_545x39_Mag"], [], ""],
    ["arifle_min_rf_aek_a545", "", "rhs_acc_2dpZenit_ris", "Aegis_optic_ICO",       ["30Rnd_min_rf_545x39_Mag"], [], ""],
    ["arifle_min_rf_aek_a545", "", "rhs_acc_perst3",       "rhs_acc_ekp8_18",       ["30Rnd_min_rf_545x39_Mag"], [], ""],
    ["arifle_min_rf_aek_a545", "", "rhs_acc_perst3",       "optic_min_rf_ekp_8_18", ["30Rnd_min_rf_545x39_Mag"], [], ""],


    // ratio of A545 to AK-12 is 3:2
    ["MMM_weap_AK12", "", "rhs_acc_perst3",       "Aegis_optic_1p87",       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], ""],
    ["MMM_weap_AK12", "", "rhs_acc_perst3",       "MMM_Acc_IT_1TWS_615A",   ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], ""],
    ["MMM_weap_AK12", "", "rhs_acc_perst3",       "rhs_acc_rakursPM",       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], ""],
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "rhs_acc_okp7_picatinny", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], ""],
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "optic_Aco",              ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], ""],
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "rhsusf_acc_su230",       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], ""]
];
if (_hasApex) then {
_militarySLRifles append [
    ["MMM_weap_AK12", "", "rhs_acc_perst3_2dp_h", "optic_Arco_blk_F",       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], ""]
];
};

_militaryLoadoutData set ["slRifles", _militarySLRifles];

_militaryLoadoutData set ["rifles", [
    ["rhs_weap_ak103_zenitco01", "rhs_acc_dtk1", "rhs_acc_perst3_2dp_h", "rhs_acc_pkas",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_ffg2"],
    ["rhs_weap_ak103_zenitco01", "rhs_acc_dtk1", "rhs_acc_perst3_2dp_h", "",                      ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk6" ],
    ["rhs_weap_ak103_zenitco01", "rhs_acc_dtk3", "rhs_acc_2dpZenit",     "rhs_acc_ekp8_02",       ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk6" ],

    ["rhs_weap_ak103_zenitco01_b33", "rhs_acc_dtk1", "rhs_acc_perst3_2dp_h", "Aegis_optic_1p87", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk2" ],
    ["rhs_weap_ak103_zenitco01_b33", "rhs_acc_dtk3", "rhs_acc_perst3_2dp_h", "",                 ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_ffg2"],

    ["rhs_weap_ak74mr", "rhs_acc_uuk",  "rhs_acc_perst3",       "",                 ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_grip_rk2" ],
    ["rhs_weap_ak74mr", "rhs_acc_dtk3", "rhs_acc_perst3",       "rhs_acc_rakursPM", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_grip_rk2" ],
    ["rhs_weap_ak74mr", "rhs_acc_uuk",  "rhs_acc_perst3_2dp_h", "rhs_acc_ekp8_18",  ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_grip_ffg2"],
    ["rhs_weap_ak74mr", "rhs_acc_uuk",  "rhs_acc_perst3_2dp_h", "",                 ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_grip_ffg2"],
    ["rhs_weap_ak74mr", "rhs_acc_ak5",  "rhs_acc_perst3_2dp_h", "",                 ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_grip_rk2" ]
]];
_militaryLoadoutData set ["carbines", [
    ["rhs_weap_ak104_zenitco01", "rhs_acc_pgs64", "rhs_acc_perst3",       "rhs_acc_okp7_dovetail", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk2" ],
    ["rhs_weap_ak104_zenitco01", "rhs_acc_pgs64", "rhs_acc_perst3_2dp_h", "rhs_acc_pkas",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_ffg2"],
    ["rhs_weap_ak104_zenitco01", "rhs_acc_dtk2",  "rhs_acc_perst3_2dp_h", "",                      ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk6" ],
    ["rhs_weap_ak104_zenitco01", "rhs_acc_dtk2",  "rhs_acc_2dpZenit_ris", "",                      ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_ffg2"],
    ["rhs_weap_ak104_zenitco01", "rhs_acc_dtk2",  "rhs_acc_perst1ik_ris", "rhs_acc_1p63",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk2" ],
    ["rhs_weap_ak104_zenitco01", "rhs_acc_dtk2",  "rhs_acc_2dpZenit",     "rhs_acc_ekp8_02",       ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk6" ],
    ["rhs_weap_ak104_zenitco01", "rhs_acc_pgs64", "rhs_acc_perst3_2dp_h", "",                      ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk2" ],

    ["rhs_weap_ak104_zenitco01_b33", "rhs_acc_pgs64", "rhs_acc_perst3_2dp_h", "Aegis_optic_1p87", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk2" ],
    ["rhs_weap_ak104_zenitco01_b33", "rhs_acc_dtk2",  "rhs_acc_perst3_2dp_h", "",                 ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk6" ],
    ["rhs_weap_ak104_zenitco01_b33", "rhs_acc_dtk2",  "rhs_acc_perst3_2dp_h", "Aegis_optic_ICO",  ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_ffg2"],
    ["rhs_weap_ak104_zenitco01_b33", "rhs_acc_pgs64", "rhs_acc_perst3",       "rhs_acc_ekp8_18",  ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_ffg2"]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
    ["rhs_weap_ak74mr_gp25", "rhs_acc_ak5",  "rhs_acc_perst3",       "rhsusf_acc_ELCAN", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40OP_white", "rhs_GRD40_Red"], "rhs_grip_rk2" ],
    ["rhs_weap_ak74mr_gp25", "rhs_acc_uuk",  "rhs_acc_perst3",       "rhsusf_acc_su230", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40OP_white", "rhs_GRD40_Red"], "rhs_grip_rk2" ],
    ["rhs_weap_ak74mr_gp25", "rhs_acc_dtk1", "rhs_acc_perst3",       "",                 ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40OP_white", "rhs_GRD40_Red"], "rhs_grip_rk2" ],
    ["rhs_weap_ak74mr_gp25", "rhs_acc_dtk3", "rhs_acc_perst3",       "Aegis_optic_1p87", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40OP_white", "rhs_GRD40_Red"], "rhs_grip_ffg2"],
    ["rhs_weap_ak74mr_gp25", "rhs_acc_dtk3", "rhs_acc_perst3_2dp_h", "optic_MRCO",       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40OP_white", "rhs_GRD40_Red"], "rhs_grip_ffg2"],
    ["rhs_weap_ak74mr_gp25", "rhs_acc_uuk",  "rhs_acc_perst3_2dp_h", "",                 ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40OP_white", "rhs_GRD40_Red"], "rhs_grip_rk2" ],
    ["rhs_weap_ak74mr_gp25", "rhs_acc_uuk",  "rhs_acc_perst3_2dp_h", "rhs_acc_ekp8_18",  ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40OP_white", "rhs_GRD40_Red"], "rhs_grip_rk2" ]
]];
_militaryLoadoutData set ["SMGs", [
    ["KA_PP19_MTK83", "", "", "Aegis_optic_1p87", ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "", "", "optic_Aco_smg",    ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "", "", "optic_Aco_smg",    ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "", "", "optic_Yorris",     ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "", "", "",                 ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "", "", "",                 ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],

    ["KA_Vityaz", "", "",                   "",                 ["KA_30Rnd_9x19_7N31_AP_Mag", "KA_30Rnd_9x19_LIBRASNAIL_AP_Mag"], [], ""],
    ["KA_Vityaz", "", "KA_Vityaz_Laser_IR", "Aegis_optic_1p87", ["KA_30Rnd_9x19_7N31_AP_Mag", "KA_30Rnd_9x19_LIBRASNAIL_AP_Mag"], [], ""],
    ["KA_Vityaz", "", "KA_Vityaz_Laser_IR", "optic_Aco_smg",    ["KA_30Rnd_9x19_7N31_AP_Mag", "KA_30Rnd_9x19_LIBRASNAIL_AP_Mag"], [], ""]
]];
_militaryLoadoutData set ["machineGuns",[
    ["Aegis_arifle_RPK12_545_F", "", "rhs_acc_2dpZenit_ris", "Aegis_optic_1p87",         ["Aegis_60Rnd_545x39_Mag_Green_F"], [], ""],
    ["Aegis_arifle_RPK12_545_F", "", "rhs_acc_2dpZenit_ris", "",                         ["Aegis_60Rnd_545x39_Mag_Green_F"], [], ""],
    ["Aegis_arifle_RPK12_545_F", "", "rhs_acc_2dpZenit_ris", "",                         ["Aegis_60Rnd_545x39_Mag_Green_F"], [], ""],
    ["Aegis_arifle_RPK12_545_F", "", "rhs_acc_perst3",       "",                         ["Aegis_60Rnd_545x39_Mag_Green_F"], [], ""],
    ["Aegis_arifle_RPK12_545_F", "", "rhs_acc_perst3",       "rhsusf_acc_su230_mrds",    ["Aegis_60Rnd_545x39_Mag_Green_F"], [], ""],
    ["Aegis_arifle_RPK12_545_F", "", "rhs_acc_perst3",       "optic_min_rf_pkm_a",       ["Aegis_60Rnd_545x39_Mag_Green_F"], [], ""],


    //ratio of pkp to rpk is 3:1
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""]
]];
_militaryLoadoutData set ["marksmanRifles", [
    ["rhs_weap_vss_grip", "", "rhs_acc_perst_1ik", "rhs_acc_pso1m21", ["rhs_10Rnd_9x39mm_SP6"], [], "rhs_acc_grip_ffg2"],
    ["rhs_weap_vss_grip", "", "rhs_acc_perst_1ik", "rhs_acc_pso1m21", ["rhs_10Rnd_9x39mm_SP6"], [], "rhs_acc_grip_rk2" ],

    ["rhs_weap_vss_grip_npz", "", "rhs_acc_perst_1ik", "rhs_acc_dh520x56", ["rhs_10Rnd_9x39mm_SP6"], [], "rhs_acc_grip_rk2" ],
    ["rhs_weap_vss_grip_npz", "", "rhs_acc_perst_1ik", "rhs_acc_dh520x56", ["rhs_10Rnd_9x39mm_SP6"], [], "rhs_acc_grip_ffg2"]
]];
_militaryLoadoutData set ["sniperRifles", [
    ["MMM_weap_SV98M", "", "", "rhs_acc_dh520x56", ["MMM_mag_SV98_7N1", "MMM_mag_SV98_7N14"], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
    ["rhs_weap_pya", "", "", "", ["rhs_mag_9x19_17", "rhs_mag_9x19_7n31_17"], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["FP_Arghanka_Police"]];
_policeLoadoutData set ["vests", ["6sh117_Police", "6sh117_Police_v2", "6sh117_Police_v3"]];
_policeLoadoutData set ["helmets", ["H_Beret_blk_POLICE"]];

_policeLoadoutData set ["SMGs", [
    ["KA_PP19", "", "", "",              ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19", "", "", "KA_kobra_PP19", ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],

    ["rhs_weap_pp2000", "", "", "",                 ["rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n31_44"], [], ""],
    ["rhs_weap_pp2000", "", "", "rhs_acc_ekp8_18",  ["rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n31_44"], [], ""]
]];
_policeLoadoutData set ["sidearms", [
    ["rhs_weap_pya", "", "", "", ["rhs_mag_9x19_17", "rhs_mag_9x19_7n31_17"], [], ""]
]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["min_rf_flora_lite", "min_rf_flora", "min_rf_flora", "min_rf_flora", "min_rf_flora_officer"]];
_militiaLoadoutData set ["vests", ["min_rf_highcapacity_vest_flora", "min_rf_highcapacity_special_flora", "min_rf_highcapacity_special_flora", "min_rf_highcapacity_special_flora", "min_rf_highcapacity_special_GL_flora"]];
_militiaLoadoutData set ["backpacks", ["rhs_rd54_emr1", "RUS_6sh112_buttpack", "RUS_6Sh117_buttpack"]];
_militiaLoadoutData set ["helmets", ["rhs_6b26_digi", "rhs_6b26_digi", "rhs_6b26_digi", "rhs_6b26_digi", "rhs_6b26_digi", "rhs_Booniehat_digi"]];

_militiaLoadoutData set ["slRifles", [
    ["arifle_min_rf_aek_a545", "", "rhs_acc_2dpZenit_ris", "optic_min_rf_1p_87",      ["30Rnd_min_rf_545x39_Mag"], [], ""],
    ["arifle_min_rf_aek_a545", "", "rhs_acc_2dpZenit_ris", "",                        ["30Rnd_min_rf_545x39_Mag"], [], ""],
    ["arifle_min_rf_aek_a545", "", "rhs_acc_2dpZenit_ris", "optic_min_rf_ekp_8_18",   ["30Rnd_min_rf_545x39_Mag"], [], ""],
    ["arifle_min_rf_aek_a545", "", "rhs_acc_2dpZenit_ris", "optic_min_rf_ekp_8_18",   ["30Rnd_min_rf_545x39_Mag"], [], ""],
    ["arifle_min_rf_aek_a545", "", "rhs_acc_perst3",       "",                        ["30Rnd_min_rf_545x39_Mag"], [], ""],
    ["arifle_min_rf_aek_a545", "", "rhs_acc_perst3",       "",                        ["30Rnd_min_rf_545x39_Mag"], [], ""],
    ["arifle_min_rf_aek_a545", "", "rhs_acc_perst3",       "optic_min_rf_pkm_a",      ["30Rnd_min_rf_545x39_Mag"], [], ""],
    ["arifle_min_rf_aek_a545", "", "rhs_acc_perst1ik_ris", "",                        ["30Rnd_min_rf_545x39_Mag"], [], ""],

    ["rhs_weap_ak74mr", "rhs_acc_ukk",  "rhs_acc_perst3_2dp_h", "",                       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], ""],
    ["rhs_weap_ak74mr", "rhs_acc_ukk",  "rhs_acc_perst3_2dp_h", "rhs_acc_rakursPM",       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], ""],
    ["rhs_weap_ak74mr", "rhs_acc_ukk",  "rhs_acc_perst3_2dp_h", "rhs_acc_okp7_picatinny", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], ""],
    ["rhs_weap_ak74mr", "rhs_acc_ukk",  "rhs_acc_perst3_2dp_h", "",                       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], ""],
    ["rhs_weap_ak74mr", "rhs_acc_ukk",  "rhs_acc_perst3_2dp_h", "rhsusf_acc_RX01",        ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], ""],
    ["rhs_weap_ak74mr", "rhs_acc_ukk",  "rhs_acc_perst3_2dp_h", "rhs_acc_ekp8_18",        ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], ""],
    ["rhs_weap_ak74mr", "rhs_acc_dtk1", "rhs_acc_perst3",       "",                       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], ""],
    ["rhs_weap_ak74mr", "rhs_acc_dtk1", "rhs_acc_perst3",       "optic_Aco",              ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], ""],
    ["rhs_weap_ak74mr", "rhs_acc_dtk1", "rhs_acc_perst3",       "optic_Yorris",           ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], ""],
    ["rhs_weap_ak74mr", "rhs_acc_dtk3", "rhs_acc_perst3",       "rhs_acc_rakursPM",       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], ""],
    ["rhs_weap_ak74mr", "rhs_acc_dtk3", "rhs_acc_perst1ik_ris", "",                       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], ""]
]];
_militiaLoadoutData set ["rifles", [
    ["rhs_weap_ak103_zenitco01", "rhs_acc_dtk1", "rhs_acc_perst3",       "rhs_acc_okp7_dovetail", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk2" ],
    ["rhs_weap_ak103_zenitco01", "rhs_acc_dtk3", "rhs_acc_perst3_2dp_h", "rhs_acc_pkas",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_ffg2"],
    ["rhs_weap_ak103_zenitco01", "rhs_acc_dtk1", "rhs_acc_perst3_2dp_h", "",                      ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk6" ],
    ["rhs_weap_ak103_zenitco01", "rhs_acc_dtk2", "rhs_acc_2dpZenit_ris", "",                      ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_ffg2"],
    ["rhs_weap_ak103_zenitco01", "rhs_acc_dtk3", "rhs_acc_perst1ik_ris", "",                      ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk2" ],
    ["rhs_weap_ak103_zenitco01", "rhs_acc_dtk1", "rhs_acc_2dpZenit",     "",                      ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk6" ],
    ["rhs_weap_ak103_zenitco01", "rhs_acc_dtk3", "rhs_acc_perst3_2dp_h", "",                      ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk2" ],

    ["rhs_weap_ak103_zenitco01_b33", "rhs_acc_dtk1", "rhs_acc_perst3_2dp_h", "",                 ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk2" ],
    ["rhs_weap_ak103_zenitco01_b33", "rhs_acc_dtk1", "rhs_acc_perst3_2dp_h", "Aegis_optic_ICO",  ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk6" ],
    ["rhs_weap_ak103_zenitco01_b33", "rhs_acc_dtk3", "rhs_acc_perst3_2dp_h", "",                 ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_ffg2"],
    ["rhs_weap_ak103_zenitco01_b33", "rhs_acc_dtk3", "rhs_acc_perst3",       "rhs_acc_ekp8_18",  ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_ffg2"]
]];
_militiaLoadoutData set ["carbines", [
    ["rhs_weap_ak104_zenitco01", "rhs_acc_pgs64", "rhs_acc_perst3",       "",             ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk2" ],
    ["rhs_weap_ak104_zenitco01", "rhs_acc_pgs64", "rhs_acc_perst3_2dp_h", "",             ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_ffg2"],
    ["rhs_weap_ak104_zenitco01", "rhs_acc_dtk2",  "rhs_acc_perst3_2dp_h", "",             ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk6" ],
    ["rhs_weap_ak104_zenitco01", "rhs_acc_dtk2",  "rhs_acc_2dpZenit_ris", "rhs_acc_pkas", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_ffg2"],
    ["rhs_weap_ak104_zenitco01", "rhs_acc_dtk2",  "rhs_acc_perst1ik_ris", "rhs_acc_1p63", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk2" ],
    ["rhs_weap_ak104_zenitco01", "rhs_acc_dtk2",  "rhs_acc_2dpZenit",     "",             ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk6" ],
    ["rhs_weap_ak104_zenitco01", "rhs_acc_pgs64", "rhs_acc_perst3_2dp_h", "rhs_acc_ekp1", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk2" ],

    ["rhs_weap_ak104_zenitco01_b33", "rhs_acc_pgs64", "rhs_acc_perst3_2dp_h", "",                 ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk2" ],
    ["rhs_weap_ak104_zenitco01_b33", "rhs_acc_dtk2",  "rhs_acc_perst3_2dp_h", "Aegis_optic_ICO",  ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk6" ],
    ["rhs_weap_ak104_zenitco01_b33", "rhs_acc_dtk2",  "rhs_acc_perst3_2dp_h", "",                 ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_ffg2"],
    ["rhs_weap_ak104_zenitco01_b33", "rhs_acc_pgs64", "rhs_acc_perst3",       "rhs_acc_ekp8_18",  ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_ffg2"]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
    ["rhs_weap_ak103_gp25", "rhs_acc_dtk3", "", "rhs_acc_1p63",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40MD"], ""],
    ["rhs_weap_ak103_gp25", "rhs_acc_dtk3", "", "rhs_acc_pkas",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40MD"], ""],
    ["rhs_weap_ak103_gp25", "rhs_acc_dtk3", "", "rhs_acc_ekp8_02",       ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40MD"], ""],
    ["rhs_weap_ak103_gp25", "rhs_acc_dtk3", "", "rhs_acc_okp7_dovetail", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40MD"], ""],
    ["rhs_weap_ak103_gp25", "rhs_acc_dtk1", "", "",                      ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40MD"], ""],
    ["rhs_weap_ak103_gp25", "rhs_acc_dtk1", "", "rhs_acc_nita",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40MD"], ""],

    ["rhs_weap_ak103_gp25_npz", "rhs_acc_dtk3", "", "Aegis_optic_1p87", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40MD"], ""],
    ["rhs_weap_ak103_gp25_npz", "rhs_acc_dtk3", "", "Aegis_optic_ICO",  ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40MD"], ""],
    ["rhs_weap_ak103_gp25_npz", "rhs_acc_dtk1", "", "rhs_acc_rakursPM", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40MD"], ""],
    ["rhs_weap_ak103_gp25_npz", "rhs_acc_dtk1", "", "rhs_acc_ekp8_18",  ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40MD"], ""]
]];
_militiaLoadoutData set ["SMGs", [
    ["rhs_weap_pp2000", "", "", "",                 ["rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n31_44"], [], ""],
    ["rhs_weap_pp2000", "", "", "",                 ["rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n31_44"], [], ""],
    ["rhs_weap_pp2000", "", "", "",                 ["rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n31_44"], [], ""],
    ["rhs_weap_pp2000", "", "", "optic_Yorris",     ["rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n31_44"], [], ""],
    ["rhs_weap_pp2000", "", "", "rhs_acc_ekp8_18",  ["rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n31_44"], [], ""],
    ["rhs_weap_pp2000", "", "", "rhs_acc_rakursPM", ["rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n31_44"], [], ""]
]];
_militiaLoadoutData set ["machineGuns", [
    ["Aegis_arifle_RPK12_545_F", "", "rhs_acc_2dpZenit_ris", "Aegis_optic_1p87",      ["Aegis_60Rnd_545x39_Mag_Green_F"], [], ""],
    ["Aegis_arifle_RPK12_545_F", "", "rhs_acc_2dpZenit_ris", "",                      ["Aegis_60Rnd_545x39_Mag_Green_F"], [], ""],
    ["Aegis_arifle_RPK12_545_F", "", "rhs_acc_perst3",       "",                      ["Aegis_60Rnd_545x39_Mag_Green_F"], [], ""],
    ["Aegis_arifle_RPK12_545_F", "", "rhs_acc_perst3",       "rhsusf_acc_su230_mrds", ["Aegis_60Rnd_545x39_Mag_Green_F"], [], ""],

    ["rhs_weap_pkp", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""]
]];
_militiaLoadoutData set ["marksmanRifles", [
    ["rhs_weap_svdm", "", "", "rhs_acc_pso1m21_svd", ["rhs_10Rnd,762x54mmR_7N1", "rhs_10Rnd,762x54mmR_7N14"], [], ""]
]];
_militiaLoadoutData set ["sniperRifles", [
    ["rhs_weap_svdm", "", "", "rhs_acc_pso1m21_svd", ["rhs_10Rnd,762x54mmR_7N1", "rhs_10Rnd,762x54mmR_7N14"], [], ""]
]];
_militiaLoadoutData set ["sidearms", [
    ["rhs_weap_pya", "", "", "", ["rhs_mag_9x19_17", "rhs_mag_9x19_7n31_17"], [], ""]
]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", []];
_crewLoadoutData set ["vests", []];
_crewLoadoutData set ["helmets", []];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", []];
_pilotLoadoutData set ["vests", []];
_pilotLoadoutData set ["helmets", []];

/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

    [["slRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["binoculars"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;
    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_medic"] call _fnc_addItemSet;
    ["items_medic_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1.25]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    if (random 1 < 0.3) then {
        ["grenadeLaunchers"] call _fnc_setPrimary;
        ["backpacks"] call _fnc_setBackpack;
    } else {
        ["grenadeLaunchers"] call _fnc_setPrimary;
    };
    
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_grenadier_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 4] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;


    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_explosivesExpert_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["lightExplosives", 2] call _fnc_addItem;
    if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_engineer_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    [selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["machineGuns"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_machineGunner_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["marksmanRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_marksman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.25, "goggles", 0.1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["SMGs"] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_police_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_crew_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
    ["traitorHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["traitorVests"] call _fnc_setVest;
    ["traitorUniforms"] call _fnc_setUniform;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _officerTemplate = {
    ["officerHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;
    
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};


////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
    params ["_name", "_loadoutTemplate"];
    private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
    private _finalName = _prefix + _name;
    [_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate, [], [_prefix]],
	["Standard", _policeTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate, [], ["other"]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
["other", [["Pilot", _crewTemplate, [], ["other"]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _officerTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate, [], ["other"]]], _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;