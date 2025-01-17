
-- Changes by TAMMO
UPDATE creature_template SET faction = '104' WHERE entry = '10050';
UPDATE creature_template SET faction = '104' WHERE entry = '2947';
UPDATE creature_template SET faction = '104' WHERE entry = '2987';
UPDATE `creature` SET `position_x` = -1242.390991, `position_y` = 56.022457, `position_z` = 127.017990, `orientation` = 1.562783 WHERE `guid` = 2560613;
UPDATE creature_template SET faction = '104' WHERE entry = '10054';
UPDATE creature_template SET faction = '104' WHERE entry = '11500';
UPDATE creature_template SET faction = '104' WHERE entry = '6410';
UPDATE creature_template SET faction = '104' WHERE entry = '5770';
UPDATE creature_template SET faction = '104' WHERE entry = '4875';
UPDATE creature_template SET faction = '104' WHERE entry = '7777';
UPDATE creature_template SET faction = '104' WHERE entry = '11752';
UPDATE creature_template SET faction = '104' WHERE entry = '11818';
UPDATE creature_template SET faction = '104' WHERE entry = '4544';
UPDATE creature_template SET faction = '29' WHERE entry = '4544';
UPDATE creature_template SET faction = '126' WHERE entry = '11818';
UPDATE creature_template SET faction = '68' WHERE entry = '11752';
UPDATE creature_template SET faction = '125' WHERE entry = '7777';
UPDATE creature_template SET faction = '104' WHERE entry = '11407';
UPDATE creature_template SET faction = '35' WHERE entry = '11407';

-- Changes by VOJI
REPLACE INTO `creature` VALUES (2578456,2386,0,0,0,0,-1086.54,-529.539,6.80358,3.18728,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2578457,2386,0,0,0,0,-1087.06,-516.223,6.80367,3.26189,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2578458,2386,0,0,0,0,-1079.79,-523.232,6.80367,6.27781,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2578458,1, -1057.519287,-523.351196,6.803668, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2578458,2, -1013.773071,-523.032471,6.803668, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2578458,3, -968.848206,-522.921082,6.803668, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2578458,4, -934.073303,-522.834839,6.803668, 100);
REPLACE INTO `creature` VALUES (2578458,2386,0,0,0,0,-1079.79,-523.232,6.80367,6.27781,300,300,0,100,100,2,0,0);
DELETE FROM creature WHERE guid=2578458;
DELETE FROM creature_addon WHERE guid=2578458;
DELETE FROM creature_movement WHERE id=2578458;
DELETE FROM game_event_creature WHERE guid=2578458;
DELETE FROM game_event_creature_data WHERE guid=2578458;
DELETE FROM creature_battleground WHERE guid=2578458;
REPLACE INTO `creature` VALUES (2578459,2386,0,0,0,0,-992.945,-515.95,6.80355,1.96597,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -937.086426, `position_y` = -531.953003, `position_z` = 6.803596, `orientation` = 4.047273 WHERE `guid` = 15362;
UPDATE `creature` SET `position_x` = -912.362671, `position_y` = -550.206421, `position_z` = 6.803596, `orientation` = 3.254026 WHERE `guid` = 15361;
UPDATE `creature` SET `position_x` = -911.967407, `position_y` = -552.500305, `position_z` = 6.803596, `orientation` = 3.391473 WHERE `guid` = 15321;
REPLACE INTO `gameobject` VALUES ( 5016546, 2003232, 0, -926.988, -515.903, 6.8036, 0.253807, 0, 0, 0.126563, 0.991958, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016547, 2003232, 0, -930.592, -530.687, 6.80367, 4.13761, 0, 0, 0.878536, -0.477676, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016548, 2004137, 0, -924.796, -514.597, 6.80361, 4.78005, 0, 0, 0.682785, -0.730619, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016549, 2003223, 0, -932.528, -529.26, 6.8036, 4.7722, 0, 0, 0.685649, -0.727932, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016550, 2003223, 0, -932.551, -529.304, 7.599, 1.02977, 0, 0, 0.492436, 0.870349, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016551, 2003227, 0, -944.357, -530.344, 6.80365, 4.27347, 0, 0, 0.844085, -0.536209, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016552, 2003227, 0, -946.393, -530.04, 6.80359, 4.89393, 0, 0, 0.6401, -0.768292, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417371345095656, 2.000000);
REPLACE INTO `gameobject` VALUES ( 5016552, 2003227, 0, -946.393, -530.04, 6.80359, 4.89393, 0, 0, 0.6401, -0.768292, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016553, 2003227, 0, -946.933, -530.126, 8.07346, 2.69875, 0, 0, 0.975586, 0.219618, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016554, 2001955, 0, -944.488, -528.927, 6.80367, 4.58292, 0, 0, 0.751367, -0.659884, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016555, 1000038, 0, -928.747, -516.238, 6.80366, 1.99503, 0, 0, 0.840127, 0.54239, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016556, 2010446, 0, -929.264, -513.579, 6.80367, 4.85781, 0, 0, 0.653868, -0.756609, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016556, 2010446, 0, -929.264, -513.979, 6.80367, 4.85781, 0, 0, 0.653868, -0.756609, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016557, 2010446, 0, -926.757, -514.275, 6.80361, 4.46354, 0, 0, 0.789394, -0.613887, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016558, 2010446, 0, -934.163, -529.758, 6.80363, 5.33141, 0, 0, 0.458126, -0.888887, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016559, 2010446, 0, -948.904, -530.614, 6.80363, 1.58899, 0, 0, 0.713511, 0.700644, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016560, 2004137, 0, -948.002, -532.049, 6.80363, 1.53402, 0, 0, 0.693984, 0.71999, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016561, 2003228, 0, -977.815, -530.88, 6.80363, 3.08518, 0, 0, 0.999602, 0.0282033, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016562, 2003228, 0, -979.021, -530.577, 6.80361, 4.06928, 0, 0, 0.894339, -0.447389, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417371361872882, 1.400000);
REPLACE INTO `gameobject` VALUES ( 5016562, 2003228, 0, -979.021, -530.577, 6.80361, 4.06928, 0, 0, 0.894339, -0.447389, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016563, 2003229, 0, -981.514, -530.89, 6.80357, 2.70976, 0, 0, 0.97678, 0.214244, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417371378650099, 1.400000);
REPLACE INTO `gameobject` VALUES ( 5016563, 2003229, 0, -981.514, -530.89, 6.80357, 2.70976, 0, 0, 0.97678, 0.214244, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016563, 2003229, 0, -981.514, -530.89, 6.80357, 1.4971, 0, 0, 0.680577, 0.732676, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016564, 2003230, 0, -979.933, -531.173, 6.80357, 1.81912, 0, 0, 0.789232, 0.614095, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417371395427316, 0.600000);
REPLACE INTO `gameobject` VALUES ( 5016564, 2003230, 0, -979.933, -531.173, 6.80357, 1.81912, 0, 0, 0.789232, 0.614095, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016565, 2003230, 0, -980.573, -528.887, 6.80366, 1.53481, 0, 0, 0.694269, 0.719715, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016565, 2003230, 0, -980.573, -529.287, 6.80366, 1.53481, 0, 0, 0.694269, 0.719715, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016565, 2003230, 0, -980.573, -529.687, 6.80366, 1.53481, 0, 0, 0.694269, 0.719715, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016566, 2002758, 0, -1013.61, -531.893, 6.80364, 4.7966, 0, 0, 0.676717, -0.736243, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5016566';
DELETE FROM game_event_gameobject WHERE guid = '5016566';
DELETE FROM gameobject_battleground WHERE guid = '5016566';
REPLACE INTO `gameobject` VALUES ( 5016567, 2003232, 0, -1013.61, -531.55, 6.80353, 1.27409, 0, 0, 0.594821, 0.803858, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016567, 2003232, 0, -1013.61, -531.55, 6.80353, 1.60788, 0, 0, 0.720096, 0.693875, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417371428981751, 1.200000);
REPLACE INTO `gameobject` VALUES ( 5016567, 2003232, 0, -1013.61, -531.55, 6.80353, 1.60788, 0, 0, 0.720096, 0.693875, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016567, 2003232, 0, -1013.41, -531.55, 6.80353, 1.60788, 0, 0, 0.720096, 0.693875, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016567, 2003232, 0, -1013.21, -531.55, 6.80353, 1.60788, 0, 0, 0.720096, 0.693875, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016567, 2003232, 0, -1013.21, -531.35, 6.80353, 1.60788, 0, 0, 0.720096, 0.693875, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016567, 2003232, 0, -1013.21, -531.15, 6.80353, 1.60788, 0, 0, 0.720096, 0.693875, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016568, 2003232, 0, -1010.43, -529.569, 6.80461, 3.46143, 0, 0, 0.987241, -0.159236, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016568, 2003232, 0, -1010.43, -529.569, 6.80461, 3.71668, 0, 0, 0.958943, -0.283598, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016568, 2003232, 0, -1010.43, -529.569, 6.80461, 6.15534, 0, 0, 0.0638814, -0.997957, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5016568';
DELETE FROM game_event_gameobject WHERE guid = '5016568';
DELETE FROM gameobject_battleground WHERE guid = '5016568';
REPLACE INTO `gameobject` VALUES ( 5016569, 2003229, 0, -1014.23, -529.754, 6.80364, 1.34478, 0, 0, 0.622859, 0.782334, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016569, 2003229, 0, -1014.23, -529.754, 6.80364, 1.52935, 0, 0, 0.692304, 0.721606, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016569, 2003229, 0, -1014.23, -529.754, 6.80364, 6.17498, 0, 0, 0.0540738, -0.998537, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417371378650105, 1.200000);
REPLACE INTO `gameobject` VALUES ( 5016569, 2003229, 0, -1014.23, -529.754, 6.80364, 6.17498, 0, 0, 0.0540738, -0.998537, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417371378650105, 1.400000);
REPLACE INTO `gameobject` VALUES ( 5016569, 2003229, 0, -1014.23, -529.754, 6.80364, 6.17498, 0, 0, 0.0540738, -0.998537, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417371378650105, 1.600000);
REPLACE INTO `gameobject` VALUES ( 5016569, 2003229, 0, -1014.23, -529.754, 6.80364, 6.17498, 0, 0, 0.0540738, -0.998537, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016569, 2003229, 0, -1014.23, -529.954, 6.80364, 6.17498, 0, 0, 0.0540738, -0.998537, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016569, 2003229, 0, -1014.23, -530.154, 6.80364, 6.17498, 0, 0, 0.0540738, -0.998537, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016569, 2003229, 0, -1014.23, -530.354, 6.80364, 6.17498, 0, 0, 0.0540738, -0.998537, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016570, 2003230, 0, -1018.83, -531.105, 6.80356, 3.20225, 0, 0, 0.99954, -0.0303261, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417371395427322, 1.200000);
REPLACE INTO `gameobject` VALUES ( 5016570, 2003230, 0, -1018.83, -531.105, 6.80356, 3.20225, 0, 0, 0.99954, -0.0303261, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417371395427322, 1.400000);
REPLACE INTO `gameobject` VALUES ( 5016570, 2003230, 0, -1018.83, -531.105, 6.80356, 3.20225, 0, 0, 0.99954, -0.0303261, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417371395427322, 1.600000);
REPLACE INTO `gameobject` VALUES ( 5016570, 2003230, 0, -1018.83, -531.105, 6.80356, 3.20225, 0, 0, 0.99954, -0.0303261, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417371395427322, 1.800000);
REPLACE INTO `gameobject` VALUES ( 5016570, 2003230, 0, -1018.83, -531.105, 6.80356, 3.20225, 0, 0, 0.99954, -0.0303261, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417371395427322, 2.000000);
REPLACE INTO `gameobject` VALUES ( 5016570, 2003230, 0, -1018.83, -531.105, 6.80356, 3.20225, 0, 0, 0.99954, -0.0303261, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417371395427322, 2.200000);
REPLACE INTO `gameobject` VALUES ( 5016570, 2003230, 0, -1018.83, -531.105, 6.80356, 3.20225, 0, 0, 0.99954, -0.0303261, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417371395427322, 2.400000);
REPLACE INTO `gameobject` VALUES ( 5016570, 2003230, 0, -1018.83, -531.105, 6.80356, 3.20225, 0, 0, 0.99954, -0.0303261, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016570, 2003230, 0, -1019.03, -531.105, 6.80356, 3.20225, 0, 0, 0.99954, -0.0303261, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016571, 1000096, 0, -1023.69, -514.614, 6.80356, 0.347332, 0, 0, 0.172794, 0.984958, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016572, 1000096, 0, -1022.07, -514.618, 6.80356, 4.56492, 0, 0, 0.757276, -0.653095, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016573, 1000096, 0, -1023.28, -514.844, 7.31135, 4.09369, 0, 0, 0.888813, -0.45827, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016574, 1000096, 0, -1022.04, -514.394, 7.31135, 4.65132, 0, 0, 0.728365, -0.685189, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016575, 1000096, 0, -1022.25, -515.703, 6.8036, 2.41608, 0, 0, 0.934922, 0.354855, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016575, 1000096, 0, -1022.25, -515.703, 6.8036, 1.93306, 0, 0, 0.822918, 0.56816, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016575, 1000096, 0, -1022.25, -515.703, 6.8036, 1.39506, 0, 0, 0.642326, 0.766432, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016576, 1000096, 0, -1022.91, -514.619, 7.81912, 3.26431, 0, 0, 0.998118, -0.0613182, 300, 300, 100, 1, 0, 0);
