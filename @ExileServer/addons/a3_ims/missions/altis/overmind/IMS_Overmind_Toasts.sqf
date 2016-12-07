/*
    IMS_raidToasts.sqf
    Written by Salutesh
    www.reality-gaming.eu
	
    Description: Toast notifications for the fortress mission.  
*/

IMS_Overmind_Toast_Generator = {
	["InfoTitleAndText", ["<t color='#ffb418' align='center' font='PuristaSemiBold'>Generator</t>", format ["<t color='#a0df3b' font='PuristaSemiBold'>Generator activated!</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};

IMS_Overmind_Toast_PC = {
	["InfoTitleAndText", ["<t color='#ffb418' align='center' font='PuristaSemiBold'>Generator</t>", format ["<t color='#a0df3b' font='PuristaSemiBold'>Computer activated and online!</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};

IMS_Overmind_Toast_Keyboard = {
	["InfoTitleAndText", ["<t color='#ffb418' align='center' font='PuristaSemiBold'>Generator</t>", format ["<t color='#a0df3b' font='PuristaSemiBold'>Files succsessfully downloaded!</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};


publicVariable "IMS_Overmind_Toast_Generator";
publicVariable "IMS_Overmind_Toast_PC";
publicVariable "IMS_Overmind_Toast_Keyboard";