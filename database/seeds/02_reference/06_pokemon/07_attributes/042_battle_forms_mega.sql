-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Mega Evolution and Primal Reversion pages.
-- Cross-check: Serebii X / Y, Omega Ruby / Alpha Sapphire and Legends: Z-A Mega Evolution pages.
-- Machine-readable sanity: PokeAPI Mega forms (types and stats match except Mega Starmie, whose
-- PokeAPI row carries a later game's Attack of 100).
-- Scope note: a Mega keeps its Pokémon's egg groups and has one ability; the
-- Megas new to Legends: Z-A have none, because that game has no abilities.
-- Mega Starmie's Attack is 140 in Legends: Z-A.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: Mega Evolutions.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0003 Venusaur - Mega Venusaur
  (3, 301, 6, 5, 8, 47, NULL, NULL, 1, 9, 80, 100, 123, 122, 120, 80),
  -- #0006 Charizard - Mega Charizard X
  (6, 601, 6, 2, 15, 181, NULL, NULL, 1, 13, 78, 130, 111, 130, 85, 100),
  -- #0006 Charizard - Mega Charizard Y
  (6, 602, 6, 2, 10, 70, NULL, NULL, 1, 13, 78, 104, 78, 159, 115, 100),
  -- #0009 Blastoise - Mega Blastoise
  (9, 901, 6, 3, NULL, 178, NULL, NULL, 1, 2, 79, 103, 120, 135, 115, 78),
  -- #0015 Beedrill - Mega Beedrill
  (15, 1501, 6, 12, 8, 91, NULL, NULL, 5, NULL, 65, 150, 40, 15, 80, 145),
  -- #0018 Pidgeot - Mega Pidgeot
  (18, 1801, 6, 1, 10, 99, NULL, NULL, 6, NULL, 83, 80, 80, 135, 80, 121),
  -- #0065 Alakazam - Mega Alakazam
  (65, 6501, 6, 11, NULL, 36, NULL, NULL, 10, NULL, 55, 50, 65, 175, 95, 150),
  -- #0065 Alakazam - Mega Alakazam (Sp. Def 95 to 105)
  (65, 6501, 7, 11, NULL, 36, NULL, NULL, 10, NULL, 55, 50, 65, 175, 105, 150),
  -- #0080 Slowbro - Mega Slowbro
  (80, 8001, 6, 3, 11, 75, NULL, NULL, 1, 2, 95, 75, 180, 130, 80, 30),
  -- #0094 Gengar - Mega Gengar
  (94, 9401, 6, 14, 8, 23, NULL, NULL, 12, NULL, 60, 65, 80, 170, 95, 130),
  -- #0115 Kangaskhan - Mega Kangaskhan
  (115, 11501, 6, 1, NULL, 185, NULL, NULL, 1, NULL, 105, 125, 100, 60, 100, 100),
  -- #0127 Pinsir - Mega Pinsir
  (127, 12701, 6, 12, 10, 184, NULL, NULL, 5, NULL, 65, 155, 120, 65, 90, 105),
  -- #0130 Gyarados - Mega Gyarados
  (130, 13001, 6, 3, 16, 104, NULL, NULL, 3, 13, 95, 155, 109, 70, 130, 81),
  -- #0142 Aerodactyl - Mega Aerodactyl
  (142, 14201, 6, 13, 10, 181, NULL, NULL, 6, NULL, 80, 135, 85, 70, 95, 150),
  -- #0150 Mewtwo - Mega Mewtwo X
  (150, 15001, 6, 11, 7, 80, NULL, NULL, 15, NULL, 106, 190, 100, 154, 100, 130),
  -- #0150 Mewtwo - Mega Mewtwo Y
  (150, 15002, 6, 11, NULL, 15, NULL, NULL, 15, NULL, 106, 150, 70, 194, 120, 140),
  -- #0181 Ampharos - Mega Ampharos
  (181, 18101, 6, 4, 15, 104, NULL, NULL, 1, 7, 90, 95, 105, 165, 110, 45),
  -- #0208 Steelix - Mega Steelix
  (208, 20801, 6, 17, 9, 159, NULL, NULL, 11, NULL, 75, 125, 230, 55, 95, 30),
  -- #0212 Scizor - Mega Scizor
  (212, 21201, 6, 12, 17, 101, NULL, NULL, 5, NULL, 70, 150, 140, 65, 100, 75),
  -- #0214 Heracross - Mega Heracross
  (214, 21401, 6, 12, 7, 92, NULL, NULL, 5, NULL, 80, 185, 115, 40, 105, 75),
  -- #0229 Houndoom - Mega Houndoom
  (229, 22901, 6, 16, 2, 94, NULL, NULL, 7, NULL, 75, 90, 90, 140, 90, 115),
  -- #0248 Tyranitar - Mega Tyranitar
  (248, 24801, 6, 13, 16, 45, NULL, NULL, 1, NULL, 100, 164, 150, 95, 120, 71),
  -- #0254 Sceptile - Mega Sceptile
  (254, 25401, 6, 5, 15, 31, NULL, NULL, 1, 13, 70, 110, 75, 145, 85, 145),
  -- #0257 Blaziken - Mega Blaziken
  (257, 25701, 6, 2, 7, 3, NULL, NULL, 7, NULL, 80, 160, 80, 130, 80, 100),
  -- #0260 Swampert - Mega Swampert
  (260, 26001, 6, 3, 9, 33, NULL, NULL, 1, 2, 100, 150, 110, 95, 110, 70),
  -- #0282 Gardevoir - Mega Gardevoir
  (282, 28201, 6, 11, 18, 182, NULL, NULL, 12, NULL, 68, 85, 65, 165, 135, 100),
  -- #0302 Sableye - Mega Sableye
  (302, 30201, 6, 16, 14, 156, NULL, NULL, 10, NULL, 50, 85, 125, 85, 115, 20),
  -- #0303 Mawile - Mega Mawile
  (303, 30301, 6, 17, 18, 37, NULL, NULL, 7, 8, 50, 105, 125, 55, 95, 50),
  -- #0306 Aggron - Mega Aggron
  (306, 30601, 6, 17, NULL, 111, NULL, NULL, 1, NULL, 70, 140, 230, 60, 80, 50),
  -- #0308 Medicham - Mega Medicham
  (308, 30801, 6, 7, 11, 74, NULL, NULL, 10, NULL, 60, 100, 85, 80, 85, 100),
  -- #0310 Manectric - Mega Manectric
  (310, 31001, 6, 4, NULL, 22, NULL, NULL, 7, NULL, 70, 75, 80, 135, 80, 135),
  -- #0319 Sharpedo - Mega Sharpedo
  (319, 31901, 6, 3, 16, 173, NULL, NULL, 3, NULL, 70, 140, 70, 110, 65, 105),
  -- #0323 Camerupt - Mega Camerupt
  (323, 32301, 6, 2, 9, 125, NULL, NULL, 7, NULL, 70, 120, 100, 145, 105, 20),
  -- #0334 Altaria - Mega Altaria
  (334, 33401, 6, 15, 18, 182, NULL, NULL, 6, 13, 75, 110, 110, 110, 105, 80),
  -- #0354 Banette - Mega Banette
  (354, 35401, 6, 14, NULL, 158, NULL, NULL, 12, NULL, 64, 165, 75, 93, 83, 75),
  -- #0359 Absol - Mega Absol
  (359, 35901, 6, 16, NULL, 156, NULL, NULL, 7, NULL, 65, 150, 60, 115, 60, 115),
  -- #0362 Glalie - Mega Glalie
  (362, 36201, 6, 6, NULL, 174, NULL, NULL, 8, 11, 80, 120, 80, 120, 80, 100),
  -- #0373 Salamence - Mega Salamence
  (373, 37301, 6, 15, 10, 184, NULL, NULL, 13, NULL, 95, 145, 130, 120, 90, 120),
  -- #0376 Metagross - Mega Metagross
  (376, 37601, 6, 17, 11, 181, NULL, NULL, 11, NULL, 80, 145, 150, 105, 110, 110),
  -- #0380 Latias - Mega Latias
  (380, 38001, 6, 15, 11, 26, NULL, NULL, 15, NULL, 80, 100, 120, 140, 150, 110),
  -- #0381 Latios - Mega Latios
  (381, 38101, 6, 15, 11, 26, NULL, NULL, 15, NULL, 80, 130, 100, 160, 120, 110),
  -- #0384 Rayquaza - Mega Rayquaza
  (384, 38401, 6, 15, 10, 191, NULL, NULL, 15, NULL, 105, 180, 100, 180, 100, 115),
  -- #0428 Lopunny - Mega Lopunny
  (428, 42801, 6, 1, 7, 113, NULL, NULL, 7, 10, 65, 136, 94, 54, 96, 135),
  -- #0445 Garchomp - Mega Garchomp
  (445, 44501, 6, 15, 9, 159, NULL, NULL, 1, 13, 108, 170, 115, 120, 95, 92),
  -- #0448 Lucario - Mega Lucario
  (448, 44801, 6, 7, 17, 91, NULL, NULL, 7, 10, 70, 145, 88, 140, 70, 112),
  -- #0460 Abomasnow - Mega Abomasnow
  (460, 46001, 6, 5, 6, 117, NULL, NULL, 1, 9, 90, 132, 105, 132, 105, 30),
  -- #0475 Gallade - Mega Gallade
  (475, 47501, 6, 11, 7, 39, NULL, NULL, 12, NULL, 68, 165, 95, 65, 115, 110),
  -- #0531 Audino - Mega Audino
  (531, 53101, 6, 1, 18, 131, NULL, NULL, 8, NULL, 103, 60, 126, 80, 126, 50),
  -- #0719 Diancie - Mega Diancie
  (719, 71901, 6, 13, 18, 156, NULL, NULL, 15, NULL, 50, 160, 110, 160, 110, 110),
  -- #0026 Raichu - Mega Raichu X (no ability in Legends: Z-A)
  (26, 2602, 9, 4, NULL, NULL, NULL, NULL, 7, 8, 60, 135, 95, 90, 95, 110),
  -- #0026 Raichu - Mega Raichu Y (no ability in Legends: Z-A)
  (26, 2603, 9, 4, NULL, NULL, NULL, NULL, 7, 8, 60, 100, 55, 160, 80, 130),
  -- #0036 Clefable - Mega Clefable (no ability in Legends: Z-A)
  (36, 3601, 9, 18, 10, NULL, NULL, NULL, 8, NULL, 95, 80, 93, 135, 110, 70),
  -- #0071 Victreebel - Mega Victreebel (no ability in Legends: Z-A)
  (71, 7101, 9, 5, 8, NULL, NULL, NULL, 9, NULL, 80, 125, 85, 135, 95, 70),
  -- #0121 Starmie - Mega Starmie (no ability in Legends: Z-A)
  (121, 12101, 9, 3, 11, NULL, NULL, NULL, 4, NULL, 60, 140, 105, 130, 105, 120),
  -- #0149 Dragonite - Mega Dragonite (no ability in Legends: Z-A)
  (149, 14901, 9, 15, 10, NULL, NULL, NULL, 2, 13, 91, 124, 115, 145, 125, 100),
  -- #0154 Meganium - Mega Meganium (no ability in Legends: Z-A)
  (154, 15401, 9, 5, 18, NULL, NULL, NULL, 1, 9, 80, 92, 115, 143, 115, 80),
  -- #0160 Feraligatr - Mega Feraligatr (no ability in Legends: Z-A)
  (160, 16001, 9, 3, 15, NULL, NULL, NULL, 1, 2, 85, 160, 125, 89, 93, 78),
  -- #0227 Skarmory - Mega Skarmory (no ability in Legends: Z-A)
  (227, 22701, 9, 17, 10, NULL, NULL, NULL, 6, NULL, 65, 140, 110, 40, 100, 110),
  -- #0358 Chimecho - Mega Chimecho (no ability in Legends: Z-A)
  (358, 35801, 9, 11, 17, NULL, NULL, NULL, 12, NULL, 75, 50, 110, 135, 120, 65),
  -- #0359 Absol - Mega Absol Z (no ability in Legends: Z-A)
  (359, 35902, 9, 16, 14, NULL, NULL, NULL, 7, NULL, 65, 154, 60, 75, 60, 151),
  -- #0398 Staraptor - Mega Staraptor (no ability in Legends: Z-A)
  (398, 39801, 9, 7, 10, NULL, NULL, NULL, 6, NULL, 85, 140, 100, 60, 90, 110),
  -- #0445 Garchomp - Mega Garchomp Z (no ability in Legends: Z-A)
  (445, 44502, 9, 15, NULL, NULL, NULL, NULL, 1, 13, 108, 130, 85, 141, 85, 151),
  -- #0448 Lucario - Mega Lucario Z (no ability in Legends: Z-A)
  (448, 44802, 9, 7, 17, NULL, NULL, NULL, 7, 10, 70, 100, 70, 164, 70, 151),
  -- #0478 Froslass - Mega Froslass (no ability in Legends: Z-A)
  (478, 47801, 9, 6, 14, NULL, NULL, NULL, 8, 11, 70, 80, 70, 140, 100, 120),
  -- #0485 Heatran - Mega Heatran (no ability in Legends: Z-A)
  (485, 48501, 9, 2, 17, NULL, NULL, NULL, 15, NULL, 91, 120, 106, 175, 141, 67),
  -- #0491 Darkrai - Mega Darkrai (no ability in Legends: Z-A)
  (491, 49101, 9, 16, NULL, NULL, NULL, NULL, 15, NULL, 70, 120, 130, 165, 130, 85),
  -- #0500 Emboar - Mega Emboar (no ability in Legends: Z-A)
  (500, 50001, 9, 2, 7, NULL, NULL, NULL, 7, NULL, 110, 148, 75, 110, 110, 75),
  -- #0530 Excadrill - Mega Excadrill (no ability in Legends: Z-A)
  (530, 53001, 9, 9, 17, NULL, NULL, NULL, 7, NULL, 110, 165, 100, 65, 65, 103),
  -- #0545 Scolipede - Mega Scolipede (no ability in Legends: Z-A)
  (545, 54501, 9, 12, 8, NULL, NULL, NULL, 5, NULL, 60, 140, 149, 75, 99, 62),
  -- #0560 Scrafty - Mega Scrafty (no ability in Legends: Z-A)
  (560, 56001, 9, 16, 7, NULL, NULL, NULL, 7, 13, 65, 130, 135, 55, 135, 68),
  -- #0604 Eelektross - Mega Eelektross (no ability in Legends: Z-A)
  (604, 60401, 9, 4, NULL, NULL, NULL, NULL, 12, NULL, 85, 145, 80, 135, 90, 80),
  -- #0609 Chandelure - Mega Chandelure (no ability in Legends: Z-A)
  (609, 60901, 9, 14, 2, NULL, NULL, NULL, 12, NULL, 60, 75, 110, 175, 110, 90),
  -- #0623 Golurk - Mega Golurk (no ability in Legends: Z-A)
  (623, 62301, 9, 9, 14, NULL, NULL, NULL, 11, NULL, 89, 159, 105, 70, 105, 55),
  -- #0652 Chesnaught - Mega Chesnaught (no ability in Legends: Z-A)
  (652, 65201, 9, 5, 7, NULL, NULL, NULL, 7, NULL, 88, 137, 172, 74, 115, 44),
  -- #0655 Delphox - Mega Delphox (no ability in Legends: Z-A)
  (655, 65501, 9, 2, 11, NULL, NULL, NULL, 7, NULL, 75, 69, 72, 159, 125, 134),
  -- #0658 Greninja - Mega Greninja (no ability in Legends: Z-A)
  (658, 65801, 9, 3, 16, NULL, NULL, NULL, 2, NULL, 72, 125, 77, 133, 81, 142),
  -- #0668 Pyroar - Mega Pyroar (no ability in Legends: Z-A)
  (668, 66801, 9, 2, 1, NULL, NULL, NULL, 7, NULL, 86, 88, 92, 129, 86, 126),
  -- #0670 Floette - Mega Floette (no ability in Legends: Z-A)
  (670, 67001, 9, 18, NULL, NULL, NULL, NULL, 8, NULL, 74, 85, 87, 155, 148, 102),
  -- #0678 Meowstic - Mega Meowstic (no ability in Legends: Z-A)
  (678, 67802, 9, 11, NULL, NULL, NULL, NULL, 7, NULL, 74, 48, 76, 143, 101, 124),
  -- #0687 Malamar - Mega Malamar (no ability in Legends: Z-A)
  (687, 68701, 9, 16, 11, NULL, NULL, NULL, 2, 3, 86, 102, 88, 98, 120, 88),
  -- #0689 Barbaracle - Mega Barbaracle (no ability in Legends: Z-A)
  (689, 68901, 9, 13, 7, NULL, NULL, NULL, 4, NULL, 72, 140, 130, 64, 106, 88),
  -- #0691 Dragalge - Mega Dragalge (no ability in Legends: Z-A)
  (691, 69101, 9, 8, 15, NULL, NULL, NULL, 2, 13, 65, 85, 105, 132, 163, 44),
  -- #0701 Hawlucha - Mega Hawlucha (no ability in Legends: Z-A)
  (701, 70101, 9, 7, 10, NULL, NULL, NULL, 6, 10, 78, 137, 100, 74, 93, 118),
  -- #0718 Zygarde - Mega Zygarde (no ability in Legends: Z-A)
  (718, 71802, 9, 15, 9, NULL, NULL, NULL, 15, NULL, 216, 70, 91, 216, 85, 100),
  -- #0740 Crabominable - Mega Crabominable (no ability in Legends: Z-A)
  (740, 74001, 9, 7, 6, NULL, NULL, NULL, 4, NULL, 97, 157, 122, 62, 107, 33),
  -- #0768 Golisopod - Mega Golisopod (no ability in Legends: Z-A)
  (768, 76801, 9, 12, 17, NULL, NULL, NULL, 5, 4, 75, 150, 175, 70, 120, 40),
  -- #0780 Drampa - Mega Drampa (no ability in Legends: Z-A)
  (780, 78001, 9, 1, 15, NULL, NULL, NULL, 1, 13, 78, 85, 110, 160, 116, 36),
  -- #0801 Magearna - Mega Magearna (no ability in Legends: Z-A)
  (801, 80101, 9, 17, 18, NULL, NULL, NULL, 15, NULL, 80, 125, 115, 170, 115, 95),
  -- #0801 Magearna - Mega Magearna (Original Color) (no ability in Legends: Z-A)
  (801, 80103, 9, 17, 18, NULL, NULL, NULL, 15, NULL, 80, 125, 115, 170, 115, 95),
  -- #0807 Zeraora - Mega Zeraora (no ability in Legends: Z-A)
  (807, 80701, 9, 4, NULL, NULL, NULL, NULL, 15, NULL, 88, 157, 75, 147, 80, 153),
  -- #0870 Falinks - Mega Falinks (no ability in Legends: Z-A)
  (870, 87001, 9, 7, NULL, NULL, NULL, NULL, 8, 11, 65, 135, 135, 70, 65, 100),
  -- #0952 Scovillain - Mega Scovillain (no ability in Legends: Z-A)
  (952, 95201, 9, 5, 2, NULL, NULL, NULL, 9, NULL, 65, 138, 85, 138, 85, 75),
  -- #0970 Glimmora - Mega Glimmora (no ability in Legends: Z-A)
  (970, 97001, 9, 13, 8, NULL, NULL, NULL, 11, NULL, 83, 90, 105, 150, 96, 101),
  -- #0978 Tatsugiri - Mega Tatsugiri (no ability in Legends: Z-A)
  (978, 97803, 9, 15, 3, NULL, NULL, NULL, 3, NULL, 68, 65, 90, 135, 125, 92),
  -- #0978 Tatsugiri - Mega Tatsugiri (Droopy) (no ability in Legends: Z-A)
  (978, 97804, 9, 15, 3, NULL, NULL, NULL, 3, NULL, 68, 65, 90, 135, 125, 92),
  -- #0978 Tatsugiri - Mega Tatsugiri (Stretchy) (no ability in Legends: Z-A)
  (978, 97805, 9, 15, 3, NULL, NULL, NULL, 3, NULL, 68, 65, 90, 135, 125, 92),
  -- #0998 Baxcalibur - Mega Baxcalibur (no ability in Legends: Z-A)
  (998, 99801, 9, 15, 6, NULL, NULL, NULL, 13, 11, 115, 175, 117, 105, 101, 87);
