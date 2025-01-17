
-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2582663,61893,0,0,0,0,-4008.52,-3370.86,285.42,5.01506,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582663,61893,0,0,0,0,-4008.52,-3370.86,285.42,5.01506,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2582663;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582663,1, -4008.516113,-3370.863770,285.419861, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2582663,2, -3973.368896,-3488.253174,285.418457, 100);
REPLACE INTO `creature` VALUES (2582663,61893,0,0,0,0,-4008.52,-3370.86,285.42,5.01506,300,300,0,100,100,2,0,0);
REPLACE INTO `gameobject` VALUES ( 5017903, 2000418, 0, 3776.98, -2379.63, 47.1163, 6.0772, 0, 0, 0.10281, -0.994701, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017903';
DELETE FROM game_event_gameobject WHERE guid = '5017903';
DELETE FROM gameobject_battleground WHERE guid = '5017903';
REPLACE INTO `gameobject` VALUES ( 5017904, 2000418, 0, 3775.89, -2379.75, 47.12, 6.2472, 0, 0, 0.0179938, -0.999838, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017904';
DELETE FROM game_event_gameobject WHERE guid = '5017904';
DELETE FROM gameobject_battleground WHERE guid = '5017904';
REPLACE INTO `gameobject` VALUES ( 5017905, 2003433, 0, 3775.44, -2378.74, 47.1214, 6.17494, 0, 0, 0.0540969, -0.998536, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417374801203505, 1.400000);
REPLACE INTO `gameobject` VALUES ( 5017905, 2003433, 0, 3775.44, -2378.74, 47.1214, 6.17494, 0, 0, 0.0540969, -0.998536, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017905';
DELETE FROM game_event_gameobject WHERE guid = '5017905';
DELETE FROM gameobject_battleground WHERE guid = '5017905';
REPLACE INTO `gameobject` VALUES ( 5017906, 2003433, 0, 3776.41, -2378.19, 47.12, 1.53166, 0, 0, 0.693137, 0.720806, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017906';
DELETE FROM game_event_gameobject WHERE guid = '5017906';
DELETE FROM gameobject_battleground WHERE guid = '5017906';
REPLACE INTO `gameobject` VALUES ( 5017907, 2003433, 0, 3776.73, -2377.81, 47.119, 1.52774, 0, 0, 0.691721, 0.722165, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017907';
DELETE FROM game_event_gameobject WHERE guid = '5017907';
DELETE FROM gameobject_battleground WHERE guid = '5017907';
REPLACE INTO `gameobject` VALUES ( 5017908, 2003433, 0, 3776.46, -2377.47, 47.1202, 1.51203, 0, 0, 0.686027, 0.727576, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017908';
DELETE FROM game_event_gameobject WHERE guid = '5017908';
DELETE FROM gameobject_battleground WHERE guid = '5017908';
REPLACE INTO `gameobject` VALUES ( 5017909, 2003433, 0, 3776.79, -2377.42, 47.1187, 1.51203, 0, 0, 0.686027, 0.727576, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017909';
DELETE FROM game_event_gameobject WHERE guid = '5017909';
DELETE FROM gameobject_battleground WHERE guid = '5017909';
REPLACE INTO `gameobject` VALUES ( 5017910, 2003433, 0, 3776.66, -2377.79, 47.1199, 1.55915, 0, 0, 0.702978, 0.711211, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017910';
DELETE FROM game_event_gameobject WHERE guid = '5017910';
DELETE FROM gameobject_battleground WHERE guid = '5017910';
REPLACE INTO `gameobject` VALUES ( 5017911, 2003433, 0, 3776.44, -2378.58, 47.1195, 1.51203, 0, 0, 0.686026, 0.727577, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017911';
DELETE FROM game_event_gameobject WHERE guid = '5017911';
DELETE FROM gameobject_battleground WHERE guid = '5017911';
REPLACE INTO `gameobject` VALUES ( 5017912, 2003433, 0, 3776.65, -2378.38, 47.1189, 1.48454, 0, 0, 0.675962, 0.736937, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017912';
DELETE FROM game_event_gameobject WHERE guid = '5017912';
DELETE FROM gameobject_battleground WHERE guid = '5017912';
REPLACE INTO `gameobject` VALUES ( 5017913, 2003433, 0, 3776.6, -2378.23, 47.1194, 1.57486, 0, 0, 0.708542, 0.705669, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017913, 2003433, 0, 3776.6, -2378.23, 47.1194, 1.40161, 0, 0, 0.644832, 0.764324, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017913, 2003433, 0, 3776.6, -2378.23, 47.1194, 1.50888, 0, 0, 0.68488, 0.728656, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417374801203513, 1.400000);
REPLACE INTO `gameobject` VALUES ( 5017913, 2003433, 0, 3776.6, -2378.23, 47.1194, 1.50888, 0, 0, 0.68488, 0.728656, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017914, 2004503, 0, 3772.47, -2377.07, 47.1276, 6.14115, 0, 0, 0.0709558, -0.997479, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017914, 2004503, 0, 3772.47, -2377.07, 47.1276, 1.4916, 0, 0, 0.678558, 0.734547, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017914, 2004503, 0, 3772.47, -2377.67, 47.1276, 1.4916, 0, 0, 0.678558, 0.734547, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017914, 2004503, 0, 3773.07, -2377.67, 47.1276, 1.4916, 0, 0, 0.678558, 0.734547, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017914, 2004503, 0, 3772.07, -2377.67, 47.1276, 1.4916, 0, 0, 0.678558, 0.734547, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017914, 2004503, 0, 3771.07, -2377.67, 47.1276, 1.4916, 0, 0, 0.678558, 0.734547, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017915, 2003560, 0, 3770.48, -2376.41, 47.2146, 5.83956, 0, 0, 0.219999, -0.9755, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017915, 2003560, 0, 3770.48, -2376.41, 48.2146, 5.83956, 0, 0, 0.219999, -0.9755, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017915, 2003560, 0, 3770.48, -2376.41, 48.0146, 5.83956, 0, 0, 0.219999, -0.9755, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017915, 2003560, 0, 3770.48, -2376.41, 48.0146, 3.08281, 0, 0, 0.999568, 0.0293868, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017915, 2003560, 0, 3770.48, -2376.41, 48.0146, 1.30381, 0, 0, 0.606703, 0.794928, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017915, 2003560, 0, 3770.48, -2376.61, 48.0146, 1.30381, 0, 0, 0.606703, 0.794928, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017915, 2003560, 0, 3770.48, -2376.41, 48.0146, 1.30381, 0, 0, 0.606703, 0.794928, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017915, 2003560, 0, 3770.68, -2376.41, 48.0146, 1.30381, 0, 0, 0.606703, 0.794928, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017915, 2003560, 0, 3770.28, -2376.41, 48.0146, 1.30381, 0, 0, 0.606703, 0.794928, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017915, 2003560, 0, 3770.08, -2376.41, 48.0146, 1.30381, 0, 0, 0.606703, 0.794928, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017915, 2003560, 0, 3770.28, -2376.41, 48.0146, 1.30381, 0, 0, 0.606703, 0.794928, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017916, 2008782, 0, 3771.56, -2375.82, 47.1292, 4.65984, 0, 0, 0.72544, -0.688285, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017916, 2008782, 0, 3771.36, -2375.82, 47.1292, 4.65984, 0, 0, 0.72544, -0.688285, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017916, 2008782, 0, 3771.56, -2375.82, 47.1292, 4.65984, 0, 0, 0.72544, -0.688285, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017916, 2008782, 0, 3771.56, -2375.62, 47.1292, 4.65984, 0, 0, 0.72544, -0.688285, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017917, 2004083, 0, 3773.89, -2377.88, 47.1275, 1.9372, 0, 0, 0.824093, 0.566454, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017917';
DELETE FROM game_event_gameobject WHERE guid = '5017917';
DELETE FROM gameobject_battleground WHERE guid = '5017917';

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2582235,61890,0,0,0,0,-4033.75,-3443.32,283.312,0.889304,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582249,61892,0,0,0,0,-3899.84,-3367.3,286.813,4.3907,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582249,61892,0,0,0,0,-3899.84,-3367.3,286.813,4.3907,300,300,8,100,100,1,0,0);
