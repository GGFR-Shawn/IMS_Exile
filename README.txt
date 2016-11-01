Interactive Missions
www.reality-gaming.eu
© 2016 Reality-Gaming.EU

Please note that this is not ready for public servers!
Its builded and tested on a public dedicated server enviroment with Exile Mod 1.0.2 and DMS (parent 21bdacd commit 92d32436e06bd167e9dd4b2971954d09d8669b18 22 Sep. 2016)
so everything should work as intendet but use it on your own risk on a live server with players.

This concept release is in its early build state to give the Exile community a overview how the system works.
Please feel free to give feedback ,suggestions or improvements to this work.

Requirements:
DMS for Exile by Defent and eraser1
https://github.com/Defent/DMS_Exile

Main Installation:
Pack the a3_rg folder in ADDON FILES with a PBO tool (PBO Manager, Eliteness, or the Arma 3 Tools suite).
Put the generated PBO in your "@ExileServer\addons\" directory.
Put the content of the MISSION FILES directory into your mission main directory and repack your mission.

Open up your missions description.ext and copy over the content of the CfgRemoteExec class and merge it with the CfgRemoteExec.hpp.
Add the following lines to the very bottom of your description.ext:

// Base Config Files
#include "CfgRemoteExec.hpp"
#include "CfgFunctions.hpp" 


DMS Setup:
Put the DMS mission file raid_fortress.sqf from SERVER\DMS MISSIONS\static into your a3_dms\missions\static directory.
Open the DMS map_configs directory and edit the tanoa_config.sqf:

DMS_StaticMissionsOnServerStart append
[
	"underwater_stash",
	"raid_fortress"
];

Repack a3_dms with a PBO tool (PBO Manager, Eliteness, or the Arma 3 Tools suite).
Put the generated PBO in your "@ExileServer\addons\" directory.


BattlEye Filters:
Please note that you may have to add more filters because i dont had the time yet to filter all BE restrictions out.

[scripts.txt]
Line 2 - eventHandler:
!"{inGameUISetEventHandler [_x, \"true\"]} forEach [\"PrevAction\", \"NextAction\"];"

Line 15 - addAction:
!"_target addAction"