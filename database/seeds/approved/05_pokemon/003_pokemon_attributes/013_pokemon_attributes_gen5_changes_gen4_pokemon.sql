-- Source: Bulbapedia — List of Pokémon by Ability
-- Generation: 5
-- Scope: changes to Gen 4 Pokémon (#387-493) — hidden ability introduction
-- Table: meta.pokemon_attributes
-- Rows: 89
--
-- Hidden abilities were introduced in Gen 5 (Black/White).
-- This file adds hidden_ability_id for Gen 4 Pokémon that gained a hidden ability.
-- All other attributes (types, regular abilities, stats, egg groups) are unchanged from Gen 4.
--
-- 18 Gen 4 Pokémon have NO hidden ability in Gen V and are excluded:
--   #396 Starly (Reckless added Gen VI), #420 Cherubi, #421 Cherrim,
--   #429 Mismagius, #433 Chingling, #455 Carnivine, #477 Dusknoir (Frisk added Gen VI),
--   #479 Rotom, #480 Uxie, #481 Mesprit, #482 Azelf,
--   #486 Regigigas, #488 Cresselia, #489 Phione, #490 Manaphy,
--   #491 Darkrai, #492 Shaymin, #493 Arceus
--
-- Piplup line (#393-395): Gen V HA = Defiant (128); changed to Competitive in Gen IX.
-- Starly (#396): HA Reckless was added Gen VI; Staravia/Staraptor already had it from Gen V.
-- Dusknoir (#477): Frisk as HA was added Gen VI (tracked with Duskull/Dusclops in gen6_changes).
--
-- Hidden Ability IDs used in this file:
--   Gen 3: 7=Limber 10=Volt Absorb 13=Cloud Nine 24=Rough Skin 34=Chlorophyll
--     41=Water Veil 43=Soundproof 47=Thick Fat 49=Flame Body 50=Run Away
--     51=Keen Eye 55=Hustle 62=Guts 72=Vital Spirit 75=Shell Armor
--   Gen 4: 82=Gluttony 89=Iron Fist 90=Poison Heal 92=Skill Link 101=Technician
--     102=Leaf Guard 105=Super Luck 110=Tinted Lens 115=Ice Body 119=Frisk 120=Reckless
--   Gen 5: 124=Pickpocket 125=Sheer Force 127=Unnerve 128=Defiant 130=Cursed Body
--     132=Friend Guard 134=Heavy Metal 138=Flare Boost 140=Telepathy 141=Moody
--     142=Overcoat 143=Poison Touch 144=Regenerator 145=Big Pecks 148=Analytic
--     151=Infiltrator 153=Moxie 154=Justified 155=Rattled 158=Prankster 159=Sand Force
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    --          sid    fid  gen  t1    t2   ab1   ab2   hab   eg1   eg2    hp  atk  def  satk sdef  spd  spc
    -- #387-389: Turtwig line (+Shell Armor)
    (387, 38700, 5, 5, NULL, 65, NULL, 75, 1, 9, 55, 68, 64, 45, 55, 31, NULL),
    (388, 38800, 5, 5, NULL, 65, NULL, 75, 1, 9, 75, 89, 85, 55, 65, 36, NULL),
    (389, 38900, 5, 5, 9, 65, NULL, 75, 1, 9, 95, 109, 105, 75, 85, 56, NULL),
    -- #390-392: Chimchar line (+Iron Fist)
    (390, 39000, 5, 2, NULL, 66, NULL, 89, 7, 10, 44, 58, 44, 58, 44, 61, NULL),
    (391, 39100, 5, 2, 7, 66, NULL, 89, 7, 10, 64, 78, 52, 78, 52, 81, NULL),
    (392, 39200, 5, 2, 7, 66, NULL, 89, 7, 10, 76, 104, 71, 104, 71, 108, NULL),
    -- #393-395: Piplup line (+Defiant — changed to Competitive in Gen IX)
    (393, 39300, 5, 3, NULL, 67, NULL, 128, 2, 7, 53, 51, 53, 61, 56, 40, NULL),
    (394, 39400, 5, 3, NULL, 67, NULL, 128, 2, 7, 64, 66, 68, 81, 76, 50, NULL),
    (395, 39500, 5, 3, 17, 67, NULL, 128, 2, 7, 84, 86, 88, 111, 101, 60, NULL),
    -- #397-398: Staravia / Staraptor (+Reckless)
    (397, 39700, 5, 1, 10, 22, NULL, 120, 6, NULL, 55, 75, 50, 40, 40, 80, NULL),
    (398, 39800, 5, 1, 10, 22, NULL, 120, 6, NULL, 85, 120, 70, 50, 60, 100, NULL),
    -- #399-400: Bidoof line (+Moody)
    (399, 39900, 5, 1, NULL, 86, 109, 141, 2, 7, 59, 45, 40, 35, 40, 31, NULL),
    (400, 40000, 5, 1, 3, 86, 109, 141, 2, 7, 79, 85, 60, 55, 60, 71, NULL),
    -- #401: Kricketot (+Run Away)
    (401, 40100, 5, 12, NULL, 61, NULL, 50, 5, NULL, 37, 25, 41, 25, 41, 25, NULL),
    -- #402: Kricketune (+Technician)
    (402, 40200, 5, 12, NULL, 68, NULL, 101, 5, NULL, 77, 85, 51, 55, 51, 65, NULL),
    -- #403-405: Shinx line (+Guts)
    (403, 40300, 5, 4, NULL, 79, 22, 62, 7, NULL, 45, 65, 34, 40, 34, 45, NULL),
    (404, 40400, 5, 4, NULL, 79, 22, 62, 7, NULL, 60, 85, 49, 60, 49, 60, NULL),
    (405, 40500, 5, 4, NULL, 79, 22, 62, 7, NULL, 80, 120, 79, 95, 79, 70, NULL),
    -- #406: Budew (+Leaf Guard)
    (406, 40600, 5, 5, 8, 30, 38, 102, 15, NULL, 40, 30, 35, 50, 70, 55, NULL),
    -- #407: Roserade (+Technician)
    (407, 40700, 5, 5, 8, 30, 38, 101, 8, 9, 60, 70, 65, 125, 105, 90, NULL),
    -- #408-409: Cranidos line (+Sheer Force)
    (408, 40800, 5, 13, NULL, 104, NULL, 125, 1, NULL, 67, 125, 40, 30, 30, 58, NULL),
    (409, 40900, 5, 13, NULL, 104, NULL, 125, 1, NULL, 97, 165, 60, 65, 50, 58, NULL),
    -- #410-411: Shieldon line (+Soundproof)
    (410, 41000, 5, 13, 17, 5, NULL, 43, 1, NULL, 30, 42, 118, 42, 88, 30, NULL),
    (411, 41100, 5, 13, 17, 5, NULL, 43, 1, NULL, 60, 52, 168, 47, 138, 30, NULL),
    -- #412: Burmy (+Overcoat)
    (412, 41200, 5, 12, NULL, 61, NULL, 142, 5, NULL, 40, 29, 45, 29, 45, 36, NULL),
    -- #413: Wormadam (+Overcoat)
    (413, 41300, 5, 12, 5, 107, NULL, 142, 5, NULL, 60, 59, 85, 79, 105, 36, NULL),
    -- #414: Mothim (+Tinted Lens)
    (414, 41400, 5, 12, 10, 68, NULL, 110, 5, NULL, 70, 94, 50, 94, 50, 66, NULL),
    -- #415: Combee (+Hustle)
    (415, 41500, 5, 12, 10, 118, NULL, 55, 5, NULL, 30, 30, 42, 30, 42, 70, NULL),
    -- #416: Vespiquen (+Unnerve)
    (416, 41600, 5, 12, 10, 46, NULL, 127, 5, NULL, 70, 80, 102, 80, 102, 40, NULL),
    -- #417: Pachirisu (+Volt Absorb)
    (417, 41700, 5, 4, NULL, 50, 53, 10, 7, 8, 60, 45, 70, 45, 90, 95, NULL),
    -- #418-419: Buizel line (+Water Veil)
    (418, 41800, 5, 3, NULL, 33, NULL, 41, 2, 7, 55, 65, 35, 60, 30, 85, NULL),
    (419, 41900, 5, 3, NULL, 33, NULL, 41, 2, 7, 85, 105, 55, 85, 50, 115, NULL),
    -- #422-423: Shellos / Gastrodon (+Sand Force)
    (422, 42200, 5, 3, NULL, 60, 114, 159, 2, 12, 76, 48, 48, 57, 62, 34, NULL),
    (423, 42300, 5, 3, 9, 60, 114, 159, 2, 12, 111, 83, 68, 92, 82, 39, NULL),
    -- #424: Ambipom (+Skill Link)
    (424, 42400, 5, 1, NULL, 101, 53, 92, 7, NULL, 75, 100, 66, 60, 66, 115, NULL),
    -- #425-426: Drifloon line (+Flare Boost)
    (425, 42500, 5, 14, 10, 106, 84, 138, 12, NULL, 90, 50, 34, 60, 44, 70, NULL),
    (426, 42600, 5, 14, 10, 106, 84, 138, 12, NULL, 150, 80, 44, 90, 54, 80, NULL),
    -- #427-428: Buneary line (+Limber)
    (427, 42700, 5, 1, NULL, 50, 103, 7, 7, 10, 55, 66, 44, 44, 56, 85, NULL),
    (428, 42800, 5, 1, NULL, 56, 103, 7, 7, 10, 65, 76, 84, 54, 96, 105, NULL),
    -- #430: Honchkrow (+Moxie)
    (430, 43000, 5, 16, 10, 15, 105, 153, 6, NULL, 100, 125, 52, 105, 52, 71, NULL),
    -- #431-432: Glameow / Purugly (+Keen Eye / +Defiant)
    (431, 43100, 5, 1, NULL, 7, 20, 51, 7, NULL, 49, 55, 42, 42, 37, 85, NULL),
    (432, 43200, 5, 1, NULL, 47, 20, 128, 7, NULL, 71, 82, 64, 64, 59, 112, NULL),
    -- #434-435: Stunky line (+Keen Eye)
    (434, 43400, 5, 8, 16, 1, 106, 51, 7, NULL, 63, 63, 47, 41, 41, 74, NULL),
    (435, 43500, 5, 8, 16, 1, 106, 51, 7, NULL, 103, 93, 67, 71, 61, 84, NULL),
    -- #436-437: Bronzor line (+Heavy Metal)
    (436, 43600, 5, 17, 11, 26, 85, 134, 11, NULL, 57, 24, 86, 24, 86, 23, NULL),
    (437, 43700, 5, 17, 11, 26, 85, 134, 11, NULL, 67, 89, 116, 79, 116, 33, NULL),
    -- #438: Bonsly (+Rattled)
    (438, 43800, 5, 13, NULL, 5, 69, 155, 15, NULL, 50, 80, 95, 10, 45, 10, NULL),
    -- #439: Mime Jr. (+Technician)
    (439, 43900, 5, 11, NULL, 43, 111, 101, 15, NULL, 20, 25, 45, 70, 90, 60, NULL),
    -- #440: Happiny (+Friend Guard)
    (440, 44000, 5, 1, NULL, 30, 32, 132, 15, NULL, 100, 5, 5, 15, 65, 30, NULL),
    -- #441: Chatot (+Big Pecks)
    (441, 44100, 5, 1, 10, 51, 77, 145, 6, NULL, 76, 65, 45, 92, 42, 91, NULL),
    -- #442: Spiritomb (+Infiltrator)
    (442, 44200, 5, 14, 16, 46, NULL, 151, 12, NULL, 50, 92, 108, 92, 108, 35, NULL),
    -- #443-445: Gible line (+Rough Skin)
    (443, 44300, 5, 15, 9, 8, NULL, 24, 1, 13, 58, 70, 45, 40, 45, 42, NULL),
    (444, 44400, 5, 15, 9, 8, NULL, 24, 1, 13, 68, 90, 65, 50, 55, 82, NULL),
    (445, 44500, 5, 15, 9, 8, NULL, 24, 1, 13, 108, 130, 95, 80, 85, 102, NULL),
    -- #446: Munchlax (+Gluttony)
    (446, 44600, 5, 1, NULL, 53, 47, 82, 15, NULL, 135, 85, 40, 40, 85, 5, NULL),
    -- #447: Riolu (+Prankster)
    (447, 44700, 5, 7, NULL, 80, 39, 158, 15, NULL, 40, 70, 40, 35, 40, 60, NULL),
    -- #448: Lucario (+Justified)
    (448, 44800, 5, 7, 17, 80, 39, 154, 7, 10, 70, 110, 70, 115, 70, 90, NULL),
    -- #449-450: Hippopotas line (+Sand Force)
    (449, 44900, 5, 9, NULL, 45, NULL, 159, 7, NULL, 68, 72, 78, 38, 42, 32, NULL),
    (450, 45000, 5, 9, NULL, 45, NULL, 159, 7, NULL, 108, 112, 118, 68, 72, 47, NULL),
    -- #451-452: Skorupi line (+Keen Eye)
    (451, 45100, 5, 8, 12, 4, 97, 51, 5, 4, 40, 50, 90, 30, 55, 65, NULL),
    (452, 45200, 5, 8, 16, 4, 97, 51, 5, 4, 70, 90, 110, 60, 75, 95, NULL),
    -- #453-454: Croagunk line (+Poison Touch)
    (453, 45300, 5, 8, 7, 107, 87, 143, 10, NULL, 48, 61, 40, 61, 40, 50, NULL),
    (454, 45400, 5, 8, 7, 107, 87, 143, 10, NULL, 83, 106, 65, 86, 65, 85, NULL),
    -- #456-457: Finneon line (+Water Veil)
    (456, 45600, 5, 3, NULL, 33, 114, 41, 3, NULL, 49, 49, 56, 49, 61, 66, NULL),
    (457, 45700, 5, 3, NULL, 33, 114, 41, 3, NULL, 69, 69, 76, 69, 86, 91, NULL),
    -- #458: Mantyke (+Water Veil)
    (458, 45800, 5, 3, 10, 33, 11, 41, 15, NULL, 45, 20, 50, 60, 120, 50, NULL),
    -- #459-460: Snover line (+Soundproof)
    (459, 45900, 5, 5, 6, 117, NULL, 43, 1, 9, 60, 62, 50, 62, 60, 40, NULL),
    (460, 46000, 5, 5, 6, 117, NULL, 43, 1, 9, 90, 92, 75, 92, 85, 60, NULL),
    -- #461: Weavile (+Pickpocket)
    (461, 46100, 5, 16, 6, 46, NULL, 124, 7, NULL, 70, 120, 65, 45, 85, 125, NULL),
    -- #462: Magnezone (+Analytic)
    (462, 46200, 5, 4, 17, 42, 5, 148, 11, NULL, 70, 70, 115, 130, 90, 60, NULL),
    -- #463: Lickilicky (+Cloud Nine)
    (463, 46300, 5, 1, NULL, 20, 12, 13, 1, NULL, 110, 85, 95, 80, 95, 50, NULL),
    -- #464: Rhyperior (+Reckless)
    (464, 46400, 5, 9, 13, 31, 116, 120, 1, 7, 115, 140, 130, 55, 55, 40, NULL),
    -- #465: Tangrowth (+Regenerator)
    (465, 46500, 5, 5, NULL, 34, 102, 144, 9, NULL, 100, 100, 125, 110, 50, 50, NULL),
    -- #466: Electivire (+Vital Spirit)
    (466, 46600, 5, 4, NULL, 78, NULL, 72, 10, NULL, 75, 123, 67, 95, 85, 95, NULL),
    -- #467: Magmortar (+Vital Spirit)
    (467, 46700, 5, 2, NULL, 49, NULL, 72, 10, NULL, 75, 95, 67, 125, 95, 83, NULL),
    -- #468: Togekiss (+Super Luck)
    (468, 46800, 5, 1, 10, 55, 32, 105, 6, 8, 85, 50, 95, 120, 115, 80, NULL),
    -- #469: Yanmega (+Frisk)
    (469, 46900, 5, 12, 10, 3, 110, 119, 5, NULL, 86, 76, 86, 116, 56, 95, NULL),
    -- #470: Leafeon (+Chlorophyll)
    (470, 47000, 5, 5, NULL, 102, NULL, 34, 7, NULL, 65, 110, 130, 60, 65, 95, NULL),
    -- #471: Glaceon (+Ice Body)
    (471, 47100, 5, 6, NULL, 81, NULL, 115, 7, NULL, 65, 60, 110, 130, 95, 65, NULL),
    -- #472: Gliscor (+Poison Heal)
    (472, 47200, 5, 9, 10, 52, 8, 90, 5, NULL, 75, 95, 125, 45, 75, 95, NULL),
    -- #473: Mamoswine (+Thick Fat)
    (473, 47300, 5, 6, 9, 12, 81, 47, 7, NULL, 110, 130, 80, 70, 60, 80, NULL),
    -- #474: Porygon-Z (+Analytic)
    (474, 47400, 5, 1, NULL, 91, 88, 148, 11, NULL, 85, 80, 70, 135, 75, 90, NULL),
    -- #475: Gallade (+Justified)
    (475, 47500, 5, 11, 7, 80, NULL, 154, 12, NULL, 68, 125, 65, 65, 115, 80, NULL),
    -- #476: Probopass (+Sand Force)
    (476, 47600, 5, 13, 17, 5, 42, 159, 11, NULL, 60, 55, 145, 75, 150, 40, NULL),
    -- #478: Froslass (+Cursed Body)
    (478, 47800, 5, 6, 14, 81, NULL, 130, 8, 11, 70, 80, 70, 80, 70, 110, NULL),
    -- #483-484: Dialga / Palkia (+Telepathy)
    (483, 48300, 5, 17, 15, 46, NULL, 140, 15, NULL, 100, 120, 120, 150, 100, 90, NULL),
    (484, 48400, 5, 3, 15, 46, NULL, 140, 15, NULL, 90, 120, 100, 150, 120, 100, NULL),
    -- #485: Heatran (+Flame Body)
    (485, 48500, 5, 2, 17, 18, NULL, 49, 15, NULL, 91, 90, 106, 130, 106, 77, NULL),
    -- #487: Giratina (+Telepathy)
    (487, 48700, 5, 14, 15, 46, NULL, 140, 15, NULL, 150, 100, 120, 100, 120, 90, NULL);