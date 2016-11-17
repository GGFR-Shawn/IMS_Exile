/*
    IMS_raidHoldActionScripts.sqf
    Written by Salutesh
    www.reality-gaming.eu
	
	Created with Exile Mod 3DEN Plugin
	www.exilemod.com
	
    Description: 
	Place visiual objects and buildings in the fortress area.  
*/

/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 24 Vehicles
private _vehicles = [
["CDF_WarfareBVehicleServicePoint", [6876.59, 11411.8, 394.852], [-0.919656, -0.392724, 0], [0, 0, 1], false],
["Land_Pot_02_F", [6933.02, 11358.4, 391.539], [0.246061, -0.969254, 0], [0, 0, 1], true],
["Land_Pot_02_F", [6918.8, 11427.8, 424.664], [0.246061, -0.969254, 0], [0, 0, 1], true],
["Land_Pot_02_F", [6882.5, 11445.4, 393.807], [0.246061, -0.969254, 0], [0, 0, 1], true],
["Land_Camping_Light_F", [6927.64, 11383.5, 409.644], [0.978251, -0.207424, 0], [0, 0, 1], true],
["Land_Camping_Light_F", [6919.49, 11382.2, 410.994], [0.974229, -0.225079, -0.0147405], [0, -0.0653505, 0.997862], true],
["Land_CampingTable_F", [6921.81, 11387, 410.16], [-0.52852, -0.84853, -0.0257543], [0.024021, -0.0452737, 0.998686], true],
["Land_CampingTable_small_F", [6926.04, 11387.3, 425.165], [-0.800218, 0.59971, 0], [0, 0, 1], true],
["Land_CampingTable_small_F", [6915.79, 11385.8, 407.665], [0.533643, 0.84571, 0], [0, 0, 1], true],
["Land_CampingTable_small_F", [6927.36, 11384.5, 407.183], [-0.847912, 0.528279, 0.0443431], [0.024021, -0.0452737, 0.998686], true],
["Exile_Cosmetic_Beer", [6915.57, 11386.2, 408.052], [-0.72681, 0.686839, 0], [0, 0, 1], true],
["Land_WoodenCrate_01_stack_x3_F", [6916.09, 11377.6, 394.761], [-0.834926, 0.548587, 0.0441645], [0.0213271, -0.0479361, 0.998623], true],
["Land_CanisterFuel_F", [6916.56, 11381.3, 394.481], [0.441517, 0.896623, 0.0336106], [0.0213271, -0.0479361, 0.998623], true],
["Exile_Cosmetic_Knife", [6915.72, 11386, 408.062], [0.0429674, -0.999076, 0], [0, 0, 1], true],
["Land_FoodContainer_01_F", [6915.54, 11385.8, 408.298], [0.997687, -0.0624517, -0.0268282], [0.024021, -0.0452737, 0.998686], true],
["Exile_Cosmetic_PopTabs", [6915.98, 11385.7, 408.065], [0.999521, -0.0309436, 0], [0, 0, 1], true],
["Land_Portable_generator_F", [6917.02, 11380.9, 394.537], [-0.702495, 0.709994, 0.0490841], [0.0213271, -0.0479361, 0.998623], true],
["Land_PortableLight_double_F", [6917.13, 11381.8, 395.303], [-0.92105, -0.389444, 0], [0, 0, 1], true],
["Flag_White_F", [6933.16, 11358.1, 395.599], [0.723269, -0.690567, 0], [0, 0, 1], true],
["Flag_White_F", [6882.63, 11445.1, 397.917], [0.723269, -0.690567, 0], [0, 0, 1], true],
["Flag_White_F", [6918.93, 11427.4, 428.573], [0.723269, -0.690566, 0.00132752], [0, 0.00192236, 0.999998], true],
["Land_Cargo_Tower_V1_No1_F", [6919.55, 11382.4, 407.078], [0.84673, -0.530169, -0.0443829], [0.0239963, -0.0452803, 0.998686], true],
["Land_Cargo_Tower_V1_No2_F", [6898.75, 11500.5, 405.284], [-0.530274, 0.847826, 0], [0, 0, 1], true],
["Land_Cargo_Tower_V1_No3_F", [6875.9, 11454.7, 406.634], [0.0225827, -0.999745, 0], [0, 0, 1], true]
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

// 94 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [
["a3\structures_f\mil\bagbunker\bagbunker_tower_f.p3d", [6845.69, 11445.6, 393.443], [-0.189287, 0.981922, 0], [0, 0, 1]],
["a3\structures_f\mil\bagbunker\bagbunker_tower_f.p3d", [6863.9, 11401, 394.792], [-0.631437, 0.775427, 0], [0, 0, 1]],
["a3\structures_f\mil\bagbunker\bagbunker_tower_f.p3d", [6941.89, 11434.1, 392.445], [-0.400064, -0.916487, 0], [0, 0, 1]],
["a3\structures_f\civ\camping\campingtable_f.p3d", [6908.56, 11427.8, 425.202], [0.999481, 0.0321987, 0], [0, 0, 1]],
["a3\structures_f\civ\camping\campingtable_f.p3d", [6909.95, 11426.5, 425.201], [-0.0213362, 0.999772, 0], [0, 0, 1]],
["a3\rocks_f\sharp\sharprock_apart.p3d", [6946.89, 11425.2, 391.633], [0, 0.997872, -0.065197], [0.164458, 0.0643093, 0.984286]],
["a3\rocks_f\sharp\sharprock_apart.p3d", [6950, 11432.2, 388.224], [0.853407, -0.521245, 0], [0, 0, 1]],
["a3\rocks_f\sharp\sharprock_apart.p3d", [6957.5, 11440.6, 385.275], [-0.291716, 0.956505, 0], [0, 0, 1]],
["a3\rocks_f\sharp\sharprock_apart.p3d", [6948.55, 11447, 387.214], [-0.960591, 0.277964, 0], [0, 0, 1]],
["a3\rocks_f\sharp\sharprock_apart.p3d", [6950.24, 11457.7, 386.406], [0.0973988, 0.995245, 0], [0, 0, 1]],
["a3\structures_f_heli\items\electronics\hdmicable_01_f.p3d", [6909.15, 11426.2, 425.612], [-0.210556, -0.977582, 0], [0, 0, 1]],
["a3\structures_f\civ\camping\campfire_f.p3d", [6874.59, 11425.7, 393.671], [0, 0.999978, 0.00666787], [-0.0545853, -0.00665793, 0.998487]],
["a3\structures_f_heli\items\electronics\pcset_01_mouse_f.p3d", [6909.21, 11426.6, 425.632], [-0.249576, -0.968355, 0], [0, 0, 1]],
["a3\props_f_exp\military\camps\portablegenerator_01_f.p3d", [6911.55, 11426.6, 425.188], [-0.674835, 0.737969, 0], [0, 0, 1]],
["a3\structures_f\ind\transmitter_tower\ttowersmall_1_f.p3d", [6908.58, 11426.4, 429.778], [0.751842, 0.659344, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6885.31, 11390.7, 393.698], [0.935122, 0.354327, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6921.24, 11392.6, 394.919], [-0.524948, -0.851134, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_4m_f.p3d", [6929.53, 11387.1, 394.283], [0.52918, 0.848509, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6916.56, 11456.6, 394.052], [-0.998525, 0.0542946, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6913.79, 11463.8, 394.039], [-0.703709, -0.710488, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6911.24, 11501.8, 392.202], [-0.767266, -0.641329, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6906.33, 11508.4, 392.094], [-0.844467, -0.535608, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6908.51, 11499.4, 392.577], [-0.767266, -0.641329, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6903.6, 11506.1, 392.469], [-0.844467, -0.535608, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6913.9, 11452.8, 394.508], [-0.999753, 0.0222369, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6910.9, 11459.9, 394.495], [-0.680557, -0.732695, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6838.82, 11440.3, 390.648], [-0.975628, -0.21943, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6837.51, 11448.5, 390.54], [-0.995932, -0.0901057, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6842.21, 11441.1, 391.552], [-0.975628, -0.21943, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6840.9, 11449.3, 391.444], [-0.995932, -0.0901057, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6855.02, 11401, 392.703], [0.834247, 0.551391, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6860.17, 11394, 392.673], [0.775536, 0.631304, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6865.74, 11387.5, 392.762], [-0.741408, -0.671055, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6857.53, 11403.1, 393.092], [0.834247, 0.551391, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6862.68, 11396.1, 393.062], [0.775536, 0.631304, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6868.25, 11389.6, 393.151], [-0.741408, -0.671055, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6921.24, 11372.2, 394.182], [-0.522055, -0.852912, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6913.87, 11376.7, 394.417], [-0.522055, -0.852912, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6906.17, 11380.6, 393.862], [-0.37179, -0.928317, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6898.2, 11383.8, 393.972], [-0.37179, -0.928317, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6890.26, 11387.1, 393.874], [-0.37179, -0.928317, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6924.74, 11374.9, 394.163], [-0.850177, 0.526497, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6929.33, 11382.3, 394.12], [-0.850177, 0.526497, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6917.01, 11390.1, 394.638], [-0.850177, 0.526497, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_8m_f.p3d", [6912.42, 11382.7, 394.483], [-0.850177, 0.526497, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6916.34, 11452.3, 393.91], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6916.9, 11460.9, 393.593], [-0.442208, -0.896912, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6911.47, 11466.1, 393.667], [-0.688347, -0.725382, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6908.56, 11505, 391.746], [0.63553, -0.772076, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6914.09, 11498.4, 391.721], [0.63553, -0.772076, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6904.01, 11512.1, 391.678], [-0.815061, -0.579375, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6905.84, 11502.6, 392.121], [0.63553, -0.772076, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6911.36, 11496.1, 392.096], [0.63553, -0.772076, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6901.28, 11509.7, 392.053], [-0.815061, -0.579375, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6913.81, 11448.5, 394.366], [-0.0320764, 0.999485, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6914.1, 11457, 394.049], [-0.413211, -0.910635, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6908.51, 11462.1, 394.123], [-0.664725, -0.747089, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6837.92, 11444.4, 390.192], [0.212073, -0.977254, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6839.84, 11436, 390.703], [0.212073, -0.977254, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6837.12, 11452.8, 390.124], [-0.989798, -0.142477, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6841.31, 11445.2, 391.096], [0.212073, -0.977254, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6843.24, 11436.8, 391.607], [0.212073, -0.977254, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6840.51, 11453.6, 390.938], [-0.989798, -0.142477, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6852.6, 11404.7, 392.227], [0.830469, 0.557065, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6857.42, 11397.4, 392.305], [0.830469, 0.557065, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6862.92, 11390.6, 392.372], [-0.573011, 0.819548, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6868.67, 11384.3, 392.932], [0.75127, 0.659995, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6855.11, 11406.8, 392.616], [0.830469, 0.557065, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6859.93, 11399.5, 392.694], [0.830469, 0.557065, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6865.43, 11392.7, 392.762], [-0.573011, 0.819548, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6871.18, 11386.4, 393.322], [0.75127, 0.659995, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6924.95, 11370, 393.891], [0.534637, 0.845082, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6917.59, 11374.4, 394.013], [0.534637, 0.845082, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6910.13, 11378.9, 394.005], [0.872559, -0.488508, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6902.16, 11382.2, 393.705], [0.897601, -0.440809, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6894.22, 11385.5, 393.607], [0.897601, -0.440809, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6886.17, 11388.5, 393.492], [-0.974057, -0.226302, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6884.43, 11392.9, 393.388], [0.400227, -0.916416, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6927.06, 11378.6, 393.974], [-0.867731, 0.497034, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6914.74, 11386.4, 394.487], [-0.867731, 0.497034, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6931.54, 11385.9, 393.62], [-0.867731, 0.497034, 0], [0, 0, 1]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6919.3, 11393.8, 394.586], [-0.867731, 0.497034, 0], [0, 0, 1]],
["ca\misc3\camonet_east.p3d", [6884.58, 11414.2, 395.016], [-0.870533, -0.49211, 0], [0, 0, 1]],
["ca\misc3\camonet_east.p3d", [6841.18, 11478.6, 391.757], [-0.909408, 0.415905, 0], [0, 0, 1]],
["ca\misc3\camonet_east.p3d", [6945.74, 11392.6, 391.866], [0.999971, 0.00763011, 0], [0, 0, 1]],
["a3\structures_f\civ\camping\campingtable_f.p3d", [6881.69, 11418.7, 394.129], [0.998735, -0.0160215, 0.0476712], [-0.0479473, -0.0173116, 0.9987]],
["a3\structures_f\civ\camping\campingtable_f.p3d", [6880.88, 11418.7, 394.096], [-0.998977, 0.0112231, -0.0438109], [-0.0439591, -0.0133184, 0.998945]],
["a3\structures_f\civ\camping\ground_sheet_folded_khaki_f.p3d", [6880.79, 11418.1, 394.567], [-0.571512, -0.8198, -0.0360813], [-0.0439618, -0.0133184, 0.998944]],
["a3\structures_f\civ\camping\sleeping_bag_folded_f.p3d", [6880.74, 11418.4, 394.612], [-0.505058, -0.862426, -0.033725], [-0.0439618, -0.0133184, 0.998944]],
["a3\structures_f\walls\stone_pillar_f.p3d", [6922.46, 11371.4, 393.737], [0.534637, 0.845082, 0], [0, 0, 1]],
["a3\structures_f_heli\civ\constructions\gastank_01_blue_f.p3d", [6916.9, 11376.7, 394.311], [-0.443969, 0.893645, 0.0654906], [0.0213271, -0.0625292, 0.997815]],
["a3\structures_f_heli\civ\constructions\gastank_01_blue_f.p3d", [6917.15, 11377.1, 394.338], [-0.953413, -0.301664, 0.00147401], [0.0213271, -0.0625292, 0.997815]],
["ca\misc2\table\chair.p3d", [6882.36, 11418.1, 394.248], [0.884344, -0.465567, 0.0343869], [-0.0479473, -0.0173116, 0.9987]],
["a3\structures_f\civ\dead\humanskeleton_f.p3d", [6942.04, 11350.6, 389.909], [-0.907034, 0.409798, 0.0967246], [0.104859, -0.00263595, 0.994484]]
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