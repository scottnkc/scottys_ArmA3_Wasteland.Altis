//@file Version: 1.2
//@file Name: gearLevel1.sqf
//@file Author: Cael817, based of something i found
private ["_player"];
_player = _this;

_player setVariable ["cmoney", (_player getVariable "cmoney") + 100, true];

{_player removeWeapon _x} forEach weapons _player;
{_player removeMagazine _x} forEach magazines _player;
//removeUniform _player;
//removeallitems _player;
//removeVest _player;
removeBackpack _player;
//removeGoggles _player;
//removeHeadgear _player;

_player addBackpack "B_Carryall_oli"; //BackPack
_player addUniform "U_I_Protagonist_VR"; //Uniform (must be supported by side)
_player addVest "V_HarnessO_brn"; //Vest
_player linkItem "NVGoggles"; //Nightvision, "NVGoggles"
_player linkItem "I_UavTerminal"; //GPS, "ItemGPS","I_UavTerminal"
_player addWeapon "Laserdesignator"; //Binoculars,"Laserdesignator"
_player addMagazines ["HandGrenade", 2]; //Grenades
_player addItem "FirstAidKit"; //Any other stuff that goes in inventory if there is space
_player addItem "Medikit"; //Any other stuff that goes in inventory if there is space
_player addItem "ToolKit"; //Any other stuff that goes in inventory if there is space
//_player addItem ""; //Any other stuff that goes in inventory if there is space
//_player addItem ""; //Any other stuff that goes in inventory if there is space
//_player addGoggles ""; //Glasses or masks. Overwrites, add as item if you want it a an extra item
//_player addHeadgear ""; //Hat or helmet. Overwrites, add as item if you want it a an extra item

_player addMagazines ["11Rnd_45ACP_Mag",7]; //Add handgun magazines first so one gets loaded
_player addWeapon "hgun_Pistol_heavy_01_F"; //Handgun
_player addhandGunItem "muzzle_snds_acp"; //Handgun Attachments
_player addhandGunItem "optic_MRD"; //Handgun Attachments

_player addMagazines ["10Rnd_93x64_DMR_05_Mag",10]; //Add primary weapon magazines first so one gets loaded
_player addWeapon "srifle_DMR_05_hex_F"; //Primary Weapon
_player addPrimaryWeaponItem "muzzle_snds_93mmg_tan"; //Primary Weapon Attachments
_player addPrimaryWeaponItem "acc_flashlight"; //Primary Weapon Attachments
_player addPrimaryWeaponItem "optic_tws"; //Primary Weapon Attachments

//_player addMagazines ["", 0]; //Add secondary Weapon magazines first so one gets loaded
//_player addWeapon ""; //Secondary Weapon (Launcher slot)

_player selectWeapon "srifle_DMR_05_hex_F"; //Select Active Weapon

switch (true) do
{
	case (["_medic_", typeOf _player] call fn_findString != -1):
	{
		_player addItem "ToolKit";
		_player addItem "MediKit";
		_player removeItem "";
	};
	case (["_engineer_", typeOf _player] call fn_findString != -1):
	{
		_player addItem "ToolKit";
		_player addItem "MediKit";
		_player removeItem "";
	};
	case (["_sniper_", typeOf _player] call fn_findString != -1):
	{
		_player addItem "ToolKit";
		_player addItem "MediKit";
		_player removeItem "";
	};
		case (["_diver_", typeOf _player] call fn_findString != -1):
	{
		_player addItem "ToolKit";
		_player addItem "MediKit";
		_player removeItem "";
		_player addVest "V_RebreatherIA";
	};
};


