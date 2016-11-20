/*
    IMS_raidBombingActionEvents.sqf
    Written by Salutesh
    www.reality-gaming.eu
    
    Description:
    This file includes the bombing event at the end of the timer.
*/

fortressRaidBombingEvent = {
	// Start bombing the area
	[[6888.67,11386.8,0],30,1,2] remoteExec ["IMS_fnc_EndBombing",0,true];
	sleep 5;
	[[6847.68,11475.2,0],30,1,2] remoteExec ["IMS_fnc_EndBombing",0,true];	
	sleep 5;
	[[6887.86,11505.3,0],30,1,2] remoteExec ["IMS_fnc_EndBombing",0,true];
	sleep 5;
	[[6926.24,11387.2,0],30,1,2] remoteExec ["IMS_fnc_EndBombing",0,true];
	sleep 5;
	[[6891.16,11429,0],30,1,2] remoteExec ["IMS_fnc_EndBombing",0,true];
};