/*
	"The Fortress" v2.0 Static Raid Mission Tanoa for DMS Exile
	
	Needed a3_ims addon by Salutesh to work as it should.
	Created by [RG] Salutesh
	www.reality-gaming.eu
	
	Includes much love to the AI enviroment:
	- Static NPC group spawns with ai behavior, waypoints and formations.
	- Patrol group that move in a cycle around in the fortress area.
	- Static guns spawns.
	- Helicopter reinfocements.
*/

private ["_AICount", "_AIMaxReinforcements", "_AIMaxReinforcementsWaves", "_AIdelay", "_staticguns", "_missionObjs", "_crate", "_crate_loot_values", "_crate_weapons", "_crate_items", "_crate_backpacks", "_difficulty", "_PossibleDifficulty", "_msgWIN"];

// For logging purposes
_num = DMS_MissionCount;

// Set mission side (only "bandit" is supported for now)
_side = "bandit";

_pos = [12103,2486,0];				 // Center position of the area

if ([_pos,DMS_StaticMinPlayerDistance] call DMS_fnc_IsPlayerNearby) exitWith {"delay"};

_difficulty = "hardcore"; 

_AIMaxReinforcementsWaves = 1;
_AIMaxReinforcements = 5;
_AIdelay = 10;

private _temp = DMS_ai_use_launchers;
DMS_ai_use_launchers = true;

// Definethe amount of units and spawn locations for AI Soldiers. These will be used for the initial spawning of AI as well as reinforcements.
// The center spawn location is added 3 times so at least 3 AI will spawn initially at the center location, and so that future reinforcements are more likely to spawn at the center.
_AICount1 = 2;
_AISoldierSpawnLocations1 =
[
	[12044.6,2388.7,18.1043],
	[12039,2393.5,17.8751]	
];

_AICount2 = 2;
_AISoldierSpawnLocations2 =
[
	[12126,2453.96,0],
	[12132.1,2457.75,0]
];

_AICount3 = 2;
_AISoldierSpawnLocations3 =
[
	[12061.6,2408.75,0],
	[12132.2,2457.24,0]
];

_AICount4 = 3;
_AISoldierSpawnLocations4 =
[
	[12189.1,2452.46,3.06728],
	[12188.5,2456.66,3.14114],
	[12193.4,2459.34,3.06728]
];

_AICount5 = 2;
_AISoldierSpawnLocations5 =
[
	[12126.7,2490.34,0],
	[12126.1,2496.81,0]
];

_AICount6 = 2;
_AISoldierSpawnLocations6 =
[
	[12184.4,2567.41,17.8731],
	[12179.3,2575.06,17.8731]
];

_AICount7 = 3;
_AISoldierSpawnLocations7 =
[
	[12034.6,2558.85,3.12652],
	[12029.3,2560.47,2.92652],
	[12037.2,2562.26,3.12652]
];

_AICount8 = 1;
_AISoldierSpawnLocations8 =
[
	[12106.2,2516.74,4.57695]
];

_AICount9 = 2;
_AISoldierSpawnLocations9 =
[
	[12021.6,2450.42,0],
	[12017.6,2449.1,0]
];

_AICountPatrol = 3;
_AISoldierSpawnLocationsPatrol =
[
	[12165.9,2552.81,0],
	[12169.5,2552.86,0],
	[12164.8,2555.35,0]
];

_AICountHeli = 3;
_AISoldierSpawnLocationsHeli =
[
	[12086.5,2470.26,0],
	[12084.6,2467.62,0],
	[12083.4,2469.76,0]
];

// Spawn the Units
// First AI Group spawn.
_group1 =
[
	_AISoldierSpawnLocations1,		// Pass the regular spawn locations.
	_AICount1,						// Ai count.
	_difficulty,					// Set in difficulty select.
	"sniper",
	_side
] call DMS_fnc_SpawnAIGroup_MultiPos;

// Set first group units behavior
[
	_group1,						// GROUP or OBJECT: Group or unit whose behavior is to be changed.
	[12044.6,2388.7,18.1043],		// ARRAY (positionATL): Location for the AI to guard.
	_difficulty,					// STRING: Difficulty of the AI.
	"SAFE"							// (OPTIONAL) STRING: AI Behavior. Refer to: https://community.bistudio.com/wiki/setBehaviour
] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the first group.
for "_i" from count (waypoints _group1) to 1 step -1 do
{
	deleteWaypoint ((waypoints _group1) select _i);
};
// Give first group waypoints.
private _wp1 = _group1 addWaypoint [[12044.6,2388.7,18.1043],0];
_wp1 setWaypointType "HOLD";
// Let the Ai dont move from there positions.
doStop (units _group1);

// Second AI Group spawn.
_group2 = [_AISoldierSpawnLocations2, _AICount2, _difficulty, "assault", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set second group units behavior.
[_group2, [12060.6,2403.62,0], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the second group.
for "_i" from count (waypoints _group2) to 1 step -1 do
{
	deleteWaypoint ((waypoints _group2) select _i);
};
// Set second group formation. 
//_group2 setFormation "COLUMN";
// Give second group waypoints.
private _wp2 = _group2 addWaypoint [[12060.6,2403.62,0],0];
_wp2 setWaypointType "SENTRY";

// Third AI Group spawn.
_group3 = [_AISoldierSpawnLocations3, _AICount3, _difficulty, "MG", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set third group units behavior.
[_group3, [12130.6,2448.48,0], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the third group.
for "_i" from count (waypoints _group3) to 1 step -1 do
{
	deleteWaypoint ((waypoints _group3) select _i);
};
// Set third group formation. 
//_group3 setFormation "COLUMN";
// Give third group waypoints.
private _wp3 = _group3 addWaypoint [[12130.6,2448.48,0],0];
_wp3 setWaypointType "SENTRY";

// Fourth AI Group spawn.
_group4 = [_AISoldierSpawnLocations4, _AICount4, _difficulty, "sniper", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set fourth group units behavior.
[_group4, [12188.5,2456.66,3.14114], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the fourth group.
for "_i" from count (waypoints _group4) to 1 step -1 do
{
	deleteWaypoint ((waypoints _group4) select _i);
};
// Give fourth group waypoints.
private _wp4 = _group4 addWaypoint [[12188.5,2456.66,3.14114],0];
_wp4 setWaypointType "HOLD";
// Let the Ai dont move from there positions.
doStop (units _group4);

// Fifth AI Group spawn.
_group5 = [_AISoldierSpawnLocations5, _AICount5, _difficulty, "assault", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set fifth group units behavior.
[_group5, [12127.8,2493.16,0], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the fifth group.
for "_i" from count (waypoints _group5) to 1 step -1 do
{
	deleteWaypoint ((waypoints _group5) select _i);
};
// Set fifth group formation. 
//_group5 setFormation "COLUMN";
// Give fifth group waypoints.
private _wp5 = _group5 addWaypoint [[12127.8,2493.16,0],0];
_wp5 setWaypointType "SENTRY";

// Sixth AI Group spawn.
_group6 = [_AISoldierSpawnLocations6, _AICount6, _difficulty, "MG", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set sixth group units behavior.
[_group6, [12184.4,2567.41,17.8731], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the sixth group.
for "_i" from count (waypoints _group6) to 1 step -1 do
{
	deleteWaypoint ((waypoints _group6) select _i);
};
// Set sixth group formation. 
//_group6 setFormation "COLUMN";
// Give sixth group waypoints.
private _wp6 = _group6 addWaypoint [[12184.4,2567.41,17.8731],0];
_wp6 setWaypointType "SENTRY";

// Seventh AI Group spawn.
_group7 = [_AISoldierSpawnLocations7, _AICount7, _difficulty, "assault", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set seventh group units behavior.
[_group7, [12034.6,2558.85,3.12652], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the seventh group.
for "_i" from count (waypoints _group7) to 1 step -1 do
{
	deleteWaypoint ((waypoints _group7) select _i);
};
// Set seventh group formation. 
//_group7 setFormation "COLUMN";
// Give seventh group waypoints.
private _wp7 = _group7 addWaypoint [[12034.6,2558.85,3.12652],0];
_wp7 setWaypointType "SENTRY";

// Eighth AI Group spawn.
_group8 = [_AISoldierSpawnLocations8, _AICount8, _difficulty, "sniper", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set eighth group units behavior.
[_group8, [12106.2,2516.74,4.57695], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the eighth group.
for "_i" from count (waypoints _group8) to 1 step -1 do
{
	deleteWaypoint ((waypoints _group8) select _i);
};
// Give eighth group waypoints.
private _wp8 = _group8 addWaypoint [[12106.2,2516.74,4.57695],0];
_wp8 setWaypointType "HOLD";
// Let the Ai dont move from there positions.
doStop (units _group8);

// Ninth AI Group spawn.
_group9 = [_AISoldierSpawnLocations9, _AICount9, _difficulty, "MG", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set ninth group units behavior.
[_group9, [12020.3,2447.49,0], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the ninth group.
for "_i" from count (waypoints _group9) to 1 step -1 do
{
	deleteWaypoint ((waypoints _group9) select _i);
};
// Set ninth group formation. 
//_group9 setFormation "COLUMN";
// Give ninth group waypoints.
private _wp9 = _group9 addWaypoint [[12020.3,2447.49,0],0];
_wp9 setWaypointType "HOLD";

// Patrol AI Group spawn.
_groupPatrol = [_AISoldierSpawnLocationsPatrol, _AICountPatrol, _difficulty, "assault", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set patrol group units behavior.
[_groupPatrol, [12163.8,2547.64,0], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the patrol group.
for "_i" from count (waypoints _groupPatrol) to 1 step -1 do
{
	deleteWaypoint ((waypoints _groupPatrol) select _i);
};
// Set the patrol groups formation.
_groupPatrol setFormation "LINE";
// Give patrol group waypoints.
private _wpPatrol1 = _groupPatrol addWaypoint [[12163.8,2547.64,0],0];
_wpPatrol1 setWaypointType "MOVE"; 
private _wpPatrol2 = _groupPatrol addWaypoint [[12063.6,2525.75,0],0];
_wpPatrol2 setWaypointType "MOVE"; 
private _wpPatrol3 = _groupPatrol addWaypoint [[12046.3,2492.4,0],0];
_wpPatrol3 setWaypointType "MOVE"; 
private _wpPatrol4 = _groupPatrol addWaypoint [[12006.7,2468.5,0],0];
_wpPatrol4 setWaypointType "MOVE"; 
private _wpPatrol5 = _groupPatrol addWaypoint [[12053.9,2403.1,0],0];
_wpPatrol5 setWaypointType "MOVE"; 
private _wpPatrol6 = _groupPatrol addWaypoint [[12158.4,2470.57,0],0];
_wpPatrol6 setWaypointType "MOVE"; 
private _wpPatrol7 = _groupPatrol addWaypoint [[12158.4,2470.57,0],0];
_wpPatrol7 setWaypointType "CYCLE";

// Heli AI Group spawn.
// On this npcs location the heli reinfocements will nearly dropp the units.
_groupHeli = [_AISoldierSpawnLocationsHeli, _AICountHeli, _difficulty, "assault", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set ninth group units behavior.
[_groupHeli, [12086.5,2470.26,0], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the ninth group.
for "_i" from count (waypoints _groupHeli) to 1 step -1 do
{
	deleteWaypoint ((waypoints _groupHeli) select _i);
};
// Set heli group formation. 
//_groupHeli setFormation "COLUMN";
// Give heli group waypoints.
private _wpHeli = _groupHeli addWaypoint [[12086.5,2470.26,0],0];
_wpHeli setWaypointType "HOLD";

// Static Guns
_staticGuns =
[
	[
		[12031.4,2428.87,0.000761271],
		[12148.2,2508.84,2.78],
		[12128.8,2469.37,2.78],
		[12069.4,2461.54,0]
	],
	_group1,
	"assault",
	_difficulty,
	"bandit",
	"random"
] call DMS_fnc_SpawnAIStaticMG;

DMS_ai_use_launchers = _temp;

// Get the AI to shut the fuck up :)
enableSentences false;
enableRadio false;

// Define mission-spawned AI Units
_missionAIUnits =
[
	[_group1,_group2,_group3,_group4,_group5,_group6,_group7,_group8,_group9,_groupPatrol,_groupHeli]
];

// Define the group reinforcements
_groupReinforcementsInfo =
[
	[
		_groupHeli,								// pass the group
		[
			[
				_AIMaxReinforcementsWaves,		// Amount of reinfocements waves (defined in difficulty selection). 
				0
			],
			[
				_AIMaxReinforcements,			// Maximum units that can be given as reinforcements (defined in difficulty selection).
				0
			]
		],
		[
			_AIdelay,							// The delay between reinforcements. >> you can change this in difficulty settings
			diag_tickTime
		],
		_AISoldierSpawnLocationsHeli,
		"random",
		_difficulty,
		_side,
		"heli_troopers",								// STRING: How the AI group should be managed. Supported types: "playernear", "maintain", "reinforce", "increasing_resistance", "armed_vehicle"
		[
			3,											// SCALAR: If the AI Group has fewer than "_AICount" living units, then the group will receive reinforcements.
	        "false",               						// BOOLEAN: Whether or not to eject Fire-From-Vehicle (FFV) gunners.
	        5,                    						// SCALAR: Maximum number of AI to eject from the aircraft. Set to a really high # to ignore (like 999).
	        "false",               						// BOOLEAN: Whether or not to keep the heli flying around as a gunship.
	        [12141.1,2498.89,0],               			// OBJECT or ARRAY (OPTIONAL - Position2D or 3D): The location to drop the reinforcements at. The drop point will default to the group leader.
			"Exile_Chopper_Huey_Armed_Desert"         	// STRING (OPTIONAL): The classname of the heli to spawn.
		]
	]
];

// Add mission objects to monitor.
_missionObjs =
[
	[_staticGuns,_missionAIUnits],							// static gun(s). Note, we don't add the base itself because it already spawns on server start.
	[],														// No Vehicle prize
	[]														// Crate price setup (Example: [[_crate,_crate_loot_values]])
];

// Define Mission Start message
_msgStart = ['#FFFF00',"Bandis captured the fortress ruins near Lijnhaven. Pick up your mates and find out what's going on."];

// Define Mission Win message defined in vehicle choice
_msgWIN = ['#0080FF',"Convicts have successfully raided the fortress base!"];

// Define Mission Lose message
_msgLOSE = ['#FF0000',"The bandits have left the fortess and stealed the sensitive technologies."];

// Define mission name (for map marker and logging)
_missionName = "The Fortress";

// Create Markers
_markers =
[
	_pos,
	_missionName,
	_difficulty
] call DMS_fnc_CreateMarker;

_circle = _markers select 1;
_circle setMarkerDir 0;
_circle setMarkerSize [150,150];

_time = diag_tickTime;

// Parse and add mission info to missions monitor
_added =
[
	_pos,
	[
		[
			"kill",
			[_group1,_group2,_group3,_group4,_group5,_group6,_group7,_group8,_group9,_groupPatrol,_groupHeli]
		],
		[
			"playerNear",
			[_pos,200]
		]
	],
	_groupReinforcementsInfo,
	[
		_time,
		DMS_StaticMissionTimeOut call DMS_fnc_SelectRandomVal
	],
	_missionAIUnits,
	_missionObjs,
	[_missionName,_msgWIN,_msgLOSE],
	_markers,
	_side,
	_difficulty,
	[[],[]]
] call DMS_fnc_AddMissionToMonitor_Static;

// Add the index array to the mission to call a mission comlpetion after player has succesfull destroyed the fortress.
// Just needed if players dont kill all AI.
My_Custom_DMS_Mission_Index = (count DMS_StaticMission_Arr) - 1;

// Check to see if it was added correctly, otherwise delete the stuff
if !(_added) exitWith
{
	diag_log format ["DMS ERROR :: Attempt to set up mission %1 with invalid parameters for DMS_fnc_AddMissionToMonitor_Static! Deleting mission objects and resetting DMS_MissionCount.",_missionName];

	_cleanup = [];
	{
		_cleanup pushBack _x;
	} forEach _missionAIUnits;

	_cleanup pushBack ((_missionObjs select 0)+(_missionObjs select 1));
	
	{
		_cleanup pushBack (_x select 0);
	} foreach (_missionObjs select 2);

	_cleanup call DMS_fnc_CleanUp;

	// Delete the markers directly
	{deleteMarker _x;} forEach _markers;

	// Reset the mission count
	DMS_MissionCount = DMS_MissionCount - 1;
};

// Notify players
[_missionName,_msgStart] call DMS_fnc_BroadcastMissionStatus;

if (DMS_DEBUG) then
{
	(format ["MISSION: (%1) :: Mission #%2 started at %3 with %4 AI units and %5 difficulty at time %6",_missionName,_num,_pos,_AICount,_difficulty,_time]) call DMS_fnc_DebugLog;
};