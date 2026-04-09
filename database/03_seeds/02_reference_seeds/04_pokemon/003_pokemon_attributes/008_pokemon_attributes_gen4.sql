-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 4
-- Table: reference.pokemon_attributes
-- Scope: new species (#387–493)
-- Togekiss (#480) is Normal/Flying here; becomes Fairy/Flying in gen6_changes_gen4.
-- Hidden abilities (Gen 5+) are NULL.
INSERT INTO
    reference.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #387 Turtwig
    (387, 38700, 4, 5, NULL, 65, NULL, NULL, 1, 9, 55, 68, 64, 45, 55, 31, NULL),
    -- #388 Grotle
    (388, 38800, 4, 5, NULL, 65, NULL, NULL, 1, 9, 75, 89, 85, 55, 65, 36, NULL),
    -- #389 Torterra
    (389, 38900, 4, 5, 9, 65, NULL, NULL, 1, 9, 95, 109, 105, 75, 85, 56, NULL),
    -- #390 Chimchar
    (390, 39000, 4, 2, NULL, 66, NULL, NULL, 7, 10, 44, 58, 44, 58, 44, 61, NULL),
    -- #391 Monferno
    (391, 39100, 4, 2, 7, 66, NULL, NULL, 7, 10, 64, 78, 52, 78, 52, 81, NULL),
    -- #392 Infernape
    (392, 39200, 4, 2, 7, 66, NULL, NULL, 7, 10, 76, 104, 71, 104, 71, 108, NULL),
    -- #393 Piplup
    (393, 39300, 4, 3, NULL, 67, NULL, NULL, 2, 7, 53, 51, 53, 61, 56, 40, NULL),
    -- #394 Prinplup
    (394, 39400, 4, 3, NULL, 67, NULL, NULL, 2, 7, 64, 66, 68, 81, 76, 50, NULL),
    -- #395 Empoleon
    (395, 39500, 4, 3, 17, 67, NULL, NULL, 2, 7, 84, 86, 88, 111, 101, 60, NULL),
    -- #396 Starly
    (396, 39600, 4, 1, 10, 51, NULL, NULL, 6, NULL, 40, 55, 30, 30, 30, 60, NULL),
    -- #397 Staravia
    (397, 39700, 4, 1, 10, 22, NULL, NULL, 6, NULL, 55, 75, 50, 40, 40, 80, NULL),
    -- #398 Staraptor
    (398, 39800, 4, 1, 10, 22, NULL, NULL, 6, NULL, 85, 120, 70, 50, 60, 100, NULL),
    -- #399 Bidoof
    (399, 39900, 4, 1, NULL, 86, 109, NULL, 2, 7, 59, 45, 40, 35, 40, 31, NULL),
    -- #400 Bibarel
    (400, 40000, 4, 1, 3, 86, 109, NULL, 2, 7, 79, 85, 60, 55, 60, 71, NULL),
    -- #401 Kricketot
    (401, 40100, 4, 12, NULL, 61, NULL, NULL, 5, NULL, 37, 25, 41, 25, 41, 25, NULL),
    -- #402 Kricketune
    (402, 40200, 4, 12, NULL, 68, NULL, NULL, 5, NULL, 77, 85, 51, 55, 51, 65, NULL),
    -- #403 Shinx
    (403, 40300, 4, 4, NULL, 79, 22, NULL, 7, NULL, 45, 65, 34, 40, 34, 45, NULL),
    -- #404 Luxio
    (404, 40400, 4, 4, NULL, 79, 22, NULL, 7, NULL, 60, 85, 49, 60, 49, 60, NULL),
    -- #405 Luxray
    (405, 40500, 4, 4, NULL, 79, 22, NULL, 7, NULL, 80, 120, 79, 95, 79, 70, NULL),
    -- #406 Budew
    (406, 40600, 4, 5, 8, 30, 38, NULL, 15, NULL, 40, 30, 35, 50, 70, 55, NULL),
    -- #407 Roserade
    (407, 40700, 4, 5, 8, 30, 38, NULL, 8, 9, 60, 70, 65, 125, 105, 90, NULL),
    -- #408 Cranidos
    (408, 40800, 4, 13, NULL, 104, NULL, NULL, 1, NULL, 67, 125, 40, 30, 30, 58, NULL),
    -- #409 Rampardos
    (409, 40900, 4, 13, NULL, 104, NULL, NULL, 1, NULL, 97, 165, 60, 65, 50, 58, NULL),
    -- #410 Shieldon
    (410, 41000, 4, 13, 17, 5, NULL, NULL, 1, NULL, 30, 42, 118, 42, 88, 30, NULL),
    -- #411 Bastiodon
    (411, 41100, 4, 13, 17, 5, NULL, NULL, 1, NULL, 60, 52, 168, 47, 138, 30, NULL),
    -- #412 Burmy
    (412, 41200, 4, 12, NULL, 61, NULL, NULL, 5, NULL, 40, 29, 45, 29, 45, 36, NULL),
    -- #413 Wormadam
    (413, 41300, 4, 12, 5, 107, NULL, NULL, 5, NULL, 60, 59, 85, 79, 105, 36, NULL),
    -- #414 Mothim
    (414, 41400, 4, 12, 10, 68, NULL, NULL, 5, NULL, 70, 94, 50, 94, 50, 66, NULL),
    -- #415 Combee
    (415, 41500, 4, 12, 10, 118, NULL, NULL, 5, NULL, 30, 30, 42, 30, 42, 70, NULL),
    -- #416 Vespiquen
    (416, 41600, 4, 12, 10, 46, NULL, NULL, 5, NULL, 70, 80, 102, 80, 102, 40, NULL),
    -- #417 Pachirisu
    (417, 41700, 4, 4, NULL, 50, 53, NULL, 7, 8, 60, 45, 70, 45, 90, 95, NULL),
    -- #418 Buizel
    (418, 41800, 4, 3, NULL, 33, NULL, NULL, 2, 7, 55, 65, 35, 60, 30, 85, NULL),
    -- #419 Floatzel
    (419, 41900, 4, 3, NULL, 33, NULL, NULL, 2, 7, 85, 105, 55, 85, 50, 115, NULL),
    -- #420 Cherubi
    (420, 42000, 4, 5, NULL, 34, NULL, NULL, 8, 9, 45, 35, 45, 62, 53, 35, NULL),
    -- #421 Cherrim
    (421, 42100, 4, 5, NULL, 122, NULL, NULL, 8, 9, 70, 60, 70, 87, 78, 85, NULL),
    -- #422 Shellos
    (422, 42200, 4, 3, NULL, 60, 114, NULL, 2, 12, 76, 48, 48, 57, 62, 34, NULL),
    -- #423 Gastrodon
    (423, 42300, 4, 3, 9, 60, 114, NULL, 2, 12, 111, 83, 68, 92, 82, 39, NULL),
    -- #424 Ambipom
    (424, 42400, 4, 1, NULL, 101, 53, NULL, 7, NULL, 75, 100, 66, 60, 66, 115, NULL),
    -- #425 Drifloon
    (425, 42500, 4, 14, 10, 106, 84, NULL, 12, NULL, 90, 50, 34, 60, 44, 70, NULL),
    -- #426 Drifblim
    (426, 42600, 4, 14, 10, 106, 84, NULL, 12, NULL, 150, 80, 44, 90, 54, 80, NULL),
    -- #427 Buneary
    (427, 42700, 4, 1, NULL, 50, 103, NULL, 7, 10, 55, 66, 44, 44, 56, 85, NULL),
    -- #428 Lopunny
    (428, 42800, 4, 1, NULL, 56, 103, NULL, 7, 10, 65, 76, 84, 54, 96, 105, NULL),
    -- #429 Mismagius
    (429, 42900, 4, 14, NULL, 26, NULL, NULL, 12, NULL, 60, 60, 60, 105, 105, 105, NULL),
    -- #430 Honchkrow
    (430, 43000, 4, 16, 10, 15, 105, NULL, 6, NULL, 100, 125, 52, 105, 52, 71, NULL),
    -- #431 Glameow
    (431, 43100, 4, 1, NULL, 7, 20, NULL, 7, NULL, 49, 55, 42, 42, 37, 85, NULL),
    -- #432 Purugly
    (432, 43200, 4, 1, NULL, 47, 20, NULL, 7, NULL, 71, 82, 64, 64, 59, 112, NULL),
    -- #433 Chingling
    (433, 43300, 4, 11, NULL, 26, NULL, NULL, 15, NULL, 45, 30, 50, 65, 50, 45, NULL),
    -- #434 Stunky
    (434, 43400, 4, 8, 16, 1, 106, NULL, 7, NULL, 63, 63, 47, 41, 41, 74, NULL),
    -- #435 Skuntank
    (435, 43500, 4, 8, 16, 1, 106, NULL, 7, NULL, 103, 93, 67, 71, 61, 84, NULL),
    -- #436 Bronzor
    (436, 43600, 4, 17, 11, 26, 85, NULL, 11, NULL, 57, 24, 86, 24, 86, 23, NULL),
    -- #437 Bronzong
    (437, 43700, 4, 17, 11, 26, 85, NULL, 11, NULL, 67, 89, 116, 79, 116, 33, NULL),
    -- #438 Bonsly
    (438, 43800, 4, 13, NULL, 5, 69, NULL, 15, NULL, 50, 80, 95, 10, 45, 10, NULL),
    -- #439 Mime Jr.
    (439, 43900, 4, 11, NULL, 43, 111, NULL, 15, NULL, 20, 25, 45, 70, 90, 60, NULL),
    -- #440 Happiny
    (440, 44000, 4, 1, NULL, 30, 32, NULL, 15, NULL, 100, 5, 5, 15, 65, 30, NULL),
    -- #441 Chatot
    (441, 44100, 4, 1, 10, 51, 77, NULL, 6, NULL, 76, 65, 45, 92, 42, 91, NULL),
    -- #442 Spiritomb
    (442, 44200, 4, 14, 16, 46, NULL, NULL, 12, NULL, 50, 92, 108, 92, 108, 35, NULL),
    -- #443 Gible
    (443, 44300, 4, 15, 9, 8, NULL, NULL, 1, 13, 58, 70, 45, 40, 45, 42, NULL),
    -- #444 Gabite
    (444, 44400, 4, 15, 9, 8, NULL, NULL, 1, 13, 68, 90, 65, 50, 55, 82, NULL),
    -- #445 Garchomp
    (445, 44500, 4, 15, 9, 8, NULL, NULL, 1, 13, 108, 130, 95, 80, 85, 102, NULL),
    -- #446 Munchlax
    (446, 44600, 4, 1, NULL, 53, 47, NULL, 15, NULL, 135, 85, 40, 40, 85, 5, NULL),
    -- #447 Riolu
    (447, 44700, 4, 7, NULL, 80, 39, NULL, 15, NULL, 40, 70, 40, 35, 40, 60, NULL),
    -- #448 Lucario
    (448, 44800, 4, 7, 17, 80, 39, NULL, 7, 10, 70, 110, 70, 115, 70, 90, NULL),
    -- #449 Hippopotas
    (449, 44900, 4, 9, NULL, 45, NULL, NULL, 7, NULL, 68, 72, 78, 38, 42, 32, NULL),
    -- #450 Hippowdon
    (450, 45000, 4, 9, NULL, 45, NULL, NULL, 7, NULL, 108, 112, 118, 68, 72, 47, NULL),
    -- #451 Skorupi
    (451, 45100, 4, 8, 12, 4, 97, NULL, 5, 4, 40, 50, 90, 30, 55, 65, NULL),
    -- #452 Drapion
    (452, 45200, 4, 8, 16, 4, 97, NULL, 5, 4, 70, 90, 110, 60, 75, 95, NULL),
    -- #453 Croagunk
    (453, 45300, 4, 8, 7, 107, 87, NULL, 10, NULL, 48, 61, 40, 61, 40, 50, NULL),
    -- #454 Toxicroak
    (454, 45400, 4, 8, 7, 107, 87, NULL, 10, NULL, 83, 106, 65, 86, 65, 85, NULL),
    -- #455 Carnivine
    (455, 45500, 4, 5, NULL, 26, NULL, NULL, 9, NULL, 74, 100, 72, 90, 72, 46, NULL),
    -- #456 Finneon
    (456, 45600, 4, 3, NULL, 33, 114, NULL, 3, NULL, 49, 49, 56, 49, 61, 66, NULL),
    -- #457 Lumineon
    (457, 45700, 4, 3, NULL, 33, 114, NULL, 3, NULL, 69, 69, 76, 69, 86, 91, NULL),
    -- #458 Mantyke
    (458, 45800, 4, 3, 10, 33, 11, NULL, 15, NULL, 45, 20, 50, 60, 120, 50, NULL),
    -- #459 Snover
    (459, 45900, 4, 5, 6, 117, NULL, NULL, 1, 9, 60, 62, 50, 62, 60, 40, NULL),
    -- #460 Abomasnow
    (460, 46000, 4, 5, 6, 117, NULL, NULL, 1, 9, 90, 92, 75, 92, 85, 60, NULL),
    -- #461 Weavile
    (461, 46100, 4, 16, 6, 46, NULL, NULL, 7, NULL, 70, 120, 65, 45, 85, 125, NULL),
    -- #462 Magnezone
    (462, 46200, 4, 4, 17, 42, 5, NULL, 11, NULL, 70, 70, 115, 130, 90, 60, NULL),
    -- #463 Lickilicky
    (463, 46300, 4, 1, NULL, 20, 12, NULL, 1, NULL, 110, 85, 95, 80, 95, 50, NULL),
    -- #464 Rhyperior
    (464, 46400, 4, 9, 13, 31, 116, NULL, 1, 7, 115, 140, 130, 55, 55, 40, NULL),
    -- #465 Tangrowth
    (465, 46500, 4, 5, NULL, 34, 102, NULL, 9, NULL, 100, 100, 125, 110, 50, 50, NULL),
    -- #466 Electivire
    (466, 46600, 4, 4, NULL, 78, NULL, NULL, 10, NULL, 75, 123, 67, 95, 85, 95, NULL),
    -- #467 Magmortar
    (467, 46700, 4, 2, NULL, 49, NULL, NULL, 10, NULL, 75, 95, 67, 125, 95, 83, NULL),
    -- #468 Togekiss
    (468, 46800, 4, 1, 10, 55, 32, NULL, 6, 8, 85, 50, 95, 120, 115, 80, NULL),
    -- #469 Yanmega
    (469, 46900, 4, 12, 10, 3, 110, NULL, 5, NULL, 86, 76, 86, 116, 56, 95, NULL),
    -- #470 Leafeon
    (470, 47000, 4, 5, NULL, 102, NULL, NULL, 7, NULL, 65, 110, 130, 60, 65, 95, NULL),
    -- #471 Glaceon
    (471, 47100, 4, 6, NULL, 81, NULL, NULL, 7, NULL, 65, 60, 110, 130, 95, 65, NULL),
    -- #472 Gliscor
    (472, 47200, 4, 9, 10, 52, 8, NULL, 5, NULL, 75, 95, 125, 45, 75, 95, NULL),
    -- #473 Mamoswine
    (473, 47300, 4, 6, 9, 12, 81, NULL, 7, NULL, 110, 130, 80, 70, 60, 80, NULL),
    -- #474 Porygon-Z
    (474, 47400, 4, 1, NULL, 91, 88, NULL, 11, NULL, 85, 80, 70, 135, 75, 90, NULL),
    -- #475 Gallade
    (475, 47500, 4, 11, 7, 80, NULL, NULL, 12, NULL, 68, 125, 65, 65, 115, 80, NULL),
    -- #476 Probopass
    (476, 47600, 4, 13, 17, 5, 42, NULL, 11, NULL, 60, 55, 145, 75, 150, 40, NULL),
    -- #477 Dusknoir
    (477, 47700, 4, 14, NULL, 46, NULL, NULL, 12, NULL, 45, 100, 135, 65, 135, 45, NULL),
    -- #478 Froslass
    (478, 47800, 4, 6, 14, 81, NULL, NULL, 8, 11, 70, 80, 70, 80, 70, 110, NULL),
    -- #479 Rotom
    (479, 47900, 4, 4, 14, 26, NULL, NULL, 12, NULL, 50, 50, 77, 95, 77, 91, NULL),
    -- #480 Uxie
    (480, 48000, 4, 11, NULL, 26, NULL, NULL, 15, NULL, 75, 75, 130, 75, 130, 95, NULL),
    -- #481 Mesprit
    (481, 48100, 4, 11, NULL, 26, NULL, NULL, 15, NULL, 80, 105, 105, 105, 105, 80, NULL),
    -- #482 Azelf
    (482, 48200, 4, 11, NULL, 26, NULL, NULL, 15, NULL, 75, 125, 70, 125, 70, 115, NULL),
    -- #483 Dialga
    (483, 48300, 4, 17, 15, 46, NULL, NULL, 15, NULL, 100, 120, 120, 150, 100, 90, NULL),
    -- #484 Palkia
    (484, 48400, 4, 3, 15, 46, NULL, NULL, 15, NULL, 90, 120, 100, 150, 120, 100, NULL),
    -- #485 Heatran
    (485, 48500, 4, 2, 17, 18, NULL, NULL, 15, NULL, 91, 90, 106, 130, 106, 77, NULL),
    -- #486 Regigigas
    (486, 48600, 4, 1, NULL, 112, NULL, NULL, 15, NULL, 110, 160, 110, 80, 110, 100, NULL),
    -- #487 Giratina
    (487, 48700, 4, 14, 15, 46, NULL, NULL, 15, NULL, 150, 100, 120, 100, 120, 90, NULL),
    -- #488 Cresselia
    (488, 48800, 4, 11, NULL, 26, NULL, NULL, 15, NULL, 120, 70, 110, 75, 120, 85, NULL),
    -- #489 Phione
    (489, 48900, 4, 3, NULL, 93, NULL, NULL, 2, 8, 80, 80, 80, 80, 80, 80, NULL),
    -- #490 Manaphy
    (490, 49000, 4, 3, NULL, 93, NULL, NULL, 2, 8, 100, 100, 100, 100, 100, 100, NULL),
    -- #491 Darkrai
    (491, 49100, 4, 16, NULL, 123, NULL, NULL, 15, NULL, 70, 90, 90, 135, 90, 125, NULL),
    -- #492 Shaymin
    (492, 49200, 4, 5, NULL, 30, NULL, NULL, 15, NULL, 100, 100, 100, 100, 100, 100, NULL),
    -- #493 Arceus
    (493, 49300, 4, 1, NULL, 121, NULL, NULL, 15, NULL, 120, 120, 120, 120, 120, 120, NULL);