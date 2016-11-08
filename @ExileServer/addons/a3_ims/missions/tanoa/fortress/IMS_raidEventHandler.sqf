/*
    File: IMS_raidEventHandler.sqf
    Author: Salutesh aka Steve
    
    Description:
	
*/

fortressRaid_TaskCeck = {
	_fortressRaid_TaskCheck = player getVariable "fortressRaid_Objective";
	if ("_fortressRaid_TaskCheck" == 1) then {
		waituntil {(alive player)};
		fortressRaidTask_1 = player createSimpleTask ["The Fortress - The Mission [Part 1]"];
		fortressRaidTask_1 setSimpleTaskDescription ["<img align='center' image='textures\mission.paa' width='360' height='360'/><br/><br/><font color='#db3a49'>Situation:</font><br/>Bandits have taken the fortress near Lijnhaven.<br/>There are sensitive technologies, explosives and resources in the area.<br/><br/><font color='#db3a49'>Mission Ojective:</font><br/>The objective is to investigate the fortress area and find a way to stop the bandits from stealing the technologies and explosives.<br/><br/>Go to the fortess area and investigate anything that might be useful to achieve the success of this mission.",
		"The Fortress - The Mission [Part 1]",""];
		fortressRaidTask_1 setSimpleTaskDestination [12156.5,2472.67,0];
		fortressRaidTask_1 setTaskState "Assigned";
		player setCurrentTask fortressRaidTask_1;	
	};
};

fortressRaid_EventHandler = {
	player addEventHandler ["killed", {_this remoteExec "fortressRaid_TaskCeck"}];
};