/*
    File: fn_raidEndBombing.sqf
    Author: Salutesh aka Steve
    
    Description:
	//////////////////////////////////////////////////////////////////
	// Use something like this to use the script:
	// [180] remoteExec ["exile_fnc_raidEndTimer", FortressPlayerUnits, true];
	// ///////////////////////////////////////////////////////////////
	// 1. [180] - The amount of seconds for the timer.
	// 2. exile_fnc_raidEndTimer - The function itself.
	// 3. FortressPlayerUnits - The target, in this case a definied name for units in a special area.
	// ///////////////////////////////////////////////////////////////
*/

// Start bombing area
private _pos    	= _this select 0;
private _area   	= _this select 1;
private _rounds 	= _this select 2;
private _del    	= _this select 3;

private _height = 0;// increase this if you want the items to fall from the sky.
//private _ammo = "HelicopterExploBig";// Ammo can be changed for larger effects.
//private _ammo = "Sh_120mm_AMOS";// Ammo can be changed for larger effects.
private _ammo2 = "Cluster_120mm_AMOS";// Ammo can be changed for larger effects.
private _ammo3 = "Bo_GBU12_LGB_MI10";// Ammo can be changed for larger effects.


 for [{_i = 0},{_i < _rounds},{_i = _i + 1}] do
{
	private _newpos = _pos;
	private _posX = _newpos select 0;
	private _posY = _newpos select 1;
	//private _bomb = _ammo createVehicle[(_posX + random _area)-_area/2, (_posY + random _area)-_area/2,_height];
	private _bomb2 = _ammo2 createVehicle[(_posX + random _area)-_area/2, (_posY + random _area)-_area/2,_height];
	private _bomb3 = _ammo3 createVehicle[(_posX + random _area)-_area/2, (_posY + random _area)-_area/2,_height];
	sleep (random _del)+0.5;// minimum delay 0.5, adjust for best results.
};
