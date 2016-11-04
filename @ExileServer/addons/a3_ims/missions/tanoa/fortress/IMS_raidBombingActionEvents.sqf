/*
    File: IMS_raidBombingActionEvents.sqf
    Author: Salutesh aka Steve
    
    Description:
    This file includes the bombing event at the end of the timer.
*/

fortressRaidBombingEvent = {
	// Start bombing the area
	[[12166.1,2554.16,0],30,1,2] remoteExec ["IMS_fnc_raidEndBombing",0,true];
	sleep 5;
	[[12128.7,2528.92,0],30,1,2] remoteExec ["IMS_fnc_raidEndBombing",0,true];	
	sleep 5;
	[[12172.8,2466.03,0],30,1,2] remoteExec ["IMS_fnc_raidEndBombing",0,true];	
	sleep 5;
	[[12106.2,2491.15,0],70,1,2] remoteExec ["IMS_fnc_raidEndBombing",0,true];
	sleep 5;
	[[12054.3,2413.43,0],30,1,2] remoteExec ["IMS_fnc_raidEndBombing",0,true];
	sleep 5;
	[[12051.2,2542.46,0],30,1,2] remoteExec ["IMS_fnc_raidEndBombing",0,true];
};