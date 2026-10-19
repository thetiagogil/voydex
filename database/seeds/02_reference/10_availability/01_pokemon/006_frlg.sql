-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia FireRed/LeafGreen version-exclusive Pokémon, Pokémon availability, legendary encounter, and event location pages.
-- Cross-check: PokemonDB FireRed / LeafGreen version exclusives, Serebii FireRed / LeafGreen Pokedex/location pages, and legacy Voydex FRLG availability seeds.
-- Scope note: primary availability method per obtainable form; external-trade rows preserve compatible-game usability for planning.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: FireRed / LeafGreen
-- Table: reference.pokemon_availability
-- Scope: 432 rows; all Generation III-compatible species are represented, with paired exclusives modeled as game-specific rows.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0001 Bulbasaur - Starter
  (1, 100, 6, NULL, 3, NULL),
  -- #0002 Ivysaur - Evolution
  (2, 200, 6, NULL, 7, NULL),
  -- #0003 Venusaur - Evolution
  (3, 300, 6, NULL, 7, NULL),
  -- #0004 Charmander - Starter
  (4, 400, 6, NULL, 3, NULL),
  -- #0005 Charmeleon - Evolution
  (5, 500, 6, NULL, 7, NULL),
  -- #0006 Charizard - Evolution
  (6, 600, 6, NULL, 7, NULL),
  -- #0007 Squirtle - Starter
  (7, 700, 6, NULL, 3, NULL),
  -- #0008 Wartortle - Evolution
  (8, 800, 6, NULL, 7, NULL),
  -- #0009 Blastoise - Evolution
  (9, 900, 6, NULL, 7, NULL),
  -- #0010 Caterpie - Native Encounter
  (10, 1000, 6, NULL, 1, NULL),
  -- #0011 Metapod - Evolution
  (11, 1100, 6, NULL, 7, NULL),
  -- #0012 Butterfree - Evolution
  (12, 1200, 6, NULL, 7, NULL),
  -- #0013 Weedle - Native Encounter
  (13, 1300, 6, NULL, 1, NULL),
  -- #0014 Kakuna - Evolution
  (14, 1400, 6, NULL, 7, NULL),
  -- #0015 Beedrill - Evolution
  (15, 1500, 6, NULL, 7, NULL),
  -- #0016 Pidgey - Native Encounter
  (16, 1600, 6, NULL, 1, NULL),
  -- #0017 Pidgeotto - Evolution
  (17, 1700, 6, NULL, 7, NULL),
  -- #0018 Pidgeot - Evolution
  (18, 1800, 6, NULL, 7, NULL),
  -- #0019 Rattata - Native Encounter
  (19, 1900, 6, NULL, 1, NULL),
  -- #0020 Raticate - Evolution
  (20, 2000, 6, NULL, 7, NULL),
  -- #0021 Spearow - Native Encounter
  (21, 2100, 6, NULL, 1, NULL),
  -- #0022 Fearow - Evolution
  (22, 2200, 6, NULL, 7, NULL),
  -- #0023 Ekans - FireRed - Native Encounter
  (23, 2300, 6, 9, 1, NULL),
  -- #0023 Ekans - LeafGreen - External Trade
  (23, 2300, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0024 Arbok - FireRed - Evolution
  (24, 2400, 6, 9, 7, NULL),
  -- #0024 Arbok - LeafGreen - External Trade
  (24, 2400, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0025 Pikachu - Native Encounter
  (25, 2500, 6, NULL, 1, NULL),
  -- #0026 Raichu - Evolution
  (26, 2600, 6, NULL, 7, NULL),
  -- #0027 Sandshrew - FireRed - External Trade
  (27, 2700, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0027 Sandshrew - LeafGreen - Native Encounter
  (27, 2700, 6, 10, 1, NULL),
  -- #0028 Sandslash - FireRed - External Trade
  (28, 2800, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0028 Sandslash - LeafGreen - Evolution
  (28, 2800, 6, 10, 7, NULL),
  -- #0029 Nidoran F - Native Encounter
  (29, 2900, 6, NULL, 1, NULL),
  -- #0030 Nidorina - Evolution
  (30, 3000, 6, NULL, 7, NULL),
  -- #0031 Nidoqueen - Evolution
  (31, 3100, 6, NULL, 7, NULL),
  -- #0032 Nidoran M - Native Encounter
  (32, 3200, 6, NULL, 1, NULL),
  -- #0033 Nidorino - Evolution
  (33, 3300, 6, NULL, 7, NULL),
  -- #0034 Nidoking - Evolution
  (34, 3400, 6, NULL, 7, NULL),
  -- #0035 Clefairy - Native Encounter
  (35, 3500, 6, NULL, 1, NULL),
  -- #0036 Clefable - Evolution
  (36, 3600, 6, NULL, 7, NULL),
  -- #0037 Vulpix - FireRed - External Trade
  (37, 3700, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0037 Vulpix - LeafGreen - Native Encounter
  (37, 3700, 6, 10, 1, NULL),
  -- #0038 Ninetales - FireRed - External Trade
  (38, 3800, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0038 Ninetales - LeafGreen - Evolution
  (38, 3800, 6, 10, 7, NULL),
  -- #0039 Jigglypuff - Native Encounter
  (39, 3900, 6, NULL, 1, NULL),
  -- #0040 Wigglytuff - Evolution
  (40, 4000, 6, NULL, 7, NULL),
  -- #0041 Zubat - Native Encounter
  (41, 4100, 6, NULL, 1, NULL),
  -- #0042 Golbat - Evolution
  (42, 4200, 6, NULL, 7, NULL),
  -- #0043 Oddish - FireRed - Native Encounter
  (43, 4300, 6, 9, 1, NULL),
  -- #0043 Oddish - LeafGreen - External Trade
  (43, 4300, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0044 Gloom - FireRed - Evolution
  (44, 4400, 6, 9, 7, NULL),
  -- #0044 Gloom - LeafGreen - External Trade
  (44, 4400, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0045 Vileplume - FireRed - Evolution
  (45, 4500, 6, 9, 7, NULL),
  -- #0045 Vileplume - LeafGreen - External Trade
  (45, 4500, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0046 Paras - Native Encounter
  (46, 4600, 6, NULL, 1, NULL),
  -- #0047 Parasect - Evolution
  (47, 4700, 6, NULL, 7, NULL),
  -- #0048 Venonat - Native Encounter
  (48, 4800, 6, NULL, 1, NULL),
  -- #0049 Venomoth - Evolution
  (49, 4900, 6, NULL, 7, NULL),
  -- #0050 Diglett - Native Encounter
  (50, 5000, 6, NULL, 1, NULL),
  -- #0051 Dugtrio - Evolution
  (51, 5100, 6, NULL, 7, NULL),
  -- #0052 Meowth - Native Encounter
  (52, 5200, 6, NULL, 1, NULL),
  -- #0053 Persian - Evolution
  (53, 5300, 6, NULL, 7, NULL),
  -- #0054 Psyduck - FireRed - Native Encounter
  (54, 5400, 6, 9, 1, NULL),
  -- #0054 Psyduck - LeafGreen - External Trade
  (54, 5400, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0055 Golduck - FireRed - Evolution
  (55, 5500, 6, 9, 7, NULL),
  -- #0055 Golduck - LeafGreen - External Trade
  (55, 5500, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0056 Mankey - Native Encounter
  (56, 5600, 6, NULL, 1, NULL),
  -- #0057 Primeape - Evolution
  (57, 5700, 6, NULL, 7, NULL),
  -- #0058 Growlithe - FireRed - Native Encounter
  (58, 5800, 6, 9, 1, NULL),
  -- #0058 Growlithe - LeafGreen - External Trade
  (58, 5800, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0059 Arcanine - FireRed - Evolution
  (59, 5900, 6, 9, 7, NULL),
  -- #0059 Arcanine - LeafGreen - External Trade
  (59, 5900, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0060 Poliwag - Native Encounter
  (60, 6000, 6, NULL, 1, NULL),
  -- #0061 Poliwhirl - Evolution
  (61, 6100, 6, NULL, 7, NULL),
  -- #0062 Poliwrath - Evolution
  (62, 6200, 6, NULL, 7, NULL),
  -- #0063 Abra - Native Encounter
  (63, 6300, 6, NULL, 1, NULL),
  -- #0064 Kadabra - Evolution
  (64, 6400, 6, NULL, 7, NULL),
  -- #0065 Alakazam - Evolution
  (65, 6500, 6, NULL, 7, NULL),
  -- #0066 Machop - Native Encounter
  (66, 6600, 6, NULL, 1, NULL),
  -- #0067 Machoke - Evolution
  (67, 6700, 6, NULL, 7, NULL),
  -- #0068 Machamp - Evolution
  (68, 6800, 6, NULL, 7, NULL),
  -- #0069 Bellsprout - FireRed - External Trade
  (69, 6900, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0069 Bellsprout - LeafGreen - Native Encounter
  (69, 6900, 6, 10, 1, NULL),
  -- #0070 Weepinbell - FireRed - External Trade
  (70, 7000, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0070 Weepinbell - LeafGreen - Evolution
  (70, 7000, 6, 10, 7, NULL),
  -- #0071 Victreebel - FireRed - External Trade
  (71, 7100, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0071 Victreebel - LeafGreen - Evolution
  (71, 7100, 6, 10, 7, NULL),
  -- #0072 Tentacool - Native Encounter
  (72, 7200, 6, NULL, 1, NULL),
  -- #0073 Tentacruel - Evolution
  (73, 7300, 6, NULL, 7, NULL),
  -- #0074 Geodude - Native Encounter
  (74, 7400, 6, NULL, 1, NULL),
  -- #0075 Graveler - Evolution
  (75, 7500, 6, NULL, 7, NULL),
  -- #0076 Golem - Evolution
  (76, 7600, 6, NULL, 7, NULL),
  -- #0077 Ponyta - Native Encounter
  (77, 7700, 6, NULL, 1, NULL),
  -- #0078 Rapidash - Evolution
  (78, 7800, 6, NULL, 7, NULL),
  -- #0079 Slowpoke - FireRed - External Trade
  (79, 7900, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0079 Slowpoke - LeafGreen - Native Encounter
  (79, 7900, 6, 10, 1, NULL),
  -- #0080 Slowbro - FireRed - External Trade
  (80, 8000, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0080 Slowbro - LeafGreen - Evolution
  (80, 8000, 6, 10, 7, NULL),
  -- #0081 Magnemite - Native Encounter
  (81, 8100, 6, NULL, 1, NULL),
  -- #0082 Magneton - Evolution
  (82, 8200, 6, NULL, 7, NULL),
  -- #0083 Farfetch'd - In-Game Trade
  (83, 8300, 6, NULL, 5, NULL),
  -- #0084 Doduo - Native Encounter
  (84, 8400, 6, NULL, 1, NULL),
  -- #0085 Dodrio - Evolution
  (85, 8500, 6, NULL, 7, NULL),
  -- #0086 Seel - Native Encounter
  (86, 8600, 6, NULL, 1, NULL),
  -- #0087 Dewgong - Evolution
  (87, 8700, 6, NULL, 7, NULL),
  -- #0088 Grimer - Native Encounter
  (88, 8800, 6, NULL, 1, NULL),
  -- #0089 Muk - Evolution
  (89, 8900, 6, NULL, 7, NULL),
  -- #0090 Shellder - FireRed - Native Encounter
  (90, 9000, 6, 9, 1, NULL),
  -- #0090 Shellder - LeafGreen - External Trade
  (90, 9000, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0091 Cloyster - FireRed - Evolution
  (91, 9100, 6, 9, 7, NULL),
  -- #0091 Cloyster - LeafGreen - External Trade
  (91, 9100, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0092 Gastly - Native Encounter
  (92, 9200, 6, NULL, 1, NULL),
  -- #0093 Haunter - Evolution
  (93, 9300, 6, NULL, 7, NULL),
  -- #0094 Gengar - Evolution
  (94, 9400, 6, NULL, 7, NULL),
  -- #0095 Onix - Native Encounter
  (95, 9500, 6, NULL, 1, NULL),
  -- #0096 Drowzee - Native Encounter
  (96, 9600, 6, NULL, 1, NULL),
  -- #0097 Hypno - Evolution
  (97, 9700, 6, NULL, 7, NULL),
  -- #0098 Krabby - Native Encounter
  (98, 9800, 6, NULL, 1, NULL),
  -- #0099 Kingler - Evolution
  (99, 9900, 6, NULL, 7, NULL),
  -- #0100 Voltorb - Native Encounter
  (100, 10000, 6, NULL, 1, NULL),
  -- #0101 Electrode - Evolution
  (101, 10100, 6, NULL, 7, NULL),
  -- #0102 Exeggcute - Native Encounter
  (102, 10200, 6, NULL, 1, NULL),
  -- #0103 Exeggutor - Evolution
  (103, 10300, 6, NULL, 7, NULL),
  -- #0104 Cubone - Native Encounter
  (104, 10400, 6, NULL, 1, NULL),
  -- #0105 Marowak - Evolution
  (105, 10500, 6, NULL, 7, NULL),
  -- #0106 Hitmonlee - Gift
  (106, 10600, 6, NULL, 4, 'Fighting Dojo gift choice; only one Hitmonlee/Hitmonchan per save without trading.'),
  -- #0107 Hitmonchan - Gift
  (107, 10700, 6, NULL, 4, 'Fighting Dojo gift choice; only one Hitmonlee/Hitmonchan per save without trading.'),
  -- #0108 Lickitung - In-Game Trade
  (108, 10800, 6, NULL, 5, NULL),
  -- #0109 Koffing - Native Encounter
  (109, 10900, 6, NULL, 1, NULL),
  -- #0110 Weezing - Evolution
  (110, 11000, 6, NULL, 7, NULL),
  -- #0111 Rhyhorn - Native Encounter
  (111, 11100, 6, NULL, 1, NULL),
  -- #0112 Rhydon - Evolution
  (112, 11200, 6, NULL, 7, NULL),
  -- #0113 Chansey - Native Encounter
  (113, 11300, 6, NULL, 1, NULL),
  -- #0114 Tangela - Native Encounter
  (114, 11400, 6, NULL, 1, NULL),
  -- #0115 Kangaskhan - Native Encounter
  (115, 11500, 6, NULL, 1, NULL),
  -- #0116 Horsea - Native Encounter
  (116, 11600, 6, NULL, 1, NULL),
  -- #0117 Seadra - Evolution
  (117, 11700, 6, NULL, 7, NULL),
  -- #0118 Goldeen - Native Encounter
  (118, 11800, 6, NULL, 1, NULL),
  -- #0119 Seaking - Evolution
  (119, 11900, 6, NULL, 7, NULL),
  -- #0120 Staryu - FireRed - External Trade
  (120, 12000, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0120 Staryu - LeafGreen - Native Encounter
  (120, 12000, 6, 10, 1, NULL),
  -- #0121 Starmie - FireRed - External Trade
  (121, 12100, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0121 Starmie - LeafGreen - Evolution
  (121, 12100, 6, 10, 7, NULL),
  -- #0122 Mr. Mime - In-Game Trade
  (122, 12200, 6, NULL, 5, NULL),
  -- #0123 Scyther - FireRed - Native Encounter
  (123, 12300, 6, 9, 1, NULL),
  -- #0123 Scyther - LeafGreen - External Trade
  (123, 12300, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0124 Jynx - In-Game Trade
  (124, 12400, 6, NULL, 5, NULL),
  -- #0125 Electabuzz - FireRed - Native Encounter
  (125, 12500, 6, 9, 1, NULL),
  -- #0125 Electabuzz - LeafGreen - External Trade
  (125, 12500, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0126 Magmar - FireRed - External Trade
  (126, 12600, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0126 Magmar - LeafGreen - Native Encounter
  (126, 12600, 6, 10, 1, NULL),
  -- #0127 Pinsir - FireRed - External Trade
  (127, 12700, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0127 Pinsir - LeafGreen - Native Encounter
  (127, 12700, 6, 10, 1, NULL),
  -- #0128 Tauros - Native Encounter
  (128, 12800, 6, NULL, 1, NULL),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 6, NULL, 1, NULL),
  -- #0130 Gyarados - Evolution
  (130, 13000, 6, NULL, 7, NULL),
  -- #0131 Lapras - Gift
  (131, 13100, 6, NULL, 4, NULL),
  -- #0132 Ditto - Native Encounter
  (132, 13200, 6, NULL, 1, NULL),
  -- #0133 Eevee - Gift
  (133, 13300, 6, NULL, 4, NULL),
  -- #0134 Vaporeon - Evolution
  (134, 13400, 6, NULL, 7, NULL),
  -- #0135 Jolteon - Evolution
  (135, 13500, 6, NULL, 7, NULL),
  -- #0136 Flareon - Evolution
  (136, 13600, 6, NULL, 7, NULL),
  -- #0137 Porygon - Gift
  (137, 13700, 6, NULL, 4, NULL),
  -- #0138 Omanyte - Fossil Restoration
  (138, 13800, 6, NULL, 6, 'Mt. Moon fossil choice; only one Helix/Dome fossil line per save without trading.'),
  -- #0139 Omastar - Evolution
  (139, 13900, 6, NULL, 7, NULL),
  -- #0140 Kabuto - Fossil Restoration
  (140, 14000, 6, NULL, 6, 'Mt. Moon fossil choice; only one Helix/Dome fossil line per save without trading.'),
  -- #0141 Kabutops - Evolution
  (141, 14100, 6, NULL, 7, NULL),
  -- #0142 Aerodactyl - Fossil Restoration
  (142, 14200, 6, NULL, 6, NULL),
  -- #0143 Snorlax - Static Encounter
  (143, 14300, 6, NULL, 2, NULL),
  -- #0144 Articuno - Static Encounter
  (144, 14400, 6, NULL, 2, NULL),
  -- #0145 Zapdos - Static Encounter
  (145, 14500, 6, NULL, 2, NULL),
  -- #0146 Moltres - Static Encounter
  (146, 14600, 6, NULL, 2, NULL),
  -- #0147 Dratini - Native Encounter
  (147, 14700, 6, NULL, 1, NULL),
  -- #0148 Dragonair - Evolution
  (148, 14800, 6, NULL, 7, NULL),
  -- #0149 Dragonite - Evolution
  (149, 14900, 6, NULL, 7, NULL),
  -- #0150 Mewtwo - Static Encounter
  (150, 15000, 6, NULL, 2, NULL),
  -- #0151 Mew - Event
  (151, 15100, 6, NULL, 11, 'Event/distribution-only in Generation III; not obtainable through normal FireRed/LeafGreen gameplay.'),
  -- #0152 Chikorita - External Trade
  (152, 15200, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0153 Bayleef - External Trade
  (153, 15300, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0154 Meganium - External Trade
  (154, 15400, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0155 Cyndaquil - External Trade
  (155, 15500, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0156 Quilava - External Trade
  (156, 15600, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0157 Typhlosion - External Trade
  (157, 15700, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0158 Totodile - External Trade
  (158, 15800, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0159 Croconaw - External Trade
  (159, 15900, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0160 Feraligatr - External Trade
  (160, 16000, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0161 Sentret - Native Encounter
  (161, 16100, 6, NULL, 1, NULL),
  -- #0162 Furret - Evolution
  (162, 16200, 6, NULL, 7, NULL),
  -- #0163 Hoothoot - External Trade
  (163, 16300, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0164 Noctowl - External Trade
  (164, 16400, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0165 Ledyba - Native Encounter
  (165, 16500, 6, NULL, 1, NULL),
  -- #0166 Ledian - Evolution
  (166, 16600, 6, NULL, 7, NULL),
  -- #0167 Spinarak - Native Encounter
  (167, 16700, 6, NULL, 1, NULL),
  -- #0168 Ariados - Evolution
  (168, 16800, 6, NULL, 7, NULL),
  -- #0169 Crobat - Evolution
  (169, 16900, 6, NULL, 7, NULL),
  -- #0170 Chinchou - External Trade
  (170, 17000, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0171 Lanturn - External Trade
  (171, 17100, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0172 Pichu - Breeding
  (172, 17200, 6, NULL, 8, NULL),
  -- #0173 Cleffa - Breeding
  (173, 17300, 6, NULL, 8, NULL),
  -- #0174 Igglybuff - Breeding
  (174, 17400, 6, NULL, 8, NULL),
  -- #0175 Togepi - Gift
  (175, 17500, 6, NULL, 4, NULL),
  -- #0176 Togetic - Evolution
  (176, 17600, 6, NULL, 7, NULL),
  -- #0177 Natu - Native Encounter
  (177, 17700, 6, NULL, 1, NULL),
  -- #0178 Xatu - Evolution
  (178, 17800, 6, NULL, 7, NULL),
  -- #0179 Mareep - External Trade
  (179, 17900, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0180 Flaaffy - External Trade
  (180, 18000, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0181 Ampharos - External Trade
  (181, 18100, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0182 Bellossom - FireRed - Evolution
  (182, 18200, 6, 9, 7, NULL),
  -- #0182 Bellossom - LeafGreen - External Trade
  (182, 18200, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0183 Marill - FireRed - External Trade
  (183, 18300, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0183 Marill - LeafGreen - Native Encounter
  (183, 18300, 6, 10, 1, NULL),
  -- #0184 Azumarill - FireRed - External Trade
  (184, 18400, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0184 Azumarill - LeafGreen - Evolution
  (184, 18400, 6, 10, 7, NULL),
  -- #0185 Sudowoodo - External Trade
  (185, 18500, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0186 Politoed - Evolution
  (186, 18600, 6, NULL, 7, NULL),
  -- #0187 Hoppip - Native Encounter
  (187, 18700, 6, NULL, 1, NULL),
  -- #0188 Skiploom - Evolution
  (188, 18800, 6, NULL, 7, NULL),
  -- #0189 Jumpluff - Evolution
  (189, 18900, 6, NULL, 7, NULL),
  -- #0190 Aipom - External Trade
  (190, 19000, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0191 Sunkern - External Trade
  (191, 19100, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0192 Sunflora - External Trade
  (192, 19200, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0193 Yanma - Native Encounter
  (193, 19300, 6, NULL, 1, NULL),
  -- #0194 Wooper - FireRed - Native Encounter
  (194, 19400, 6, 9, 1, NULL),
  -- #0194 Wooper - LeafGreen - External Trade
  (194, 19400, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0195 Quagsire - FireRed - Evolution
  (195, 19500, 6, 9, 7, NULL),
  -- #0195 Quagsire - LeafGreen - External Trade
  (195, 19500, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0196 Espeon - External Trade
  (196, 19600, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0197 Umbreon - External Trade
  (197, 19700, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0198 Murkrow - FireRed - Native Encounter
  (198, 19800, 6, 9, 1, NULL),
  -- #0198 Murkrow - LeafGreen - External Trade
  (198, 19800, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0199 Slowking - FireRed - External Trade
  (199, 19900, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0199 Slowking - LeafGreen - Evolution
  (199, 19900, 6, 10, 7, NULL),
  -- #0200 Misdreavus - FireRed - External Trade
  (200, 20000, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0200 Misdreavus - LeafGreen - Native Encounter
  (200, 20000, 6, 10, 1, NULL),
  -- #0201 Unown - Native Encounter
  (201, 20100, 6, NULL, 1, NULL),
  -- #0202 Wobbuffet - Native Encounter
  (202, 20200, 6, NULL, 1, NULL),
  -- #0203 Girafarig - External Trade
  (203, 20300, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0204 Pineco - External Trade
  (204, 20400, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0205 Forretress - External Trade
  (205, 20500, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0206 Dunsparce - Native Encounter
  (206, 20600, 6, NULL, 1, NULL),
  -- #0207 Gligar - External Trade
  (207, 20700, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0208 Steelix - External Trade
  (208, 20800, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0209 Snubbull - External Trade
  (209, 20900, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0210 Granbull - External Trade
  (210, 21000, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0211 Qwilfish - FireRed - Native Encounter
  (211, 21100, 6, 9, 1, NULL),
  -- #0211 Qwilfish - LeafGreen - External Trade
  (211, 21100, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0212 Scizor - FireRed - Evolution
  (212, 21200, 6, 9, 7, NULL),
  -- #0212 Scizor - LeafGreen - External Trade
  (212, 21200, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0213 Shuckle - External Trade
  (213, 21300, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0214 Heracross - Native Encounter
  (214, 21400, 6, NULL, 1, NULL),
  -- #0215 Sneasel - FireRed - External Trade
  (215, 21500, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0215 Sneasel - LeafGreen - Native Encounter
  (215, 21500, 6, 10, 1, NULL),
  -- #0216 Teddiursa - External Trade
  (216, 21600, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0217 Ursaring - External Trade
  (217, 21700, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0218 Slugma - Native Encounter
  (218, 21800, 6, NULL, 1, NULL),
  -- #0219 Magcargo - Evolution
  (219, 21900, 6, NULL, 7, NULL),
  -- #0220 Swinub - Native Encounter
  (220, 22000, 6, NULL, 1, NULL),
  -- #0221 Piloswine - Evolution
  (221, 22100, 6, NULL, 7, NULL),
  -- #0222 Corsola - External Trade
  (222, 22200, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0223 Remoraid - FireRed - External Trade
  (223, 22300, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0223 Remoraid - LeafGreen - Native Encounter
  (223, 22300, 6, 10, 1, NULL),
  -- #0224 Octillery - FireRed - External Trade
  (224, 22400, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0224 Octillery - LeafGreen - Evolution
  (224, 22400, 6, 10, 7, NULL),
  -- #0225 Delibird - FireRed - Native Encounter
  (225, 22500, 6, 9, 1, NULL),
  -- #0225 Delibird - LeafGreen - External Trade
  (225, 22500, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0226 Mantine - FireRed - External Trade
  (226, 22600, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0226 Mantine - LeafGreen - Native Encounter
  (226, 22600, 6, 10, 1, NULL),
  -- #0227 Skarmory - FireRed - Native Encounter
  (227, 22700, 6, 9, 1, NULL),
  -- #0227 Skarmory - LeafGreen - External Trade
  (227, 22700, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0228 Houndour - External Trade
  (228, 22800, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0229 Houndoom - External Trade
  (229, 22900, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0230 Kingdra - Evolution
  (230, 23000, 6, NULL, 7, NULL),
  -- #0231 Phanpy - Native Encounter
  (231, 23100, 6, NULL, 1, NULL),
  -- #0232 Donphan - Evolution
  (232, 23200, 6, NULL, 7, NULL),
  -- #0233 Porygon2 - Evolution
  (233, 23300, 6, NULL, 7, NULL),
  -- #0234 Stantler - External Trade
  (234, 23400, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0235 Smeargle - External Trade
  (235, 23500, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0236 Tyrogue - Breeding
  (236, 23600, 6, NULL, 8, NULL),
  -- #0237 Hitmontop - Evolution
  (237, 23700, 6, NULL, 7, NULL),
  -- #0238 Smoochum - Breeding
  (238, 23800, 6, NULL, 8, NULL),
  -- #0239 Elekid - FireRed - Breeding
  (239, 23900, 6, 9, 8, NULL),
  -- #0239 Elekid - LeafGreen - External Trade
  (239, 23900, 6, 10, 12, 'Version exclusive to FireRed; available in LeafGreen only by trading from a compatible external game.'),
  -- #0240 Magby - FireRed - External Trade
  (240, 24000, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0240 Magby - LeafGreen - Breeding
  (240, 24000, 6, 10, 8, NULL),
  -- #0241 Miltank - External Trade
  (241, 24100, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0242 Blissey - Evolution
  (242, 24200, 6, NULL, 7, NULL),
  -- #0243 Raikou - Roaming Encounter
  (243, 24300, 6, NULL, 9, 'One of Raikou/Entei/Suicune roams after National Dex and the Sevii Islands Network Machine quest, depending on the chosen starter.'),
  -- #0244 Entei - Roaming Encounter
  (244, 24400, 6, NULL, 9, 'One of Raikou/Entei/Suicune roams after National Dex and the Sevii Islands Network Machine quest, depending on the chosen starter.'),
  -- #0245 Suicune - Roaming Encounter
  (245, 24500, 6, NULL, 9, 'One of Raikou/Entei/Suicune roams after National Dex and the Sevii Islands Network Machine quest, depending on the chosen starter.'),
  -- #0246 Larvitar - Native Encounter
  (246, 24600, 6, NULL, 1, NULL),
  -- #0247 Pupitar - Evolution
  (247, 24700, 6, NULL, 7, NULL),
  -- #0248 Tyranitar - Evolution
  (248, 24800, 6, NULL, 7, NULL),
  -- #0249 Lugia - Event
  (249, 24900, 6, NULL, 11, 'MysticTicket event-unlocked Navel Rock encounter in original FireRed/LeafGreen.'),
  -- #0250 Ho-Oh - Event
  (250, 25000, 6, NULL, 11, 'MysticTicket event-unlocked Navel Rock encounter in original FireRed/LeafGreen.'),
  -- #0251 Celebi - Event
  (251, 25100, 6, NULL, 11, 'Event/distribution-only in Generation III; not obtainable through normal FireRed/LeafGreen gameplay.'),
  -- #0252 Treecko - External Trade
  (252, 25200, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0253 Grovyle - External Trade
  (253, 25300, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0254 Sceptile - External Trade
  (254, 25400, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0255 Torchic - External Trade
  (255, 25500, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0256 Combusken - External Trade
  (256, 25600, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0257 Blaziken - External Trade
  (257, 25700, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0258 Mudkip - External Trade
  (258, 25800, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0259 Marshtomp - External Trade
  (259, 25900, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0260 Swampert - External Trade
  (260, 26000, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0261 Poochyena - External Trade
  (261, 26100, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0262 Mightyena - External Trade
  (262, 26200, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0263 Zigzagoon - External Trade
  (263, 26300, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0264 Linoone - External Trade
  (264, 26400, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0265 Wurmple - External Trade
  (265, 26500, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0266 Silcoon - External Trade
  (266, 26600, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0267 Beautifly - External Trade
  (267, 26700, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0268 Cascoon - External Trade
  (268, 26800, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0269 Dustox - External Trade
  (269, 26900, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0270 Lotad - External Trade
  (270, 27000, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0271 Lombre - External Trade
  (271, 27100, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0272 Ludicolo - External Trade
  (272, 27200, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0273 Seedot - External Trade
  (273, 27300, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0274 Nuzleaf - External Trade
  (274, 27400, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0275 Shiftry - External Trade
  (275, 27500, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0276 Taillow - External Trade
  (276, 27600, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0277 Swellow - External Trade
  (277, 27700, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0278 Wingull - External Trade
  (278, 27800, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0279 Pelipper - External Trade
  (279, 27900, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0280 Ralts - External Trade
  (280, 28000, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0281 Kirlia - External Trade
  (281, 28100, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0282 Gardevoir - External Trade
  (282, 28200, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0283 Surskit - External Trade
  (283, 28300, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0284 Masquerain - External Trade
  (284, 28400, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0285 Shroomish - External Trade
  (285, 28500, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0286 Breloom - External Trade
  (286, 28600, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0287 Slakoth - External Trade
  (287, 28700, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0288 Vigoroth - External Trade
  (288, 28800, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0289 Slaking - External Trade
  (289, 28900, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0290 Nincada - External Trade
  (290, 29000, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0291 Ninjask - External Trade
  (291, 29100, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0292 Shedinja - External Trade
  (292, 29200, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0293 Whismur - External Trade
  (293, 29300, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0294 Loudred - External Trade
  (294, 29400, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0295 Exploud - External Trade
  (295, 29500, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0296 Makuhita - External Trade
  (296, 29600, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0297 Hariyama - External Trade
  (297, 29700, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0298 Azurill - FireRed - External Trade
  (298, 29800, 6, 9, 12, 'Version exclusive to LeafGreen; available in FireRed only by trading from a compatible external game.'),
  -- #0298 Azurill - LeafGreen - Breeding
  (298, 29800, 6, 10, 8, NULL),
  -- #0299 Nosepass - External Trade
  (299, 29900, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0300 Skitty - External Trade
  (300, 30000, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0301 Delcatty - External Trade
  (301, 30100, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0302 Sableye - External Trade
  (302, 30200, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0303 Mawile - External Trade
  (303, 30300, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0304 Aron - External Trade
  (304, 30400, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0305 Lairon - External Trade
  (305, 30500, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0306 Aggron - External Trade
  (306, 30600, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0307 Meditite - External Trade
  (307, 30700, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0308 Medicham - External Trade
  (308, 30800, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0309 Electrike - External Trade
  (309, 30900, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0310 Manectric - External Trade
  (310, 31000, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0311 Plusle - External Trade
  (311, 31100, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0312 Minun - External Trade
  (312, 31200, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0313 Volbeat - External Trade
  (313, 31300, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0314 Illumise - External Trade
  (314, 31400, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0315 Roselia - External Trade
  (315, 31500, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0316 Gulpin - External Trade
  (316, 31600, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0317 Swalot - External Trade
  (317, 31700, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0318 Carvanha - External Trade
  (318, 31800, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0319 Sharpedo - External Trade
  (319, 31900, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0320 Wailmer - External Trade
  (320, 32000, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0321 Wailord - External Trade
  (321, 32100, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0322 Numel - External Trade
  (322, 32200, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0323 Camerupt - External Trade
  (323, 32300, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0324 Torkoal - External Trade
  (324, 32400, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0325 Spoink - External Trade
  (325, 32500, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0326 Grumpig - External Trade
  (326, 32600, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0327 Spinda - External Trade
  (327, 32700, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0328 Trapinch - External Trade
  (328, 32800, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0329 Vibrava - External Trade
  (329, 32900, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0330 Flygon - External Trade
  (330, 33000, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0331 Cacnea - External Trade
  (331, 33100, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0332 Cacturne - External Trade
  (332, 33200, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0333 Swablu - External Trade
  (333, 33300, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0334 Altaria - External Trade
  (334, 33400, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0335 Zangoose - External Trade
  (335, 33500, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0336 Seviper - External Trade
  (336, 33600, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0337 Lunatone - External Trade
  (337, 33700, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0338 Solrock - External Trade
  (338, 33800, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0339 Barboach - External Trade
  (339, 33900, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0340 Whiscash - External Trade
  (340, 34000, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0341 Corphish - External Trade
  (341, 34100, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0342 Crawdaunt - External Trade
  (342, 34200, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0343 Baltoy - External Trade
  (343, 34300, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0344 Claydol - External Trade
  (344, 34400, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0345 Lileep - External Trade
  (345, 34500, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0346 Cradily - External Trade
  (346, 34600, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0347 Anorith - External Trade
  (347, 34700, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0348 Armaldo - External Trade
  (348, 34800, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0349 Feebas - External Trade
  (349, 34900, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0350 Milotic - External Trade
  (350, 35000, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0351 Castform - External Trade
  (351, 35100, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0352 Kecleon - External Trade
  (352, 35200, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0353 Shuppet - External Trade
  (353, 35300, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0354 Banette - External Trade
  (354, 35400, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0355 Duskull - External Trade
  (355, 35500, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0356 Dusclops - External Trade
  (356, 35600, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0357 Tropius - External Trade
  (357, 35700, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0358 Chimecho - External Trade
  (358, 35800, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0359 Absol - External Trade
  (359, 35900, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0360 Wynaut - Breeding
  (360, 36000, 6, NULL, 8, NULL),
  -- #0361 Snorunt - External Trade
  (361, 36100, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0362 Glalie - External Trade
  (362, 36200, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0363 Spheal - External Trade
  (363, 36300, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0364 Sealeo - External Trade
  (364, 36400, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0365 Walrein - External Trade
  (365, 36500, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0366 Clamperl - External Trade
  (366, 36600, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0367 Huntail - External Trade
  (367, 36700, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0368 Gorebyss - External Trade
  (368, 36800, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0369 Relicanth - External Trade
  (369, 36900, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0370 Luvdisc - External Trade
  (370, 37000, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0371 Bagon - External Trade
  (371, 37100, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0372 Shelgon - External Trade
  (372, 37200, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0373 Salamence - External Trade
  (373, 37300, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0374 Beldum - External Trade
  (374, 37400, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0375 Metang - External Trade
  (375, 37500, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0376 Metagross - External Trade
  (376, 37600, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0377 Regirock - External Trade
  (377, 37700, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0378 Regice - External Trade
  (378, 37800, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0379 Registeel - External Trade
  (379, 37900, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0380 Latias - External Trade
  (380, 38000, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0381 Latios - External Trade
  (381, 38100, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0382 Kyogre - External Trade
  (382, 38200, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0383 Groudon - External Trade
  (383, 38300, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0384 Rayquaza - External Trade
  (384, 38400, 6, NULL, 12, 'Not obtainable through normal FireRed/LeafGreen gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0385 Jirachi - Event
  (385, 38500, 6, NULL, 11, 'Event/distribution-only in Generation III; not obtainable through normal FireRed/LeafGreen gameplay.'),
  -- #0386 Deoxys (Attack) - FireRed - Event
  (386, 38601, 6, 9, 11, 'AuroraTicket event-unlocked Birth Island encounter; Deoxys is Attack Forme in FireRed.'),
  -- #0386 Deoxys (Defense) - LeafGreen - Event
  (386, 38602, 6, 10, 11, 'AuroraTicket event-unlocked Birth Island encounter; Deoxys is Defense Forme in LeafGreen.');
