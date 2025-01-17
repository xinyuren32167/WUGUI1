-- Add new Call to Arms events.
REPLACE INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `hardcoded`, `disabled`) VALUES (18, '2020-05-01 00:00:01', '2030-12-31 22:59:59', 7200, 1440, 283, 'Call to arms: Alterac Valley', 0, 0);
REPLACE INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `hardcoded`, `disabled`) VALUES (19, '2020-05-02 00:00:01', '2030-12-31 22:59:59', 7200, 1440, 284, 'Call to Arms: Warsong Gulch', 0, 0);
REPLACE INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `hardcoded`, `disabled`) VALUES (20, '2020-05-03 00:00:01', '2030-12-31 22:59:59', 7200, 1440, 285, 'Call to Arms: Arathi Basin', 0, 0);
REPLACE INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `hardcoded`, `disabled`) VALUES (50, '2020-05-04 00:00:01', '2030-12-31 22:59:59', 7200, 1440, 286, 'Call to Arms: Blood Ring', 0, 0);
REPLACE INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `hardcoded`, `disabled`) VALUES (51, '2020-05-05 00:00:01', '2030-12-31 22:59:59', 7200, 1440, 287, 'Call to Arms: Sunnyglade', 0, 0);

-- Add blood ring emissary templates.
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (51698, 'Do you dream of rising above your contemporaries by achieving eternal glory in battle? Step into the Blood Ring to engage in mortal combat against some of the best gladiators in Azeroth, and the glory you\'ve been seeking all your life shall be yours.', 'Do you dream of rising above your contemporaries by achieving eternal glory in battle? Step into the Blood Ring to engage in mortal combat against some of the best gladiators in Azeroth, and the glory you\'ve been seeking all your life shall be yours.', 0, 0, 0, 1, 15, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (51698, 51698, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (51698, 51698, 0, 0);
INSERT INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES (20121, 98, 104, 0, 0, 0, 'Blood Ring Gladiator', NULL, 51698, 30, 30, 851, 851, 0, 0, 852, 11, 2049, 1, 1.14286, 0, 18, 5, 0, 0, 1, 62, 75, 0, 98, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 34.6544, 47.6498, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524290, 0, '');
INSERT INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES (20122, 113, 16018, 0, 0, 0, 'Blood Ring Gladiator', NULL, 51698, 30, 30, 851, 851, 0, 0, 852, 85, 2049, 1, 1.14286, 0, 18, 5, 0, 0, 1, 59, 80, 0, 122, 1, 2000, 2000, 2, 4352, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524290, 0, '');
INSERT INTO `battlemaster_entry` (`entry`, `bg_template`) VALUES (20121, 4);
INSERT INTO `battlemaster_entry` (`entry`, `bg_template`) VALUES (20122, 4);

-- Add horde blood ring emissaries.
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES 
(86757, 20122, 0, 0, 0, 1, -1245.48, 58.3111, 127.087, 4.11898, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86758, 20122, 0, 0, 0, 1, 1940.75, -4709.16, 35.4744, 1.46316, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86759, 20122, 0, 0, 0, 1, 1941.05, -4703.95, 33.7173, 4.54978, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86760, 20122, 0, 0, 0, 1, 1651.59, -4386.68, 22.1294, 0.772008, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86761, 20122, 0, 0, 0, 1, 1656.12, -4382.3, 23.6151, 3.93716, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86762, 20122, 0, 0, 0, 1, 1663.68, -4341.69, 61.2462, 5.49461, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86763, 20122, 0, 0, 0, 1, 1668.27, -4346.31, 61.2462, 2.357, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86764, 20122, 0, 0, 0, 1, -1401.31, -81.9774, 158.935, 2.46442, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86765, 20122, 0, 0, 0, 1, -1406.19, -78.1972, 158.935, 5.5471, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86766, 20122, 0, 0, 0, 1, -1040.94, -222.598, 160.13, 5.6767, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86767, 20122, 0, 0, 0, 1, -1034.13, -227.372, 160.291, 2.59008, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86768, 20122, 0, 0, 0, 1, -980.232, 239.778, 135.663, 2.65291, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86769, 20122, 0, 0, 0, 1, -986.984, 242.43, 135.746, 5.94373, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86770, 20122, 0, 0, 0, 0, 1254.51, 307.019, -63.7063, 1.85605, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86771, 20122, 0, 0, 0, 0, 1252.35, 315.397, -63.7083, 4.93873, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86772, 20122, 0, 0, 0, 0, 1333.49, 319.117, -63.7078, 4.54681, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86773, 20122, 0, 0, 0, 0, 1332.05, 310.458, -63.696, 1.3738, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86774, 20122, 0, 0, 0, 0, 1590.9, 202.755, -43.1026, 6.27201, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86775, 20122, 0, 0, 0, 0, 1598.84, 202.593, -43.1026, 3.13435, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86776, 20122, 0, 0, 0, 0, 1600.37, 277.406, -43.1026, 3.07936, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86777, 20122, 0, 0, 0, 0, 1591.74, 277.685, -43.1026, 6.26808, 43200, 43200, 0, 100, 100, 0, 0, 0),
(86778, 20122, 0, 0, 0, 1, -1247.75, 54.7024, 127.217, 1.0472, 43200, 43200, 0, 100, 100, 0, 0, 0);

-- Add alliance blood ring emissaries.
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES 
(84328, 20121, 0, 0, 0, 0, -8840.63, 652.959, 97.1951, 5.60251, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84329, 20121, 0, 0, 0, 0, -8838.8, 651.394, 96.8924, 2.42601, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84330, 20121, 0, 0, 0, 0, -8876.83, 542.382, 106.366, 0.558505, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84331, 20121, 0, 0, 0, 0, -8873.52, 544.724, 106.367, 3.82227, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84332, 20121, 0, 0, 0, 0, -8850.69, 589.49, 93.7805, 4.06662, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84333, 20121, 0, 0, 0, 0, -8853.08, 587.01, 94.0289, 0.680678, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84334, 20121, 0, 0, 0, 0, -4916.43, -848.374, 501.745, 4.72984, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84335, 20121, 0, 0, 0, 0, -4916.61, -852.305, 501.745, 1.48353, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84336, 20121, 0, 0, 0, 0, -5033.75, -931.287, 501.743, 1.32645, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84337, 20121, 0, 0, 0, 0, -5032.97, -926.68, 501.743, 4.64258, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84338, 20121, 0, 0, 0, 1, 9961.1, 2179.29, 1327.8, 5.13127, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84339, 20121, 0, 0, 0, 1, 9962.88, 2175.22, 1327.8, 1.97222, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84340, 20121, 0, 0, 0, 1, 9983.62, 2350.23, 1330.87, 4.92183, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84341, 20121, 0, 0, 0, 1, 9984.56, 2345.23, 1330.87, 1.74533, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84342, 20121, 0, 0, 0, 1, 9727.12, 2542.52, 1335.24, 2.42601, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84343, 20121, 0, 0, 0, 1, 9724.21, 2545, 1335.76, 5.58505, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84344, 20121, 0, 0, 0, 0, -4836.85, -1171.63, 502.277, 2.44346, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84345, 20121, 0, 0, 0, 0, -4839.37, -1169.09, 502.279, 5.37561, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84346, 20121, 0, 0, 0, 0, -4680.7, -985.645, 501.642, 3.08923, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84347, 20121, 0, 0, 0, 0, -4683.46, -985.091, 501.627, 6.03884, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84348, 20121, 0, 0, 0, 0, -8389.1, 288.407, 120.969, 5.53269, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84349, 20121, 0, 0, 0, 0, -8387.24, 286.125, 120.969, 2.30383, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84350, 20121, 0, 0, 0, 1, 9962.13, 2487.17, 1316.12, 3.9968, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84351, 20121, 0, 0, 0, 1, 9959.42, 2484.32, 1316.13, 0.750492, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84352, 20121, 0, 0, 0, 0, -5033.87, -1266.07, 505.383, 2.07694, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84353, 20121, 0, 0, 0, 0, -5037.07, -1261.52, 505.383, 5.42797, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84354, 20121, 0, 0, 0, 0, -8411.89, 575.031, 92.3179, 0.855211, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84355, 20121, 0, 0, 0, 0, -8409.07, 578.255, 92.0611, 3.9968, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84356, 20121, 0, 0, 0, 1, 9951.12, 2089.54, 1327.72, 4.78566, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84357, 20121, 0, 0, 0, 0, -5001.03, -1179.84, 501.66, 5.94313, 43200, 43200, 0, 100, 0, 0, 0, 0),
(84358, 20121, 0, 0, 0, 0, -8569.02, 537.091, 101.549, 5.49044, 43200, 43200, 0, 100, 0, 0, 0, 0);

-- Add all blood ring emissaries to event.
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES 
(84328, 50),
(84329, 50),
(84330, 50),
(84331, 50),
(84332, 50),
(84333, 50),
(84334, 50),
(84335, 50),
(84336, 50),
(84337, 50),
(84338, 50),
(84339, 50),
(84340, 50),
(84341, 50),
(84342, 50),
(84343, 50),
(84344, 50),
(84345, 50),
(84346, 50),
(84347, 50),
(84348, 50),
(84349, 50),
(84350, 50),
(84351, 50),
(84352, 50),
(84353, 50),
(84354, 50),
(84355, 50),
(84356, 50),
(84357, 50),
(84358, 50),
(86757, 50),
(86758, 50),
(86759, 50),
(86760, 50),
(86761, 50),
(86762, 50),
(86763, 50),
(86764, 50),
(86765, 50),
(86766, 50),
(86767, 50),
(86768, 50),
(86769, 50),
(86770, 50),
(86771, 50),
(86772, 50),
(86773, 50),
(86774, 50),
(86775, 50),
(86776, 50),
(86777, 50),
(86778, 50);

-- Add banner gameobjects to event.
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES (223363, 5, 6663, 'Blood Ring Banner', 1375, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES
(47284, 223363, 0, -8842.86, 654.543, 97.2775, -2.47837, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47285, 223363, 0, -8870.4, 544.658, 106.284, -1.22173, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47286, 223363, 0, -8846.94, 593.738, 93.4625, 2.42601, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47287, 223363, 0, -4919.31, -844.615, 501.861, -2.40855, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47288, 223363, 0, -5035.49, -921.804, 501.659, -0.122173, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47289, 223363, 1, 9965.64, 2179.93, 1328.07, -2.54818, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47290, 223363, 1, 9985.22, 2342.83, 1330.79, 3.136, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47291, 223363, 1, 9720.18, 2545.46, 1335.68, -0.977383, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47292, 223363, 0, -4832.88, -1171.66, 502.195, 1.509, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47293, 223363, 0, -4675.27, -985.681, 501.859, 1.16136, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47294, 223363, 0, -8386.73, 288.405, 120.886, -2.47837, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47295, 223363, 1, 9963.93, 2490.04, 1316.05, 0, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47296, 223363, 0, -5035.03, -1263.47, 505.4, 0.698132, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47297, 223363, 0, -8411.49, 577.444, 91.9777, -0.9599, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47298, 223363, 1, -1383.59, -85.434, 159.566, 3.17021, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47299, 223363, 1, -1379.01, -58.6698, 158.927, 3.71842, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47300, 223363, 1, -1273.51, 134.157, 132.078, -2.35619, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47301, 223363, 1, -1249.68, 52.4457, 127.18, 1.90241, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47302, 223363, 1, -1091.78, -20.9857, 140.129, 0.241459, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47303, 223363, 0, 1251.67, 311.037, -63.6828, 0.277002, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47304, 223363, 0, 1524.65, 242.972, -41.3899, -1.55334, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47305, 223363, 0, 1592.72, 168.947, -41.4244, 0, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47306, 223363, 0, 1598.8, 311.823, -41.4244, 3.17493, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47307, 223363, 1, 1657.46, -4385.4, 23.5797, -1.01229, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47308, 223363, 1, 1663.59, -4343.19, 61.2462, 0.750492, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47309, 223363, 1, 1934.82, -4711.71, 37.4563, 0.517133, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47310, 223363, 1, 1746.33, -3967.47, 49.2634, 2.0013, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47311, 223363, 1, -1051.74, 234.324, 134.494, 0.7054, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES 
(47284, 50),
(47285, 50),
(47286, 50),
(47287, 50),
(47288, 50),
(47289, 50),
(47290, 50),
(47291, 50),
(47292, 50),
(47293, 50),
(47294, 50),
(47295, 50),
(47296, 50),
(47297, 50),
(47298, 50),
(47299, 50),
(47300, 50),
(47301, 50),
(47302, 50),
(47303, 50),
(47304, 50),
(47305, 50),
(47306, 50),
(47307, 50),
(47308, 50),
(47309, 50),
(47310, 50),
(47311, 50);

-- Add sunnyglade emissary templates.
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (51699, 'Listen to us, hero! Your urgent assistance is needed in Sunnyglade Valley. Infinite Dragonflight saboteurs are tampering with time and attempting to change the outcome of an important historical battle, which could alter the world as we know it. Join the battle and slay their agents posing as members of the opposite faction.', 'Listen to us, hero! Your urgent assistance is needed in Sunnyglade Valley. Infinite Dragonflight saboteurs are tampering with time and attempting to change the outcome of an important historical battle, which could alter the world as we know it. Join the battle and slay their agents posing as members of the opposite faction.', 0, 0, 0, 5, 1, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (51699, 51699, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (51699, 51699, 0, 0);
INSERT INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES (20123, 6630, 6631, 0, 0, 0, 'Sunnyglade Emissary', NULL, 51699, 30, 30, 851, 851, 0, 0, 852, 35, 2049, 1, 1.14286, 0, 18, 5, 0, 0, 1, 62, 75, 0, 98, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 34.6544, 47.6498, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524290, 0, '');
INSERT INTO `battlemaster_entry` (`entry`, `bg_template`) VALUES (20123, 5);

-- Add horde sunnyglade emissaries.
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES 
(75065, 20123, 0, 0, 0, 1, -1245.48, 58.3111, 127.087, 4.11898, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75066, 20123, 0, 0, 0, 1, 1940.75, -4709.16, 35.4744, 1.46316, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75067, 20123, 0, 0, 0, 1, 1941.05, -4703.95, 33.7173, 4.54978, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75068, 20123, 0, 0, 0, 1, 1651.59, -4386.68, 22.1294, 0.772008, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75069, 20123, 0, 0, 0, 1, 1656.12, -4382.3, 23.6151, 3.93716, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75070, 20123, 0, 0, 0, 1, 1663.68, -4341.69, 61.2462, 5.49461, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75071, 20123, 0, 0, 0, 1, 1668.27, -4346.31, 61.2462, 2.357, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75072, 20123, 0, 0, 0, 1, -1401.31, -81.9774, 158.935, 2.46442, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75073, 20123, 0, 0, 0, 1, -1406.19, -78.1972, 158.935, 5.5471, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75074, 20123, 0, 0, 0, 1, -1040.94, -222.598, 160.13, 5.6767, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75075, 20123, 0, 0, 0, 1, -1034.13, -227.372, 160.291, 2.59008, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75076, 20123, 0, 0, 0, 1, -980.232, 239.778, 135.663, 2.65291, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75077, 20123, 0, 0, 0, 1, -986.984, 242.43, 135.746, 5.94373, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75078, 20123, 0, 0, 0, 0, 1254.51, 307.019, -63.7063, 1.85605, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75079, 20123, 0, 0, 0, 0, 1252.35, 315.397, -63.7083, 4.93873, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75080, 20123, 0, 0, 0, 0, 1333.49, 319.117, -63.7078, 4.54681, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75081, 20123, 0, 0, 0, 0, 1332.05, 310.458, -63.696, 1.3738, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75082, 20123, 0, 0, 0, 0, 1590.9, 202.755, -43.1026, 6.27201, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75083, 20123, 0, 0, 0, 0, 1598.84, 202.593, -43.1026, 3.13435, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75084, 20123, 0, 0, 0, 0, 1600.37, 277.406, -43.1026, 3.07936, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75085, 20123, 0, 0, 0, 0, 1591.74, 277.685, -43.1026, 6.26808, 43200, 43200, 0, 100, 100, 0, 0, 0),
(75086, 20123, 0, 0, 0, 1, -1247.75, 54.7024, 127.217, 1.0472, 43200, 43200, 0, 100, 100, 0, 0, 0);

-- Add alliance sunnyglade emissaries.
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES 
(75087, 20123, 0, 0, 0, 0, -8840.63, 652.959, 97.1951, 5.60251, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75088, 20123, 0, 0, 0, 0, -8838.8, 651.394, 96.8924, 2.42601, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75089, 20123, 0, 0, 0, 0, -8876.83, 542.382, 106.366, 0.558505, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75090, 20123, 0, 0, 0, 0, -8873.52, 544.724, 106.367, 3.82227, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75091, 20123, 0, 0, 0, 0, -8850.69, 589.49, 93.7805, 4.06662, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75092, 20123, 0, 0, 0, 0, -8853.08, 587.01, 94.0289, 0.680678, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75093, 20123, 0, 0, 0, 0, -4916.43, -848.374, 501.745, 4.72984, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75094, 20123, 0, 0, 0, 0, -4916.61, -852.305, 501.745, 1.48353, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75095, 20123, 0, 0, 0, 0, -5033.75, -931.287, 501.743, 1.32645, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75096, 20123, 0, 0, 0, 0, -5032.97, -926.68, 501.743, 4.64258, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75097, 20123, 0, 0, 0, 1, 9961.1, 2179.29, 1327.8, 5.13127, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75098, 20123, 0, 0, 0, 1, 9962.88, 2175.22, 1327.8, 1.97222, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75099, 20123, 0, 0, 0, 1, 9983.62, 2350.23, 1330.87, 4.92183, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75100, 20123, 0, 0, 0, 1, 9984.56, 2345.23, 1330.87, 1.74533, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75101, 20123, 0, 0, 0, 1, 9727.12, 2542.52, 1335.24, 2.42601, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75102, 20123, 0, 0, 0, 1, 9724.21, 2545, 1335.76, 5.58505, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75103, 20123, 0, 0, 0, 0, -4836.85, -1171.63, 502.277, 2.44346, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75104, 20123, 0, 0, 0, 0, -4839.37, -1169.09, 502.279, 5.37561, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75105, 20123, 0, 0, 0, 0, -4680.7, -985.645, 501.642, 3.08923, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75106, 20123, 0, 0, 0, 0, -4683.46, -985.091, 501.627, 6.03884, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75107, 20123, 0, 0, 0, 0, -8389.1, 288.407, 120.969, 5.53269, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75108, 20123, 0, 0, 0, 0, -8387.24, 286.125, 120.969, 2.30383, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75109, 20123, 0, 0, 0, 1, 9962.13, 2487.17, 1316.12, 3.9968, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75110, 20123, 0, 0, 0, 1, 9959.42, 2484.32, 1316.13, 0.750492, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75111, 20123, 0, 0, 0, 0, -5033.87, -1266.07, 505.383, 2.07694, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75112, 20123, 0, 0, 0, 0, -5037.07, -1261.52, 505.383, 5.42797, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75113, 20123, 0, 0, 0, 0, -8411.89, 575.031, 92.3179, 0.855211, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75114, 20123, 0, 0, 0, 0, -8409.07, 578.255, 92.0611, 3.9968, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75115, 20123, 0, 0, 0, 1, 9951.12, 2089.54, 1327.72, 4.78566, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75116, 20123, 0, 0, 0, 0, -5001.03, -1179.84, 501.66, 5.94313, 43200, 43200, 0, 100, 0, 0, 0, 0),
(75118, 20123, 0, 0, 0, 0, -8569.02, 537.091, 101.549, 5.49044, 43200, 43200, 0, 100, 0, 0, 0, 0);

-- Add all sunnyglade emissaries to event.
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES 
(75065, 51),
(75066, 51),
(75067, 51),
(75068, 51),
(75069, 51),
(75070, 51),
(75071, 51),
(75072, 51),
(75073, 51),
(75074, 51),
(75075, 51),
(75076, 51),
(75077, 51),
(75078, 51),
(75079, 51),
(75080, 51),
(75081, 51),
(75082, 51),
(75083, 51),
(75084, 51),
(75085, 51),
(75086, 51),
(75087, 51),
(75088, 51),
(75089, 51),
(75090, 51),
(75091, 51),
(75092, 51),
(75093, 51),
(75094, 51),
(75095, 51),
(75096, 51),
(75097, 51),
(75098, 51),
(75099, 51),
(75100, 51),
(75101, 51),
(75102, 51),
(75103, 51),
(75104, 51),
(75105, 51),
(75106, 51),
(75107, 51),
(75108, 51),
(75109, 51),
(75110, 51),
(75111, 51),
(75112, 51),
(75113, 51),
(75114, 51),
(75115, 51),
(75116, 51),
(75118, 51);

-- Add horde banner gameobjects to event.
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES 
(47487, 2004518, 1, -1383.59, -85.434, 159.566, 3.17021, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47488, 2004518, 1, -1379.01, -58.6698, 158.927, 3.71842, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47489, 2004518, 1, -1273.51, 134.157, 132.078, -2.35619, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47490, 2004518, 1, -1249.68, 52.4457, 127.18, 1.90241, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47491, 2004518, 1, -1091.78, -20.9857, 140.129, 0.241459, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47492, 2004518, 0, 1251.67, 311.037, -63.6828, 0.277002, 0, 0, 0.138058, 0.990424, 180, 180, 100, 1, 0, 0),
(47493, 2004518, 0, 1524.65, 242.972, -41.3899, -1.55334, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47494, 2004518, 0, 1592.72, 168.947, -41.4244, 0, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47495, 2004518, 0, 1598.8, 311.823, -41.4244, 3.17493, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47496, 2004518, 1, 1657.46, -4385.4, 23.5797, -1.01229, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47497, 2004518, 1, 1663.59, -4343.19, 61.2462, 0.750492, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47498, 2004518, 1, 1934.82, -4711.71, 37.4563, 0.517133, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47499, 2004518, 1, 1746.33, -3967.47, 49.2634, 2.0013, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0),
(47500, 2004518, 1, -1051.74, 234.324, 134.494, 0.7054, 0, 0, 0, 0, 180, 180, 100, 1, 0, 0);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES 
(47487, 51),
(47488, 51),
(47489, 51),
(47490, 51),
(47491, 51),
(47492, 51),
(47493, 51),
(47494, 51),
(47495, 51),
(47496, 51),
(47497, 51),
(47498, 51),
(47499, 51),
(47500, 51);

-- Add alliance banner gameobjects to event.
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES 
(190004, 51),
(190010, 51),
(190016, 51),
(190022, 51),
(190028, 51),
(190040, 51),
(190046, 51),
(190052, 51),
(190058, 51),
(190064, 51),
(190070, 51),
(190076, 51),
(190082, 51),
(190088, 51);
