-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 005_pokemon_attributes_gen3_changes_gen1_pokemon.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen3 changes gen1 pokemon.
-- Generation 1 stores the single Special stat in both special-attack columns and has no egg groups or abilities.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0001 Bulbasaur
  (1, 100, 3, 5, 8, 65, NULL, NULL, 1, 9, 45, 49, 49, 65, 65, 45),
  -- #0002 Ivysaur
  (2, 200, 3, 5, 8, 65, NULL, NULL, 1, 9, 60, 62, 63, 80, 80, 60),
  -- #0003 Venusaur
  (3, 300, 3, 5, 8, 65, NULL, NULL, 1, 9, 80, 82, 83, 100, 100, 80),
  -- #0004 Charmander
  (4, 400, 3, 2, NULL, 66, NULL, NULL, 1, 13, 39, 52, 43, 60, 50, 65),
  -- #0005 Charmeleon
  (5, 500, 3, 2, NULL, 66, NULL, NULL, 1, 13, 58, 64, 58, 80, 65, 80),
  -- #0006 Charizard
  (6, 600, 3, 2, 10, 66, NULL, NULL, 1, 13, 78, 84, 78, 109, 85, 100),
  -- #0007 Squirtle
  (7, 700, 3, 3, NULL, 67, NULL, NULL, 1, 2, 44, 48, 65, 50, 64, 43),
  -- #0008 Wartortle
  (8, 800, 3, 3, NULL, 67, NULL, NULL, 1, 2, 59, 63, 80, 65, 80, 58),
  -- #0009 Blastoise
  (9, 900, 3, 3, NULL, 67, NULL, NULL, 1, 2, 79, 83, 100, 85, 105, 78),
  -- #0010 Caterpie
  (10, 1000, 3, 12, NULL, 19, NULL, NULL, 5, NULL, 45, 30, 35, 20, 20, 45),
  -- #0011 Metapod
  (11, 1100, 3, 12, NULL, 61, NULL, NULL, 5, NULL, 50, 20, 55, 25, 25, 30),
  -- #0012 Butterfree
  (12, 1200, 3, 12, 10, 14, NULL, NULL, 5, NULL, 60, 45, 50, 80, 80, 70),
  -- #0013 Weedle
  (13, 1300, 3, 12, 8, 19, NULL, NULL, 5, NULL, 40, 35, 30, 20, 20, 50),
  -- #0014 Kakuna
  (14, 1400, 3, 12, 8, 61, NULL, NULL, 5, NULL, 45, 25, 50, 25, 25, 35),
  -- #0015 Beedrill
  (15, 1500, 3, 12, 8, 68, NULL, NULL, 5, NULL, 65, 80, 40, 45, 80, 75),
  -- #0016 Pidgey
  (16, 1600, 3, 1, 10, 51, NULL, NULL, 6, NULL, 40, 45, 40, 35, 35, 56),
  -- #0017 Pidgeotto
  (17, 1700, 3, 1, 10, 51, NULL, NULL, 6, NULL, 63, 60, 55, 50, 50, 71),
  -- #0018 Pidgeot
  (18, 1800, 3, 1, 10, 51, NULL, NULL, 6, NULL, 83, 80, 75, 70, 70, 91),
  -- #0019 Rattata
  (19, 1900, 3, 1, NULL, 50, 62, NULL, 7, NULL, 30, 56, 35, 25, 35, 72),
  -- #0020 Raticate
  (20, 2000, 3, 1, NULL, 50, 62, NULL, 7, NULL, 55, 81, 60, 50, 70, 97),
  -- #0021 Spearow
  (21, 2100, 3, 1, 10, 51, NULL, NULL, 6, NULL, 40, 60, 30, 31, 31, 70),
  -- #0022 Fearow
  (22, 2200, 3, 1, 10, 51, NULL, NULL, 6, NULL, 65, 90, 65, 61, 61, 100),
  -- #0023 Ekans
  (23, 2300, 3, 8, NULL, 22, 61, NULL, 7, 13, 35, 60, 44, 40, 54, 55),
  -- #0024 Arbok
  (24, 2400, 3, 8, NULL, 22, 61, NULL, 7, 13, 60, 85, 69, 65, 79, 80),
  -- #0025 Pikachu
  (25, 2500, 3, 4, NULL, 9, NULL, NULL, 7, 8, 35, 55, 30, 50, 40, 90),
  -- #0026 Raichu
  (26, 2600, 3, 4, NULL, 9, NULL, NULL, 7, 8, 60, 90, 55, 90, 80, 100),
  -- #0027 Sandshrew
  (27, 2700, 3, 9, NULL, 8, NULL, NULL, 7, NULL, 50, 75, 85, 20, 30, 40),
  -- #0028 Sandslash
  (28, 2800, 3, 9, NULL, 8, NULL, NULL, 7, NULL, 75, 100, 110, 45, 55, 65),
  -- #0029 Nidoran F
  (29, 2900, 3, 8, NULL, 38, NULL, NULL, 1, 7, 55, 47, 52, 40, 40, 41),
  -- #0030 Nidorina
  (30, 3000, 3, 8, NULL, 38, NULL, NULL, 15, NULL, 70, 62, 67, 55, 55, 56),
  -- #0031 Nidoqueen
  (31, 3100, 3, 8, 9, 38, NULL, NULL, 15, NULL, 90, 82, 87, 75, 85, 76),
  -- #0032 Nidoran M
  (32, 3200, 3, 8, NULL, 38, NULL, NULL, 1, 7, 46, 57, 40, 40, 40, 50),
  -- #0033 Nidorino
  (33, 3300, 3, 8, NULL, 38, NULL, NULL, 1, 7, 61, 72, 57, 55, 55, 65),
  -- #0034 Nidoking
  (34, 3400, 3, 8, 9, 38, NULL, NULL, 1, 7, 81, 92, 77, 85, 75, 85),
  -- #0035 Clefairy
  (35, 3500, 3, 1, NULL, 56, NULL, NULL, 8, NULL, 70, 45, 48, 60, 65, 35),
  -- #0036 Clefable
  (36, 3600, 3, 1, NULL, 56, NULL, NULL, 8, NULL, 95, 70, 73, 85, 90, 60),
  -- #0037 Vulpix
  (37, 3700, 3, 2, NULL, 18, NULL, NULL, 7, NULL, 38, 41, 40, 50, 65, 65),
  -- #0038 Ninetales
  (38, 3800, 3, 2, NULL, 18, NULL, NULL, 7, NULL, 73, 76, 75, 81, 100, 100),
  -- #0039 Jigglypuff
  (39, 3900, 3, 1, NULL, 56, NULL, NULL, 8, NULL, 115, 45, 20, 45, 25, 20),
  -- #0040 Wigglytuff
  (40, 4000, 3, 1, NULL, 56, NULL, NULL, 8, NULL, 140, 70, 45, 75, 50, 45),
  -- #0041 Zubat
  (41, 4100, 3, 8, 10, 39, NULL, NULL, 6, NULL, 40, 45, 35, 30, 40, 55),
  -- #0042 Golbat
  (42, 4200, 3, 8, 10, 39, NULL, NULL, 6, NULL, 75, 80, 70, 65, 75, 90),
  -- #0043 Oddish
  (43, 4300, 3, 5, 8, 34, NULL, NULL, 9, NULL, 45, 50, 55, 75, 65, 30),
  -- #0044 Gloom
  (44, 4400, 3, 5, 8, 34, NULL, NULL, 9, NULL, 60, 65, 70, 85, 75, 40),
  -- #0045 Vileplume
  (45, 4500, 3, 5, 8, 34, NULL, NULL, 9, NULL, 75, 80, 85, 100, 90, 50),
  -- #0046 Paras
  (46, 4600, 3, 12, 5, 27, NULL, NULL, 5, 9, 35, 70, 55, 45, 55, 25),
  -- #0047 Parasect
  (47, 4700, 3, 12, 5, 27, NULL, NULL, 5, 9, 60, 95, 80, 60, 80, 30),
  -- #0048 Venonat
  (48, 4800, 3, 12, 8, 14, NULL, NULL, 5, NULL, 60, 55, 50, 40, 55, 45),
  -- #0049 Venomoth
  (49, 4900, 3, 12, 8, 19, NULL, NULL, 5, NULL, 70, 65, 60, 90, 75, 90),
  -- #0050 Diglett
  (50, 5000, 3, 9, NULL, 8, 71, NULL, 7, NULL, 10, 55, 25, 35, 45, 95),
  -- #0051 Dugtrio
  (51, 5100, 3, 9, NULL, 8, 71, NULL, 7, NULL, 35, 80, 50, 50, 70, 120),
  -- #0052 Meowth
  (52, 5200, 3, 1, NULL, 53, NULL, NULL, 7, NULL, 40, 45, 35, 40, 40, 90),
  -- #0053 Persian
  (53, 5300, 3, 1, NULL, 7, NULL, NULL, 7, NULL, 65, 70, 60, 65, 65, 115),
  -- #0054 Psyduck
  (54, 5400, 3, 3, NULL, 6, 13, NULL, 2, 7, 50, 52, 48, 65, 50, 55),
  -- #0055 Golduck
  (55, 5500, 3, 3, NULL, 6, 13, NULL, 2, 7, 80, 82, 78, 95, 80, 85),
  -- #0056 Mankey
  (56, 5600, 3, 7, NULL, 72, NULL, NULL, 7, NULL, 40, 80, 35, 35, 45, 70),
  -- #0057 Primeape
  (57, 5700, 3, 7, NULL, 72, NULL, NULL, 7, NULL, 65, 105, 60, 60, 70, 95),
  -- #0058 Growlithe
  (58, 5800, 3, 2, NULL, 22, 18, NULL, 7, NULL, 55, 70, 45, 70, 50, 60),
  -- #0059 Arcanine
  (59, 5900, 3, 2, NULL, 22, 18, NULL, 7, NULL, 90, 110, 80, 100, 80, 95),
  -- #0060 Poliwag
  (60, 6000, 3, 3, NULL, 11, 6, NULL, 2, NULL, 40, 50, 40, 40, 40, 90),
  -- #0061 Poliwhirl
  (61, 6100, 3, 3, NULL, 11, 6, NULL, 2, NULL, 65, 65, 65, 50, 50, 90),
  -- #0062 Poliwrath
  (62, 6200, 3, 3, 7, 11, 6, NULL, 2, NULL, 90, 85, 95, 70, 90, 70),
  -- #0063 Abra
  (63, 6300, 3, 11, NULL, 28, 39, NULL, 10, NULL, 25, 20, 15, 105, 55, 90),
  -- #0064 Kadabra
  (64, 6400, 3, 11, NULL, 28, 39, NULL, 10, NULL, 40, 35, 30, 120, 70, 105),
  -- #0065 Alakazam
  (65, 6500, 3, 11, NULL, 28, 39, NULL, 10, NULL, 55, 50, 45, 135, 85, 120),
  -- #0066 Machop
  (66, 6600, 3, 7, NULL, 62, NULL, NULL, 10, NULL, 70, 80, 50, 35, 35, 35),
  -- #0067 Machoke
  (67, 6700, 3, 7, NULL, 62, NULL, NULL, 10, NULL, 80, 100, 70, 50, 60, 45),
  -- #0068 Machamp
  (68, 6800, 3, 7, NULL, 62, NULL, NULL, 10, NULL, 90, 130, 80, 65, 85, 55),
  -- #0069 Bellsprout
  (69, 6900, 3, 5, 8, 34, NULL, NULL, 9, NULL, 50, 75, 35, 70, 30, 40),
  -- #0070 Weepinbell
  (70, 7000, 3, 5, 8, 34, NULL, NULL, 9, NULL, 65, 90, 50, 85, 45, 55),
  -- #0071 Victreebel
  (71, 7100, 3, 5, 8, 34, NULL, NULL, 9, NULL, 80, 105, 65, 100, 60, 70),
  -- #0072 Tentacool
  (72, 7200, 3, 3, 8, 29, 64, NULL, 4, NULL, 40, 40, 35, 50, 100, 70),
  -- #0073 Tentacruel
  (73, 7300, 3, 3, 8, 29, 64, NULL, 4, NULL, 80, 70, 65, 80, 120, 100),
  -- #0074 Geodude
  (74, 7400, 3, 13, 9, 69, 5, NULL, 11, NULL, 40, 80, 100, 30, 30, 20),
  -- #0075 Graveler
  (75, 7500, 3, 13, 9, 69, 5, NULL, 11, NULL, 55, 95, 115, 45, 45, 35),
  -- #0076 Golem
  (76, 7600, 3, 13, 9, 69, 5, NULL, 11, NULL, 80, 110, 130, 55, 65, 45),
  -- #0077 Ponyta
  (77, 7700, 3, 2, NULL, 50, 18, NULL, 7, NULL, 50, 85, 55, 65, 65, 90),
  -- #0078 Rapidash
  (78, 7800, 3, 2, NULL, 50, 18, NULL, 7, NULL, 65, 100, 70, 80, 80, 105),
  -- #0079 Slowpoke
  (79, 7900, 3, 3, 11, 12, 20, NULL, 1, 2, 90, 65, 65, 40, 40, 15),
  -- #0080 Slowbro
  (80, 8000, 3, 3, 11, 12, 20, NULL, 1, 2, 95, 75, 110, 100, 80, 30),
  -- #0081 Magnemite
  (81, 8100, 3, 4, 17, 42, 5, NULL, 11, NULL, 25, 35, 70, 95, 55, 45),
  -- #0082 Magneton
  (82, 8200, 3, 4, 17, 42, 5, NULL, 11, NULL, 50, 60, 95, 120, 70, 70),
  -- #0083 Farfetch'd
  (83, 8300, 3, 1, 10, 51, 39, NULL, 6, 7, 52, 65, 55, 58, 62, 60),
  -- #0084 Doduo
  (84, 8400, 3, 1, 10, 50, 48, NULL, 6, NULL, 35, 85, 45, 35, 35, 75),
  -- #0085 Dodrio
  (85, 8500, 3, 1, 10, 50, 48, NULL, 6, NULL, 60, 110, 70, 60, 60, 100),
  -- #0086 Seel
  (86, 8600, 3, 3, NULL, 47, NULL, NULL, 2, 7, 65, 45, 55, 45, 70, 45),
  -- #0087 Dewgong
  (87, 8700, 3, 3, 6, 47, NULL, NULL, 2, 7, 90, 70, 80, 70, 95, 70),
  -- #0088 Grimer
  (88, 8800, 3, 8, NULL, 1, 60, NULL, 12, NULL, 80, 80, 50, 40, 50, 25),
  -- #0089 Muk
  (89, 8900, 3, 8, NULL, 1, 60, NULL, 12, NULL, 105, 105, 75, 65, 100, 50),
  -- #0090 Shellder
  (90, 9000, 3, 3, NULL, 75, NULL, NULL, 4, NULL, 30, 65, 100, 45, 25, 40),
  -- #0091 Cloyster
  (91, 9100, 3, 3, 6, 75, NULL, NULL, 4, NULL, 50, 95, 180, 85, 45, 70),
  -- #0092 Gastly
  (92, 9200, 3, 14, 8, 26, NULL, NULL, 12, NULL, 30, 35, 30, 100, 35, 80),
  -- #0093 Haunter
  (93, 9300, 3, 14, 8, 26, NULL, NULL, 12, NULL, 45, 50, 45, 115, 55, 95),
  -- #0094 Gengar
  (94, 9400, 3, 14, 8, 26, NULL, NULL, 12, NULL, 60, 65, 60, 130, 75, 110),
  -- #0095 Onix
  (95, 9500, 3, 13, 9, 69, 5, NULL, 11, NULL, 35, 45, 160, 30, 45, 70),
  -- #0096 Drowzee
  (96, 9600, 3, 11, NULL, 15, NULL, NULL, 10, NULL, 60, 48, 45, 43, 90, 42),
  -- #0097 Hypno
  (97, 9700, 3, 11, NULL, 15, NULL, NULL, 10, NULL, 85, 73, 70, 73, 115, 67),
  -- #0098 Krabby
  (98, 9800, 3, 3, NULL, 52, 75, NULL, 4, NULL, 30, 105, 90, 25, 25, 50),
  -- #0099 Kingler
  (99, 9900, 3, 3, NULL, 52, 75, NULL, 4, NULL, 55, 130, 115, 50, 50, 75),
  -- #0100 Voltorb
  (100, 10000, 3, 4, NULL, 43, 9, NULL, 11, NULL, 40, 30, 50, 55, 55, 100),
  -- #0101 Electrode
  (101, 10100, 3, 4, NULL, 43, 9, NULL, 11, NULL, 60, 50, 70, 80, 80, 140),
  -- #0102 Exeggcute
  (102, 10200, 3, 5, 11, 34, NULL, NULL, 9, NULL, 60, 40, 80, 60, 45, 40),
  -- #0103 Exeggutor
  (103, 10300, 3, 5, 11, 34, NULL, NULL, 9, NULL, 95, 95, 85, 125, 65, 55),
  -- #0104 Cubone
  (104, 10400, 3, 9, NULL, 69, 31, NULL, 1, NULL, 50, 50, 95, 40, 50, 35),
  -- #0105 Marowak
  (105, 10500, 3, 9, NULL, 69, 31, NULL, 1, NULL, 60, 80, 110, 50, 80, 45),
  -- #0106 Hitmonlee
  (106, 10600, 3, 7, NULL, 7, NULL, NULL, 10, NULL, 50, 120, 53, 35, 110, 87),
  -- #0107 Hitmonchan
  (107, 10700, 3, 7, NULL, 51, NULL, NULL, 10, NULL, 50, 105, 79, 35, 110, 76),
  -- #0108 Lickitung
  (108, 10800, 3, 1, NULL, 20, 12, NULL, 1, NULL, 90, 55, 75, 60, 75, 30),
  -- #0109 Koffing
  (109, 10900, 3, 8, NULL, 26, NULL, NULL, 12, NULL, 40, 65, 95, 60, 45, 35),
  -- #0110 Weezing
  (110, 11000, 3, 8, NULL, 26, NULL, NULL, 12, NULL, 65, 90, 120, 85, 70, 60),
  -- #0111 Rhyhorn
  (111, 11100, 3, 9, 13, 31, 69, NULL, 1, 7, 80, 85, 95, 30, 30, 25),
  -- #0112 Rhydon
  (112, 11200, 3, 9, 13, 31, 69, NULL, 1, 7, 105, 130, 120, 45, 45, 40),
  -- #0113 Chansey
  (113, 11300, 3, 1, NULL, 30, 32, NULL, 8, NULL, 250, 5, 5, 35, 105, 50),
  -- #0114 Tangela
  (114, 11400, 3, 5, NULL, 34, NULL, NULL, 9, NULL, 65, 55, 115, 100, 40, 60),
  -- #0115 Kangaskhan
  (115, 11500, 3, 1, NULL, 48, NULL, NULL, 1, NULL, 105, 95, 80, 40, 80, 90),
  -- #0116 Horsea
  (116, 11600, 3, 3, NULL, 33, NULL, NULL, 2, 13, 30, 40, 70, 70, 25, 60),
  -- #0117 Seadra
  (117, 11700, 3, 3, NULL, 38, NULL, NULL, 2, 13, 55, 65, 95, 95, 45, 85),
  -- #0118 Goldeen
  (118, 11800, 3, 3, NULL, 33, 41, NULL, 3, NULL, 45, 67, 60, 35, 50, 63),
  -- #0119 Seaking
  (119, 11900, 3, 3, NULL, 33, 41, NULL, 3, NULL, 80, 92, 65, 65, 80, 68),
  -- #0120 Staryu
  (120, 12000, 3, 3, NULL, 35, 30, NULL, 4, NULL, 30, 45, 55, 70, 55, 85),
  -- #0121 Starmie
  (121, 12100, 3, 3, 11, 35, 30, NULL, 4, NULL, 60, 75, 85, 100, 85, 115),
  -- #0122 Mr. Mime
  (122, 12200, 3, 11, NULL, 43, NULL, NULL, 10, NULL, 40, 45, 65, 100, 120, 90),
  -- #0123 Scyther
  (123, 12300, 3, 12, 10, 68, NULL, NULL, 5, NULL, 70, 110, 80, 55, 80, 105),
  -- #0124 Jynx
  (124, 12400, 3, 6, 11, 12, NULL, NULL, 10, NULL, 65, 50, 35, 115, 95, 95),
  -- #0125 Electabuzz
  (125, 12500, 3, 4, NULL, 9, NULL, NULL, 10, NULL, 65, 83, 57, 95, 85, 105),
  -- #0126 Magmar
  (126, 12600, 3, 2, NULL, 49, NULL, NULL, 10, NULL, 65, 95, 57, 100, 85, 93),
  -- #0127 Pinsir
  (127, 12700, 3, 12, NULL, 52, NULL, NULL, 5, NULL, 65, 125, 100, 55, 70, 85),
  -- #0128 Tauros
  (128, 12800, 3, 1, NULL, 22, NULL, NULL, 7, NULL, 75, 100, 95, 40, 70, 110),
  -- #0129 Magikarp
  (129, 12900, 3, 3, NULL, 33, NULL, NULL, 3, 13, 20, 10, 55, 15, 20, 80),
  -- #0130 Gyarados
  (130, 13000, 3, 3, 10, 22, NULL, NULL, 3, 13, 95, 125, 79, 60, 100, 81),
  -- #0131 Lapras
  (131, 13100, 3, 3, 6, 11, 75, NULL, 1, 2, 130, 85, 80, 85, 95, 60),
  -- #0132 Ditto
  (132, 13200, 3, 1, NULL, 7, NULL, NULL, 14, NULL, 48, 48, 48, 48, 48, 48),
  -- #0133 Eevee
  (133, 13300, 3, 1, NULL, 50, NULL, NULL, 7, NULL, 55, 55, 50, 45, 65, 55),
  -- #0134 Vaporeon
  (134, 13400, 3, 3, NULL, 11, NULL, NULL, 7, NULL, 130, 65, 60, 110, 95, 65),
  -- #0135 Jolteon
  (135, 13500, 3, 4, NULL, 10, NULL, NULL, 7, NULL, 65, 65, 60, 110, 95, 130),
  -- #0136 Flareon
  (136, 13600, 3, 2, NULL, 18, NULL, NULL, 7, NULL, 65, 130, 60, 95, 110, 65),
  -- #0137 Porygon
  (137, 13700, 3, 1, NULL, 36, NULL, NULL, 11, NULL, 65, 60, 70, 85, 75, 40),
  -- #0138 Omanyte
  (138, 13800, 3, 13, 3, 33, 75, NULL, 2, 4, 35, 40, 100, 90, 55, 35),
  -- #0139 Omastar
  (139, 13900, 3, 13, 3, 33, 75, NULL, 2, 4, 70, 60, 125, 115, 70, 55),
  -- #0140 Kabuto
  (140, 14000, 3, 13, 3, 33, 4, NULL, 2, 4, 30, 80, 90, 55, 45, 55),
  -- #0141 Kabutops
  (141, 14100, 3, 13, 3, 33, 4, NULL, 2, 4, 60, 115, 105, 65, 70, 80),
  -- #0142 Aerodactyl
  (142, 14200, 3, 13, 10, 69, 46, NULL, 6, NULL, 80, 105, 65, 60, 75, 130),
  -- #0143 Snorlax
  (143, 14300, 3, 1, NULL, 17, 47, NULL, 1, NULL, 160, 110, 65, 65, 110, 30),
  -- #0144 Articuno
  (144, 14400, 3, 6, 10, 46, NULL, NULL, 15, NULL, 90, 85, 100, 95, 125, 85),
  -- #0145 Zapdos
  (145, 14500, 3, 4, 10, 46, NULL, NULL, 15, NULL, 90, 90, 85, 125, 90, 100),
  -- #0146 Moltres
  (146, 14600, 3, 2, 10, 46, NULL, NULL, 15, NULL, 90, 100, 90, 125, 85, 90),
  -- #0147 Dratini
  (147, 14700, 3, 15, NULL, 61, NULL, NULL, 2, 13, 41, 64, 45, 50, 50, 50),
  -- #0148 Dragonair
  (148, 14800, 3, 15, NULL, 61, NULL, NULL, 2, 13, 61, 84, 65, 70, 70, 70),
  -- #0149 Dragonite
  (149, 14900, 3, 15, 10, 39, NULL, NULL, 2, 13, 91, 134, 95, 100, 100, 80),
  -- #0150 Mewtwo
  (150, 15000, 3, 11, NULL, 46, NULL, NULL, 15, NULL, 106, 110, 90, 154, 90, 130),
  -- #0151 Mew
  (151, 15100, 3, 11, NULL, 28, NULL, NULL, 15, NULL, 100, 100, 100, 100, 100, 100);
