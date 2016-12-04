/*
    IMS_raidToasts.sqf
    Written by Salutesh
    www.reality-gaming.eu
	
    Description: Toast notifications for the fortress mission.  
*/

IMS_Fortress_Toast_Dokuments = {
	["InfoTitleAndText", ["<t color='#c200f3' align='center' font='PuristaSemiBold'>Secret Dokuments</t>", format ["<t color='#f30000'><img align='center' image='textures\dokuments.paa' size='80'/></t><br/><br/><t color='#c200f3' font='PuristaSemiBold'>You found a secret dokument that contains mission instructions.</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};
publicVariable "IMS_Fortress_Toast_Dokuments";

IMS_Fortress_Toast_NewTask = {
	["InfoTitleAndText", ["<t color='#00c0ff' align='center' font='PuristaSemiBold'>New Task</t>", format ["<t color='#00ff30'><img align='center' image='textures\task.paa' size='80'/></t><br/><br/><t color='#00c0ff' font='PuristaSemiBold'>A new task was created in your task menu!</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};
publicVariable "IMS_Fortress_Toast_NewTask";

IMS_Fortress_Toast_ActiveBomb = {
	["ErrorTitleAndText", ["<t color='#ff0000' align='center' font='PuristaSemiBold'>Active Bomb</t>", format ["<t color='#ff6000'><img align='center' image='textures\bomb.paa' size='80'/></t><br/><br/><t color='#ff0000' font='PuristaSemiBold'>This bomb is still active and crosslinked with something.</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};
publicVariable "IMS_Fortress_Toast_ActiveBomb";

IMS_Fortress_Toast_TaskUpdate = {
	["InfoTitleAndText", ["<t color='#00c0ff' align='center' font='PuristaSemiBold'>Task Updated</t>", format ["<t color='#00ff30'><img align='center' image='textures\success.paa' size='80'/></t><br/><br/><t color='#00c0ff' font='PuristaSemiBold'>The current task progress was updated in your task menu.</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};
publicVariable "IMS_Fortress_Toast_TaskUpdate";

IMS_Fortress_Toast_Toilet = {
	["ErrorTitleAndText", ["<t color='#ff4242' align='center' font='PuristaSemiBold'>What the Fu#%?!</t>", format ["<t color='#925002'><img align='center' image='textures\poo.paa' size='80'/></t><br/><br/><t color='#ff4242' font='PuristaSemiBold'>What do you expect to find in a toilete?</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};
publicVariable "IMS_Fortress_Toast_Toilet";

IMS_Fortress_Toast_Supply = {
	["SuccessTitleAndText", ["<t color='#00ce27' align='center' font='PuristaSemiBold'>Supplycrate</t>", format ["<t color='#ba00ff'><img align='center' image='textures\supply.paa' size='80'/></t><br/><br/><t color='#00ce27' font='PuristaSemiBold'>The crate has items.<br/>You can now loot the crate.</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};
publicVariable "IMS_Fortress_Toast_Supply";

IMS_Fortress_Toast_Laptop = {
	["SuccessTitleAndText", ["<t color='#00ce27' align='center' font='PuristaSemiBold'>Security Systems</t>", format ["<t color='#20a1fb'><img align='center' image='textures\security.paa' size='80'/></t><br/><br/><t color='#00ce27' font='PuristaSemiBold'>Security systems disabled.<br/>The central control tower building is unlocked now.</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};
publicVariable "IMS_Fortress_Toast_Laptop";

IMS_Fortress_Toast_BombActivate = { 
	["ErrorTitleAndText", ["<t color='#ff4242' align='center' font='PuristaSemiBold'>Bombs Activated</t>", format ["<t color='#e40000'><img align='center' image='textures\bomb.paa' size='80'/></t><br/><br/><t color='#ff4242' font='PuristaSemiBold'>Bomb detornator activated. You have %1 seconds to leafe the area!</t>", IMS_Fortress_Timer]]] call ExileClient_gui_toaster_addTemplateToast;
};
publicVariable "IMS_Fortress_Toast_BombActivate";

IMS_Fortress_Toast_Loot = {
	["SuccessTitleAndText", ["<t color='#f07700' align='center' font='PuristaSemiBold'>Raid Loot Drop</t>", format ["<t color='#ffc96b'><img align='center' image='textures\loot.paa' size='120'/></t><br/><t color='#f07700' font='PuristaSemiBold'>Loot drop inbound. Look for a crate with violet smoke and chemlights.</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};
publicVariable "IMS_Fortress_Toast_Loot";

IMS_Fortress_Toast_MissionComplete = {
	["SuccessTitleAndText", ["<t color='#06ff00' align='center' font='PuristaSemiBold'>MISSION COMPLETE</t>", format ["<t color='#ffe400'><img align='center' image='textures\win.paa' size='80'/></t><br/><br/><t color='#06ff00' font='PuristaSemiBold'>The bandits were successfully stopped.<br/>Raid mission completed!</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};
publicVariable "IMS_Fortress_Toast_MissionComplete";

IMS_Fortress_Toast_VehicleLoot = {
	["SuccessTitleAndText", ["<t color='#f07700' align='center' font='PuristaSemiBold'>Vehicle Drop</t>", format ["<t color='#ffc96b'><img align='center' image='textures\vehicle.paa' size='80'/></t><br/><br/><t color='#f07700' font='PuristaSemiBold'>Vehicle drop incoming! The Pin-Code for the Vehicle is: %1</t>", IMS_Fortress_VehiclePinCode]]] call ExileClient_gui_toaster_addTemplateToast;
};
publicVariable "IMS_Fortress_Toast_VehicleLoot";