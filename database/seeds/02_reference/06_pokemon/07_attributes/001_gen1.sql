-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 001_pokemon_attributes_gen1.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen1.
-- Generation 1 stores the single Special stat in both special-attack columns and has no egg groups or abilities.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0001 Bulbasaur
  (1, 100, 1, 5, 8, NULL, NULL, NULL, NULL, NULL, 45, 49, 49, 65, 65, 45),
  -- #0002 Ivysaur
  (2, 200, 1, 5, 8, NULL, NULL, NULL, NULL, NULL, 60, 62, 63, 80, 80, 60),
  -- #0003 Venusaur
  (3, 300, 1, 5, 8, NULL, NULL, NULL, NULL, NULL, 80, 82, 83, 100, 100, 80),
  -- #0004 Charmander
  (4, 400, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 39, 52, 43, 50, 50, 65),
  -- #0005 Charmeleon
  (5, 500, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 58, 64, 58, 65, 65, 80),
  -- #0006 Charizard
  (6, 600, 1, 2, 10, NULL, NULL, NULL, NULL, NULL, 78, 84, 78, 85, 85, 100),
  -- #0007 Squirtle
  (7, 700, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 44, 48, 65, 50, 50, 43),
  -- #0008 Wartortle
  (8, 800, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 59, 63, 80, 65, 65, 58),
  -- #0009 Blastoise
  (9, 900, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 79, 83, 100, 85, 85, 78),
  -- #0010 Caterpie
  (10, 1000, 1, 12, NULL, NULL, NULL, NULL, NULL, NULL, 45, 30, 35, 20, 20, 45),
  -- #0011 Metapod
  (11, 1100, 1, 12, NULL, NULL, NULL, NULL, NULL, NULL, 50, 20, 55, 25, 25, 30),
  -- #0012 Butterfree
  (12, 1200, 1, 12, 10, NULL, NULL, NULL, NULL, NULL, 60, 45, 50, 80, 80, 70),
  -- #0013 Weedle
  (13, 1300, 1, 12, 8, NULL, NULL, NULL, NULL, NULL, 40, 35, 30, 20, 20, 50),
  -- #0014 Kakuna
  (14, 1400, 1, 12, 8, NULL, NULL, NULL, NULL, NULL, 45, 25, 50, 25, 25, 35),
  -- #0015 Beedrill
  (15, 1500, 1, 12, 8, NULL, NULL, NULL, NULL, NULL, 65, 80, 40, 45, 45, 75),
  -- #0016 Pidgey
  (16, 1600, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, 40, 45, 40, 35, 35, 56),
  -- #0017 Pidgeotto
  (17, 1700, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, 63, 60, 55, 50, 50, 71),
  -- #0018 Pidgeot
  (18, 1800, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, 83, 80, 75, 70, 70, 91),
  -- #0019 Rattata
  (19, 1900, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 30, 56, 35, 25, 25, 72),
  -- #0020 Raticate
  (20, 2000, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 55, 81, 60, 50, 50, 97),
  -- #0021 Spearow
  (21, 2100, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, 40, 60, 30, 31, 31, 70),
  -- #0022 Fearow
  (22, 2200, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, 65, 90, 65, 61, 61, 100),
  -- #0023 Ekans
  (23, 2300, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, 35, 60, 44, 40, 40, 55),
  -- #0024 Arbok
  (24, 2400, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, 60, 85, 69, 65, 65, 80),
  -- #0025 Pikachu
  (25, 2500, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 35, 55, 30, 50, 50, 90),
  -- #0026 Raichu
  (26, 2600, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 60, 90, 55, 90, 90, 100),
  -- #0027 Sandshrew
  (27, 2700, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, 50, 75, 85, 30, 30, 40),
  -- #0028 Sandslash
  (28, 2800, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, 75, 100, 110, 55, 55, 65),
  -- #0029 Nidoran F
  (29, 2900, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, 55, 47, 52, 40, 40, 41),
  -- #0030 Nidorina
  (30, 3000, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, 70, 62, 67, 55, 55, 56),
  -- #0031 Nidoqueen
  (31, 3100, 1, 8, 9, NULL, NULL, NULL, NULL, NULL, 90, 82, 87, 75, 75, 76),
  -- #0032 Nidoran M
  (32, 3200, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, 46, 57, 40, 40, 40, 50),
  -- #0033 Nidorino
  (33, 3300, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, 61, 72, 57, 55, 55, 65),
  -- #0034 Nidoking
  (34, 3400, 1, 8, 9, NULL, NULL, NULL, NULL, NULL, 81, 92, 77, 75, 75, 85),
  -- #0035 Clefairy
  (35, 3500, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 70, 45, 48, 60, 60, 35),
  -- #0036 Clefable
  (36, 3600, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 95, 70, 73, 85, 85, 60),
  -- #0037 Vulpix
  (37, 3700, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 38, 41, 40, 65, 65, 65),
  -- #0038 Ninetales
  (38, 3800, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 73, 76, 75, 100, 100, 100),
  -- #0039 Jigglypuff
  (39, 3900, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 115, 45, 20, 25, 25, 20),
  -- #0040 Wigglytuff
  (40, 4000, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 140, 70, 45, 50, 50, 45),
  -- #0041 Zubat
  (41, 4100, 1, 8, 10, NULL, NULL, NULL, NULL, NULL, 40, 45, 35, 40, 40, 55),
  -- #0042 Golbat
  (42, 4200, 1, 8, 10, NULL, NULL, NULL, NULL, NULL, 75, 80, 70, 75, 75, 90),
  -- #0043 Oddish
  (43, 4300, 1, 5, 8, NULL, NULL, NULL, NULL, NULL, 45, 50, 55, 75, 75, 30),
  -- #0044 Gloom
  (44, 4400, 1, 5, 8, NULL, NULL, NULL, NULL, NULL, 60, 65, 70, 85, 85, 40),
  -- #0045 Vileplume
  (45, 4500, 1, 5, 8, NULL, NULL, NULL, NULL, NULL, 75, 80, 85, 100, 100, 50),
  -- #0046 Paras
  (46, 4600, 1, 12, 5, NULL, NULL, NULL, NULL, NULL, 35, 70, 55, 55, 55, 25),
  -- #0047 Parasect
  (47, 4700, 1, 12, 5, NULL, NULL, NULL, NULL, NULL, 60, 95, 80, 80, 80, 30),
  -- #0048 Venonat
  (48, 4800, 1, 12, 8, NULL, NULL, NULL, NULL, NULL, 60, 55, 50, 40, 40, 45),
  -- #0049 Venomoth
  (49, 4900, 1, 12, 8, NULL, NULL, NULL, NULL, NULL, 70, 65, 60, 90, 90, 90),
  -- #0050 Diglett
  (50, 5000, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, 10, 55, 25, 45, 45, 95),
  -- #0051 Dugtrio
  (51, 5100, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, 35, 80, 50, 70, 70, 120),
  -- #0052 Meowth
  (52, 5200, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 40, 45, 35, 40, 40, 90),
  -- #0053 Persian
  (53, 5300, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 65, 70, 60, 65, 65, 115),
  -- #0054 Psyduck
  (54, 5400, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 50, 52, 48, 50, 50, 55),
  -- #0055 Golduck
  (55, 5500, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 80, 82, 78, 80, 80, 85),
  -- #0056 Mankey
  (56, 5600, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, 40, 80, 35, 35, 35, 70),
  -- #0057 Primeape
  (57, 5700, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, 65, 105, 60, 60, 60, 95),
  -- #0058 Growlithe
  (58, 5800, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 55, 70, 45, 50, 50, 60),
  -- #0059 Arcanine
  (59, 5900, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 90, 110, 80, 80, 80, 95),
  -- #0060 Poliwag
  (60, 6000, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 40, 50, 40, 40, 40, 90),
  -- #0061 Poliwhirl
  (61, 6100, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 65, 65, 65, 50, 50, 90),
  -- #0062 Poliwrath
  (62, 6200, 1, 3, 7, NULL, NULL, NULL, NULL, NULL, 90, 85, 95, 70, 70, 70),
  -- #0063 Abra
  (63, 6300, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, 25, 20, 15, 105, 105, 90),
  -- #0064 Kadabra
  (64, 6400, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, 40, 35, 30, 120, 120, 105),
  -- #0065 Alakazam
  (65, 6500, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, 55, 50, 45, 135, 135, 120),
  -- #0066 Machop
  (66, 6600, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, 70, 80, 50, 35, 35, 35),
  -- #0067 Machoke
  (67, 6700, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, 80, 100, 70, 50, 50, 45),
  -- #0068 Machamp
  (68, 6800, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, 90, 130, 80, 65, 65, 55),
  -- #0069 Bellsprout
  (69, 6900, 1, 5, 8, NULL, NULL, NULL, NULL, NULL, 50, 75, 35, 70, 70, 40),
  -- #0070 Weepinbell
  (70, 7000, 1, 5, 8, NULL, NULL, NULL, NULL, NULL, 65, 90, 50, 85, 85, 55),
  -- #0071 Victreebel
  (71, 7100, 1, 5, 8, NULL, NULL, NULL, NULL, NULL, 80, 105, 65, 100, 100, 70),
  -- #0072 Tentacool
  (72, 7200, 1, 3, 8, NULL, NULL, NULL, NULL, NULL, 40, 40, 35, 100, 100, 70),
  -- #0073 Tentacruel
  (73, 7300, 1, 3, 8, NULL, NULL, NULL, NULL, NULL, 80, 70, 65, 120, 120, 100),
  -- #0074 Geodude
  (74, 7400, 1, 13, 9, NULL, NULL, NULL, NULL, NULL, 40, 80, 100, 30, 30, 20),
  -- #0075 Graveler
  (75, 7500, 1, 13, 9, NULL, NULL, NULL, NULL, NULL, 55, 95, 115, 45, 45, 35),
  -- #0076 Golem
  (76, 7600, 1, 13, 9, NULL, NULL, NULL, NULL, NULL, 80, 110, 130, 55, 55, 45),
  -- #0077 Ponyta
  (77, 7700, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 50, 85, 55, 65, 65, 90),
  -- #0078 Rapidash
  (78, 7800, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 65, 100, 70, 80, 80, 105),
  -- #0079 Slowpoke
  (79, 7900, 1, 3, 11, NULL, NULL, NULL, NULL, NULL, 90, 65, 65, 40, 40, 15),
  -- #0080 Slowbro
  (80, 8000, 1, 3, 11, NULL, NULL, NULL, NULL, NULL, 95, 75, 110, 80, 80, 30),
  -- #0081 Magnemite
  (81, 8100, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 25, 35, 70, 95, 95, 45),
  -- #0082 Magneton
  (82, 8200, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 50, 60, 95, 120, 120, 70),
  -- #0083 Farfetch'd
  (83, 8300, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, 52, 65, 55, 58, 58, 60),
  -- #0084 Doduo
  (84, 8400, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, 35, 85, 45, 35, 35, 75),
  -- #0085 Dodrio
  (85, 8500, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, 60, 110, 70, 60, 60, 100),
  -- #0086 Seel
  (86, 8600, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 65, 45, 55, 70, 70, 45),
  -- #0087 Dewgong
  (87, 8700, 1, 3, 6, NULL, NULL, NULL, NULL, NULL, 90, 70, 80, 95, 95, 70),
  -- #0088 Grimer
  (88, 8800, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, 80, 80, 50, 40, 40, 25),
  -- #0089 Muk
  (89, 8900, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, 105, 105, 75, 65, 65, 50),
  -- #0090 Shellder
  (90, 9000, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 30, 65, 100, 45, 45, 40),
  -- #0091 Cloyster
  (91, 9100, 1, 3, 6, NULL, NULL, NULL, NULL, NULL, 50, 95, 180, 85, 85, 70),
  -- #0092 Gastly
  (92, 9200, 1, 14, 8, NULL, NULL, NULL, NULL, NULL, 30, 35, 30, 100, 100, 80),
  -- #0093 Haunter
  (93, 9300, 1, 14, 8, NULL, NULL, NULL, NULL, NULL, 45, 50, 45, 115, 115, 95),
  -- #0094 Gengar
  (94, 9400, 1, 14, 8, NULL, NULL, NULL, NULL, NULL, 60, 65, 60, 130, 130, 110),
  -- #0095 Onix
  (95, 9500, 1, 13, 9, NULL, NULL, NULL, NULL, NULL, 35, 45, 160, 30, 30, 70),
  -- #0096 Drowzee
  (96, 9600, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, 60, 48, 45, 90, 90, 42),
  -- #0097 Hypno
  (97, 9700, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, 85, 73, 70, 115, 115, 67),
  -- #0098 Krabby
  (98, 9800, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 30, 105, 90, 25, 25, 50),
  -- #0099 Kingler
  (99, 9900, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 55, 130, 115, 50, 50, 75),
  -- #0100 Voltorb
  (100, 10000, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 40, 30, 50, 55, 55, 100),
  -- #0101 Electrode
  (101, 10100, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 60, 50, 70, 80, 80, 140),
  -- #0102 Exeggcute
  (102, 10200, 1, 5, 11, NULL, NULL, NULL, NULL, NULL, 60, 40, 80, 60, 60, 40),
  -- #0103 Exeggutor
  (103, 10300, 1, 5, 11, NULL, NULL, NULL, NULL, NULL, 95, 95, 85, 125, 125, 55),
  -- #0104 Cubone
  (104, 10400, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, 50, 50, 95, 40, 40, 35),
  -- #0105 Marowak
  (105, 10500, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, 60, 80, 110, 50, 50, 45),
  -- #0106 Hitmonlee
  (106, 10600, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, 50, 120, 53, 35, 35, 87),
  -- #0107 Hitmonchan
  (107, 10700, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, 50, 105, 79, 35, 35, 76),
  -- #0108 Lickitung
  (108, 10800, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 90, 55, 75, 60, 60, 30),
  -- #0109 Koffing
  (109, 10900, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, 40, 65, 95, 60, 60, 35),
  -- #0110 Weezing
  (110, 11000, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, 65, 90, 120, 85, 85, 60),
  -- #0111 Rhyhorn
  (111, 11100, 1, 9, 13, NULL, NULL, NULL, NULL, NULL, 80, 85, 95, 30, 30, 25),
  -- #0112 Rhydon
  (112, 11200, 1, 9, 13, NULL, NULL, NULL, NULL, NULL, 105, 130, 120, 45, 45, 40),
  -- #0113 Chansey
  (113, 11300, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 250, 5, 5, 105, 105, 50),
  -- #0114 Tangela
  (114, 11400, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, 65, 55, 115, 100, 100, 60),
  -- #0115 Kangaskhan
  (115, 11500, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 105, 95, 80, 40, 40, 90),
  -- #0116 Horsea
  (116, 11600, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 30, 40, 70, 70, 70, 60),
  -- #0117 Seadra
  (117, 11700, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 55, 65, 95, 95, 95, 85),
  -- #0118 Goldeen
  (118, 11800, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 67, 60, 50, 50, 63),
  -- #0119 Seaking
  (119, 11900, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 80, 92, 65, 80, 80, 68),
  -- #0120 Staryu
  (120, 12000, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 30, 45, 55, 70, 70, 85),
  -- #0121 Starmie
  (121, 12100, 1, 3, 11, NULL, NULL, NULL, NULL, NULL, 60, 75, 85, 100, 100, 115),
  -- #0122 Mr. Mime
  (122, 12200, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, 40, 45, 65, 100, 100, 90),
  -- #0123 Scyther
  (123, 12300, 1, 12, 10, NULL, NULL, NULL, NULL, NULL, 70, 110, 80, 55, 55, 105),
  -- #0124 Jynx
  (124, 12400, 1, 6, 11, NULL, NULL, NULL, NULL, NULL, 65, 50, 35, 95, 95, 95),
  -- #0125 Electabuzz
  (125, 12500, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 65, 83, 57, 85, 85, 105),
  -- #0126 Magmar
  (126, 12600, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 65, 95, 57, 85, 85, 93),
  -- #0127 Pinsir
  (127, 12700, 1, 12, NULL, NULL, NULL, NULL, NULL, NULL, 65, 125, 100, 55, 55, 85),
  -- #0128 Tauros
  (128, 12800, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 75, 100, 95, 70, 70, 110),
  -- #0129 Magikarp
  (129, 12900, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, 55, 20, 20, 80),
  -- #0130 Gyarados
  (130, 13000, 1, 3, 10, NULL, NULL, NULL, NULL, NULL, 95, 125, 79, 100, 100, 81),
  -- #0131 Lapras
  (131, 13100, 1, 3, 6, NULL, NULL, NULL, NULL, NULL, 130, 85, 80, 95, 95, 60),
  -- #0132 Ditto
  (132, 13200, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 48, 48, 48, 48, 48, 48),
  -- #0133 Eevee
  (133, 13300, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 55, 55, 50, 65, 65, 55),
  -- #0134 Vaporeon
  (134, 13400, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 130, 65, 60, 110, 110, 65),
  -- #0135 Jolteon
  (135, 13500, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 65, 65, 60, 110, 110, 130),
  -- #0136 Flareon
  (136, 13600, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 65, 130, 60, 110, 110, 65),
  -- #0137 Porygon
  (137, 13700, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 65, 60, 70, 75, 75, 40),
  -- #0138 Omanyte
  (138, 13800, 1, 13, 3, NULL, NULL, NULL, NULL, NULL, 35, 40, 100, 90, 90, 35),
  -- #0139 Omastar
  (139, 13900, 1, 13, 3, NULL, NULL, NULL, NULL, NULL, 70, 60, 125, 115, 115, 55),
  -- #0140 Kabuto
  (140, 14000, 1, 13, 3, NULL, NULL, NULL, NULL, NULL, 30, 80, 90, 45, 45, 55),
  -- #0141 Kabutops
  (141, 14100, 1, 13, 3, NULL, NULL, NULL, NULL, NULL, 60, 115, 105, 70, 70, 80),
  -- #0142 Aerodactyl
  (142, 14200, 1, 13, 10, NULL, NULL, NULL, NULL, NULL, 80, 105, 65, 60, 60, 130),
  -- #0143 Snorlax
  (143, 14300, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 160, 110, 65, 65, 65, 30),
  -- #0144 Articuno
  (144, 14400, 1, 6, 10, NULL, NULL, NULL, NULL, NULL, 90, 85, 100, 125, 125, 85),
  -- #0145 Zapdos
  (145, 14500, 1, 4, 10, NULL, NULL, NULL, NULL, NULL, 90, 90, 85, 125, 125, 100),
  -- #0146 Moltres
  (146, 14600, 1, 2, 10, NULL, NULL, NULL, NULL, NULL, 90, 100, 90, 125, 125, 90),
  -- #0147 Dratini
  (147, 14700, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, 41, 64, 45, 50, 50, 50),
  -- #0148 Dragonair
  (148, 14800, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, 61, 84, 65, 70, 70, 70),
  -- #0149 Dragonite
  (149, 14900, 1, 15, 10, NULL, NULL, NULL, NULL, NULL, 91, 134, 95, 100, 100, 80),
  -- #0150 Mewtwo
  (150, 15000, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, 106, 110, 90, 154, 154, 130),
  -- #0151 Mew
  (151, 15100, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 100, 100, 100, 100);
