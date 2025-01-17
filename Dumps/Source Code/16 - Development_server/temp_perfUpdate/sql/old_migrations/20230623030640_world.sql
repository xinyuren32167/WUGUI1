
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577523,4705,0,0,0,1,-1653.86,1923.07,63.7216,5.60662,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577523,4705,0,0,0,1,-1653.86,1923.07,63.7216,5.60662,300,300,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577524,4705,0,0,0,1,-1831.17,1895.75,60.3955,4.88483,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577525,4706,0,0,0,1,-2046.18,1806.96,63.3114,4.06802,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577525;
DELETE FROM creature_addon WHERE guid=2577525;
DELETE FROM creature_movement WHERE id=2577525;
DELETE FROM game_event_creature WHERE guid=2577525;
DELETE FROM game_event_creature_data WHERE guid=2577525;
DELETE FROM creature_battleground WHERE guid=2577525;
REPLACE INTO `creature` VALUES (2577526,4668,0,0,0,1,-2046.18,1806.96,63.3114,4.06802,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577527,4668,0,0,0,1,-2013.83,2040.74,66.6504,2.82317,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577528,4705,0,0,0,1,-2051.24,2074.85,65.3064,1.71026,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577529,4668,0,0,0,1,-1918.87,2051.92,65.0263,2.04074,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577530,4668,0,0,0,1,-1596.2,1949.5,61.2268,1.42734,120,120,5,100,100,1,0,0);

-- Changes by VOJI
DELETE FROM creature WHERE guid=2576421;
DELETE FROM creature_addon WHERE guid=2576421;
DELETE FROM creature_movement WHERE id=2576421;
DELETE FROM game_event_creature WHERE guid=2576421;
DELETE FROM game_event_creature_data WHERE guid=2576421;
DELETE FROM creature_battleground WHERE guid=2576421;
DELETE FROM creature WHERE guid=2576414;
DELETE FROM creature_addon WHERE guid=2576414;
DELETE FROM creature_movement WHERE id=2576414;
DELETE FROM game_event_creature WHERE guid=2576414;
DELETE FROM game_event_creature_data WHERE guid=2576414;
DELETE FROM creature_battleground WHERE guid=2576414;
DELETE FROM creature WHERE guid=2576419;
DELETE FROM creature_addon WHERE guid=2576419;
DELETE FROM creature_movement WHERE id=2576419;
DELETE FROM game_event_creature WHERE guid=2576419;
DELETE FROM game_event_creature_data WHERE guid=2576419;
DELETE FROM creature_battleground WHERE guid=2576419;
DELETE FROM creature WHERE guid=2576418;
DELETE FROM creature_addon WHERE guid=2576418;
DELETE FROM creature_movement WHERE id=2576418;
DELETE FROM game_event_creature WHERE guid=2576418;
DELETE FROM game_event_creature_data WHERE guid=2576418;
DELETE FROM creature_battleground WHERE guid=2576418;
DELETE FROM creature WHERE guid=2576415;
DELETE FROM creature_addon WHERE guid=2576415;
DELETE FROM creature_movement WHERE id=2576415;
DELETE FROM game_event_creature WHERE guid=2576415;
DELETE FROM game_event_creature_data WHERE guid=2576415;
DELETE FROM creature_battleground WHERE guid=2576415;

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577531,16474,0,0,0,0,-1367.76,1215.17,125.692,1.55388,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2577531;
DELETE FROM creature_addon WHERE guid=2577531;
DELETE FROM creature_movement WHERE id=2577531;
DELETE FROM game_event_creature WHERE guid=2577531;
DELETE FROM game_event_creature_data WHERE guid=2577531;
DELETE FROM creature_battleground WHERE guid=2577531;
REPLACE INTO `creature` VALUES (2577532,80142,0,0,0,0,-1333.93,1228.93,129.123,4.9036,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577532;
DELETE FROM creature_addon WHERE guid=2577532;
DELETE FROM creature_movement WHERE id=2577532;
DELETE FROM game_event_creature WHERE guid=2577532;
DELETE FROM game_event_creature_data WHERE guid=2577532;
DELETE FROM creature_battleground WHERE guid=2577532;
REPLACE INTO `creature` VALUES (2577533,40029,0,0,0,0,-1296.58,1216.5,126.212,3.00294,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577533;
DELETE FROM creature_addon WHERE guid=2577533;
DELETE FROM creature_movement WHERE id=2577533;
DELETE FROM game_event_creature WHERE guid=2577533;
DELETE FROM game_event_creature_data WHERE guid=2577533;
DELETE FROM creature_battleground WHERE guid=2577533;
REPLACE INTO `creature` VALUES (2577534,40028,0,0,0,0,-1294.98,1216.27,126.337,3.00294,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577534;
DELETE FROM creature_addon WHERE guid=2577534;
DELETE FROM creature_movement WHERE id=2577534;
DELETE FROM game_event_creature WHERE guid=2577534;
DELETE FROM game_event_creature_data WHERE guid=2577534;
DELETE FROM creature_battleground WHERE guid=2577534;
REPLACE INTO `creature` VALUES (2577535,40040,0,0,0,0,-1300.53,1217.05,125.855,3.00294,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577535;
DELETE FROM creature_addon WHERE guid=2577535;
DELETE FROM creature_movement WHERE id=2577535;
DELETE FROM game_event_creature WHERE guid=2577535;
DELETE FROM game_event_creature_data WHERE guid=2577535;
DELETE FROM creature_battleground WHERE guid=2577535;
REPLACE INTO `creature` VALUES (2577536,61210,0,0,0,532,-11065.1,-1917.71,77.267,2.5046,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2577536, 69);
REPLACE INTO `gameobject` VALUES ( 5015575, 2011044, 532, -11054.5, -1916.48, 77.2686, 4.36053, 0, 0, 0.819951, -0.572433, 300, 300, 100, 1, 0, 0);
REPLACE INTO `creature` VALUES (2577537,2050,0,0,0,0,-11183.7,-1857.39,73.862,0.368662,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577537;
DELETE FROM creature_addon WHERE guid=2577537;
DELETE FROM creature_movement WHERE id=2577537;
DELETE FROM game_event_creature WHERE guid=2577537;
DELETE FROM game_event_creature_data WHERE guid=2577537;
DELETE FROM creature_battleground WHERE guid=2577537;
REPLACE INTO `creature` VALUES (2577538,3980,0,0,0,0,-11183.7,-1857.39,73.862,0.368662,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577538;
DELETE FROM creature_addon WHERE guid=2577538;
DELETE FROM creature_movement WHERE id=2577538;
DELETE FROM game_event_creature WHERE guid=2577538;
DELETE FROM game_event_creature_data WHERE guid=2577538;
DELETE FROM creature_battleground WHERE guid=2577538;
REPLACE INTO `creature` VALUES (2577539,2000014,0,0,0,0,2848.02,-1396.74,148.907,3.63877,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577539;
DELETE FROM creature_addon WHERE guid=2577539;
DELETE FROM creature_movement WHERE id=2577539;
DELETE FROM game_event_creature WHERE guid=2577539;
DELETE FROM game_event_creature_data WHERE guid=2577539;
DELETE FROM creature_battleground WHERE guid=2577539;
REPLACE INTO `gameobject` VALUES ( 5015576, 22886, 0, -2187.94, 2408.76, 22.7135, 5.1453, 0, 0, 0.538742, -0.842471, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015576, 22886, 0, -2187.94, 2409.16, 22.7135, 5.1453, 0, 0, 0.538742, -0.842471, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015576, 22886, 0, -2187.94, 2408.76, 22.7135, 5.1453, 0, 0, 0.538742, -0.842471, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015576, 22886, 0, -2188.34, 2408.76, 22.7135, 5.1453, 0, 0, 0.538742, -0.842471, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015576, 22886, 0, -2187.94, 2408.76, 22.7135, 5.1453, 0, 0, 0.538742, -0.842471, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015576, 22886, 0, -2187.54, 2408.76, 22.7135, 5.1453, 0, 0, 0.538742, -0.842471, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370384146736384024, 1.400000);
REPLACE INTO `gameobject` VALUES ( 5015576, 22886, 0, -2187.54, 2408.76, 22.7135, 5.1453, 0, 0, 0.538742, -0.842471, 300, 300, 100, 1, 0, 0);
