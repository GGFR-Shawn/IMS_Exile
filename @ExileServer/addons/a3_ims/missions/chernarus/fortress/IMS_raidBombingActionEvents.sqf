/*
    IMS_raidBombingActionEvents.sqf
    Written by Salutesh
    www.reality-gaming.eu
    
    Description:
    This file includes the bombing event at the end of the timer.
*/

fortressRaidBombingEvent = {
	// Start bombing the area
	[[6885.16,11493.2,0],30,1,2] remoteExec ["IMS_fnc_EndBombing",0,true];
	sleep 5;
	[[6871.54,11443.7,0],30,1,2] remoteExec ["IMS_fnc_EndBombing",0,true];	
	sleep 5;
	[[6908.83,11393.9,0],30,1,2] remoteExec ["IMS_fnc_EndBombing",0,true];
};