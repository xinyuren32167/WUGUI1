-- Pool black lotus spawns in telabim and hyjal.
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`, `flags`, `instance`) VALUES (12903, 1, 'Tel\'abim Black Lotus', 0, 0);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`, `flags`, `instance`) VALUES (12904, 1, 'Hyjal Black Lotus', 0, 0);
DELETE FROM `pool_gameobject` WHERE `guid` IN (5016415, 5016416, 5016417, 5016418, 5016419, 5016420, 5016421, 5016422, 5016423, 5016424, 5016425, 5016426, 5016427, 5016428, 5016429, 5016430, 5016431);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(5016415, 12903, 0, 'Tel\'abim Black Lotus'),
(5016416, 12903, 0, 'Tel\'abim Black Lotus'),
(5016417, 12903, 0, 'Tel\'abim Black Lotus'),
(5016418, 12903, 0, 'Tel\'abim Black Lotus'),
(5016419, 12903, 0, 'Tel\'abim Black Lotus'),
(5016420, 12903, 0, 'Tel\'abim Black Lotus'),
(5016421, 12903, 0, 'Tel\'abim Black Lotus'),
(5016422, 12903, 0, 'Tel\'abim Black Lotus'),
(5016423, 12903, 0, 'Tel\'abim Black Lotus'),
(5016424, 12903, 0, 'Tel\'abim Black Lotus'),
(5016425, 12903, 0, 'Tel\'abim Black Lotus'),
(5016426, 12903, 0, 'Tel\'abim Black Lotus'),
(5016427, 12903, 0, 'Tel\'abim Black Lotus'),
(5016428, 12903, 0, 'Tel\'abim Black Lotus'),
(5016429, 12903, 0, 'Tel\'abim Black Lotus'),
(5016430, 12903, 0, 'Tel\'abim Black Lotus'),
(5016431, 12903, 0, 'Tel\'abim Black Lotus');
DELETE FROM `pool_gameobject` WHERE `guid` IN (5016432, 5016433, 5016434, 5016435, 5016436, 5016437, 5016438, 5016439, 5016440, 5016441, 5016442, 5016443, 5016444, 5016445, 5016446, 5016447, 5016448, 5016449, 5016450, 5016451, 5016452, 5016453, 5016454, 5016455, 5016456, 5016457, 5016458, 5016459, 5016460, 5016461, 5016462, 5016463, 5016464, 5016465, 5016466, 5016467, 5016468, 5016469, 5016470, 5016471, 5016472, 5016473, 5016474, 5016475);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(5016432, 12904, 0, 'Hyjal Black Lotus'),
(5016433, 12904, 0, 'Hyjal Black Lotus'),
(5016434, 12904, 0, 'Hyjal Black Lotus'),
(5016435, 12904, 0, 'Hyjal Black Lotus'),
(5016436, 12904, 0, 'Hyjal Black Lotus'),
(5016437, 12904, 0, 'Hyjal Black Lotus'),
(5016438, 12904, 0, 'Hyjal Black Lotus'),
(5016439, 12904, 0, 'Hyjal Black Lotus'),
(5016440, 12904, 0, 'Hyjal Black Lotus'),
(5016441, 12904, 0, 'Hyjal Black Lotus'),
(5016442, 12904, 0, 'Hyjal Black Lotus'),
(5016443, 12904, 0, 'Hyjal Black Lotus'),
(5016444, 12904, 0, 'Hyjal Black Lotus'),
(5016445, 12904, 0, 'Hyjal Black Lotus'),
(5016446, 12904, 0, 'Hyjal Black Lotus'),
(5016447, 12904, 0, 'Hyjal Black Lotus'),
(5016448, 12904, 0, 'Hyjal Black Lotus'),
(5016449, 12904, 0, 'Hyjal Black Lotus'),
(5016450, 12904, 0, 'Hyjal Black Lotus'),
(5016451, 12904, 0, 'Hyjal Black Lotus'),
(5016452, 12904, 0, 'Hyjal Black Lotus'),
(5016453, 12904, 0, 'Hyjal Black Lotus'),
(5016454, 12904, 0, 'Hyjal Black Lotus'),
(5016455, 12904, 0, 'Hyjal Black Lotus'),
(5016456, 12904, 0, 'Hyjal Black Lotus'),
(5016457, 12904, 0, 'Hyjal Black Lotus'),
(5016458, 12904, 0, 'Hyjal Black Lotus'),
(5016459, 12904, 0, 'Hyjal Black Lotus'),
(5016460, 12904, 0, 'Hyjal Black Lotus'),
(5016461, 12904, 0, 'Hyjal Black Lotus'),
(5016462, 12904, 0, 'Hyjal Black Lotus'),
(5016463, 12904, 0, 'Hyjal Black Lotus'),
(5016464, 12904, 0, 'Hyjal Black Lotus'),
(5016465, 12904, 0, 'Hyjal Black Lotus'),
(5016466, 12904, 0, 'Hyjal Black Lotus'),
(5016467, 12904, 0, 'Hyjal Black Lotus'),
(5016468, 12904, 0, 'Hyjal Black Lotus'),
(5016469, 12904, 0, 'Hyjal Black Lotus'),
(5016470, 12904, 0, 'Hyjal Black Lotus'),
(5016471, 12904, 0, 'Hyjal Black Lotus'),
(5016472, 12904, 0, 'Hyjal Black Lotus'),
(5016473, 12904, 0, 'Hyjal Black Lotus'),
(5016474, 12904, 0, 'Hyjal Black Lotus'),
(5016475, 12904, 0, 'Hyjal Black Lotus');
