class RscProgress
{
    type = 8;
    style = 0;
    colorFrame[] = {0,0,0,1};
    colorBar[] = {1,1,1,1};
    texture = "#(argb,8,8,3)color(1,1,1,1)";
    w = 1;
    h = 0.03;
};

class myProgressBar //dialogue name
{
    idd = 10;
    onLoad = "uiNamespace setVariable ['my_awesome_progressBar',_this select 0]"; //Save the display in the uiNamespace for easier access
    class Controls
    {
        class Progress: RscProgress
        {
            idc = 11;
            x = 0;
            y = 0.3;
        };
    };
};