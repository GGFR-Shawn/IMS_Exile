/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

 // Buildings
 // 9 Vehicles
private _vehicles = [
["Land_Cargo_House_V1_F", [6886.03, 11519.6, 392.237], [0.00344627, 0.999994, 0], [0, 0, 1], true],
["Land_Cargo_House_V1_F", [6844.07, 11477.1, 391.493], [-0.869921, 0.493192, 0], [0, 0, 1], true],
["Land_Cargo_House_V1_F", [6926.28, 11479.7, 391.092], [0.967897, 0.251347, 0], [0, 0, 1], true],
["Land_Cargo_House_V1_F", [6892.43, 11384, 394.041], [0.715433, -0.698681, 0], [0, 0, 1], true],
["Land_Cargo_Patrol_V1_F", [6924.52, 11446.5, 397.918], [-0.999496, -0.0317472, 0], [0, 0, 1], true],
["Land_House_Small_05_F", [6879.46, 11454.2, 395.828], [-0.0699814, 0.997548, 0], [0, 0, 1], true],
["Land_Cargo_House_V1_F", [6919.6, 11381, 394.819], [-0.64577, -0.763532, 0], [0, 0, 1], true],
["Land_Cargo_House_V1_F", [6924.86, 11376.3, 394.559], [-0.636407, -0.771353, 0], [0, 0, 1], true],
["Land_Cargo_House_V1_F", [6942.3, 11393.6, 392.227], [0.999869, -0.0162063, 0], [0, 0, 1], true],
["Land_Cargo_House_V1_F", [6908.93, 11416.7, 395.479], [0.998714, -0.0506892, 0], [0, 0, 1], true],
["Land_NetFence_01_m_gate_F", [6891.65, 11375.1, 393.712], [0.770547, -0.637384, 0], [0, 0, 1], true],
["Land_NetFence_01_m_gate_F", [6903.9, 11397.9, 395.66], [0.441678, -0.897174, 0], [0, 0, 1], true],
["Land_Gate_IndVar2_5", [6928.65, 11354.9, 393.75], [-0.819112, 0.573633, 0], [0, 0, 1], true],
["Land_Gate_IndVar2_5", [6919.05, 11361.6, 394.809], [0.807136, -0.590366, 0], [0, 0, 1], true]
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

/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// Visual objects
// 40 Vehicles
private _vehicles = [
["Land_CampingTable_F", [6879.29, 11458.9, 395.147], [0.0815029, -0.996673, 0], [0, 0, 1], true],
["Land_TTowerSmall_1_F", [6888.53, 11456.4, 400.858], [-0.99547, -0.09508, 0], [0, 0, 1], true],
["Land_File1_F", [6879.03, 11458.9, 395.562], [-0.433372, 0.901215, 0], [0, 0, 1], false],
["Land_Pot_02_F", [6886.48, 11451.2, 394.127], [0.0267263, -0.999643, 0], [0, 0, 1], true],
["Land_Document_01_F", [6939.4, 11352.1, 390.402], [0, 0.995504, 0.0947163], [0.117711, -0.0940578, 0.988583], true],
["Flag_White_F", [6886.54, 11450.8, 398.097], [0.553566, -0.832805, 0], [0, 0, 1], true],
["Land_File1_F", [6888.02, 11414.3, 394.764], [-0.793293, -0.607062, -0.0464961], [-0.0452934, -0.0173137, 0.998824], true],
["Land_CampingTable_F", [6889.02, 11413.5, 394.384], [0.660877, 0.749264, 0.0429521], [-0.0452868, -0.0173137, 0.998824], true],
["Land_CampingTable_F", [6887.54, 11414.9, 394.34], [0.660877, 0.749264, 0.0429521], [-0.0452868, -0.0173137, 0.998824], true],
["CamoNet_ghex_big_F", [6889.35, 11415.5, 396.052], [-0.703589, -0.710607, 0], [0, 0, 1], true],
["Land_Canteen_F", [6890.51, 11392.2, 393.626], [-0.289058, -0.956192, -0.0462883], [-0.0585655, -0.0305988, 0.997815], true],
["Land_CanisterPlastic_F", [6885.12, 11420.1, 394.33], [-0.0522043, -0.998636, 0], [0, 0, 1], true],
["Land_CampingChair_V1_F", [6893.42, 11419.7, 394.796], [0.653041, 0.75585, 0.0472025], [-0.0506028, -0.0186387, 0.998545], true],
["Land_CampingChair_V1_F", [6894.15, 11419.2, 394.831], [0.653041, 0.75585, 0.0472025], [-0.0506028, -0.0186387, 0.998545], true],
["Land_CampingChair_V1_F", [6895.63, 11417.9, 394.881], [0.653041, 0.75585, 0.0472025], [-0.0506028, -0.0186387, 0.998545], true],
["Land_CampingChair_V1_F", [6894.88, 11418.6, 394.857], [0.653041, 0.75585, 0.0472025], [-0.0506028, -0.0186387, 0.998545], true],
["Land_CampingChair_V1_F", [6894.6, 11417.4, 394.819], [0.653041, 0.75585, 0.0472025], [-0.0506028, -0.0186387, 0.998545], true],
["Land_CampingChair_V1_F", [6893.75, 11418, 394.788], [0.653041, 0.75585, 0.0472025], [-0.0506028, -0.0186387, 0.998545], true],
["Land_CampingChair_V1_F", [6892.96, 11418.6, 394.759], [0.653041, 0.75585, 0.0472025], [-0.0506028, -0.0186387, 0.998545], true],
["Land_CampingChair_V1_F", [6890.56, 11389.2, 393.915], [-0.998281, 0.0040881, -0.0584676], [-0.0585655, -0.0305988, 0.997815], true],
["Land_CampingChair_V1_F", [6893.03, 11391, 394.116], [0.201911, 0.978462, 0.042933], [-0.0638753, -0.0305869, 0.997489], true],
["Land_CampingChair_V1_F", [6929.7, 11391.6, 394.298], [0.988551, -0.118555, -0.0933359], [0.0916132, -0.0199106, 0.995596], true],
["Land_CampingChair_V1_F", [6927.04, 11390.2, 394.499], [-0.315253, -0.948955, 0.0100313], [0.0916132, -0.0199106, 0.995596], true],
["Campfire_burning_F", [6892.65, 11389.2, 393.748], [0.987278, 0.143902, 0.067634], [-0.0638753, -0.0305869, 0.997489], true],
["Campfire_burning_F", [6927.59, 11391.9, 394.192], [-0.995403, -0.029855, 0.0909985], [0.0916132, -0.0199106, 0.995596], true],
["Land_Ammobox_rounds_F", [6887.05, 11415.4, 394.852], [0.427948, -0.903795, 0.00373958], [-0.0452934, -0.0173137, 0.998824], true],
["Land_Ammobox_rounds_F", [6887.36, 11415.1, 394.852], [0.789521, -0.613208, 0.0251728], [-0.0452934, -0.0173137, 0.998824], true],
["Land_TripodScreen_01_large_F", [6892.56, 11413.1, 395.198], [0.183672, 0.981648, 0.0513042], [-0.183485, -0.0170373, 0.982875], false],
["Land_PortableGenerator_01_F", [6893.44, 11412.7, 394.674], [-0.288269, 0.956825, -0.0372288], [-0.183485, -0.0170373, 0.982875], true],
["Land_Sleeping_bag_folded_F", [6890.4, 11392, 393.766], [0.310802, 0.950475, 0], [0, 0, 1], true],
["Land_Portable_generator_F", [6884.77, 11417.7, 394.211], [0.765693, -0.642695, 0.0256201], [-0.0479473, -0.0173116, 0.9987], true],
["Land_PortableLight_double_F", [6885.36, 11417.1, 395.066], [-0.978454, -0.206465, 0], [0, 0, 1], true],
["Land_BottlePlastic_V2_F", [6890.88, 11389, 393.548], [0.9876, 0.144063, 0.0623838], [-0.0585655, -0.0305988, 0.997815], true],
["Land_BottlePlastic_V2_F", [6929.37, 11391.9, 393.936], [-0.995403, -0.029855, 0.0909985], [0.0916132, -0.0199106, 0.995596], true],
["Land_WaterTank_04_F", [6884.81, 11419.7, 394.942], [-0.948055, -0.318108, 0], [0, 0, 1], true],
["WaterPump_01_forest_F", [6878.71, 11421.5, 394.546], [-0.990294, -0.129455, -0.0505838], [-0.0492724, -0.0133151, 0.998697], false]
];

{
    private _vehicle = (_x select 0) createVehicle (_x select 1);
    _vehicle allowDamage false;
    _vehicle setPosWorld (_x select 1);
    _vehicle setVectorDirAndUp [_x select 2, _x select 3];
    _vehicle enableSimulationGlobal (_x select 4);
    _vehicle setVariable ["ExileIsLocked", -1, true];
    
    if (_vehicle isKindOf "Exile_RussianRouletteChair") then
    {
        ExileRouletteChairs pushBack _vehicle;
        ExileRouletteChairPositions pushBack [_x select 1, getDir _vehicle];
    };
}
forEach _vehicles;

// Visual simple opbjects
// 136 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [
["a3\structures_f_epb\civ\camping\camping_light_f.p3d", [6876.63, 11452.7, 394.86], [0.861195, -0.508275, 0], [0, 0, 1]],
["a3\structures_f_epa\mil\scrapyard\pallet_milboxes_f.p3d", [6875.91, 11458.4, 395.19], [-0.0485523, 0.998821, 0], [0, 0, 1]],
["a3\weapons_f_beta\pistols\acpc2\acpc2_f.p3d", [6876.35, 11452.7, 395.588], [-0.43787, -0.899038, 0], [0, 0, 1]],
["a3\structures_f\items\stationery\penblack_f.p3d", [6879.04, 11458.8, 395.574], [-0.812489, 0.582977, 0], [0, 0, 1]],
["a3\structures_f_epb\items\military\magazine_rifle_f.p3d", [6876.13, 11452.7, 395.612], [-0.612483, 0.790484, 0], [0, 0, 1]],
["a3\structures_f_epb\items\military\magazine_rifle_f.p3d", [6876.01, 11452.7, 395.613], [-0.936503, 0.350661, 0], [0, 0, 1]],
["a3\structures_f\furniture\metal_rack_tall_f.p3d", [6876.13, 11452.7, 394.742], [0.0590138, -0.998257, 0], [0, 0, 1]],
["a3\structures_f_epb\items\military\ammobox_rounds_f.p3d", [6875.88, 11452.7, 396.086], [-0.998838, -0.0481867, 0], [0, 0, 1]],
["a3\structures_f_epb\items\military\ammobox_rounds_f.p3d", [6876.07, 11452.7, 396.087], [-0.998838, -0.0481867, 0], [0, 0, 1]],
["a3\structures_f_epb\items\military\ammobox_rounds_f.p3d", [6876.37, 11452.7, 396.088], [-0.828461, 0.560047, 0], [0, 0, 1]],
["a3\structures_f_heli\items\electronics\pcset_01_mouse_f.p3d", [6880.05, 11458.7, 395.578], [0.336488, 0.941688, 0], [0, 0, 1]],
["a3\structures_f\furniture\chairwood_f.p3d", [6878.82, 11458.3, 394.74], [-0.43787, -0.899038, 0], [0, 0, 1]],
["a3\weapons_f\rifles\mx\mx_sw_f.p3d", [6940.16, 11352.7, 390.357], [-0.0861856, 0.0752046, -0.993437], [0.995167, -0.0406055, -0.0894096]],
["a3\structures_f_exp\walls\net\netfence_01_m_pole_f.p3d", [6930.15, 11357.1, 394.167], [-0.831468, 0.555572, 0], [0, 0, 1]],
["a3\structures_f_exp\walls\net\netfence_01_m_pole_f.p3d", [6927.13, 11352.7, 393.941], [-0.831468, 0.555572, 0], [0, 0, 1]],
["a3\structures_f\civ\dead\humanskeleton_f.p3d", [6939.68, 11352.8, 390.435], [-0.247777, 0.968817, 0], [0, 0, 1]],
["a3\structures_f_exp\walls\net\netfence_01_m_pole_f.p3d", [6917.51, 11359.4, 394.287], [0.819859, -0.572566, 0], [0, 0, 1]],
["a3\structures_f_exp\walls\net\netfence_01_m_pole_f.p3d", [6920.62, 11363.7, 394.497], [0.819859, -0.572566, 0], [0, 0, 1]],
["a3\structures_f\mil\bagbunker\bagbunker_tower_f.p3d", [6861.66, 11398, 394.727], [-0.653317, 0.757085, 0], [0, 0, 1]],
["a3\structures_f\mil\bagbunker\bagbunker_tower_f.p3d", [6843.93, 11444, 393.085], [-0.251439, 0.967873, 0], [0, 0, 1]],
["a3\structures_f\mil\bagbunker\bagbunker_tower_f.p3d", [6903.36, 11502.5, 394.01], [0.607636, -0.794216, 0], [0, 0, 1]],
["ca\misc\barel3.p3d", [6900.93, 11391.2, 394.555], [0, 0.99957, 0.0293121], [0.0823801, -0.0292124, 0.996173]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [6947.04, 11419.4, 390.166], [-0.970804, 0.239875, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [6945.45, 11419.6, 390.157], [-0.970804, 0.239875, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [6947.13, 11419.4, 391.526], [-0.0738219, 0.997271, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [6945.43, 11419.5, 391.507], [0.643916, 0.765096, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [6936.43, 11421.4, 392.424], [0.818482, -0.574533, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_1_f.p3d", [6937.72, 11420.6, 392.232], [0.786614, 0.617445, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrierwall_corner_f.p3d", [6856.49, 11403.4, 393.004], [-0.842756, -0.538296, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrierwall_corner_f.p3d", [6869.83, 11388.2, 393.528], [0.493198, -0.869917, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrierwall_corner_f.p3d", [6847.17, 11432.2, 392.245], [0.210766, -0.977104, 0.0290746], [-0.0942439, 0.00929334, 0.995506]],
["a3\structures_f\mil\fortification\hbarrierwall_corner_f.p3d", [6843.3, 11451.7, 391.705], [-0.967379, -0.235296, -0.0938796], [-0.0981883, 0.00663595, 0.995146]],
["a3\structures_f\mil\fortification\hbarrierwall_corner_f.p3d", [6908.35, 11497, 392.656], [0.81687, 0.576821, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrierwall4_f.p3d", [6866.28, 11391.8, 393.675], [-0.751479, -0.659757, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrierwall4_f.p3d", [6845.5, 11436.6, 392.049], [-0.961393, -0.260531, -0.0885823], [-0.0942439, 0.00929334, 0.995506]],
["a3\structures_f\mil\fortification\hbarrierwall4_f.p3d", [6899.35, 11509.2, 392.627], [0.856206, 0.516635, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrierwall4_f.p3d", [6929.76, 11455.1, 391.715], [0.89924, -0.437455, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrierwall4_f.p3d", [6933.85, 11423.9, 392.367], [0.76569, 0.643209, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrierwall6_f.p3d", [6934.45, 11461, 391.354], [0.632592, -0.772041, 0.0614723], [-0.00927724, 0.0718125, 0.997375]],
["a3\structures_f\mil\fortification\hbarrierwall6_f.p3d", [6928.59, 11447.6, 392.605], [0.999898, -0.0142655, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrierwall6_f.p3d", [6928.89, 11439.2, 392.68], [0.999898, -0.0142655, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrierwall6_f.p3d", [6930.34, 11430.6, 392.67], [0.964939, 0.262473, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrierwall6_f.p3d", [6940.13, 11419.8, 391.237], [0.420153, 0.907453, 0], [0, 0, 1]],
["a3\rocks_f\sharp\sharprock_apart.p3d", [6942.83, 11413.8, 391.02], [0.848819, 0.528684, 0], [0, 0, 1]],
["a3\props_f_exp\commercial\market\woodencrate_01_stack_x5_f.p3d", [6882.13, 11406.8, 394.609], [-0.9071, -0.420916, 0], [0, 0, 1]],
["a3\structures_f\civ\lamps\lampshabby_f.p3d", [6913.98, 11400.9, 397.84], [-0.770882, 0.636978, 0], [0, 0, 1]],
["a3\structures_f\civ\lamps\lampshabby_f.p3d", [6931.35, 11357.6, 395.554], [0.880994, -0.473127, 0], [0, 0, 1]],
["a3\structures_f\civ\lamps\lampshabby_f.p3d", [6898.4, 11394.3, 398.086], [-0.225138, -0.974327, 0], [0, 0, 1]],
["a3\structures_f\civ\lamps\lampshabby_f.p3d", [6869.59, 11464.9, 396.999], [0.715007, -0.699118, 0], [0, 0, 1]],
["a3\structures_f\civ\lamps\lampshabby_f.p3d", [6932.15, 11426.3, 396.195], [0.827047, 0.562133, 0], [0, 0, 1]],
["a3\structures_f\civ\lamps\lampshabby_f.p3d", [6928.65, 11452.2, 395.543], [0.968048, -0.250766, 0], [0, 0, 1]],
["a3\structures_f\civ\lamps\lampshabby_f.p3d", [6929.12, 11434.8, 396.556], [-0.997899, -0.0647896, 0], [0, 0, 1]],
["a3\structures_f\civ\lamps\lampshabby_f.p3d", [6917.11, 11451.7, 397.454], [0.989823, -0.142307, 0], [0, 0, 1]],
["a3\structures_f_exp\walls\net\netfence_01_m_pole_f.p3d", [6916.17, 11451.5, 394.195], [-0.99997, -0.00777331, 0], [0, 0, 1]],
["ca\weapons\ammoboxes\usspecialweapons.p3d", [6901.56, 11390.1, 395.251], [-0.75803, -0.650761, 0.0436032], [0.0823801, -0.0292124, 0.996173]],
["a3\structures_f\items\vessels\barrelempty_f.p3d", [6916.11, 11423.2, 395.004], [0, 0.999892, -0.0146684], [0.0731352, 0.0146291, 0.997215]],
["a3\structures_f\items\vessels\barrelwater_f.p3d", [6880.89, 11421.8, 393.989], [0, 0.999911, 0.0133313], [-0.0439591, -0.0133184, 0.998945]],
["a3\signs_f\signm\signm_warningunexplodedammo_f.p3d", [6926.55, 11349.2, 392.44], [-0.840917, 0.541164, 0], [0, 0, 1]],
["a3\signs_f\signm\signm_warningmilitaryarea_f.p3d", [6927.32, 11350.3, 392.502], [-0.823034, 0.567992, 0], [0, 0, 1]],
["a3\structures_f\civ\camping\campingtable_f.p3d", [6908.49, 11428.7, 425.201], [0.999048, 0.0436345, 0], [0, 0, 1]],
["a3\props_f_exp\military\camps\portablegenerator_01_f.p3d", [6908.32, 11431, 425.173], [0.127762, 0.991805, 0], [0, 0, 1]],
["a3\props_f_exp\military\camps\satelliteantenna_01_f.p3d", [6909.31, 11433.3, 425.721], [-0.713009, 0.701154, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6911.38, 11466.4, 394.362], [-0.543438, 0.839449, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6912.22, 11464.6, 394.726], [0.852412, 0.522871, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6914.01, 11461.1, 394.735], [0.925514, 0.378713, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6915.44, 11457.4, 394.732], [0.940579, 0.339575, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6916.14, 11453.5, 394.749], [0.999943, 0.0106637, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6916.23, 11451.3, 394.411], [0.997194, -0.0748565, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6924.58, 11369.5, 394.381], [-0.827139, 0.561997, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6922.98, 11370.7, 394.394], [0.605905, 0.795537, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6919.8, 11373.1, 394.399], [0.605905, 0.795537, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6916.76, 11375.7, 394.389], [0.682049, 0.731306, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6913.83, 11378.4, 394.402], [0.682049, 0.731306, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6910.92, 11381.2, 394.399], [0.682049, 0.731306, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6908, 11383.9, 394.354], [0.682049, 0.731306, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6905.25, 11386.8, 394.337], [0.768228, 0.640177, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6902.69, 11389.8, 394.333], [0.768228, 0.640177, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6900.25, 11393, 394.349], [0.808226, 0.588872, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6921.38, 11371.9, 394.203], [-0.604984, -0.796237, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6918.21, 11374.3, 394.009], [-0.665441, -0.746451, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6915.28, 11377, 394.241], [-0.718857, -0.695158, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6912.34, 11379.7, 393.97], [-0.685126, -0.728424, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6909.46, 11382.5, 393.98], [-0.729617, -0.683856, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6906.48, 11385.2, 393.929], [-0.75727, -0.653101, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6904.03, 11388.2, 393.832], [0.722045, 0.691846, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6901.43, 11391.4, 394.074], [0.604775, -0.796396, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6898.87, 11394.9, 395.115], [0.817151, 0.576423, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6902.54, 11386.8, 393.984], [-0.722921, 0.686294, 0.0799085], [0.0823801, -0.0292124, 0.996173]],
["a3\structures_f\walls\stone_4m_f.p3d", [6899.82, 11383.9, 393.969], [-0.725387, 0.688342, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6897.07, 11381, 393.938], [-0.725387, 0.688342, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6894.43, 11378.2, 393.896], [-0.725387, 0.688342, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6889.04, 11372, 393.744], [0.773165, -0.634204, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6886.55, 11368.9, 393.706], [0.773165, -0.634204, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6901.15, 11385.3, 393.999], [0.722045, 0.691846, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6898.4, 11382.4, 393.538], [0.722045, 0.691846, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6895.69, 11379.5, 393.512], [0.722045, 0.691846, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6887.78, 11370.5, 393.388], [0.790316, -0.612699, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6881.31, 11406, 394.43], [-0.892168, -0.451703, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6882, 11404.6, 394.08], [0.400813, -0.91616, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6879.51, 11409.6, 394.428], [-0.892168, -0.451703, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6877.71, 11413.1, 394.422], [-0.892168, -0.451703, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6875.94, 11416.7, 394.368], [-0.901455, -0.432872, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6874.22, 11420.3, 394.349], [-0.901455, -0.432872, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6872.91, 11424, 394.319], [-0.974777, -0.223182, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6872.02, 11427.9, 394.296], [-0.974777, -0.223182, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6871.04, 11431.8, 394.284], [-0.964659, -0.263503, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6870, 11435.6, 394.268], [-0.964659, -0.263503, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6869.04, 11439.5, 394.245], [-0.975165, -0.22148, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6868.27, 11443.4, 394.266], [-0.986498, -0.163773, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6867.75, 11447.4, 394.253], [-0.995396, -0.0958457, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6867.56, 11449.4, 394.158], [0.0342716, -0.999413, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6867.88, 11445.4, 394.023], [0.0342716, -0.999413, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6868.51, 11441.4, 394.007], [-0.97159, -0.236669, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6869.48, 11437.5, 393.88], [-0.960346, -0.27881, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6870.53, 11433.6, 393.932], [-0.965194, -0.261536, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6871.52, 11429.8, 393.907], [-0.974205, -0.225663, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6872.42, 11426, 393.927], [-0.961873, -0.273496, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6873.4, 11422.2, 393.933], [-0.930902, -0.365268, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6875.05, 11418.5, 393.975], [-0.911519, -0.411258, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6876.77, 11414.8, 394.04], [-0.886807, -0.462139, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6878.59, 11411.4, 394.022], [-0.882908, -0.469547, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6880.38, 11407.8, 394.082], [-0.886851, -0.462056, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6913.47, 11400.9, 395.046], [0.238906, -0.971043, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6911.53, 11400.4, 395.13], [-0.241719, 0.970346, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6907.65, 11399.4, 395.144], [-0.267121, 0.963663, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6900.35, 11395.9, 395.541], [-0.558244, 0.829677, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6909.56, 11399.9, 394.874], [0.232681, -0.972553, 0], [0, 0, 1]],
["a3\structures_f_exp\infrastructure\pavements\sidewalk_01_4m_f.p3d", [6913.35, 11433.8, 404.911], [-0.998748, -0.0500155, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6885.44, 11367.6, 393.247], [-0.797723, 0.603024, 0], [0, 0, 1]],
["ca\mp_armory\misc\concrete_wall\concrete_wall.p3d", [6872.97, 11467.3, 394.921], [0.108568, -0.994089, 0], [0, 0, 1]],
["ca\mp_armory\misc\concrete_wall\concrete_wall.p3d", [6879.19, 11467.9, 396.779], [0.108568, -0.994089, 0], [0, 0, 1]],
["ca\mp_armory\misc\concrete_wall\concrete_wall.p3d", [6915.35, 11447.3, 397.069], [0.999999, -0.00156002, 0], [0, 0, 1]],
["ca\mp_armory\misc\concrete_wall\concrete_wall.p3d", [6914.98, 11421.5, 396.692], [-0.999871, 0.016084, 0], [0, 0, 1]],
["ca\mp_armory\misc\concrete_wall\concrete_wall.p3d", [6914.96, 11415.3, 397.849], [-0.99973, 0.0232347, 0], [0, 0, 1]],
["ca\mp_armory\misc\concrete_wall\concrete_wall.p3d", [6868.1, 11453.8, 396.667], [0.998502, 0.0547189, 0], [0, 0, 1]]
];

{
    private _simpleObject = createSimpleObject [_x select 0, _x select 1];
    _simpleObject setVectorDirAndUp [_x select 2, _x select 3];
    
    {
        if ((toLower _x) in _invisibleSelections) then 
        {
            _simpleObject hideSelection [_x, true];
        };
    }
    forEach (selectionNames _simpleObject);
}
forEach _simpleObjects;