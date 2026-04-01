-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia

-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 2
-- Table: meta.pokemon_attributes
-- Scope: new species (#152–251)

-- ============================================================================
-- Important Notes
-- ============================================================================
-- Abilities did not exist until Gen 3 (all ability slots are NULL).
-- Pokémon that will gain Fairy typing in Gen 6 are seeded with their Gen 2 types here.
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #152 Chikorita
    (152, 15200, 2, 5, NULL, NULL, NULL, NULL, 1, 9, 45, 49, 65, 49, 65, 45, NULL),
    -- #153 Bayleef
    (153, 15300, 2, 5, NULL, NULL, NULL, NULL, 1, 9, 60, 62, 80, 63, 80, 60, NULL),
    -- #154 Meganium
    (154, 15400, 2, 5, NULL, NULL, NULL, NULL, 1, 9, 80, 82, 100, 83, 100, 80, NULL),
    -- #155 Cyndaquil
    (155, 15500, 2, 2, NULL, NULL, NULL, NULL, 7, NULL, 39, 52, 43, 60, 50, 65, NULL),
    -- #156 Quilava
    (156, 15600, 2, 2, NULL, NULL, NULL, NULL, 7, NULL, 58, 64, 58, 80, 65, 80, NULL),
    -- #157 Typhlosion
    (157, 15700, 2, 2, NULL, NULL, NULL, NULL, 7, NULL, 78, 84, 78, 109, 85, 100, NULL),
    -- #158 Totodile
    (158, 15800, 2, 3, NULL, NULL, NULL, NULL, 1, 2, 50, 65, 64, 44, 48, 43, NULL),
    -- #159 Croconaw
    (159, 15900, 2, 3, NULL, NULL, NULL, NULL, 1, 2, 65, 80, 80, 59, 63, 58, NULL),
    -- #160 Feraligatr
    (160, 16000, 2, 3, NULL, NULL, NULL, NULL, 1, 2, 85, 105, 100, 79, 83, 78, NULL),
    -- #161 Sentret
    (161, 16100, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 35, 46, 34, 35, 45, 20, NULL),
    -- #162 Furret
    (162, 16200, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 85, 76, 64, 45, 55, 90, NULL),
    -- #163 Hoothoot
    (163, 16300, 2, 1, 10, NULL, NULL, NULL, 6, NULL, 60, 30, 30, 36, 56, 50, NULL),
    -- #164 Noctowl
    (164, 16400, 2, 1, 10, NULL, NULL, NULL, 6, NULL, 100, 50, 50, 76, 96, 70, NULL),
    -- #165 Ledyba
    (165, 16500, 2, 12, 10, NULL, NULL, NULL, 5, NULL, 40, 20, 30, 40, 80, 55, NULL),
    -- #166 Ledian
    (166, 16600, 2, 12, 10, NULL, NULL, NULL, 5, NULL, 55, 35, 50, 55, 110, 85, NULL),
    -- #167 Spinarak
    (167, 16700, 2, 12, 8, NULL, NULL, NULL, 5, NULL, 40, 60, 40, 40, 40, 30, NULL),
    -- #168 Ariados
    (168, 16800, 2, 12, 8, NULL, NULL, NULL, 5, NULL, 70, 90, 70, 60, 60, 40, NULL),
    -- #169 Crobat
    (169, 16900, 2, 8, 10, NULL, NULL, NULL, 6, NULL, 85, 90, 80, 70, 80, 130, NULL),
    -- #170 Chinchou
    (170, 17000, 2, 3, 4, NULL, NULL, NULL, 3, NULL, 75, 38, 38, 56, 56, 67, NULL),
    -- #171 Lanturn
    (171, 17100, 2, 3, 4, NULL, NULL, NULL, 3, NULL, 125, 58, 58, 76, 76, 67, NULL),
    -- #172 Pichu
    (172, 17200, 2, 4, NULL, NULL, NULL, NULL, 15, NULL, 20, 40, 15, 35, 35, 60, NULL),
    -- #173 Cleffa
    (173, 17300, 2, 1, NULL, NULL, NULL, NULL, 15, NULL, 50, 25, 28, 45, 55, 15, NULL),
    -- #174 Igglybuff
    (174, 17400, 2, 1, NULL, NULL, NULL, NULL, 15, NULL, 90, 30, 15, 40, 20, 15, NULL),
    -- #175 Togepi
    (175, 17500, 2, 1, NULL, NULL, NULL, NULL, 15, NULL, 35, 20, 65, 40, 65, 20, NULL),
    -- #176 Togetic
    (176, 17600, 2, 1, 10, NULL, NULL, NULL, 6, 8, 55, 40, 85, 80, 105, 40, NULL),
    -- #177 Natu
    (177, 17700, 2, 11, 10, NULL, NULL, NULL, 6, NULL, 40, 50, 45, 70, 45, 70, NULL),
    -- #178 Xatu
    (178, 17800, 2, 11, 10, NULL, NULL, NULL, 6, NULL, 65, 75, 70, 95, 70, 95, NULL),
    -- #179 Mareep
    (179, 17900, 2, 4, NULL, NULL, NULL, NULL, 1, 7, 55, 40, 40, 65, 45, 35, NULL),
    -- #180 Flaaffy
    (180, 18000, 2, 4, NULL, NULL, NULL, NULL, 1, 7, 70, 55, 55, 80, 60, 45, NULL),
    -- #181 Ampharos
    (181, 18100, 2, 4, NULL, NULL, NULL, NULL, 1, 7, 90, 75, 75, 115, 90, 55, NULL),
    -- #182 Bellossom
    (182, 18200, 2, 5, NULL, NULL, NULL, NULL, 9, NULL, 75, 80, 85, 90, 100, 50, NULL),
    -- #183 Marill
    (183, 18300, 2, 3, NULL, NULL, NULL, NULL, 2, 8, 70, 20, 50, 20, 50, 40, NULL),
    -- #184 Azumarill
    (184, 18400, 2, 3, NULL, NULL, NULL, NULL, 2, 8, 100, 50, 80, 50, 80, 50, NULL),
    -- #185 Sudowoodo
    (185, 18500, 2, 13, NULL, NULL, NULL, NULL, 11, NULL, 70, 100, 115, 30, 65, 30, NULL),
    -- #186 Politoed
    (186, 18600, 2, 3, NULL, NULL, NULL, NULL, 2, NULL, 90, 75, 75, 90, 100, 70, NULL),
    -- #187 Hoppip
    (187, 18700, 2, 5, 10, NULL, NULL, NULL, 8, 9, 35, 35, 40, 35, 55, 50, NULL),
    -- #188 Skiploom
    (188, 18800, 2, 5, 10, NULL, NULL, NULL, 8, 9, 55, 45, 50, 45, 65, 80, NULL),
    -- #189 Jumpluff
    (189, 18900, 2, 5, 10, NULL, NULL, NULL, 8, 9, 75, 55, 70, 55, 85, 110, NULL),
    -- #190 Aipom
    (190, 19000, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 55, 70, 55, 40, 55, 85, NULL),
    -- #191 Sunkern
    (191, 19100, 2, 5, NULL, NULL, NULL, NULL, 9, NULL, 30, 30, 30, 30, 30, 30, NULL),
    -- #192 Sunflora
    (192, 19200, 2, 5, NULL, NULL, NULL, NULL, 9, NULL, 75, 75, 55, 105, 85, 30, NULL),
    -- #193 Yanma
    (193, 19300, 2, 12, 10, NULL, NULL, NULL, 5, NULL, 65, 65, 45, 75, 45, 95, NULL),
    -- #194 Wooper
    (194, 19400, 2, 3, 9, NULL, NULL, NULL, 2, 7, 55, 45, 45, 25, 25, 15, NULL),
    -- #195 Quagsire
    (195, 19500, 2, 3, 9, NULL, NULL, NULL, 2, 7, 95, 85, 85, 65, 65, 35, NULL),
    -- #196 Espeon
    (196, 19600, 2, 11, NULL, NULL, NULL, NULL, 7, NULL, 65, 65, 60, 130, 95, 110, NULL),
    -- #197 Umbreon
    (197, 19700, 2, 16, NULL, NULL, NULL, NULL, 7, NULL, 95, 65, 110, 60, 130, 65, NULL),
    -- #198 Murkrow
    (198, 19800, 2, 16, 10, NULL, NULL, NULL, 6, NULL, 60, 85, 42, 85, 42, 91, NULL),
    -- #199 Slowking
    (199, 19900, 2, 3, 11, NULL, NULL, NULL, 1, 2, 95, 75, 80, 100, 110, 30, NULL),
    -- #200 Misdreavus
    (200, 20000, 2, 14, NULL, NULL, NULL, NULL, 12, NULL, 60, 60, 60, 85, 85, 85, NULL),
    -- #201 Unown
    (201, 20100, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48, NULL),
    -- #202 Wobbuffet
    (202, 20200, 2, 11, NULL, NULL, NULL, NULL, 12, NULL, 190, 33, 58, 33, 58, 33, NULL),
    -- #203 Girafarig
    (203, 20300, 2, 1, 11, NULL, NULL, NULL, 7, NULL, 70, 80, 65, 90, 65, 85, NULL),
    -- #204 Pineco
    (204, 20400, 2, 12, NULL, NULL, NULL, NULL, 5, NULL, 50, 65, 90, 35, 35, 15, NULL),
    -- #205 Forretress
    (205, 20500, 2, 12, 17, NULL, NULL, NULL, 5, NULL, 75, 90, 140, 60, 60, 40, NULL),
    -- #206 Dunsparce
    (206, 20600, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 100, 70, 70, 65, 65, 45, NULL),
    -- #207 Gligar
    (207, 20700, 2, 9, 10, NULL, NULL, NULL, 5, NULL, 65, 75, 105, 35, 65, 85, NULL),
    -- #208 Steelix
    (208, 20800, 2, 17, 9, NULL, NULL, NULL, 11, NULL, 75, 85, 200, 55, 65, 30, NULL),
    -- #209 Snubbull
    (209, 20900, 2, 1, NULL, NULL, NULL, NULL, 7, 8, 60, 80, 50, 40, 40, 30, NULL),
    -- #210 Granbull
    (210, 21000, 2, 1, NULL, NULL, NULL, NULL, 7, 8, 90, 120, 75, 60, 60, 45, NULL),
    -- #211 Qwilfish
    (211, 21100, 2, 3, 8, NULL, NULL, NULL, 3, NULL, 65, 95, 75, 55, 55, 85, NULL),
    -- #212 Scizor
    (212, 21200, 2, 12, 17, NULL, NULL, NULL, 5, NULL, 70, 130, 100, 55, 80, 65, NULL),
    -- #213 Shuckle
    (213, 21300, 2, 12, 13, NULL, NULL, NULL, 5, NULL, 20, 10, 230, 10, 230, 5, NULL),
    -- #214 Heracross
    (214, 21400, 2, 12, 7, NULL, NULL, NULL, 5, NULL, 80, 125, 75, 40, 95, 85, NULL),
    -- #215 Sneasel
    (215, 21500, 2, 16, 6, NULL, NULL, NULL, 7, NULL, 55, 95, 55, 35, 75, 115, NULL),
    -- #216 Teddiursa
    (216, 21600, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 60, 80, 50, 50, 50, 40, NULL),
    -- #217 Ursaring
    (217, 21700, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 90, 130, 75, 75, 75, 55, NULL),
    -- #218 Slugma
    (218, 21800, 2, 2, NULL, NULL, NULL, NULL, 12, NULL, 40, 40, 40, 70, 40, 20, NULL),
    -- #219 Magcargo
    (219, 21900, 2, 2, 13, NULL, NULL, NULL, 12, NULL, 50, 50, 120, 80, 80, 30, NULL),
    -- #220 Swinub
    (220, 22000, 2, 6, 9, NULL, NULL, NULL, 7, NULL, 50, 50, 40, 30, 30, 50, NULL),
    -- #221 Piloswine
    (221, 22100, 2, 6, 9, NULL, NULL, NULL, 7, NULL, 100, 100, 80, 60, 60, 50, NULL),
    -- #222 Corsola
    (222, 22200, 2, 3, 13, NULL, NULL, NULL, 2, 4, 55, 55, 85, 65, 85, 35, NULL),
    -- #223 Remoraid
    (223, 22300, 2, 3, NULL, NULL, NULL, NULL, 2, 3, 35, 65, 35, 65, 35, 65, NULL),
    -- #224 Octillery
    (224, 22400, 2, 3, NULL, NULL, NULL, NULL, 2, 3, 75, 105, 75, 105, 75, 45, NULL),
    -- #225 Delibird
    (225, 22500, 2, 6, 10, NULL, NULL, NULL, 2, 7, 45, 55, 45, 65, 45, 75, NULL),
    -- #226 Mantine
    (226, 22600, 2, 3, 10, NULL, NULL, NULL, 2, NULL, 65, 40, 70, 80, 140, 70, NULL),
    -- #227 Skarmory
    (227, 22700, 2, 17, 10, NULL, NULL, NULL, 6, NULL, 65, 80, 140, 40, 70, 70, NULL),
    -- #228 Houndour
    (228, 22800, 2, 16, 2, NULL, NULL, NULL, 7, NULL, 45, 60, 30, 80, 50, 65, NULL),
    -- #229 Houndoom
    (229, 22900, 2, 16, 2, NULL, NULL, NULL, 7, NULL, 75, 90, 50, 110, 80, 95, NULL),
    -- #230 Kingdra
    (230, 23000, 2, 3, 15, NULL, NULL, NULL, 2, 13, 75, 95, 95, 95, 95, 85, NULL),
    -- #231 Phanpy
    (231, 23100, 2, 9, NULL, NULL, NULL, NULL, 7, NULL, 90, 60, 60, 40, 40, 40, NULL),
    -- #232 Donphan
    (232, 23200, 2, 9, NULL, NULL, NULL, NULL, 7, NULL, 90, 120, 120, 60, 60, 50, NULL),
    -- #233 Porygon2
    (233, 23300, 2, 1, NULL, NULL, NULL, NULL, 11, NULL, 85, 80, 90, 105, 95, 60, NULL),
    -- #234 Stantler
    (234, 23400, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 73, 95, 62, 85, 65, 85, NULL),
    -- #235 Smeargle
    (235, 23500, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 55, 20, 35, 20, 45, 75, NULL),
    -- #236 Tyrogue
    (236, 23600, 2, 7, NULL, NULL, NULL, NULL, 15, NULL, 35, 35, 35, 35, 35, 35, NULL),
    -- #237 Hitmontop
    (237, 23700, 2, 7, NULL, NULL, NULL, NULL, 10, NULL, 50, 95, 95, 35, 110, 70, NULL),
    -- #238 Smoochum
    (238, 23800, 2, 6, 11, NULL, NULL, NULL, 15, NULL, 45, 30, 15, 85, 65, 65, NULL),
    -- #239 Elekid
    (239, 23900, 2, 4, NULL, NULL, NULL, NULL, 15, NULL, 45, 63, 37, 65, 55, 95, NULL),
    -- #240 Magby
    (240, 24000, 2, 2, NULL, NULL, NULL, NULL, 15, NULL, 45, 75, 37, 70, 55, 83, NULL),
    -- #241 Miltank
    (241, 24100, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 95, 80, 105, 40, 70, 100, NULL),
    -- #242 Blissey
    (242, 24200, 2, 1, NULL, NULL, NULL, NULL, 8, NULL, 255, 10, 10, 75, 135, 55, NULL),
    -- #243 Raikou
    (243, 24300, 2, 4, NULL, NULL, NULL, NULL, 15, NULL, 90, 85, 75, 115, 100, 115, NULL),
    -- #244 Entei
    (244, 24400, 2, 2, NULL, NULL, NULL, NULL, 15, NULL, 115, 115, 85, 90, 75, 100, NULL),
    -- #245 Suicune
    (245, 24500, 2, 3, NULL, NULL, NULL, NULL, 15, NULL, 100, 75, 115, 90, 115, 85, NULL),
    -- #246 Larvitar
    (246, 24600, 2, 13, 9, NULL, NULL, NULL, 1, NULL, 50, 64, 50, 45, 50, 41, NULL),
    -- #247 Pupitar
    (247, 24700, 2, 13, 9, NULL, NULL, NULL, 1, NULL, 70, 84, 70, 65, 70, 51, NULL),
    -- #248 Tyranitar
    (248, 24800, 2, 13, 16, NULL, NULL, NULL, 1, NULL, 100, 134, 110, 95, 100, 61, NULL),
    -- #249 Lugia
    (249, 24900, 2, 11, 10, NULL, NULL, NULL, 15, NULL, 106, 90, 130, 90, 154, 110, NULL),
    -- #250 Ho-Oh
    (250, 25000, 2, 2, 10, NULL, NULL, NULL, 15, NULL, 106, 130, 90, 110, 154, 90, NULL),
    -- #251 Celebi
    (251, 25100, 2, 11, 5, NULL, NULL, NULL, 15, NULL, 100, 100, 100, 100, 100, 100, NULL);