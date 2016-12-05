/*
    IMS_raidToasts.sqf
    Written by Salutesh
    www.reality-gaming.eu
	
    Description: Toast notifications for the fortress mission.  
*/

IMS_Fortress_Toast_Dokuments = {
	["InfoTitleAndText", ["<t color='#c200f3' align='center' font='PuristaSemiBold'>Secret Dokuments</t>", format ["<t color='#f30000'><img align='center' image='textures\dokuments.paa' size='80'/></t><br/><br/><t color='#c200f3' font='PuristaSemiBold'>You found a secret dokument that contains mission instructions.</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};

IMS_Fortress_Toast_ActiveBomb = {
	["ErrorTitleAndText", ["<t color='#ff0000' align='center' font='PuristaSemiBold'>Active Bomb</t>", format ["<t color='#ff6000'><img align='center' image='textures\bomb.paa' size='80'/></t><br/><br/><t color='#ff0000' font='PuristaSemiBold'>This bomb is still active and crosslinked with something.</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};

IMS_Fortress_Toast_Toilet = {
	["ErrorTitleAndText", ["<t color='#ff4242' align='center' font='PuristaSemiBold'>What the Fu#%?!</t>", format ["<t color='#925002'><img align='center' image='textures\poo.paa' size='80'/></t><br/><br/><t color='#ff4242' font='PuristaSemiBold'>What do you expect to find in a toilete?</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};

IMS_Fortress_Toast_Laptop = {
	["SuccessTitleAndText", ["<t color='#00ce27' align='center' font='PuristaSemiBold'>Security Systems</t>", format ["<t color='#20a1fb'><img align='center' image='textures\security.paa' size='80'/></t><br/><br/><t color='#00ce27' font='PuristaSemiBold'>Security systems disabled.<br/>The central control tower building is unlocked now.</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};

IMS_Fortress_Toast_BombActivate = {
	["ErrorTitleAndText", ["<t color='#ff4242' align='center' font='PuristaSemiBold'>Bombs Activated</t>", format ["<t color='#e40000'><img align='center' image='textures\bomb.paa' size='80'/></t><br/><br/><t color='#ff4242' font='PuristaSemiBold'>Bomb detornator activated. You have %1 seconds to leafe the area!</t>", IMS_Fortress_Timer]]] call ExileClient_gui_toaster_addTemplateToast;
};

IMS_Fortress_Toast_MissionComplete = {
	["SuccessTitleAndText", ["<t color='#06ff00' align='center' font='PuristaSemiBold'>MISSION COMPLETE</t>", format ["<t color='#ffe400'><img align='center' image='textures\win.paa' size='80'/></t><br/><br/><t color='#06ff00' font='PuristaSemiBold'>The bandits were successfully stopped.<br/>Raid mission completed!</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};

publicVariable "IMS_Fortress_Toast_Dokuments";
publicVariable "IMS_Fortress_Toast_ActiveBomb";
publicVariable "IMS_Fortress_Toast_Toilet";
publicVariable "IMS_Fortress_Toast_Laptop";
publicVariable "IMS_Fortress_Toast_BombActivate";
publicVariable "IMS_Fortress_Toast_MissionComplete";