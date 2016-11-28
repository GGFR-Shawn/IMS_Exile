# Where are the placed objects located?

- You will find the placed objects in code format in the following file:
IMS_Exile\@ExileServer\addons\a3_ims\missions\fortress\IMS_raidObjects.sqf

# Where are the placed interaction objects located?
- You will find the placed interaction objects in code format in the following file:
IMS_Exile\@ExileServer\addons\a3_ims\missions\fortress\IMS_ineractionObjects.sqf

# Help DMS map markers spam the Map!
- Check your DMS Addon config.sqf and change the following lines to your running setup:
```
DMS_MaxStaticMissions				= 2;  // Maximum number of Static Missions running at the same time. It's recommended you set this to the same amount of static missions that you have in total. This config will be ignored by "DMS_StaticMissionsOnServerStart".
```