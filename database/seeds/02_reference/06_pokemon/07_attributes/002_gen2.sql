-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 002_pokemon_attributes_gen2.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen2.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0152 Chikorita
  (152, 15200, 2, 5, NULL, NULL, NULL, NULL, 1, 9, 45, 49, 65, 49, 65, 45),
  -- #0153 Bayleef
  (153, 15300, 2, 5, NULL, NULL, NULL, NULL, 1, 9, 60, 62, 80, 63, 80, 60),
  -- #0154 Meganium
  (154, 15400, 2, 5, NULL, NULL, NULL, NULL, 1, 9, 80, 82, 100, 83, 100, 80),
  -- #0155 Cyndaquil
  (155, 15500, 2, 2, NULL, NULL, NULL, NULL, 7, NULL, 39, 52, 43, 60, 50, 65),
  -- #0156 Quilava
  (156, 15600, 2, 2, NULL, NULL, NULL, NULL, 7, NULL, 58, 64, 58, 80, 65, 80),
  -- #0157 Typhlosion
  (157, 15700, 2, 2, NULL, NULL, NULL, NULL, 7, NULL, 78, 84, 78, 109, 85, 100),
  -- #0158 Totodile
  (158, 15800, 2, 3, NULL, NULL, NULL, NULL, 1, 2, 50, 65, 64, 44, 48, 43),
  -- #0159 Croconaw
  (159, 15900, 2, 3, NULL, NULL, NULL, NULL, 1, 2, 65, 80, 80, 59, 63, 58),
  -- #0160 Feraligatr
  (160, 16000, 2, 3, NULL, NULL, NULL, NULL, 1, 2, 85, 105, 100, 79, 83, 78),
  -- #0161 Sentret
  (161, 16100, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 35, 46, 34, 35, 45, 20),
  -- #0162 Furret
  (162, 16200, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 85, 76, 64, 45, 55, 90),
  -- #0163 Hoothoot
  (163, 16300, 2, 1, 10, NULL, NULL, NULL, 6, NULL, 60, 30, 30, 36, 56, 50),
  -- #0164 Noctowl
  (164, 16400, 2, 1, 10, NULL, NULL, NULL, 6, NULL, 100, 50, 50, 76, 96, 70),
  -- #0165 Ledyba
  (165, 16500, 2, 12, 10, NULL, NULL, NULL, 5, NULL, 40, 20, 30, 40, 80, 55),
  -- #0166 Ledian
  (166, 16600, 2, 12, 10, NULL, NULL, NULL, 5, NULL, 55, 35, 50, 55, 110, 85),
  -- #0167 Spinarak
  (167, 16700, 2, 12, 8, NULL, NULL, NULL, 5, NULL, 40, 60, 40, 40, 40, 30),
  -- #0168 Ariados
  (168, 16800, 2, 12, 8, NULL, NULL, NULL, 5, NULL, 70, 90, 70, 60, 60, 40),
  -- #0169 Crobat
  (169, 16900, 2, 8, 10, NULL, NULL, NULL, 6, NULL, 85, 90, 80, 70, 80, 130),
  -- #0170 Chinchou
  (170, 17000, 2, 3, 4, NULL, NULL, NULL, 3, NULL, 75, 38, 38, 56, 56, 67),
  -- #0171 Lanturn
  (171, 17100, 2, 3, 4, NULL, NULL, NULL, 3, NULL, 125, 58, 58, 76, 76, 67),
  -- #0172 Pichu
  (172, 17200, 2, 4, NULL, NULL, NULL, NULL, 15, NULL, 20, 40, 15, 35, 35, 60),
  -- #0173 Cleffa
  (173, 17300, 2, 1, NULL, NULL, NULL, NULL, 15, NULL, 50, 25, 28, 45, 55, 15),
  -- #0174 Igglybuff
  (174, 17400, 2, 1, NULL, NULL, NULL, NULL, 15, NULL, 90, 30, 15, 40, 20, 15),
  -- #0175 Togepi
  (175, 17500, 2, 1, NULL, NULL, NULL, NULL, 15, NULL, 35, 20, 65, 40, 65, 20),
  -- #0176 Togetic
  (176, 17600, 2, 1, 10, NULL, NULL, NULL, 6, 8, 55, 40, 85, 80, 105, 40),
  -- #0177 Natu
  (177, 17700, 2, 11, 10, NULL, NULL, NULL, 6, NULL, 40, 50, 45, 70, 45, 70),
  -- #0178 Xatu
  (178, 17800, 2, 11, 10, NULL, NULL, NULL, 6, NULL, 65, 75, 70, 95, 70, 95),
  -- #0179 Mareep
  (179, 17900, 2, 4, NULL, NULL, NULL, NULL, 1, 7, 55, 40, 40, 65, 45, 35),
  -- #0180 Flaaffy
  (180, 18000, 2, 4, NULL, NULL, NULL, NULL, 1, 7, 70, 55, 55, 80, 60, 45),
  -- #0181 Ampharos
  (181, 18100, 2, 4, NULL, NULL, NULL, NULL, 1, 7, 90, 75, 75, 115, 90, 55),
  -- #0182 Bellossom
  (182, 18200, 2, 5, NULL, NULL, NULL, NULL, 9, NULL, 75, 80, 85, 90, 100, 50),
  -- #0183 Marill
  (183, 18300, 2, 3, NULL, NULL, NULL, NULL, 2, 8, 70, 20, 50, 20, 50, 40),
  -- #0184 Azumarill
  (184, 18400, 2, 3, NULL, NULL, NULL, NULL, 2, 8, 100, 50, 80, 50, 80, 50),
  -- #0185 Sudowoodo
  (185, 18500, 2, 13, NULL, NULL, NULL, NULL, 11, NULL, 70, 100, 115, 30, 65, 30),
  -- #0186 Politoed
  (186, 18600, 2, 3, NULL, NULL, NULL, NULL, 2, NULL, 90, 75, 75, 90, 100, 70),
  -- #0187 Hoppip
  (187, 18700, 2, 5, 10, NULL, NULL, NULL, 8, 9, 35, 35, 40, 35, 55, 50),
  -- #0188 Skiploom
  (188, 18800, 2, 5, 10, NULL, NULL, NULL, 8, 9, 55, 45, 50, 45, 65, 80),
  -- #0189 Jumpluff
  (189, 18900, 2, 5, 10, NULL, NULL, NULL, 8, 9, 75, 55, 70, 55, 85, 110),
  -- #0190 Aipom
  (190, 19000, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 55, 70, 55, 40, 55, 85),
  -- #0191 Sunkern
  (191, 19100, 2, 5, NULL, NULL, NULL, NULL, 9, NULL, 30, 30, 30, 30, 30, 30),
  -- #0192 Sunflora
  (192, 19200, 2, 5, NULL, NULL, NULL, NULL, 9, NULL, 75, 75, 55, 105, 85, 30),
  -- #0193 Yanma
  (193, 19300, 2, 12, 10, NULL, NULL, NULL, 5, NULL, 65, 65, 45, 75, 45, 95),
  -- #0194 Wooper
  (194, 19400, 2, 3, 9, NULL, NULL, NULL, 2, 7, 55, 45, 45, 25, 25, 15),
  -- #0195 Quagsire
  (195, 19500, 2, 3, 9, NULL, NULL, NULL, 2, 7, 95, 85, 85, 65, 65, 35),
  -- #0196 Espeon
  (196, 19600, 2, 11, NULL, NULL, NULL, NULL, 7, NULL, 65, 65, 60, 130, 95, 110),
  -- #0197 Umbreon
  (197, 19700, 2, 16, NULL, NULL, NULL, NULL, 7, NULL, 95, 65, 110, 60, 130, 65),
  -- #0198 Murkrow
  (198, 19800, 2, 16, 10, NULL, NULL, NULL, 6, NULL, 60, 85, 42, 85, 42, 91),
  -- #0199 Slowking
  (199, 19900, 2, 3, 11, NULL, NULL, NULL, 1, 2, 95, 75, 80, 100, 110, 30),
  -- #0200 Misdreavus
  (200, 20000, 2, 14, NULL, NULL, NULL, NULL, 12, NULL, 60, 60, 60, 85, 85, 85),
  -- #0201 Unown
  (201, 20100, 2, 11, NULL, NULL, NULL, NULL, 15, NULL, 48, 72, 48, 72, 48, 48),
  -- #0202 Wobbuffet
  (202, 20200, 2, 11, NULL, NULL, NULL, NULL, 12, NULL, 190, 33, 58, 33, 58, 33),
  -- #0203 Girafarig
  (203, 20300, 2, 1, 11, NULL, NULL, NULL, 7, NULL, 70, 80, 65, 90, 65, 85),
  -- #0204 Pineco
  (204, 20400, 2, 12, NULL, NULL, NULL, NULL, 5, NULL, 50, 65, 90, 35, 35, 15),
  -- #0205 Forretress
  (205, 20500, 2, 12, 17, NULL, NULL, NULL, 5, NULL, 75, 90, 140, 60, 60, 40),
  -- #0206 Dunsparce
  (206, 20600, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 100, 70, 70, 65, 65, 45),
  -- #0207 Gligar
  (207, 20700, 2, 9, 10, NULL, NULL, NULL, 5, NULL, 65, 75, 105, 35, 65, 85),
  -- #0208 Steelix
  (208, 20800, 2, 17, 9, NULL, NULL, NULL, 11, NULL, 75, 85, 200, 55, 65, 30),
  -- #0209 Snubbull
  (209, 20900, 2, 1, NULL, NULL, NULL, NULL, 7, 8, 60, 80, 50, 40, 40, 30),
  -- #0210 Granbull
  (210, 21000, 2, 1, NULL, NULL, NULL, NULL, 7, 8, 90, 120, 75, 60, 60, 45),
  -- #0211 Qwilfish
  (211, 21100, 2, 3, 8, NULL, NULL, NULL, 3, NULL, 65, 95, 75, 55, 55, 85),
  -- #0212 Scizor
  (212, 21200, 2, 12, 17, NULL, NULL, NULL, 5, NULL, 70, 130, 100, 55, 80, 65),
  -- #0213 Shuckle
  (213, 21300, 2, 12, 13, NULL, NULL, NULL, 5, NULL, 20, 10, 230, 10, 230, 5),
  -- #0214 Heracross
  (214, 21400, 2, 12, 7, NULL, NULL, NULL, 5, NULL, 80, 125, 75, 40, 95, 85),
  -- #0215 Sneasel
  (215, 21500, 2, 16, 6, NULL, NULL, NULL, 7, NULL, 55, 95, 55, 35, 75, 115),
  -- #0216 Teddiursa
  (216, 21600, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 60, 80, 50, 50, 50, 40),
  -- #0217 Ursaring
  (217, 21700, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 90, 130, 75, 75, 75, 55),
  -- #0218 Slugma
  (218, 21800, 2, 2, NULL, NULL, NULL, NULL, 12, NULL, 40, 40, 40, 70, 40, 20),
  -- #0219 Magcargo
  (219, 21900, 2, 2, 13, NULL, NULL, NULL, 12, NULL, 50, 50, 120, 80, 80, 30),
  -- #0220 Swinub
  (220, 22000, 2, 6, 9, NULL, NULL, NULL, 7, NULL, 50, 50, 40, 30, 30, 50),
  -- #0221 Piloswine
  (221, 22100, 2, 6, 9, NULL, NULL, NULL, 7, NULL, 100, 100, 80, 60, 60, 50),
  -- #0222 Corsola
  (222, 22200, 2, 3, 13, NULL, NULL, NULL, 2, 4, 55, 55, 85, 65, 85, 35),
  -- #0223 Remoraid
  (223, 22300, 2, 3, NULL, NULL, NULL, NULL, 2, 3, 35, 65, 35, 65, 35, 65),
  -- #0224 Octillery
  (224, 22400, 2, 3, NULL, NULL, NULL, NULL, 2, 3, 75, 105, 75, 105, 75, 45),
  -- #0225 Delibird
  (225, 22500, 2, 6, 10, NULL, NULL, NULL, 2, 7, 45, 55, 45, 65, 45, 75),
  -- #0226 Mantine
  (226, 22600, 2, 3, 10, NULL, NULL, NULL, 2, NULL, 65, 40, 70, 80, 140, 70),
  -- #0227 Skarmory
  (227, 22700, 2, 17, 10, NULL, NULL, NULL, 6, NULL, 65, 80, 140, 40, 70, 70),
  -- #0228 Houndour
  (228, 22800, 2, 16, 2, NULL, NULL, NULL, 7, NULL, 45, 60, 30, 80, 50, 65),
  -- #0229 Houndoom
  (229, 22900, 2, 16, 2, NULL, NULL, NULL, 7, NULL, 75, 90, 50, 110, 80, 95),
  -- #0230 Kingdra
  (230, 23000, 2, 3, 15, NULL, NULL, NULL, 2, 13, 75, 95, 95, 95, 95, 85),
  -- #0231 Phanpy
  (231, 23100, 2, 9, NULL, NULL, NULL, NULL, 7, NULL, 90, 60, 60, 40, 40, 40),
  -- #0232 Donphan
  (232, 23200, 2, 9, NULL, NULL, NULL, NULL, 7, NULL, 90, 120, 120, 60, 60, 50),
  -- #0233 Porygon2
  (233, 23300, 2, 1, NULL, NULL, NULL, NULL, 11, NULL, 85, 80, 90, 105, 95, 60),
  -- #0234 Stantler
  (234, 23400, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 73, 95, 62, 85, 65, 85),
  -- #0235 Smeargle
  (235, 23500, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 55, 20, 35, 20, 45, 75),
  -- #0236 Tyrogue
  (236, 23600, 2, 7, NULL, NULL, NULL, NULL, 15, NULL, 35, 35, 35, 35, 35, 35),
  -- #0237 Hitmontop
  (237, 23700, 2, 7, NULL, NULL, NULL, NULL, 10, NULL, 50, 95, 95, 35, 110, 70),
  -- #0238 Smoochum
  (238, 23800, 2, 6, 11, NULL, NULL, NULL, 15, NULL, 45, 30, 15, 85, 65, 65),
  -- #0239 Elekid
  (239, 23900, 2, 4, NULL, NULL, NULL, NULL, 15, NULL, 45, 63, 37, 65, 55, 95),
  -- #0240 Magby
  (240, 24000, 2, 2, NULL, NULL, NULL, NULL, 15, NULL, 45, 75, 37, 70, 55, 83),
  -- #0241 Miltank
  (241, 24100, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 95, 80, 105, 40, 70, 100),
  -- #0242 Blissey
  (242, 24200, 2, 1, NULL, NULL, NULL, NULL, 8, NULL, 255, 10, 10, 75, 135, 55),
  -- #0243 Raikou
  (243, 24300, 2, 4, NULL, NULL, NULL, NULL, 15, NULL, 90, 85, 75, 115, 100, 115),
  -- #0244 Entei
  (244, 24400, 2, 2, NULL, NULL, NULL, NULL, 15, NULL, 115, 115, 85, 90, 75, 100),
  -- #0245 Suicune
  (245, 24500, 2, 3, NULL, NULL, NULL, NULL, 15, NULL, 100, 75, 115, 90, 115, 85),
  -- #0246 Larvitar
  (246, 24600, 2, 13, 9, NULL, NULL, NULL, 1, NULL, 50, 64, 50, 45, 50, 41),
  -- #0247 Pupitar
  (247, 24700, 2, 13, 9, NULL, NULL, NULL, 1, NULL, 70, 84, 70, 65, 70, 51),
  -- #0248 Tyranitar
  (248, 24800, 2, 13, 16, NULL, NULL, NULL, 1, NULL, 100, 134, 110, 95, 100, 61),
  -- #0249 Lugia
  (249, 24900, 2, 11, 10, NULL, NULL, NULL, 15, NULL, 106, 90, 130, 90, 154, 110),
  -- #0250 Ho-Oh
  (250, 25000, 2, 2, 10, NULL, NULL, NULL, 15, NULL, 106, 130, 90, 110, 154, 90),
  -- #0251 Celebi
  (251, 25100, 2, 11, 5, NULL, NULL, NULL, 15, NULL, 100, 100, 100, 100, 100, 100);
