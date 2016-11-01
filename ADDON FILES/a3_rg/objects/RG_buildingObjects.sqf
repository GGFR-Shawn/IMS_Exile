/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

// 11 Vehicles
private _vehicles = [
["Land_Cargo_HQ_V4_F", [12034.6, 2560.52, 7.2554], [-0.234752, -0.972055, 0], [0, 0, 1], true],
["Land_Cargo_HQ_V4_F", [12189.4, 2455.45, 7.39616], [-0.236702, 0.971582, 0], [0, 0, 1], true],
["Land_Cargo_Patrol_V4_F", [12105.5, 2516.27, 12.3233], [-0.994776, -0.102081, 0], [0, 0, 1], true],
["Land_House_Small_05_F", [12095.3, 2498.45, 9.30392], [0.499713, -0.866191, 0], [0, 0, 1], true],
["Land_HBarrier_01_tower_green_F", [12127.7, 2470.73, 9.72711], [0.521432, -0.853293, 0], [0, 0, 1], true],
["Land_HBarrier_01_tower_green_F", [12148.5, 2510.46, 9.72711], [-0.0270842, -0.999633, 0], [0, 0, 1], true],
["Land_TripodScreen_01_large_F", [12178.4, 2482.6, 4.46267], [-0.589676, -0.80764, 0], [0, 0, 1], true],
["Land_Slum_01_F", [12078.5, 2508.75, 7.49581], [-0.993373, -0.114937, 0], [0, 0, 1], true],
["Land_Cargo_Tower_V1_No1_F", [12063.7, 2457.71, 16.3205], [0.471166, -0.882045, 0], [0, 0, 1], true],
["Land_Cargo_Tower_V1_No2_F", [12043.4, 2392.34, 16.4518], [0.885418, 0.464796, 0], [0, 0, 1], true],
["Land_Cargo_Tower_V1_No3_F", [12181.3, 2570.86, 16.4498], [-0.994077, 0.108676, 0], [0, 0, 1], true]
];

{
    private _vehicle = (_x select 0) createVehicle (_x select 1);
    _vehicle allowDamage false;
    _vehicle setPosWorld (_x select 1);
    _vehicle setVectorDirAndUp [_x select 2, _x select 3];
    _vehicle enableSimulationGlobal (_x select 4);
    _vehicle setVariable ["ExileIsLocked", -1, true];
}
forEach _vehicles;