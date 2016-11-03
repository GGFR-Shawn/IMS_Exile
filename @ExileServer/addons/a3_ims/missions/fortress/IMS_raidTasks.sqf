fortressRaidTask_One = {
	fortressRaidTask_1 = player createSimpleTask ["The Fortress - The Mission [Part 1]"];
	fortressRaidTask_1 setSimpleTaskDescription ["<img align='center' image='textures\mission.paa' width='360' height='360'/><br/><br/><font color='#db3a49'>Situation:</font><br/>Bandits have taken the fortress near Lijnhaven.<br/>There are sensitive technologies, explosives and resources in the area.<br/><br/><font color='#db3a49'>Mission Ojective:</font><br/>The objective is to investigate the fortress area and find a way to stop the bandits from stealing the technologies and explosives.<br/><br/>Go to the fortess area and investigate anything that might be useful to achieve the success of this mission.",
	"The Fortress - The Mission [Part 1]",""];
	fortressRaidTask_1 setSimpleTaskDestination [12156.5,2472.67,0];
	fortressRaidTask_1 setTaskState "Assigned";
	player setCurrentTask fortressRaidTask_1;
};
publicVariable "fortressRaidTask_One";

fortressRaidTask_OneEnd = {
	fortressRaidTask_1 setTaskState "Succeeded";
};
publicVariable "fortressRaidTask_OneEnd";

fortressRaidTask_Two = {
	fortressRaidTask_2 = player createSimpleTask ["The Fortress - Big Momma [Part 2]"];
	fortressRaidTask_2 setSimpleTaskDescription ["<img align='center' image='textures\mission.paa' width='360' height='360'/><br/><br/><font color='#db3a49'>Mission Ojective:</font><br/><t color='#f0ff00' font='PuristaSemiBold'>You found some wired and crosslinked bombs in the area. There must be a transmitter somewhere in the area that controls them. Locate and activate it.</t>",
	"The Fortress - Big Momma [Part 2]",""];
	fortressRaidTask_2 setSimpleTaskDestination [12092.2,2509.69,0];
	//fortressRaidTask_2 setTaskState "Created";
	fortressRaidTask_2 setTaskState "Assigned";
	player setCurrentTask fortressRaidTask_2;
};
publicVariable "fortressRaidTask_Two";

fortressRaidTask_TwoEnd = {
	fortressRaidTask_2 setTaskState "Succeeded";
};
publicVariable "fortressRaidTask_TwoEnd";

fortressRaidTask_Three = {
	fortressRaidTask_3 = player createSimpleTask ["The Fortress - Up And Away [Part 3]"];
	fortressRaidTask_3 setSimpleTaskDescription ["<img align='center' image='textures\mission.paa' width='360' height='360'/><br/><br/><font color='#db3a49'>Mission Ojective:</font><br/><t color='#f0ff00' font='PuristaSemiBold'>You have disabled the security systems and unlocked the central control tower. Examine the tower and see what is in there.</t>",
	"The Fortress - Up And Away [Part 3]",""];
	fortressRaidTask_3 setSimpleTaskDestination [12068.1,2460.89,15.295];
	//fortressRaidTask_2 setTaskState "Created";
	fortressRaidTask_3 setTaskState "Assigned";
	player setCurrentTask fortressRaidTask_3;
};
publicVariable "fortressRaidTask_Three";

fortressRaidTask_ThreeEnd = {
	fortressRaidTask_3 setTaskState "Succeeded";
};
publicVariable "fortressRaidTask_ThreeEnd";

fortressRaidTask_Four = {
	fortressRaidTask_4 = player createSimpleTask ["The Fortress - Life Is Hard [Final]"];
	fortressRaidTask_4 setSimpleTaskDescription ["<img align='center' image='textures\mission.paa' width='360' height='360'/><br/><br/><font color='#db3a49'>Mission Ojective:</font><br/><t color='#f0ff00' font='PuristaSemiBold'>You have activated the bomb detonators. Save what can be saved and leave the area before the time runs out!</t>",
	"The Fortress - Life Is Hard [Final]",""];
	fortressRaidTask_4 setSimpleTaskDestination [12128.5,2272.22,0];
	//fortressRaidTask_2 setTaskState "Created";
	fortressRaidTask_4 setTaskState "Assigned";
	player setCurrentTask fortressRaidTask_4;
};
publicVariable "fortressRaidTask_Four";

fortressRaidTask_FourEnd = {
	fortressRaidTask_4 setTaskState "Succeeded";
};
publicVariable "fortressRaidTask_FourEnd";