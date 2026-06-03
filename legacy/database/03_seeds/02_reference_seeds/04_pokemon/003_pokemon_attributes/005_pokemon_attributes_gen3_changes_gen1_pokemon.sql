-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 3
-- Table: reference.pokemon_attributes
-- Scope: changes to Generation 1 Pokémon (#001–151) — ability assignment
-- Assigns Generation 3-era abilities (IDs 1–76) to Generation 1 Pokémon. Generation IV+ slots are NULL here.
INSERT INTO
    reference.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #001 Bulbasaur
    (1, 100, 3, 5, 8, 65, NULL, NULL, 1, 9, 45, 49, 49, 65, 65, 45, NULL),
    -- #002 Ivysaur
    (2, 200, 3, 5, 8, 65, NULL, NULL, 1, 9, 60, 62, 63, 80, 80, 60, NULL),
    -- #003 Venusaur
    (3, 300, 3, 5, 8, 65, NULL, NULL, 1, 9, 80, 82, 83, 100, 100, 80, NULL),
    -- #004 Charmander
    (4, 400, 3, 2, NULL, 66, NULL, NULL, 1, 13, 39, 52, 43, 60, 50, 65, NULL),
    -- #005 Charmeleon
    (5, 500, 3, 2, NULL, 66, NULL, NULL, 1, 13, 58, 64, 58, 80, 65, 80, NULL),
    -- #006 Charizard
    (6, 600, 3, 2, 10, 66, NULL, NULL, 1, 13, 78, 84, 78, 109, 85, 100, NULL),
    -- #007 Squirtle
    (7, 700, 3, 3, NULL, 67, NULL, NULL, 1, 2, 44, 48, 65, 50, 64, 43, NULL),
    -- #008 Wartortle
    (8, 800, 3, 3, NULL, 67, NULL, NULL, 1, 2, 59, 63, 80, 65, 80, 58, NULL),
    -- #009 Blastoise
    (9, 900, 3, 3, NULL, 67, NULL, NULL, 1, 2, 79, 83, 100, 85, 105, 78, NULL),
    -- #010 Caterpie
    (10, 1000, 3, 12, NULL, 19, NULL, NULL, 5, NULL, 45, 30, 35, 20, 20, 45, NULL),
    -- #011 Metapod
    (11, 1100, 3, 12, NULL, 61, NULL, NULL, 5, NULL, 50, 20, 55, 25, 25, 30, NULL),
    -- #012 Butterfree
    (12, 1200, 3, 12, 10, 14, NULL, NULL, 5, NULL, 60, 45, 50, 80, 80, 70, NULL),
    -- #013 Weedle
    (13, 1300, 3, 12, 8, 19, NULL, NULL, 5, NULL, 40, 35, 30, 20, 20, 50, NULL),
    -- #014 Kakuna
    (14, 1400, 3, 12, 8, 61, NULL, NULL, 5, NULL, 45, 25, 50, 25, 25, 35, NULL),
    -- #015 Beedrill
    (15, 1500, 3, 12, 8, 68, NULL, NULL, 5, NULL, 65, 80, 40, 45, 80, 75, NULL),
    -- #016 Pidgey
    (16, 1600, 3, 1, 10, 51, NULL, NULL, 6, NULL, 40, 45, 40, 35, 35, 56, NULL),
    -- #017 Pidgeotto
    (17, 1700, 3, 1, 10, 51, NULL, NULL, 6, NULL, 63, 60, 55, 50, 50, 71, NULL),
    -- #018 Pidgeot
    (18, 1800, 3, 1, 10, 51, NULL, NULL, 6, NULL, 83, 80, 75, 70, 70, 91, NULL),
    -- #019 Rattata
    (19, 1900, 3, 1, NULL, 50, 62, NULL, 7, NULL, 30, 56, 35, 25, 35, 72, NULL),
    -- #020 Raticate
    (20, 2000, 3, 1, NULL, 50, 62, NULL, 7, NULL, 55, 81, 60, 50, 70, 97, NULL),
    -- #021 Spearow
    (21, 2100, 3, 1, 10, 51, NULL, NULL, 6, NULL, 40, 60, 30, 31, 31, 70, NULL),
    -- #022 Fearow
    (22, 2200, 3, 1, 10, 51, NULL, NULL, 6, NULL, 65, 90, 65, 61, 61, 100, NULL),
    -- #023 Ekans
    (23, 2300, 3, 8, NULL, 22, 61, NULL, 7, 13, 35, 60, 44, 40, 54, 55, NULL),
    -- #024 Arbok
    (24, 2400, 3, 8, NULL, 22, 61, NULL, 7, 13, 60, 85, 69, 65, 79, 80, NULL),
    -- #025 Pikachu
    (25, 2500, 3, 4, NULL, 9, NULL, NULL, 7, 8, 35, 55, 30, 50, 40, 90, NULL),
    -- #026 Raichu
    (26, 2600, 3, 4, NULL, 9, NULL, NULL, 7, 8, 60, 90, 55, 90, 80, 100, NULL),
    -- #027 Sandshrew
    (27, 2700, 3, 9, NULL, 8, NULL, NULL, 7, NULL, 50, 75, 85, 20, 30, 40, NULL),
    -- #028 Sandslash
    (28, 2800, 3, 9, NULL, 8, NULL, NULL, 7, NULL, 75, 100, 110, 45, 55, 65, NULL),
    -- #029 Nidoran♀
    (29, 2900, 3, 8, NULL, 38, NULL, NULL, 1, 7, 55, 47, 52, 40, 40, 41, NULL),
    -- #030 Nidorina
    (30, 3000, 3, 8, NULL, 38, NULL, NULL, 15, NULL, 70, 62, 67, 55, 55, 56, NULL),
    -- #031 Nidoqueen
    (31, 3100, 3, 8, 9, 38, NULL, NULL, 15, NULL, 90, 82, 87, 75, 85, 76, NULL),
    -- #032 Nidoran♂
    (32, 3200, 3, 8, NULL, 38, NULL, NULL, 1, 7, 46, 57, 40, 40, 40, 50, NULL),
    -- #033 Nidorino
    (33, 3300, 3, 8, NULL, 38, NULL, NULL, 1, 7, 61, 72, 57, 55, 55, 65, NULL),
    -- #034 Nidoking
    (34, 3400, 3, 8, 9, 38, NULL, NULL, 1, 7, 81, 92, 77, 85, 75, 85, NULL),
    -- #035 Clefairy
    (35, 3500, 3, 1, NULL, 56, NULL, NULL, 8, NULL, 70, 45, 48, 60, 65, 35, NULL),
    -- #036 Clefable
    (36, 3600, 3, 1, NULL, 56, NULL, NULL, 8, NULL, 95, 70, 73, 85, 90, 60, NULL),
    -- #037 Vulpix
    (37, 3700, 3, 2, NULL, 18, NULL, NULL, 7, NULL, 38, 41, 40, 50, 65, 65, NULL),
    -- #038 Ninetales
    (38, 3800, 3, 2, NULL, 18, NULL, NULL, 7, NULL, 73, 76, 75, 81, 100, 100, NULL),
    -- #039 Jigglypuff
    (39, 3900, 3, 1, NULL, 56, NULL, NULL, 8, NULL, 115, 45, 20, 45, 25, 20, NULL),
    -- #040 Wigglytuff
    (40, 4000, 3, 1, NULL, 56, NULL, NULL, 8, NULL, 140, 70, 45, 75, 50, 45, NULL),
    -- #041 Zubat
    (41, 4100, 3, 8, 10, 39, NULL, NULL, 6, NULL, 40, 45, 35, 30, 40, 55, NULL),
    -- #042 Golbat
    (42, 4200, 3, 8, 10, 39, NULL, NULL, 6, NULL, 75, 80, 70, 65, 75, 90, NULL),
    -- #043 Oddish
    (43, 4300, 3, 5, 8, 34, NULL, NULL, 9, NULL, 45, 50, 55, 75, 65, 30, NULL),
    -- #044 Gloom
    (44, 4400, 3, 5, 8, 34, NULL, NULL, 9, NULL, 60, 65, 70, 85, 75, 40, NULL),
    -- #045 Vileplume
    (45, 4500, 3, 5, 8, 34, NULL, NULL, 9, NULL, 75, 80, 85, 100, 90, 50, NULL),
    -- #046 Paras
    (46, 4600, 3, 12, 5, 27, NULL, NULL, 5, 9, 35, 70, 55, 45, 55, 25, NULL),
    -- #047 Parasect
    (47, 4700, 3, 12, 5, 27, NULL, NULL, 5, 9, 60, 95, 80, 60, 80, 30, NULL),
    -- #048 Venonat
    (48, 4800, 3, 12, 8, 14, NULL, NULL, 5, NULL, 60, 55, 50, 40, 55, 45, NULL),
    -- #049 Venomoth
    (49, 4900, 3, 12, 8, 19, NULL, NULL, 5, NULL, 70, 65, 60, 90, 75, 90, NULL),
    -- #050 Diglett
    (50, 5000, 3, 9, NULL, 8, 71, NULL, 7, NULL, 10, 55, 25, 35, 45, 95, NULL),
    -- #051 Dugtrio
    (51, 5100, 3, 9, NULL, 8, 71, NULL, 7, NULL, 35, 80, 50, 50, 70, 120, NULL),
    -- #052 Meowth
    (52, 5200, 3, 1, NULL, 53, NULL, NULL, 7, NULL, 40, 45, 35, 40, 40, 90, NULL),
    -- #053 Persian
    (53, 5300, 3, 1, NULL, 7, NULL, NULL, 7, NULL, 65, 70, 60, 65, 65, 115, NULL),
    -- #054 Psyduck
    (54, 5400, 3, 3, NULL, 6, 13, NULL, 2, 7, 50, 52, 48, 65, 50, 55, NULL),
    -- #055 Golduck
    (55, 5500, 3, 3, NULL, 6, 13, NULL, 2, 7, 80, 82, 78, 95, 80, 85, NULL),
    -- #056 Mankey
    (56, 5600, 3, 7, NULL, 72, NULL, NULL, 7, NULL, 40, 80, 35, 35, 45, 70, NULL),
    -- #057 Primeape
    (57, 5700, 3, 7, NULL, 72, NULL, NULL, 7, NULL, 65, 105, 60, 60, 70, 95, NULL),
    -- #058 Growlithe
    (58, 5800, 3, 2, NULL, 22, 18, NULL, 7, NULL, 55, 70, 45, 70, 50, 60, NULL),
    -- #059 Arcanine
    (59, 5900, 3, 2, NULL, 22, 18, NULL, 7, NULL, 90, 110, 80, 100, 80, 95, NULL),
    -- #060 Poliwag
    (60, 6000, 3, 3, NULL, 11, 6, NULL, 2, NULL, 40, 50, 40, 40, 40, 90, NULL),
    -- #061 Poliwhirl
    (61, 6100, 3, 3, NULL, 11, 6, NULL, 2, NULL, 65, 65, 65, 50, 50, 90, NULL),
    -- #062 Poliwrath
    (62, 6200, 3, 3, 7, 11, 6, NULL, 2, NULL, 90, 85, 95, 70, 90, 70, NULL),
    -- #063 Abra
    (63, 6300, 3, 11, NULL, 28, 39, NULL, 10, NULL, 25, 20, 15, 105, 55, 90, NULL),
    -- #064 Kadabra
    (64, 6400, 3, 11, NULL, 28, 39, NULL, 10, NULL, 40, 35, 30, 120, 70, 105, NULL),
    -- #065 Alakazam
    (65, 6500, 3, 11, NULL, 28, 39, NULL, 10, NULL, 55, 50, 45, 135, 85, 120, NULL),
    -- #066 Machop
    (66, 6600, 3, 7, NULL, 62, NULL, NULL, 10, NULL, 70, 80, 50, 35, 35, 35, NULL),
    -- #067 Machoke
    (67, 6700, 3, 7, NULL, 62, NULL, NULL, 10, NULL, 80, 100, 70, 50, 60, 45, NULL),
    -- #068 Machamp
    (68, 6800, 3, 7, NULL, 62, NULL, NULL, 10, NULL, 90, 130, 80, 65, 85, 55, NULL),
    -- #069 Bellsprout
    (69, 6900, 3, 5, 8, 34, NULL, NULL, 9, NULL, 50, 75, 35, 70, 30, 40, NULL),
    -- #070 Weepinbell
    (70, 7000, 3, 5, 8, 34, NULL, NULL, 9, NULL, 65, 90, 50, 85, 45, 55, NULL),
    -- #071 Victreebel
    (71, 7100, 3, 5, 8, 34, NULL, NULL, 9, NULL, 80, 105, 65, 100, 60, 70, NULL),
    -- #072 Tentacool
    (72, 7200, 3, 3, 8, 29, 64, NULL, 4, NULL, 40, 40, 35, 50, 100, 70, NULL),
    -- #073 Tentacruel
    (73, 7300, 3, 3, 8, 29, 64, NULL, 4, NULL, 80, 70, 65, 80, 120, 100, NULL),
    -- #074 Geodude
    (74, 7400, 3, 13, 9, 69, 5, NULL, 11, NULL, 40, 80, 100, 30, 30, 20, NULL),
    -- #075 Graveler
    (75, 7500, 3, 13, 9, 69, 5, NULL, 11, NULL, 55, 95, 115, 45, 45, 35, NULL),
    -- #076 Golem
    (76, 7600, 3, 13, 9, 69, 5, NULL, 11, NULL, 80, 110, 130, 55, 65, 45, NULL),
    -- #077 Ponyta
    (77, 7700, 3, 2, NULL, 50, 18, NULL, 7, NULL, 50, 85, 55, 65, 65, 90, NULL),
    -- #078 Rapidash
    (78, 7800, 3, 2, NULL, 50, 18, NULL, 7, NULL, 65, 100, 70, 80, 80, 105, NULL),
    -- #079 Slowpoke
    (79, 7900, 3, 3, 11, 12, 20, NULL, 1, 2, 90, 65, 65, 40, 40, 15, NULL),
    -- #080 Slowbro
    (80, 8000, 3, 3, 11, 12, 20, NULL, 1, 2, 95, 75, 110, 100, 80, 30, NULL),
    -- #081 Magnemite
    (81, 8100, 3, 4, 17, 42, 5, NULL, 11, NULL, 25, 35, 70, 95, 55, 45, NULL),
    -- #082 Magneton
    (82, 8200, 3, 4, 17, 42, 5, NULL, 11, NULL, 50, 60, 95, 120, 70, 70, NULL),
    -- #083 Species 83
    (83, 8300, 3, 1, 10, 51, 39, NULL, 6, 7, 52, 65, 55, 58, 62, 60, NULL),
    -- #084 Doduo
    (84, 8400, 3, 1, 10, 50, 48, NULL, 6, NULL, 35, 85, 45, 35, 35, 75, NULL),
    -- #085 Dodrio
    (85, 8500, 3, 1, 10, 50, 48, NULL, 6, NULL, 60, 110, 70, 60, 60, 100, NULL),
    -- #086 Seel
    (86, 8600, 3, 3, NULL, 47, NULL, NULL, 2, 7, 65, 45, 55, 45, 70, 45, NULL),
    -- #087 Dewgong
    (87, 8700, 3, 3, 6, 47, NULL, NULL, 2, 7, 90, 70, 80, 70, 95, 70, NULL),
    -- #088 Grimer
    (88, 8800, 3, 8, NULL, 1, 60, NULL, 12, NULL, 80, 80, 50, 40, 50, 25, NULL),
    -- #089 Muk
    (89, 8900, 3, 8, NULL, 1, 60, NULL, 12, NULL, 105, 105, 75, 65, 100, 50, NULL),
    -- #090 Shellder
    (90, 9000, 3, 3, NULL, 75, NULL, NULL, 4, NULL, 30, 65, 100, 45, 25, 40, NULL),
    -- #091 Cloyster
    (91, 9100, 3, 3, 6, 75, NULL, NULL, 4, NULL, 50, 95, 180, 85, 45, 70, NULL),
    -- #092 Gastly
    (92, 9200, 3, 14, 8, 26, NULL, NULL, 12, NULL, 30, 35, 30, 100, 35, 80, NULL),
    -- #093 Haunter
    (93, 9300, 3, 14, 8, 26, NULL, NULL, 12, NULL, 45, 50, 45, 115, 55, 95, NULL),
    -- #094 Gengar
    (94, 9400, 3, 14, 8, 26, NULL, NULL, 12, NULL, 60, 65, 60, 130, 75, 110, NULL),
    -- #095 Onix
    (95, 9500, 3, 13, 9, 69, 5, NULL, 11, NULL, 35, 45, 160, 30, 45, 70, NULL),
    -- #096 Drowzee
    (96, 9600, 3, 11, NULL, 15, NULL, NULL, 10, NULL, 60, 48, 45, 43, 90, 42, NULL),
    -- #097 Hypno
    (97, 9700, 3, 11, NULL, 15, NULL, NULL, 10, NULL, 85, 73, 70, 73, 115, 67, NULL),
    -- #098 Krabby
    (98, 9800, 3, 3, NULL, 52, 75, NULL, 4, NULL, 30, 105, 90, 25, 25, 50, NULL),
    -- #099 Kingler
    (99, 9900, 3, 3, NULL, 52, 75, NULL, 4, NULL, 55, 130, 115, 50, 50, 75, NULL),
    -- #100 Voltorb
    (100, 10000, 3, 4, NULL, 43, 9, NULL, 11, NULL, 40, 30, 50, 55, 55, 100, NULL),
    -- #101 Electrode
    (101, 10100, 3, 4, NULL, 43, 9, NULL, 11, NULL, 60, 50, 70, 80, 80, 140, NULL),
    -- #102 Exeggcute
    (102, 10200, 3, 5, 11, 34, NULL, NULL, 9, NULL, 60, 40, 80, 60, 45, 40, NULL),
    -- #103 Exeggutor
    (103, 10300, 3, 5, 11, 34, NULL, NULL, 9, NULL, 95, 95, 85, 125, 65, 55, NULL),
    -- #104 Cubone
    (104, 10400, 3, 9, NULL, 69, 31, NULL, 1, NULL, 50, 50, 95, 40, 50, 35, NULL),
    -- #105 Marowak
    (105, 10500, 3, 9, NULL, 69, 31, NULL, 1, NULL, 60, 80, 110, 50, 80, 45, NULL),
    -- #106 Hitmonlee
    (106, 10600, 3, 7, NULL, 7, NULL, NULL, 10, NULL, 50, 120, 53, 35, 110, 87, NULL),
    -- #107 Hitmonchan
    (107, 10700, 3, 7, NULL, 51, NULL, NULL, 10, NULL, 50, 105, 79, 35, 110, 76, NULL),
    -- #108 Lickitung
    (108, 10800, 3, 1, NULL, 20, 12, NULL, 1, NULL, 90, 55, 75, 60, 75, 30, NULL),
    -- #109 Koffing
    (109, 10900, 3, 8, NULL, 26, NULL, NULL, 12, NULL, 40, 65, 95, 60, 45, 35, NULL),
    -- #110 Weezing
    (110, 11000, 3, 8, NULL, 26, NULL, NULL, 12, NULL, 65, 90, 120, 85, 70, 60, NULL),
    -- #111 Rhyhorn
    (111, 11100, 3, 9, 13, 31, 69, NULL, 1, 7, 80, 85, 95, 30, 30, 25, NULL),
    -- #112 Rhydon
    (112, 11200, 3, 9, 13, 31, 69, NULL, 1, 7, 105, 130, 120, 45, 45, 40, NULL),
    -- #113 Chansey
    (113, 11300, 3, 1, NULL, 30, 32, NULL, 8, NULL, 250, 5, 5, 35, 105, 50, NULL),
    -- #114 Tangela
    (114, 11400, 3, 5, NULL, 34, NULL, NULL, 9, NULL, 65, 55, 115, 100, 40, 60, NULL),
    -- #115 Kangaskhan
    (115, 11500, 3, 1, NULL, 48, NULL, NULL, 1, NULL, 105, 95, 80, 40, 80, 90, NULL),
    -- #116 Horsea
    (116, 11600, 3, 3, NULL, 33, NULL, NULL, 2, 13, 30, 40, 70, 70, 25, 60, NULL),
    -- #117 Seadra
    (117, 11700, 3, 3, NULL, 38, NULL, NULL, 2, 13, 55, 65, 95, 95, 45, 85, NULL),
    -- #118 Goldeen
    (118, 11800, 3, 3, NULL, 33, 41, NULL, 3, NULL, 45, 67, 60, 35, 50, 63, NULL),
    -- #119 Seaking
    (119, 11900, 3, 3, NULL, 33, 41, NULL, 3, NULL, 80, 92, 65, 65, 80, 68, NULL),
    -- #120 Staryu
    (120, 12000, 3, 3, NULL, 35, 30, NULL, 4, NULL, 30, 45, 55, 70, 55, 85, NULL),
    -- #121 Starmie
    (121, 12100, 3, 3, 11, 35, 30, NULL, 4, NULL, 60, 75, 85, 100, 85, 115, NULL),
    -- #122 Mr. Mime
    (122, 12200, 3, 11, NULL, 43, NULL, NULL, 10, NULL, 40, 45, 65, 100, 120, 90, NULL),
    -- #123 Scyther
    (123, 12300, 3, 12, 10, 68, NULL, NULL, 5, NULL, 70, 110, 80, 55, 80, 105, NULL),
    -- #124 Jynx
    (124, 12400, 3, 6, 11, 12, NULL, NULL, 10, NULL, 65, 50, 35, 115, 95, 95, NULL),
    -- #125 Electabuzz
    (125, 12500, 3, 4, NULL, 9, NULL, NULL, 10, NULL, 65, 83, 57, 95, 85, 105, NULL),
    -- #126 Magmar
    (126, 12600, 3, 2, NULL, 49, NULL, NULL, 10, NULL, 65, 95, 57, 100, 85, 93, NULL),
    -- #127 Pinsir
    (127, 12700, 3, 12, NULL, 52, NULL, NULL, 5, NULL, 65, 125, 100, 55, 70, 85, NULL),
    -- #128 Tauros
    (128, 12800, 3, 1, NULL, 22, NULL, NULL, 7, NULL, 75, 100, 95, 40, 70, 110, NULL),
    -- #129 Magikarp
    (129, 12900, 3, 3, NULL, 33, NULL, NULL, 3, 13, 20, 10, 55, 15, 20, 80, NULL),
    -- #130 Gyarados
    (130, 13000, 3, 3, 10, 22, NULL, NULL, 3, 13, 95, 125, 79, 60, 100, 81, NULL),
    -- #131 Lapras
    (131, 13100, 3, 3, 6, 11, 75, NULL, 1, 2, 130, 85, 80, 85, 95, 60, NULL),
    -- #132 Ditto
    (132, 13200, 3, 1, NULL, 7, NULL, NULL, 14, NULL, 48, 48, 48, 48, 48, 48, NULL),
    -- #133 Eevee
    (133, 13300, 3, 1, NULL, 50, NULL, NULL, 7, NULL, 55, 55, 50, 45, 65, 55, NULL),
    -- #134 Vaporeon
    (134, 13400, 3, 3, NULL, 11, NULL, NULL, 7, NULL, 130, 65, 60, 110, 95, 65, NULL),
    -- #135 Jolteon
    (135, 13500, 3, 4, NULL, 10, NULL, NULL, 7, NULL, 65, 65, 60, 110, 95, 130, NULL),
    -- #136 Flareon
    (136, 13600, 3, 2, NULL, 18, NULL, NULL, 7, NULL, 65, 130, 60, 95, 110, 65, NULL),
    -- #137 Porygon
    (137, 13700, 3, 1, NULL, 36, NULL, NULL, 11, NULL, 65, 60, 70, 85, 75, 40, NULL),
    -- #138 Omanyte
    (138, 13800, 3, 13, 3, 33, 75, NULL, 2, 4, 35, 40, 100, 90, 55, 35, NULL),
    -- #139 Omastar
    (139, 13900, 3, 13, 3, 33, 75, NULL, 2, 4, 70, 60, 125, 115, 70, 55, NULL),
    -- #140 Kabuto
    (140, 14000, 3, 13, 3, 33, 4, NULL, 2, 4, 30, 80, 90, 55, 45, 55, NULL),
    -- #141 Kabutops
    (141, 14100, 3, 13, 3, 33, 4, NULL, 2, 4, 60, 115, 105, 65, 70, 80, NULL),
    -- #142 Aerodactyl
    (142, 14200, 3, 13, 10, 69, 46, NULL, 6, NULL, 80, 105, 65, 60, 75, 130, NULL),
    -- #143 Snorlax
    (143, 14300, 3, 1, NULL, 17, 47, NULL, 1, NULL, 160, 110, 65, 65, 110, 30, NULL),
    -- #144 Articuno
    (144, 14400, 3, 6, 10, 46, NULL, NULL, 15, NULL, 90, 85, 100, 95, 125, 85, NULL),
    -- #145 Zapdos
    (145, 14500, 3, 4, 10, 46, NULL, NULL, 15, NULL, 90, 90, 85, 125, 90, 100, NULL),
    -- #146 Moltres
    (146, 14600, 3, 2, 10, 46, NULL, NULL, 15, NULL, 90, 100, 90, 125, 85, 90, NULL),
    -- #147 Dratini
    (147, 14700, 3, 15, NULL, 61, NULL, NULL, 2, 13, 41, 64, 45, 50, 50, 50, NULL),
    -- #148 Dragonair
    (148, 14800, 3, 15, NULL, 61, NULL, NULL, 2, 13, 61, 84, 65, 70, 70, 70, NULL),
    -- #149 Dragonite
    (149, 14900, 3, 15, 10, 39, NULL, NULL, 2, 13, 91, 134, 95, 100, 100, 80, NULL),
    -- #150 Mewtwo
    (150, 15000, 3, 11, NULL, 46, NULL, NULL, 15, NULL, 106, 110, 90, 154, 90, 130, NULL),
    -- #151 Mew
    (151, 15100, 3, 11, NULL, 28, NULL, NULL, 15, NULL, 100, 100, 100, 100, 100, 100, NULL);