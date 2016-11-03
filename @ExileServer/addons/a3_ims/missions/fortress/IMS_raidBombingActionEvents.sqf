/*
    File: fn_raidSetupEndBombing.sqf
    Author: Salutesh aka Steve
    
    Description:
    
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

fortressRaidAlarmEvent = {
	// Alarm sound before explosions start
	{_x say "air_raid"} foreach [fortressRaid_speaker_1,fortressRaid_speaker_2,fortressRaid_speaker_3,fortressRaid_speaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [fortressRaid_speaker_1,fortressRaid_speaker_2,fortressRaid_speaker_3,fortressRaid_speaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [fortressRaid_speaker_1,fortressRaid_speaker_2,fortressRaid_speaker_3,fortressRaid_speaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [fortressRaid_speaker_1,fortressRaid_speaker_2,fortressRaid_speaker_3,fortressRaid_speaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [fortressRaid_speaker_1,fortressRaid_speaker_2,fortressRaid_speaker_3,fortressRaid_speaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [fortressRaid_speaker_1,fortressRaid_speaker_2,fortressRaid_speaker_3,fortressRaid_speaker_4];
};
publicVariable "fortressRaidAlarmEvent";