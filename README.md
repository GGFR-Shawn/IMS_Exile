![ArmA 1.64](https://img.shields.io/badge/Arma-1.64-blue.svg) ![Exile 1.0.2 Kohlrabi](https://img.shields.io/badge/Exile-1.0.2%20Kohlrabi-C72651.svg) ![DMS Version](https://img.shields.io/badge/DMS%20Version-2016--09--05-blue.svg) ![IMS Version](https://img.shields.io/badge/IMS%20Version-2016--11--11-00a9e1.svg) ![Build Status](https://img.shields.io/badge/build-passing-brightgreen.svg)

# General Information:
####Please note that this is not ready for public servers!
####Its builded and tested on a public dedicated server enviroment with Exile Mod 1.0.2 and DMS (parent 21bdacd commit 92d32436e06bd167e9dd4b2971954d09d8669b18 22 Sep. 2016)
####Everything should work as intended but use it on your own risk on a live server with players at this state! 

####This concept release is in its early build state and has been released to give the Exile community a overview how the system works and to get feedback from better coders from the forum to may get improvements.
####Please feel free to give feedback, suggestions or improvements to this work!


# Requirements:
DMS for Exile by Defent and eraser1: https://github.com/Defent/DMS_Exile


# Installation:
####Main files:
- Download the latest IMS release from here: https://github.com/salutesh/IMS_Exile/releases
- Pack the a3_ims folder in "IMS_Exile\@ExileServer\addons" with a PBO tool (PBO Manager, Eliteness, or the Arma 3 Tools suite) and put the generated PBO in your "@ExileServer\addons\" directory.
- Put the content of the "IMS_Exile\MPMISSIONS\Exile.Tanoa" directory into your mission main directory and repack your mission.
- Open up your missions description.ext and copy over the content of the CfgRemoteExec class and merge it with the CfgRemoteExec.hpp.
- Add the following lines to the very bottom of your description.ext:
```
// Base Config Files
#include "CfgRemoteExec.hpp"
#include "CfgFunctions.hpp" 
```

####DMS Setup:
- Put the DMS mission file raid_fortress.sqf from SERVER\DMS MISSIONS\static into your a3_dms\missions\static directory.
- Open the DMS config.sqf and edit the following lines:
```
DMS_MaxStaticMissions				= 2;						// Maximum number of Static Missions running at the same time. It's recommended you set this to the same amount of static missions that you have in total. This config will be ignored by "DMS_StaticMissionsOnServerStart".
```

- Open the DMS map_configs directory and edit the tanoa_config.sqf:
```
DMS_StaticMissionsOnServerStart append
[
    "underwater_stash",
    "raid_fortress"
];
```

- Repack a3_dms with a PBO tool (PBO Manager, Eliteness, or the Arma 3 Tools suite).
- Put the generated PBO in your "@ExileServer\addons\" directory.


####BattlEye Filters:
Please note that you may have to add more filters because i dont had the time yet to filter all BE restrictions out.
Feel free to post your own made filters for this work to complete the list .

[scripts.txt]
```
Line 2 - eventHandler:
!"{inGameUISetEventHandler [_x, \"true\"]} forEach [\"PrevAction\", \"NextAction\"];"

Line 15 - addAction:
!"_target addAction"
```

# Content:

The Fortress interactive raid mission for Exile Tanoa Map

####DMS Mission Features:
- Static NPC group spawns with ai behavior, waypoints and formations.
- Patrol group that move in a cycle around in the fortress area.
- Static guners.
- Helicopter reinfocements.

####Interactive Mission Features:
- Using exiles toast notifications to give informations about mission progress.
- Adding tasks for detailed mission instructions.
- Adding task markers for better mission progression.
- Adding terrain and interaction objects.
- Eventscripts and functions.


# Github Project:

https://github.com/salutesh/IMS_Exile


# Thanks:

Defent and eraser1 and all other contributions to DMS for the great Dynamic Mission System Addon! 

