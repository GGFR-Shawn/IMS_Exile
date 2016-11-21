/*
	"The Fortress" v2.1 Static Raid Mission Tanoa for DMS Exile
	
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

_pos = [6896.07,11434.2,0];				 // Center position of the area

if ([_pos,DMS_StaticMinPlayerDistance] call DMS_fnc_IsPlayerNearby) exitWith {"delay"};

_difficulty = "hardcore"; 

_AIMaxReinforcementsWaves = 1;
_AIMaxReinforcements = 5;
_AIdelay = 10;

private _temp = DMS_ai_use_launchers;
DMS_ai_use_launchers = false;

// Definethe amount of units and spawn locations for AI Soldiers. These will be used for the initial spawning of AI as well as reinforcements.
// The center spawn location is added 3 times so at least 3 AI will spawn initially at the center location, and so that future reinforcements are more likely to spawn at the center.
_AICount1 = 2;
_AISoldierSpawnLocations1 =
[
	[6890.94,11387.5,-0.00476074],
	[6894.69,11389.7,-0.00604248]	
];

_AICount2 = 2;
_AISoldierSpawnLocations2 =
[
	[6865.08,11400.5,0.0148926],
	[6860.63,11398.9,2.96164]
];

_AICount3 = 2;
_AISoldierSpawnLocations3 =
[
	[6843.57,11445.2,2.63733],
	[6847.75,11445.4,-0.0185852]
];

_AICount4 = 3;
_AISoldierSpawnLocations4 =
[
	[6873.27,11472.9,0.0291138],
	[6869.22,11476.4,-0.009552],
	[6873.29,11480.3,-0.0198059]
];

_AICount5 = 2;
_AISoldierSpawnLocations5 =
[
	[6901.11,11499.4,0.00866699],
	[6903.99,11501.5,2.54599]
];

_AICount6 = 2;
_AISoldierSpawnLocations6 =
[
	[6925.57,11448.2,4.75452],
	[6925.55,11445.1,4.58109]
];

_AICount7 = 3;
_AISoldierSpawnLocations7 =
[
	[6926.11,11388.9,0.00775146],
	[6926.26,11394.2,0.0448303],
	[6931.49,11391.8,-0.0239563]
];

_AICount8 = 1;
_AISoldierSpawnLocations8 =
[
	[6891.49,11418,0.164276]
];

_AICount9 = 2;
_AISoldierSpawnLocations9 =
[
	[6887.5,11447.7,0],
	[6890.99,11452.1,0]
];

_AICountPatrol = 3;
_AISoldierSpawnLocationsPatrol =
[
	[6903,11447.5,0],
	[6902.51,11445.8,0.00494385],
	[6901.77,11447.7,0.0043335]
];

_AICountHeli = 3;
_AISoldierSpawnLocationsHeli =
[
	[6895.07,11432.1,0],
	[6895.07,11432.1,0],
	[6895.07,11432.1,0]
];

// Spawn the Units
// First AI Group spawn.
_group1 =
[
	_AISoldierSpawnLocations1,		// Pass the regular spawn locations.
	_AICount1,						// Ai count.
	_difficulty,					// Set in difficulty select.
	"assault",
	_side
] call DMS_fnc_SpawnAIGroup_MultiPos;

// Set first group units behavior
[
	_group1,						// GROUP or OBJECT: Group or unit whose behavior is to be changed.
	[6893.32,11388.2,0],			// ARRAY (positionATL): Location for the AI to guard.
	_difficulty,					// STRING: Difficulty of the AI.
	"SAFE"							// (OPTIONAL) STRING: AI Behavior. Refer to: https://community.bistudio.com/wiki/setBehaviour
] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the first group.
for "_i" from count (waypoints _group1) to 1 step -1 do
{
	deleteWaypoint ((waypoints _group1) select _i);
};
// Give first group waypoints.
//private _wp1 = _group1 addWaypoint [[6893.32,11388.2,0],0];
//_wp1 setWaypointType "SENTRY";
// Let the Ai dont move from there positions.
doStop (units _group1);

// Second AI Group spawn.
_group2 = [_AISoldierSpawnLocations2, _AICount2, _difficulty, "sniper", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set second group units behavior.
[_group2, [6863.14,11399.9,0], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the second group.
for "_i" from count (waypoints _group2) to 1 step -1 do
{
	deleteWaypoint ((waypoints _group2) select _i);
};
// Set second group formation. 
//_group2 setFormation "COLUMN";
// Give second group waypoints.
//private _wp2 = _group2 addWaypoint [[6863.14,11399.9,0],0];
//_wp2 setWaypointType "HOLD";
// Let the Ai dont move from there positions.
doStop (units _group2);

// Third AI Group spawn.
_group3 = [_AISoldierSpawnLocations3, _AICount3, _difficulty, "MG", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set third group units behavior.
[_group3, [6845.97,11445.2,0], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the third group.
for "_i" from count (waypoints _group3) to 1 step -1 do
{
	deleteWaypoint ((waypoints _group3) select _i);
};
// Set third group formation. 
//_group3 setFormation "COLUMN";
// Give third group waypoints.
//private _wp3 = _group3 addWaypoint [[6845.97,11445.2,0],0];
//_wp3 setWaypointType "HOLD";
// Let the Ai dont move from there positions.
doStop (units _group3);

// Fourth AI Group spawn.
_group4 = [_AISoldierSpawnLocations4, _AICount4, _difficulty, "assault", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set fourth group units behavior.
[_group4, [6887.52,11496.2,0], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the fourth group.
for "_i" from count (waypoints _group4) to 1 step -1 do
{
	deleteWaypoint ((waypoints _group4) select _i);
};
// Give fourth group waypoints.
//private _wp4 = _group4 addWaypoint [[6887.52,11496.2,0],0];
//_wp4 setWaypointType "SENTRY";
// Let the Ai dont move from there positions.
doStop (units _group4);

// Fifth AI Group spawn.
_group5 = [_AISoldierSpawnLocations5, _AICount5, _difficulty, "sniper", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set fifth group units behavior.
[_group5, [6901.86,11500.5,0], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the fifth group.
for "_i" from count (waypoints _group5) to 1 step -1 do
{
	deleteWaypoint ((waypoints _group5) select _i);
};
// Set fifth group formation. 
//_group5 setFormation "COLUMN";
// Give fifth group waypoints.
//private _wp5 = _group5 addWaypoint [[6901.86,11500.5,0],0];
//_wp5 setWaypointType "HOLD";
// Let the Ai dont move from there positions.
doStop (units _group5);

// Sixth AI Group spawn.
_group6 = [_AISoldierSpawnLocations6, _AICount6, _difficulty, "MG", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set sixth group units behavior.
[_group6, [6924.52,11446.5,0.126343], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the sixth group.
for "_i" from count (waypoints _group6) to 1 step -1 do
{
	deleteWaypoint ((waypoints _group6) select _i);
};
// Set sixth group formation. 
//_group6 setFormation "COLUMN";
// Give sixth group waypoints.
//private _wp6 = _group6 addWaypoint [[6924.52,11446.5,0.126343],0];
//_wp6 setWaypointType "HOLD";
// Let the Ai dont move from there positions.
doStop (units _group6);

// Seventh AI Group spawn.
_group7 = [_AISoldierSpawnLocations7, _AICount7, _difficulty, "assault", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set seventh group units behavior.
[_group7, [6924.09,11392.1,0], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the seventh group.
for "_i" from count (waypoints _group7) to 1 step -1 do
{
	deleteWaypoint ((waypoints _group7) select _i);
};
// Set seventh group formation. 
//_group7 setFormation "COLUMN";
// Give seventh group waypoints.
//private _wp7 = _group7 addWaypoint [[6924.09,11392.1,0],0];
//_wp7 setWaypointType "SENTRY";
// Let the Ai dont move from there positions.
doStop (units _group1);

// Eighth AI Group spawn.
_group8 = [_AISoldierSpawnLocations8, _AICount8, _difficulty, "MG", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set eighth group units behavior.
[_group8, [6891.49,11418,0.164276], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the eighth group.
for "_i" from count (waypoints _group8) to 1 step -1 do
{
	deleteWaypoint ((waypoints _group8) select _i);
};
// Give eighth group waypoints.
//private _wp8 = _group8 addWaypoint [[6891.49,11418,0.164276],0];
//_wp8 setWaypointType "HOLD";
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
//private _wp9 = _group9 addWaypoint [[12020.3,2447.49,0],0];
//_wp9 setWaypointType "HOLD";
// Let the Ai dont move from there positions.
doStop (units _group9);

// Patrol AI Group spawn.
_groupPatrol = [_AISoldierSpawnLocationsPatrol, _AICountPatrol, _difficulty, "assault", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set patrol group units behavior.
[_groupPatrol, [6896.07,11434.2,0], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the patrol group.
for "_i" from count (waypoints _groupPatrol) to 1 step -1 do
{
	deleteWaypoint ((waypoints _groupPatrol) select _i);
};
// Set the patrol groups formation.
_groupPatrol setFormation "LINE";
// Give patrol group waypoints.
//private _wpPatrol1 = _groupPatrol addWaypoint [[6900.4,11409.3,0],0];
//_wpPatrol1 setWaypointType "MOVE"; 
//private _wpPatrol2 = _groupPatrol addWaypoint [[6912.28,11388.6,0],0];
//_wpPatrol2 setWaypointType "MOVE"; 
//private _wpPatrol3 = _groupPatrol addWaypoint [[6921.17,11477.2,0],0];
//_wpPatrol3 setWaypointType "MOVE"; 
//private _wpPatrol4 = _groupPatrol addWaypoint [[6883.44,11496.2,0],0];
//_wpPatrol4 setWaypointType "MOVE"; 
//private _wpPatrol5 = _groupPatrol addWaypoint [[6851.33,11464.7,0],0];
//_wpPatrol5 setWaypointType "MOVE"; 
//private _wpPatrol6 = _groupPatrol addWaypoint [[6885.19,11378.9,0],0];
//_wpPatrol6 setWaypointType "MOVE"; 
//private _wpPatrol7 = _groupPatrol addWaypoint [[6902.41,11441.4,0],0];
//_wpPatrol7 setWaypointType "CYCLE";

/*
// Heli AI Group spawn.
// On this npcs location the heli reinfocements will nearly dropp the units.
_groupHeli = [_AISoldierSpawnLocationsHeli, _AICountHeli, _difficulty, "assault", _side] call DMS_fnc_SpawnAIGroup_MultiPos;
// Set ninth group units behavior.
[_groupHeli, [6896.07,11434.2,0], _difficulty, "SAFE"] call DMS_fnc_SetGroupBehavior;
// Remove all previous waypoints for the ninth group.
for "_i" from count (waypoints _groupHeli) to 1 step -1 do
{
	deleteWaypoint ((waypoints _groupHeli) select _i);
};
// Set heli group formation. 
//_groupHeli setFormation "COLUMN";
// Give heli group waypoints.
//private _wpHeli = _groupHeli addWaypoint [[6896.07,11434.2,0],0];
//_wpHeli setWaypointType "HOLD";
// Let the Ai dont move from there positions.
doStop (units _groupHeli);

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
*/

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