-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by availability and Black 2/White 2 availability notes.
-- Cross-check: PokemonDB Black 2/White 2 version exclusives, Serebii Black 2/White 2 version exclusives/item pages, and Bulbapedia P2 Laboratory/Drive notes.
-- Scope note: primary availability method per obtainable form; external-source rows preserve compatible-game usability for planning.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Black 2 / White 2
-- Table: reference.pokemon_availability
-- Scope: 726 rows; all Generation V-compatible species are represented, with game-specific rows for version sources and curated persistent form rows for Basculin, Therian forms, Kyurem fusions, and Genesect Drives.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0001 Bulbasaur - Event
  (1, 100, 12, NULL, 11, 'Official Black 2/White 2 event or distribution source.'),
  -- #0002 Ivysaur - Evolution
  (2, 200, 12, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0003 Venusaur - Evolution
  (3, 300, 12, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0004 Charmander - Event
  (4, 400, 12, NULL, 11, 'Official Black 2/White 2 event or distribution source.'),
  -- #0005 Charmeleon - Evolution
  (5, 500, 12, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0006 Charizard - Evolution
  (6, 600, 12, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0007 Squirtle - Event
  (7, 700, 12, NULL, 11, 'Official Black 2/White 2 event or distribution source.'),
  -- #0008 Wartortle - Evolution
  (8, 800, 12, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0009 Blastoise - Evolution
  (9, 900, 12, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0010 Caterpie - Black 2 - External Trade
  (10, 1000, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0010 Caterpie - White 2 - Breeding
  (10, 1000, 12, 20, 8, NULL),
  -- #0011 Metapod - Black 2 - External Trade
  (11, 1100, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0011 Metapod - White 2 - Breeding
  (11, 1100, 12, 20, 8, NULL),
  -- #0012 Butterfree - Black 2 - External Trade
  (12, 1200, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0012 Butterfree - White 2 - Native Encounter
  (12, 1200, 12, 20, 1, NULL),
  -- #0013 Weedle - Black 2 - Breeding
  (13, 1300, 12, 19, 8, NULL),
  -- #0013 Weedle - White 2 - External Trade
  (13, 1300, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0014 Kakuna - Black 2 - Breeding
  (14, 1400, 12, 19, 8, NULL),
  -- #0014 Kakuna - White 2 - External Trade
  (14, 1400, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0015 Beedrill - Black 2 - Native Encounter
  (15, 1500, 12, 19, 1, NULL),
  -- #0015 Beedrill - White 2 - External Trade
  (15, 1500, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0016 Pidgey - Transfer Only
  (16, 1600, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0017 Pidgeotto - Evolution
  (17, 1700, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0018 Pidgeot - Evolution
  (18, 1800, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0019 Rattata - Native Encounter
  (19, 1900, 12, NULL, 1, NULL),
  -- #0020 Raticate - Native Encounter
  (20, 2000, 12, NULL, 1, NULL),
  -- #0021 Spearow - Breeding
  (21, 2100, 12, NULL, 8, NULL),
  -- #0022 Fearow - Raid or Special Encounter
  (22, 2200, 12, NULL, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0023 Ekans - Transfer Only
  (23, 2300, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0024 Arbok - Evolution
  (24, 2400, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0025 Pikachu - Event
  (25, 2500, 12, NULL, 11, 'Official Black 2/White 2 event or distribution source.'),
  -- #0026 Raichu - Evolution
  (26, 2600, 12, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0027 Sandshrew - Native Encounter
  (27, 2700, 12, NULL, 1, NULL),
  -- #0028 Sandslash - Native Encounter
  (28, 2800, 12, NULL, 1, NULL),
  -- #0029 Nidoran F - Native Encounter
  (29, 2900, 12, NULL, 1, NULL),
  -- #0030 Nidorina - Evolution
  (30, 3000, 12, NULL, 7, NULL),
  -- #0031 Nidoqueen - Evolution
  (31, 3100, 12, NULL, 7, NULL),
  -- #0032 Nidoran M - Native Encounter
  (32, 3200, 12, NULL, 1, NULL),
  -- #0033 Nidorino - Evolution
  (33, 3300, 12, NULL, 7, NULL),
  -- #0034 Nidoking - Evolution
  (34, 3400, 12, NULL, 7, NULL),
  -- #0035 Clefairy - Native Encounter
  (35, 3500, 12, NULL, 1, NULL),
  -- #0036 Clefable - Native Encounter
  (36, 3600, 12, NULL, 1, NULL),
  -- #0037 Vulpix - Native Encounter
  (37, 3700, 12, NULL, 1, NULL),
  -- #0038 Ninetales - Native Encounter
  (38, 3800, 12, NULL, 1, NULL),
  -- #0039 Jigglypuff - Native Encounter
  (39, 3900, 12, NULL, 1, NULL),
  -- #0040 Wigglytuff - Native Encounter
  (40, 4000, 12, NULL, 1, NULL),
  -- #0041 Zubat - Native Encounter
  (41, 4100, 12, NULL, 1, NULL),
  -- #0042 Golbat - Native Encounter
  (42, 4200, 12, NULL, 1, NULL),
  -- #0043 Oddish - Transfer Only
  (43, 4300, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0044 Gloom - Evolution
  (44, 4400, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0045 Vileplume - Evolution
  (45, 4500, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0046 Paras - Transfer Only
  (46, 4600, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0047 Parasect - Evolution
  (47, 4700, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0048 Venonat - Native Encounter
  (48, 4800, 12, NULL, 1, NULL),
  -- #0049 Venomoth - Evolution
  (49, 4900, 12, NULL, 7, NULL),
  -- #0050 Diglett - Transfer Only
  (50, 5000, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0051 Dugtrio - Evolution
  (51, 5100, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0052 Meowth - In-Game Trade
  (52, 5200, 12, NULL, 5, 'NPC trade or received-Pokémon source in Black 2/White 2.'),
  -- #0053 Persian - Evolution
  (53, 5300, 12, NULL, 7, NULL),
  -- #0054 Psyduck - Native Encounter
  (54, 5400, 12, NULL, 1, NULL),
  -- #0055 Golduck - Native Encounter
  (55, 5500, 12, NULL, 1, NULL),
  -- #0056 Mankey - In-Game Trade
  (56, 5600, 12, NULL, 5, 'NPC trade or received-Pokémon source in Black 2/White 2.'),
  -- #0057 Primeape - Evolution
  (57, 5700, 12, NULL, 7, NULL),
  -- #0058 Growlithe - Native Encounter
  (58, 5800, 12, NULL, 1, NULL),
  -- #0059 Arcanine - Evolution
  (59, 5900, 12, NULL, 7, NULL),
  -- #0060 Poliwag - Native Encounter
  (60, 6000, 12, NULL, 1, NULL),
  -- #0061 Poliwhirl - Native Encounter
  (61, 6100, 12, NULL, 1, NULL),
  -- #0062 Poliwrath - Native Encounter
  (62, 6200, 12, NULL, 1, NULL),
  -- #0063 Abra - Breeding
  (63, 6300, 12, NULL, 8, NULL),
  -- #0064 Kadabra - Breeding
  (64, 6400, 12, NULL, 8, NULL),
  -- #0065 Alakazam - In-Game Trade
  (65, 6500, 12, NULL, 5, 'NPC trade or received-Pokémon source in Black 2/White 2.'),
  -- #0066 Machop - Transfer Only
  (66, 6600, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0067 Machoke - Evolution
  (67, 6700, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0068 Machamp - Evolution
  (68, 6800, 12, NULL, 7, 'Requires trade evolution from a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0069 Bellsprout - Transfer Only
  (69, 6900, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0070 Weepinbell - Evolution
  (70, 7000, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0071 Victreebel - Evolution
  (71, 7100, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0072 Tentacool - Transfer Only
  (72, 7200, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0073 Tentacruel - Evolution
  (73, 7300, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0074 Geodude - Transfer Only
  (74, 7400, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0075 Graveler - Evolution
  (75, 7500, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0076 Golem - Evolution
  (76, 7600, 12, NULL, 7, 'Requires trade evolution from a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0077 Ponyta - Transfer Only
  (77, 7700, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0078 Rapidash - Evolution
  (78, 7800, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0079 Slowpoke - Raid or Special Encounter
  (79, 7900, 12, NULL, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0080 Slowbro - Evolution
  (80, 8000, 12, NULL, 7, NULL),
  -- #0081 Magnemite - Native Encounter
  (81, 8100, 12, NULL, 1, NULL),
  -- #0082 Magneton - Native Encounter
  (82, 8200, 12, NULL, 1, NULL),
  -- #0083 Farfetch'd - Raid or Special Encounter
  (83, 8300, 12, NULL, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0084 Doduo - Raid or Special Encounter
  (84, 8400, 12, NULL, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0085 Dodrio - Evolution
  (85, 8500, 12, NULL, 7, NULL),
  -- #0086 Seel - Native Encounter
  (86, 8600, 12, NULL, 1, NULL),
  -- #0087 Dewgong - Native Encounter
  (87, 8700, 12, NULL, 1, NULL),
  -- #0088 Grimer - Native Encounter
  (88, 8800, 12, NULL, 1, NULL),
  -- #0089 Muk - Native Encounter
  (89, 8900, 12, NULL, 1, NULL),
  -- #0090 Shellder - Native Encounter
  (90, 9000, 12, NULL, 1, NULL),
  -- #0091 Cloyster - Native Encounter
  (91, 9100, 12, NULL, 1, NULL),
  -- #0092 Gastly - Transfer Only
  (92, 9200, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0093 Haunter - Evolution
  (93, 9300, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0094 Gengar - Evolution
  (94, 9400, 12, NULL, 7, 'Requires trade evolution from a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0095 Onix - Native Encounter
  (95, 9500, 12, NULL, 1, NULL),
  -- #0096 Drowzee - Breeding
  (96, 9600, 12, NULL, 8, NULL),
  -- #0097 Hypno - Raid or Special Encounter
  (97, 9700, 12, NULL, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0098 Krabby - Native Encounter
  (98, 9800, 12, NULL, 1, NULL),
  -- #0099 Kingler - Native Encounter
  (99, 9900, 12, NULL, 1, NULL),
  -- #0100 Voltorb - Transfer Only
  (100, 10000, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0101 Electrode - Evolution
  (101, 10100, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0102 Exeggcute - Transfer Only
  (102, 10200, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0103 Exeggutor - Evolution
  (103, 10300, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0104 Cubone - Transfer Only
  (104, 10400, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0105 Marowak - Evolution
  (105, 10500, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0106 Hitmonlee - Evolution
  (106, 10600, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0107 Hitmonchan - Evolution
  (107, 10700, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0108 Lickitung - Native Encounter
  (108, 10800, 12, NULL, 1, NULL),
  -- #0109 Koffing - Native Encounter
  (109, 10900, 12, NULL, 1, NULL),
  -- #0110 Weezing - Native Encounter
  (110, 11000, 12, NULL, 1, NULL),
  -- #0111 Rhyhorn - In-Game Trade
  (111, 11100, 12, NULL, 5, 'NPC trade or received-Pokémon source in Black 2/White 2.'),
  -- #0112 Rhydon - Evolution
  (112, 11200, 12, NULL, 7, NULL),
  -- #0113 Chansey - Evolution
  (113, 11300, 12, NULL, 7, NULL),
  -- #0114 Tangela - Native Encounter
  (114, 11400, 12, NULL, 1, NULL),
  -- #0115 Kangaskhan - Transfer Only
  (115, 11500, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0116 Horsea - Native Encounter
  (116, 11600, 12, NULL, 1, NULL),
  -- #0117 Seadra - Native Encounter
  (117, 11700, 12, NULL, 1, NULL),
  -- #0118 Goldeen - Native Encounter
  (118, 11800, 12, NULL, 1, NULL),
  -- #0119 Seaking - Native Encounter
  (119, 11900, 12, NULL, 1, NULL),
  -- #0120 Staryu - Native Encounter
  (120, 12000, 12, NULL, 1, NULL),
  -- #0121 Starmie - Native Encounter
  (121, 12100, 12, NULL, 1, NULL),
  -- #0122 Mr. Mime - Black 2 - External Trade
  (122, 12200, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0122 Mr. Mime - White 2 - Raid or Special Encounter
  (122, 12200, 12, 20, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0123 Scyther - Transfer Only
  (123, 12300, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0124 Jynx - Evolution
  (124, 12400, 12, NULL, 7, 'Requires evolving a Pokémon Dream Radar source Pokémon.'),
  -- #0125 Electabuzz - Black 2 - External Trade
  (125, 12500, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0125 Electabuzz - White 2 - Evolution
  (125, 12500, 12, 20, 7, NULL),
  -- #0126 Magmar - Black 2 - Evolution
  (126, 12600, 12, 19, 7, NULL),
  -- #0126 Magmar - White 2 - External Trade
  (126, 12600, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0127 Pinsir - Native Encounter
  (127, 12700, 12, NULL, 1, NULL),
  -- #0128 Tauros - Transfer Only
  (128, 12800, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0129 Magikarp - Gift
  (129, 12900, 12, NULL, 4, 'Purchased from the Magikarp salesman on Marvelous Bridge.'),
  -- #0130 Gyarados - Evolution
  (130, 13000, 12, NULL, 7, NULL),
  -- #0131 Lapras - Native Encounter
  (131, 13100, 12, NULL, 1, NULL),
  -- #0132 Ditto - Native Encounter
  (132, 13200, 12, NULL, 1, NULL),
  -- #0133 Eevee - Native Encounter
  (133, 13300, 12, NULL, 1, NULL),
  -- #0134 Vaporeon - Evolution
  (134, 13400, 12, NULL, 7, NULL),
  -- #0135 Jolteon - Evolution
  (135, 13500, 12, NULL, 7, NULL),
  -- #0136 Flareon - Evolution
  (136, 13600, 12, NULL, 7, NULL),
  -- #0137 Porygon - Transfer Only
  (137, 13700, 12, NULL, 13, 'Pokémon Dream Radar transfer source for Black 2/White 2.'),
  -- #0138 Omanyte - Fossil Restoration
  (138, 13800, 12, NULL, 6, 'Available by restoring a fossil obtainable in Black 2/White 2.'),
  -- #0139 Omastar - Evolution
  (139, 13900, 12, NULL, 7, NULL),
  -- #0140 Kabuto - Fossil Restoration
  (140, 14000, 12, NULL, 6, 'Available by restoring a fossil obtainable in Black 2/White 2.'),
  -- #0141 Kabutops - Evolution
  (141, 14100, 12, NULL, 7, NULL),
  -- #0142 Aerodactyl - Fossil Restoration
  (142, 14200, 12, NULL, 6, 'Available by restoring a fossil obtainable in Black 2/White 2.'),
  -- #0143 Snorlax - In-Game Trade
  (143, 14300, 12, NULL, 5, 'NPC trade or received-Pokémon source in Black 2/White 2.'),
  -- #0144 Articuno - Transfer Only
  (144, 14400, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0145 Zapdos - Transfer Only
  (145, 14500, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0146 Moltres - Transfer Only
  (146, 14600, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0147 Dratini - Native Encounter
  (147, 14700, 12, NULL, 1, NULL),
  -- #0148 Dragonair - Native Encounter
  (148, 14800, 12, NULL, 1, NULL),
  -- #0149 Dragonite - Native Encounter
  (149, 14900, 12, NULL, 1, NULL),
  -- #0150 Mewtwo - Event
  (150, 15000, 12, NULL, 11, 'Official Black 2/White 2 event or distribution source.'),
  -- #0151 Mew - Transfer Only
  (151, 15100, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0152 Chikorita - Transfer Only
  (152, 15200, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0153 Bayleef - Transfer Only
  (153, 15300, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0154 Meganium - Transfer Only
  (154, 15400, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0155 Cyndaquil - Transfer Only
  (155, 15500, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0156 Quilava - Transfer Only
  (156, 15600, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0157 Typhlosion - Transfer Only
  (157, 15700, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0158 Totodile - Transfer Only
  (158, 15800, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0159 Croconaw - Transfer Only
  (159, 15900, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0160 Feraligatr - Transfer Only
  (160, 16000, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0161 Sentret - Breeding
  (161, 16100, 12, NULL, 8, NULL),
  -- #0162 Furret - Raid or Special Encounter
  (162, 16200, 12, NULL, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0163 Hoothoot - Breeding
  (163, 16300, 12, NULL, 8, 'Requires breeding from a communication-required source Pokémon.'),
  -- #0164 Noctowl - Raid or Special Encounter
  (164, 16400, 12, NULL, 10, 'Communication-required Funfest Mission, linked-game, or linked special source in Black 2/White 2.'),
  -- #0165 Ledyba - Black 2 - External Trade
  (165, 16500, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0165 Ledyba - White 2 - Breeding
  (165, 16500, 12, 20, 8, NULL),
  -- #0166 Ledian - Black 2 - External Trade
  (166, 16600, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0166 Ledian - White 2 - Raid or Special Encounter
  (166, 16600, 12, 20, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0167 Spinarak - Black 2 - Breeding
  (167, 16700, 12, 19, 8, NULL),
  -- #0167 Spinarak - White 2 - External Trade
  (167, 16700, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0168 Ariados - Black 2 - Raid or Special Encounter
  (168, 16800, 12, 19, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0168 Ariados - White 2 - External Trade
  (168, 16800, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0169 Crobat - Native Encounter
  (169, 16900, 12, NULL, 1, NULL),
  -- #0170 Chinchou - Native Encounter
  (170, 17000, 12, NULL, 1, NULL),
  -- #0171 Lanturn - Native Encounter
  (171, 17100, 12, NULL, 1, NULL),
  -- #0172 Pichu - Breeding
  (172, 17200, 12, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0173 Cleffa - Breeding
  (173, 17300, 12, NULL, 8, NULL),
  -- #0174 Igglybuff - Breeding
  (174, 17400, 12, NULL, 8, NULL),
  -- #0175 Togepi - In-Game Trade
  (175, 17500, 12, NULL, 5, 'NPC trade or received-Pokémon source in Black 2/White 2.'),
  -- #0176 Togetic - Evolution
  (176, 17600, 12, NULL, 7, NULL),
  -- #0177 Natu - Raid or Special Encounter
  (177, 17700, 12, NULL, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0178 Xatu - Evolution
  (178, 17800, 12, NULL, 7, NULL),
  -- #0179 Mareep - Native Encounter
  (179, 17900, 12, NULL, 1, NULL),
  -- #0180 Flaaffy - Evolution
  (180, 18000, 12, NULL, 7, NULL),
  -- #0181 Ampharos - Evolution
  (181, 18100, 12, NULL, 7, NULL),
  -- #0182 Bellossom - Evolution
  (182, 18200, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0183 Marill - Native Encounter
  (183, 18300, 12, NULL, 1, NULL),
  -- #0184 Azumarill - Native Encounter
  (184, 18400, 12, NULL, 1, NULL),
  -- #0185 Sudowoodo - Black 2 - Raid or Special Encounter
  (185, 18500, 12, 19, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0185 Sudowoodo - White 2 - External Trade
  (185, 18500, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0186 Politoed - Native Encounter
  (186, 18600, 12, NULL, 1, NULL),
  -- #0187 Hoppip - Raid or Special Encounter
  (187, 18700, 12, NULL, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0188 Skiploom - Evolution
  (188, 18800, 12, NULL, 7, NULL),
  -- #0189 Jumpluff - Evolution
  (189, 18900, 12, NULL, 7, NULL),
  -- #0190 Aipom - Breeding
  (190, 19000, 12, NULL, 8, NULL),
  -- #0191 Sunkern - Native Encounter
  (191, 19100, 12, NULL, 1, NULL),
  -- #0192 Sunflora - Evolution
  (192, 19200, 12, NULL, 7, NULL),
  -- #0193 Yanma - Native Encounter
  (193, 19300, 12, NULL, 1, NULL),
  -- #0194 Wooper - Breeding
  (194, 19400, 12, NULL, 8, NULL),
  -- #0195 Quagsire - Raid or Special Encounter
  (195, 19500, 12, NULL, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0196 Espeon - Evolution
  (196, 19600, 12, NULL, 7, NULL),
  -- #0197 Umbreon - Evolution
  (197, 19700, 12, NULL, 7, NULL),
  -- #0198 Murkrow - Native Encounter
  (198, 19800, 12, NULL, 1, NULL),
  -- #0199 Slowking - Evolution
  (199, 19900, 12, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0200 Misdreavus - Transfer Only
  (200, 20000, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0201 Unown - Transfer Only
  (201, 20100, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0202 Wobbuffet - In-Game Trade
  (202, 20200, 12, NULL, 5, 'NPC trade or received-Pokémon source in Black 2/White 2.'),
  -- #0203 Girafarig - Raid or Special Encounter
  (203, 20300, 12, NULL, 10, 'Communication-required Funfest Mission, linked-game, or linked special source in Black 2/White 2.'),
  -- #0204 Pineco - Raid or Special Encounter
  (204, 20400, 12, NULL, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0205 Forretress - Evolution
  (205, 20500, 12, NULL, 7, NULL),
  -- #0206 Dunsparce - Native Encounter
  (206, 20600, 12, NULL, 1, NULL),
  -- #0207 Gligar - Native Encounter
  (207, 20700, 12, NULL, 1, NULL),
  -- #0208 Steelix - Native Encounter
  (208, 20800, 12, NULL, 1, NULL),
  -- #0209 Snubbull - Breeding
  (209, 20900, 12, NULL, 8, NULL),
  -- #0210 Granbull - Native Encounter
  (210, 21000, 12, NULL, 1, NULL),
  -- #0211 Qwilfish - Native Encounter
  (211, 21100, 12, NULL, 1, NULL),
  -- #0212 Scizor - Evolution
  (212, 21200, 12, NULL, 7, 'Requires trade evolution from a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0213 Shuckle - Native Encounter
  (213, 21300, 12, NULL, 1, NULL),
  -- #0214 Heracross - Native Encounter
  (214, 21400, 12, NULL, 1, NULL),
  -- #0215 Sneasel - Native Encounter
  (215, 21500, 12, NULL, 1, NULL),
  -- #0216 Teddiursa - In-Game Trade
  (216, 21600, 12, NULL, 5, 'NPC trade or received-Pokémon source in Black 2/White 2.'),
  -- #0217 Ursaring - Evolution
  (217, 21700, 12, NULL, 7, NULL),
  -- #0218 Slugma - Transfer Only
  (218, 21800, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0219 Magcargo - Evolution
  (219, 21900, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0220 Swinub - Breeding
  (220, 22000, 12, NULL, 8, NULL),
  -- #0221 Piloswine - Native Encounter
  (221, 22100, 12, NULL, 1, NULL),
  -- #0222 Corsola - Native Encounter
  (222, 22200, 12, NULL, 1, NULL),
  -- #0223 Remoraid - Native Encounter
  (223, 22300, 12, NULL, 1, NULL),
  -- #0224 Octillery - Native Encounter
  (224, 22400, 12, NULL, 1, NULL),
  -- #0225 Delibird - Native Encounter
  (225, 22500, 12, NULL, 1, NULL),
  -- #0226 Mantine - Native Encounter
  (226, 22600, 12, NULL, 1, NULL),
  -- #0227 Skarmory - Native Encounter
  (227, 22700, 12, NULL, 1, NULL),
  -- #0228 Houndour - Transfer Only
  (228, 22800, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0229 Houndoom - Evolution
  (229, 22900, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0230 Kingdra - Native Encounter
  (230, 23000, 12, NULL, 1, NULL),
  -- #0231 Phanpy - In-Game Trade
  (231, 23100, 12, NULL, 5, 'NPC trade or received-Pokémon source in Black 2/White 2.'),
  -- #0232 Donphan - Evolution
  (232, 23200, 12, NULL, 7, NULL),
  -- #0233 Porygon2 - Evolution
  (233, 23300, 12, NULL, 7, 'Requires trade evolution from a Pokémon Dream Radar source Pokémon.'),
  -- #0234 Stantler - Transfer Only
  (234, 23400, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0235 Smeargle - Transfer Only
  (235, 23500, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0236 Tyrogue - Transfer Only
  (236, 23600, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0237 Hitmontop - Evolution
  (237, 23700, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0238 Smoochum - Transfer Only
  (238, 23800, 12, NULL, 13, 'Pokémon Dream Radar transfer source for Black 2/White 2.'),
  -- #0239 Elekid - Black 2 - External Trade
  (239, 23900, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0239 Elekid - White 2 - Native Encounter
  (239, 23900, 12, 20, 1, NULL),
  -- #0240 Magby - Black 2 - Native Encounter
  (240, 24000, 12, 19, 1, NULL),
  -- #0240 Magby - White 2 - External Trade
  (240, 24000, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0241 Miltank - Transfer Only
  (241, 24100, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0242 Blissey - Evolution
  (242, 24200, 12, NULL, 7, NULL),
  -- #0243 Raikou - Transfer Only
  (243, 24300, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0244 Entei - Transfer Only
  (244, 24400, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0245 Suicune - Transfer Only
  (245, 24500, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0246 Larvitar - Breeding
  (246, 24600, 12, NULL, 8, NULL),
  -- #0247 Pupitar - Native Encounter
  (247, 24700, 12, NULL, 1, NULL),
  -- #0248 Tyranitar - Native Encounter
  (248, 24800, 12, NULL, 1, NULL),
  -- #0249 Lugia - Transfer Only
  (249, 24900, 12, NULL, 13, 'Pokémon Dream Radar transfer source for Black 2/White 2.'),
  -- #0250 Ho-Oh - Transfer Only
  (250, 25000, 12, NULL, 13, 'Pokémon Dream Radar transfer source for Black 2/White 2.'),
  -- #0251 Celebi - Transfer Only
  (251, 25100, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0252 Treecko - Transfer Only
  (252, 25200, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0253 Grovyle - Transfer Only
  (253, 25300, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0254 Sceptile - Transfer Only
  (254, 25400, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0255 Torchic - Transfer Only
  (255, 25500, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0256 Combusken - Transfer Only
  (256, 25600, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0257 Blaziken - Transfer Only
  (257, 25700, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0258 Mudkip - Transfer Only
  (258, 25800, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0259 Marshtomp - Transfer Only
  (259, 25900, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0260 Swampert - Transfer Only
  (260, 26000, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0261 Poochyena - Transfer Only
  (261, 26100, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0262 Mightyena - Evolution
  (262, 26200, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0263 Zigzagoon - Transfer Only
  (263, 26300, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0264 Linoone - Evolution
  (264, 26400, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0265 Wurmple - Transfer Only
  (265, 26500, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0266 Silcoon - Evolution
  (266, 26600, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0267 Beautifly - Evolution
  (267, 26700, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0268 Cascoon - Evolution
  (268, 26800, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0269 Dustox - Evolution
  (269, 26900, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0270 Lotad - Breeding
  (270, 27000, 12, NULL, 8, NULL),
  -- #0271 Lombre - Native Encounter
  (271, 27100, 12, NULL, 1, NULL),
  -- #0272 Ludicolo - Evolution
  (272, 27200, 12, NULL, 7, NULL),
  -- #0273 Seedot - Breeding
  (273, 27300, 12, NULL, 8, 'Requires breeding from a communication-required source Pokémon.'),
  -- #0274 Nuzleaf - Raid or Special Encounter
  (274, 27400, 12, NULL, 10, 'Communication-required Funfest Mission, linked-game, or linked special source in Black 2/White 2.'),
  -- #0275 Shiftry - Raid or Special Encounter
  (275, 27500, 12, NULL, 10, 'Communication-required Funfest Mission, linked-game, or linked special source in Black 2/White 2.'),
  -- #0276 Taillow - Breeding
  (276, 27600, 12, NULL, 8, NULL),
  -- #0277 Swellow - Raid or Special Encounter
  (277, 27700, 12, NULL, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0278 Wingull - Breeding
  (278, 27800, 12, NULL, 8, NULL),
  -- #0279 Pelipper - Native Encounter
  (279, 27900, 12, NULL, 1, NULL),
  -- #0280 Ralts - In-Game Trade
  (280, 28000, 12, NULL, 5, 'NPC trade or received-Pokémon source in Black 2/White 2.'),
  -- #0281 Kirlia - Evolution
  (281, 28100, 12, NULL, 7, NULL),
  -- #0282 Gardevoir - Evolution
  (282, 28200, 12, NULL, 7, NULL),
  -- #0283 Surskit - Breeding
  (283, 28300, 12, NULL, 8, NULL),
  -- #0284 Masquerain - Raid or Special Encounter
  (284, 28400, 12, NULL, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0285 Shroomish - Breeding
  (285, 28500, 12, NULL, 8, NULL),
  -- #0286 Breloom - Native Encounter
  (286, 28600, 12, NULL, 1, NULL),
  -- #0287 Slakoth - Breeding
  (287, 28700, 12, NULL, 8, NULL),
  -- #0288 Vigoroth - Native Encounter
  (288, 28800, 12, NULL, 1, NULL),
  -- #0289 Slaking - Native Encounter
  (289, 28900, 12, NULL, 1, NULL),
  -- #0290 Nincada - Transfer Only
  (290, 29000, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0291 Ninjask - Evolution
  (291, 29100, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0292 Shedinja - Evolution
  (292, 29200, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0293 Whismur - Transfer Only
  (293, 29300, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0294 Loudred - Evolution
  (294, 29400, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0295 Exploud - Evolution
  (295, 29500, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0296 Makuhita - Breeding
  (296, 29600, 12, NULL, 8, NULL),
  -- #0297 Hariyama - Native Encounter
  (297, 29700, 12, NULL, 1, NULL),
  -- #0298 Azurill - Native Encounter
  (298, 29800, 12, NULL, 1, NULL),
  -- #0299 Nosepass - Native Encounter
  (299, 29900, 12, NULL, 1, NULL),
  -- #0300 Skitty - Black 2 - External Trade
  (300, 30000, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0300 Skitty - White 2 - Native Encounter
  (300, 30000, 12, 20, 1, NULL),
  -- #0301 Delcatty - Black 2 - External Trade
  (301, 30100, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0301 Delcatty - White 2 - Native Encounter
  (301, 30100, 12, 20, 1, NULL),
  -- #0302 Sableye - In-Game Trade
  (302, 30200, 12, NULL, 5, 'NPC trade or received-Pokémon source in Black 2/White 2.'),
  -- #0303 Mawile - In-Game Trade
  (303, 30300, 12, NULL, 5, 'NPC trade or received-Pokémon source in Black 2/White 2.'),
  -- #0304 Aron - Native Encounter
  (304, 30400, 12, NULL, 1, NULL),
  -- #0305 Lairon - Native Encounter
  (305, 30500, 12, NULL, 1, NULL),
  -- #0306 Aggron - Evolution
  (306, 30600, 12, NULL, 7, NULL),
  -- #0307 Meditite - Breeding
  (307, 30700, 12, NULL, 8, NULL),
  -- #0308 Medicham - Native Encounter
  (308, 30800, 12, NULL, 1, NULL),
  -- #0309 Electrike - Breeding
  (309, 30900, 12, NULL, 8, NULL),
  -- #0310 Manectric - Native Encounter
  (310, 31000, 12, NULL, 1, NULL),
  -- #0311 Plusle - Black 2 - Raid or Special Encounter
  (311, 31100, 12, 19, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0311 Plusle - White 2 - External Trade
  (311, 31100, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0312 Minun - Black 2 - External Trade
  (312, 31200, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0312 Minun - White 2 - Raid or Special Encounter
  (312, 31200, 12, 20, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0313 Volbeat - Black 2 - Raid or Special Encounter
  (313, 31300, 12, 19, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0313 Volbeat - White 2 - Breeding
  (313, 31300, 12, 20, 8, NULL),
  -- #0314 Illumise - Black 2 - Breeding
  (314, 31400, 12, 19, 8, NULL),
  -- #0314 Illumise - White 2 - Raid or Special Encounter
  (314, 31400, 12, 20, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0315 Roselia - Native Encounter
  (315, 31500, 12, NULL, 1, NULL),
  -- #0316 Gulpin - Breeding
  (316, 31600, 12, NULL, 8, NULL),
  -- #0317 Swalot - Raid or Special Encounter
  (317, 31700, 12, NULL, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0318 Carvanha - Native Encounter
  (318, 31800, 12, NULL, 1, NULL),
  -- #0319 Sharpedo - Native Encounter
  (319, 31900, 12, NULL, 1, NULL),
  -- #0320 Wailmer - Native Encounter
  (320, 32000, 12, NULL, 1, NULL),
  -- #0321 Wailord - Native Encounter
  (321, 32100, 12, NULL, 1, NULL),
  -- #0322 Numel - Black 2 - External Trade
  (322, 32200, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0322 Numel - White 2 - Native Encounter
  (322, 32200, 12, 20, 1, NULL),
  -- #0323 Camerupt - Black 2 - External Trade
  (323, 32300, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0323 Camerupt - White 2 - Native Encounter
  (323, 32300, 12, 20, 1, NULL),
  -- #0324 Torkoal - Transfer Only
  (324, 32400, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0325 Spoink - Black 2 - Native Encounter
  (325, 32500, 12, 19, 1, NULL),
  -- #0325 Spoink - White 2 - External Trade
  (325, 32500, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0326 Grumpig - Black 2 - Native Encounter
  (326, 32600, 12, 19, 1, NULL),
  -- #0326 Grumpig - White 2 - External Trade
  (326, 32600, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0327 Spinda - In-Game Trade
  (327, 32700, 12, NULL, 5, 'NPC trade or received-Pokémon source in Black 2/White 2.'),
  -- #0328 Trapinch - Native Encounter
  (328, 32800, 12, NULL, 1, NULL),
  -- #0329 Vibrava - Native Encounter
  (329, 32900, 12, NULL, 1, NULL),
  -- #0330 Flygon - Evolution
  (330, 33000, 12, NULL, 7, NULL),
  -- #0331 Cacnea - Breeding
  (331, 33100, 12, NULL, 8, NULL),
  -- #0332 Cacturne - Raid or Special Encounter
  (332, 33200, 12, NULL, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0333 Swablu - Native Encounter
  (333, 33300, 12, NULL, 1, NULL),
  -- #0334 Altaria - Native Encounter
  (334, 33400, 12, NULL, 1, NULL),
  -- #0335 Zangoose - Native Encounter
  (335, 33500, 12, NULL, 1, NULL),
  -- #0336 Seviper - Native Encounter
  (336, 33600, 12, NULL, 1, NULL),
  -- #0337 Lunatone - Native Encounter
  (337, 33700, 12, NULL, 1, NULL),
  -- #0338 Solrock - Native Encounter
  (338, 33800, 12, NULL, 1, NULL),
  -- #0339 Barboach - Native Encounter
  (339, 33900, 12, NULL, 1, NULL),
  -- #0340 Whiscash - Native Encounter
  (340, 34000, 12, NULL, 1, NULL),
  -- #0341 Corphish - Native Encounter
  (341, 34100, 12, NULL, 1, NULL),
  -- #0342 Crawdaunt - Native Encounter
  (342, 34200, 12, NULL, 1, NULL),
  -- #0343 Baltoy - Native Encounter
  (343, 34300, 12, NULL, 1, NULL),
  -- #0344 Claydol - Evolution
  (344, 34400, 12, NULL, 7, NULL),
  -- #0345 Lileep - Fossil Restoration
  (345, 34500, 12, NULL, 6, 'Available by restoring a fossil obtainable in Black 2/White 2.'),
  -- #0346 Cradily - Evolution
  (346, 34600, 12, NULL, 7, NULL),
  -- #0347 Anorith - Fossil Restoration
  (347, 34700, 12, NULL, 6, 'Available by restoring a fossil obtainable in Black 2/White 2.'),
  -- #0348 Armaldo - Evolution
  (348, 34800, 12, NULL, 7, NULL),
  -- #0349 Feebas - Native Encounter
  (349, 34900, 12, NULL, 1, NULL),
  -- #0350 Milotic - Native Encounter
  (350, 35000, 12, NULL, 1, NULL),
  -- #0351 Castform - Native Encounter
  (351, 35100, 12, NULL, 1, NULL),
  -- #0352 Kecleon - Raid or Special Encounter
  (352, 35200, 12, NULL, 10, 'Communication-required Funfest Mission, linked-game, or linked special source in Black 2/White 2.'),
  -- #0353 Shuppet - Breeding
  (353, 35300, 12, NULL, 8, NULL),
  -- #0354 Banette - Native Encounter
  (354, 35400, 12, NULL, 1, NULL),
  -- #0355 Duskull - Transfer Only
  (355, 35500, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0356 Dusclops - Evolution
  (356, 35600, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0357 Tropius - Native Encounter
  (357, 35700, 12, NULL, 1, NULL),
  -- #0358 Chimecho - Transfer Only
  (358, 35800, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0359 Absol - Native Encounter
  (359, 35900, 12, NULL, 1, NULL),
  -- #0360 Wynaut - Breeding
  (360, 36000, 12, NULL, 8, NULL),
  -- #0361 Snorunt - Transfer Only
  (361, 36100, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0362 Glalie - Evolution
  (362, 36200, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0363 Spheal - Native Encounter
  (363, 36300, 12, NULL, 1, NULL),
  -- #0364 Sealeo - Native Encounter
  (364, 36400, 12, NULL, 1, NULL),
  -- #0365 Walrein - Native Encounter
  (365, 36500, 12, NULL, 1, NULL),
  -- #0366 Clamperl - Native Encounter
  (366, 36600, 12, NULL, 1, NULL),
  -- #0367 Huntail - Black 2 - Native Encounter
  (367, 36700, 12, 19, 1, NULL),
  -- #0367 Huntail - White 2 - Evolution
  (367, 36700, 12, 20, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0368 Gorebyss - Black 2 - Evolution
  (368, 36800, 12, 19, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0368 Gorebyss - White 2 - Native Encounter
  (368, 36800, 12, 20, 1, NULL),
  -- #0369 Relicanth - Native Encounter
  (369, 36900, 12, NULL, 1, NULL),
  -- #0370 Luvdisc - Native Encounter
  (370, 37000, 12, NULL, 1, NULL),
  -- #0371 Bagon - Native Encounter
  (371, 37100, 12, NULL, 1, NULL),
  -- #0372 Shelgon - Evolution
  (372, 37200, 12, NULL, 7, NULL),
  -- #0373 Salamence - Evolution
  (373, 37300, 12, NULL, 7, NULL),
  -- #0374 Beldum - Breeding
  (374, 37400, 12, NULL, 8, NULL),
  -- #0375 Metang - Native Encounter
  (375, 37500, 12, NULL, 1, NULL),
  -- #0376 Metagross - Native Encounter
  (376, 37600, 12, NULL, 1, NULL),
  -- #0377 Regirock - Static Encounter
  (377, 37700, 12, NULL, 2, 'Underground Ruins static encounter in Black 2/White 2.'),
  -- #0378 Regice - Black 2 - Static Encounter
  (378, 37800, 12, 19, 2, 'Underground Ruins static encounter; requires Iceberg Key from White 2 via Unova Link.'),
  -- #0378 Regice - White 2 - Static Encounter
  (378, 37800, 12, 20, 2, 'Underground Ruins static encounter in Black 2/White 2.'),
  -- #0379 Registeel - Black 2 - Static Encounter
  (379, 37900, 12, 19, 2, 'Underground Ruins static encounter in Black 2/White 2.'),
  -- #0379 Registeel - White 2 - Static Encounter
  (379, 37900, 12, 20, 2, 'Underground Ruins static encounter; requires Iron Key from Black 2 via Unova Link.'),
  -- #0380 Latias - Black 2 - External Trade
  (380, 38000, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0380 Latias - White 2 - Static Encounter
  (380, 38000, 12, 20, 2, 'Dreamyard fixed encounter in White 2.'),
  -- #0381 Latios - Black 2 - Static Encounter
  (381, 38100, 12, 19, 2, 'Dreamyard fixed encounter in Black 2.'),
  -- #0381 Latios - White 2 - External Trade
  (381, 38100, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0382 Kyogre - Black 2 - External Trade
  (382, 38200, 12, 19, 12, 'Official event/distribution source is Pokémon White 2; available in Pokémon Black 2 by trade from the paired version or compatible external source.'),
  -- #0382 Kyogre - White 2 - Event
  (382, 38200, 12, 20, 11, 'Official Black 2/White 2 event or distribution source.'),
  -- #0383 Groudon - Black 2 - Event
  (383, 38300, 12, 19, 11, 'Official Black 2/White 2 event or distribution source.'),
  -- #0383 Groudon - White 2 - External Trade
  (383, 38300, 12, 20, 12, 'Official event/distribution source is Pokémon Black 2; available in Pokémon White 2 by trade from the paired version or compatible external source.'),
  -- #0384 Rayquaza - Transfer Only
  (384, 38400, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0385 Jirachi - Event
  (385, 38500, 12, NULL, 11, 'Official Black 2/White 2 event or distribution source.'),
  -- #0386 Deoxys - Event
  (386, 38600, 12, NULL, 11, 'Official Black 2/White 2 event or distribution source.'),
  -- #0387 Turtwig - Breeding
  (387, 38700, 12, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0388 Grotle - Breeding
  (388, 38800, 12, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0389 Torterra - Event
  (389, 38900, 12, NULL, 11, 'Official Black 2/White 2 event or distribution source.'),
  -- #0390 Chimchar - Breeding
  (390, 39000, 12, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0391 Monferno - Breeding
  (391, 39100, 12, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0392 Infernape - Event
  (392, 39200, 12, NULL, 11, 'Official Black 2/White 2 event or distribution source.'),
  -- #0393 Piplup - Event
  (393, 39300, 12, NULL, 11, 'Official Black 2/White 2 event or distribution source.'),
  -- #0394 Prinplup - Evolution
  (394, 39400, 12, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0395 Empoleon - Event
  (395, 39500, 12, NULL, 11, 'Official Black 2/White 2 event or distribution source.'),
  -- #0396 Starly - Breeding
  (396, 39600, 12, NULL, 8, 'Requires breeding a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0397 Staravia - Transfer Only
  (397, 39700, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0398 Staraptor - Evolution
  (398, 39800, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0399 Bidoof - Breeding
  (399, 39900, 12, NULL, 8, NULL),
  -- #0400 Bibarel - Native Encounter
  (400, 40000, 12, NULL, 1, NULL),
  -- #0401 Kricketot - Transfer Only
  (401, 40100, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0402 Kricketune - Evolution
  (402, 40200, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0403 Shinx - Transfer Only
  (403, 40300, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0404 Luxio - Evolution
  (404, 40400, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0405 Luxray - Evolution
  (405, 40500, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0406 Budew - Breeding
  (406, 40600, 12, NULL, 8, NULL),
  -- #0407 Roserade - Native Encounter
  (407, 40700, 12, NULL, 1, NULL),
  -- #0408 Cranidos - Fossil Restoration
  (408, 40800, 12, NULL, 6, 'Available by restoring a fossil obtainable in Black 2/White 2.'),
  -- #0409 Rampardos - Evolution
  (409, 40900, 12, NULL, 7, NULL),
  -- #0410 Shieldon - Fossil Restoration
  (410, 41000, 12, NULL, 6, 'Available by restoring a fossil obtainable in Black 2/White 2.'),
  -- #0411 Bastiodon - Evolution
  (411, 41100, 12, NULL, 7, NULL),
  -- #0412 Burmy - Transfer Only
  (412, 41200, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0413 Wormadam - Evolution
  (413, 41300, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0414 Mothim - Evolution
  (414, 41400, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0415 Combee - Native Encounter
  (415, 41500, 12, NULL, 1, NULL),
  -- #0416 Vespiquen - Native Encounter
  (416, 41600, 12, NULL, 1, NULL),
  -- #0417 Pachirisu - Native Encounter
  (417, 41700, 12, NULL, 1, NULL),
  -- #0418 Buizel - Native Encounter
  (418, 41800, 12, NULL, 1, NULL),
  -- #0419 Floatzel - Native Encounter
  (419, 41900, 12, NULL, 1, NULL),
  -- #0420 Cherubi - Transfer Only
  (420, 42000, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0421 Cherrim - Evolution
  (421, 42100, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0422 Shellos - In-Game Trade
  (422, 42200, 12, NULL, 5, 'NPC trade or received-Pokémon source in Black 2/White 2.'),
  -- #0423 Gastrodon - Evolution
  (423, 42300, 12, NULL, 7, NULL),
  -- #0424 Ambipom - In-Game Trade
  (424, 42400, 12, NULL, 5, 'NPC trade or received-Pokémon source in Black 2/White 2.'),
  -- #0425 Drifloon - Native Encounter
  (425, 42500, 12, NULL, 1, NULL),
  -- #0426 Drifblim - Native Encounter
  (426, 42600, 12, NULL, 1, NULL),
  -- #0427 Buneary - Black 2 - Native Encounter
  (427, 42700, 12, 19, 1, NULL),
  -- #0427 Buneary - White 2 - External Trade
  (427, 42700, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0428 Lopunny - Black 2 - Native Encounter
  (428, 42800, 12, 19, 1, NULL),
  -- #0428 Lopunny - White 2 - External Trade
  (428, 42800, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0429 Mismagius - Evolution
  (429, 42900, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0430 Honchkrow - Evolution
  (430, 43000, 12, NULL, 7, NULL),
  -- #0431 Glameow - Black 2 - Raid or Special Encounter
  (431, 43100, 12, 19, 10, 'Communication-required Funfest Mission, linked-game, or linked special source in Black 2/White 2.'),
  -- #0431 Glameow - White 2 - Native Encounter
  (431, 43100, 12, 20, 1, NULL),
  -- #0432 Purugly - Black 2 - Evolution
  (432, 43200, 12, 19, 7, 'Requires evolving a communication-required source Pokémon.'),
  -- #0432 Purugly - White 2 - Evolution
  (432, 43200, 12, 20, 7, NULL),
  -- #0433 Chingling - Breeding
  (433, 43300, 12, NULL, 8, 'Requires breeding a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0434 Stunky - Black 2 - Native Encounter
  (434, 43400, 12, 19, 1, NULL),
  -- #0434 Stunky - White 2 - Raid or Special Encounter
  (434, 43400, 12, 20, 10, 'Communication-required Funfest Mission, linked-game, or linked special source in Black 2/White 2.'),
  -- #0435 Skuntank - Black 2 - Evolution
  (435, 43500, 12, 19, 7, NULL),
  -- #0435 Skuntank - White 2 - Evolution
  (435, 43500, 12, 20, 7, 'Requires evolving a communication-required source Pokémon.'),
  -- #0436 Bronzor - Native Encounter
  (436, 43600, 12, NULL, 1, NULL),
  -- #0437 Bronzong - Native Encounter
  (437, 43700, 12, NULL, 1, NULL),
  -- #0438 Bonsly - Black 2 - Breeding
  (438, 43800, 12, 19, 8, NULL),
  -- #0438 Bonsly - White 2 - External Trade
  (438, 43800, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0439 Mime Jr. - Black 2 - External Trade
  (439, 43900, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0439 Mime Jr. - White 2 - Breeding
  (439, 43900, 12, 20, 8, NULL),
  -- #0440 Happiny - Gift
  (440, 44000, 12, NULL, 4, 'Gift Egg source in Black 2/White 2.'),
  -- #0441 Chatot - Native Encounter
  (441, 44100, 12, NULL, 1, NULL),
  -- #0442 Spiritomb - In-Game Trade
  (442, 44200, 12, NULL, 5, 'NPC trade or received-Pokémon source in Black 2/White 2.'),
  -- #0443 Gible - Black 2 - Gift
  (443, 44300, 12, 19, 4, 'Black 2 gift from Benga after Black Tower completion.'),
  -- #0443 Gible - White 2 - External Trade
  (443, 44300, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0444 Gabite - Black 2 - Evolution
  (444, 44400, 12, 19, 7, NULL),
  -- #0444 Gabite - White 2 - External Trade
  (444, 44400, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0445 Garchomp - Black 2 - Evolution
  (445, 44500, 12, 19, 7, NULL),
  -- #0445 Garchomp - White 2 - External Trade
  (445, 44500, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0446 Munchlax - Breeding
  (446, 44600, 12, NULL, 8, NULL),
  -- #0447 Riolu - Native Encounter
  (447, 44700, 12, NULL, 1, NULL),
  -- #0448 Lucario - Evolution
  (448, 44800, 12, NULL, 7, NULL),
  -- #0449 Hippopotas - Breeding
  (449, 44900, 12, NULL, 8, NULL),
  -- #0450 Hippowdon - Raid or Special Encounter
  (450, 45000, 12, NULL, 10, 'Special availability such as swarm, Hidden Grotto, seasonal, daily, or conditional encounter source.'),
  -- #0451 Skorupi - Native Encounter
  (451, 45100, 12, NULL, 1, NULL),
  -- #0452 Drapion - Evolution
  (452, 45200, 12, NULL, 7, NULL),
  -- #0453 Croagunk - Native Encounter
  (453, 45300, 12, NULL, 1, NULL),
  -- #0454 Toxicroak - Native Encounter
  (454, 45400, 12, NULL, 1, NULL),
  -- #0455 Carnivine - Native Encounter
  (455, 45500, 12, NULL, 1, NULL),
  -- #0456 Finneon - Native Encounter
  (456, 45600, 12, NULL, 1, NULL),
  -- #0457 Lumineon - Native Encounter
  (457, 45700, 12, NULL, 1, NULL),
  -- #0458 Mantyke - Native Encounter
  (458, 45800, 12, NULL, 1, NULL),
  -- #0459 Snover - Transfer Only
  (459, 45900, 12, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0460 Abomasnow - Evolution
  (460, 46000, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0461 Weavile - Evolution
  (461, 46100, 12, NULL, 7, NULL),
  -- #0462 Magnezone - Native Encounter
  (462, 46200, 12, NULL, 1, NULL),
  -- #0463 Lickilicky - Native Encounter
  (463, 46300, 12, NULL, 1, NULL),
  -- #0464 Rhyperior - Evolution
  (464, 46400, 12, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0465 Tangrowth - Native Encounter
  (465, 46500, 12, NULL, 1, NULL),
  -- #0466 Electivire - Black 2 - External Trade
  (466, 46600, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0466 Electivire - White 2 - Evolution
  (466, 46600, 12, 20, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0467 Magmortar - Black 2 - Evolution
  (467, 46700, 12, 19, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0467 Magmortar - White 2 - External Trade
  (467, 46700, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0468 Togekiss - Evolution
  (468, 46800, 12, NULL, 7, NULL),
  -- #0469 Yanmega - Native Encounter
  (469, 46900, 12, NULL, 1, NULL),
  -- #0470 Leafeon - Evolution
  (470, 47000, 12, NULL, 7, NULL),
  -- #0471 Glaceon - Evolution
  (471, 47100, 12, NULL, 7, NULL),
  -- #0472 Gliscor - Native Encounter
  (472, 47200, 12, NULL, 1, NULL),
  -- #0473 Mamoswine - Native Encounter
  (473, 47300, 12, NULL, 1, NULL),
  -- #0474 Porygon-Z - Evolution
  (474, 47400, 12, NULL, 7, 'Requires trade evolution from a Pokémon Dream Radar source Pokémon.'),
  -- #0475 Gallade - Evolution
  (475, 47500, 12, NULL, 7, NULL),
  -- #0476 Probopass - Evolution
  (476, 47600, 12, NULL, 7, NULL),
  -- #0477 Dusknoir - Evolution
  (477, 47700, 12, NULL, 7, 'Requires trade evolution from a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0478 Froslass - Evolution
  (478, 47800, 12, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0479 Rotom - In-Game Trade
  (479, 47900, 12, NULL, 5, 'In-game trade source for Rotom in Black 2/White 2.'),
  -- #0480 Uxie - Static Encounter
  (480, 48000, 12, NULL, 2, 'Lake guardian fixed encounter after the Cave of Being event.'),
  -- #0481 Mesprit - Static Encounter
  (481, 48100, 12, NULL, 2, 'Lake guardian fixed encounter after the Cave of Being event.'),
  -- #0482 Azelf - Static Encounter
  (482, 48200, 12, NULL, 2, 'Lake guardian fixed encounter after the Cave of Being event.'),
  -- #0483 Dialga - Transfer Only
  (483, 48300, 12, NULL, 13, 'Pokémon Dream Radar transfer source for Black 2/White 2.'),
  -- #0484 Palkia - Transfer Only
  (484, 48400, 12, NULL, 13, 'Pokémon Dream Radar transfer source for Black 2/White 2.'),
  -- #0485 Heatran - Static Encounter
  (485, 48500, 12, NULL, 2, 'Reversal Mountain static encounter requiring the Magma Stone quest.'),
  -- #0486 Regigigas - Static Encounter
  (486, 48600, 12, NULL, 2, 'Static encounter requiring linked-game setup, Regi ownership, or Unova Link conditions.'),
  -- #0487 Giratina - Transfer Only
  (487, 48700, 12, NULL, 13, 'Pokémon Dream Radar transfer source for Black 2/White 2.'),
  -- #0487 Giratina (Origin) - Transfer Only
  (487, 48701, 12, NULL, 13, 'Requires transferred/imported Giratina and Griseous Orb access from Dragonspiral Tower in Black 2/White 2.'),
  -- #0488 Cresselia - Static Encounter
  (488, 48800, 12, NULL, 2, 'Marvelous Bridge static encounter requiring the Lunar Wing quest.'),
  -- #0489 Phione - Transfer Only
  (489, 48900, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0490 Manaphy - Transfer Only
  (490, 49000, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0491 Darkrai - Transfer Only
  (491, 49100, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0492 Shaymin - Transfer Only
  (492, 49200, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0493 Arceus - Transfer Only
  (493, 49300, 12, NULL, 13, 'Not obtainable through normal Black 2/White 2 gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0493 Arceus (Fighting) - Transfer Only
  (493, 49301, 12, NULL, 13, 'Requires transferred/imported Arceus and Plate item access in Black 2/White 2.'),
  -- #0493 Arceus (Flying) - Transfer Only
  (493, 49302, 12, NULL, 13, 'Requires transferred/imported Arceus and Plate item access in Black 2/White 2.'),
  -- #0493 Arceus (Poison) - Transfer Only
  (493, 49303, 12, NULL, 13, 'Requires transferred/imported Arceus and Plate item access in Black 2/White 2.'),
  -- #0493 Arceus (Ground) - Transfer Only
  (493, 49304, 12, NULL, 13, 'Requires transferred/imported Arceus and Plate item access in Black 2/White 2.'),
  -- #0493 Arceus (Rock) - Transfer Only
  (493, 49305, 12, NULL, 13, 'Requires transferred/imported Arceus and Plate item access in Black 2/White 2.'),
  -- #0493 Arceus (Bug) - Transfer Only
  (493, 49306, 12, NULL, 13, 'Requires transferred/imported Arceus and Plate item access in Black 2/White 2.'),
  -- #0493 Arceus (Ghost) - Transfer Only
  (493, 49307, 12, NULL, 13, 'Requires transferred/imported Arceus and Plate item access in Black 2/White 2.'),
  -- #0493 Arceus (Steel) - Transfer Only
  (493, 49308, 12, NULL, 13, 'Requires transferred/imported Arceus and Plate item access in Black 2/White 2.'),
  -- #0493 Arceus (Fire) - Transfer Only
  (493, 49309, 12, NULL, 13, 'Requires transferred/imported Arceus and Plate item access in Black 2/White 2.'),
  -- #0493 Arceus (Water) - Transfer Only
  (493, 49310, 12, NULL, 13, 'Requires transferred/imported Arceus and Plate item access in Black 2/White 2.'),
  -- #0493 Arceus (Grass) - Transfer Only
  (493, 49311, 12, NULL, 13, 'Requires transferred/imported Arceus and Plate item access in Black 2/White 2.'),
  -- #0493 Arceus (Electric) - Transfer Only
  (493, 49312, 12, NULL, 13, 'Requires transferred/imported Arceus and Plate item access in Black 2/White 2.'),
  -- #0493 Arceus (Psychic) - Transfer Only
  (493, 49313, 12, NULL, 13, 'Requires transferred/imported Arceus and Plate item access in Black 2/White 2.'),
  -- #0493 Arceus (Ice) - Transfer Only
  (493, 49314, 12, NULL, 13, 'Requires transferred/imported Arceus and Plate item access in Black 2/White 2.'),
  -- #0493 Arceus (Dragon) - Transfer Only
  (493, 49315, 12, NULL, 13, 'Requires transferred/imported Arceus and Plate item access in Black 2/White 2.'),
  -- #0493 Arceus (Dark) - Transfer Only
  (493, 49316, 12, NULL, 13, 'Requires transferred/imported Arceus and Plate item access in Black 2/White 2.'),
  -- #0494 Victini - Event
  (494, 49400, 12, NULL, 11, 'Official Black 2/White 2 event or distribution source.'),
  -- #0495 Snivy - Starter
  (495, 49500, 12, NULL, 3, 'First partner Pokémon choice from Bianca in Black 2/White 2.'),
  -- #0496 Servine - Evolution
  (496, 49600, 12, NULL, 7, NULL),
  -- #0497 Serperior - Evolution
  (497, 49700, 12, NULL, 7, NULL),
  -- #0498 Tepig - Starter
  (498, 49800, 12, NULL, 3, 'First partner Pokémon choice from Bianca in Black 2/White 2.'),
  -- #0499 Pignite - Evolution
  (499, 49900, 12, NULL, 7, NULL),
  -- #0500 Emboar - Evolution
  (500, 50000, 12, NULL, 7, NULL),
  -- #0501 Oshawott - Starter
  (501, 50100, 12, NULL, 3, 'First partner Pokémon choice from Bianca in Black 2/White 2.'),
  -- #0502 Dewott - Evolution
  (502, 50200, 12, NULL, 7, NULL),
  -- #0503 Samurott - Evolution
  (503, 50300, 12, NULL, 7, NULL),
  -- #0504 Patrat - Native Encounter
  (504, 50400, 12, NULL, 1, NULL),
  -- #0505 Watchog - Native Encounter
  (505, 50500, 12, NULL, 1, NULL),
  -- #0506 Lillipup - Native Encounter
  (506, 50600, 12, NULL, 1, NULL),
  -- #0507 Herdier - Native Encounter
  (507, 50700, 12, NULL, 1, NULL),
  -- #0508 Stoutland - Native Encounter
  (508, 50800, 12, NULL, 1, NULL),
  -- #0509 Purrloin - Native Encounter
  (509, 50900, 12, NULL, 1, NULL),
  -- #0510 Liepard - Native Encounter
  (510, 51000, 12, NULL, 1, NULL),
  -- #0511 Pansage - Native Encounter
  (511, 51100, 12, NULL, 1, NULL),
  -- #0512 Simisage - Evolution
  (512, 51200, 12, NULL, 7, NULL),
  -- #0513 Pansear - Native Encounter
  (513, 51300, 12, NULL, 1, NULL),
  -- #0514 Simisear - Evolution
  (514, 51400, 12, NULL, 7, NULL),
  -- #0515 Panpour - Native Encounter
  (515, 51500, 12, NULL, 1, NULL),
  -- #0516 Simipour - Evolution
  (516, 51600, 12, NULL, 7, NULL),
  -- #0517 Munna - Native Encounter
  (517, 51700, 12, NULL, 1, NULL),
  -- #0518 Musharna - Native Encounter
  (518, 51800, 12, NULL, 1, NULL),
  -- #0519 Pidove - Native Encounter
  (519, 51900, 12, NULL, 1, NULL),
  -- #0520 Tranquill - Native Encounter
  (520, 52000, 12, NULL, 1, NULL),
  -- #0521 Unfezant - Native Encounter
  (521, 52100, 12, NULL, 1, NULL),
  -- #0522 Blitzle - Breeding
  (522, 52200, 12, NULL, 8, NULL),
  -- #0523 Zebstrika - Native Encounter
  (523, 52300, 12, NULL, 1, NULL),
  -- #0524 Roggenrola - Native Encounter
  (524, 52400, 12, NULL, 1, NULL),
  -- #0525 Boldore - Native Encounter
  (525, 52500, 12, NULL, 1, NULL),
  -- #0526 Gigalith - In-Game Trade
  (526, 52600, 12, NULL, 5, 'In-game trade source for Gigalith in Black 2/White 2.'),
  -- #0527 Woobat - Native Encounter
  (527, 52700, 12, NULL, 1, NULL),
  -- #0528 Swoobat - Evolution
  (528, 52800, 12, NULL, 7, NULL),
  -- #0529 Drilbur - Native Encounter
  (529, 52900, 12, NULL, 1, NULL),
  -- #0530 Excadrill - Native Encounter
  (530, 53000, 12, NULL, 1, NULL),
  -- #0531 Audino - Native Encounter
  (531, 53100, 12, NULL, 1, NULL),
  -- #0532 Timburr - Native Encounter
  (532, 53200, 12, NULL, 1, NULL),
  -- #0533 Gurdurr - Native Encounter
  (533, 53300, 12, NULL, 1, NULL),
  -- #0534 Conkeldurr - Evolution
  (534, 53400, 12, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0535 Tympole - Native Encounter
  (535, 53500, 12, NULL, 1, NULL),
  -- #0536 Palpitoad - Native Encounter
  (536, 53600, 12, NULL, 1, NULL),
  -- #0537 Seismitoad - Native Encounter
  (537, 53700, 12, NULL, 1, NULL),
  -- #0538 Throh - Native Encounter
  (538, 53800, 12, NULL, 1, NULL),
  -- #0539 Sawk - Native Encounter
  (539, 53900, 12, NULL, 1, NULL),
  -- #0540 Sewaddle - Native Encounter
  (540, 54000, 12, NULL, 1, NULL),
  -- #0541 Swadloon - Native Encounter
  (541, 54100, 12, NULL, 1, NULL),
  -- #0542 Leavanny - Native Encounter
  (542, 54200, 12, NULL, 1, NULL),
  -- #0543 Venipede - Native Encounter
  (543, 54300, 12, NULL, 1, NULL),
  -- #0544 Whirlipede - Native Encounter
  (544, 54400, 12, NULL, 1, NULL),
  -- #0545 Scolipede - Native Encounter
  (545, 54500, 12, NULL, 1, NULL),
  -- #0546 Cottonee - Black 2 - Native Encounter
  (546, 54600, 12, 19, 1, NULL),
  -- #0546 Cottonee - White 2 - In-Game Trade
  (546, 54600, 12, 20, 5, 'White 2 in-game trade for Cottonee.'),
  -- #0547 Whimsicott - Black 2 - Native Encounter
  (547, 54700, 12, 19, 1, NULL),
  -- #0547 Whimsicott - White 2 - Evolution
  (547, 54700, 12, 20, 7, NULL),
  -- #0548 Petilil - Black 2 - In-Game Trade
  (548, 54800, 12, 19, 5, 'Black 2 in-game trade for Petilil.'),
  -- #0548 Petilil - White 2 - Native Encounter
  (548, 54800, 12, 20, 1, NULL),
  -- #0549 Lilligant - Black 2 - Evolution
  (549, 54900, 12, 19, 7, NULL),
  -- #0549 Lilligant - White 2 - Native Encounter
  (549, 54900, 12, 20, 1, NULL),
  -- #0550 Basculin - Native Encounter
  (550, 55000, 12, NULL, 1, NULL),
  -- #0550 Basculin (Blue-Striped) - Native Encounter
  (550, 55001, 12, NULL, 1, NULL),
  -- #0551 Sandile - Native Encounter
  (551, 55100, 12, NULL, 1, NULL),
  -- #0552 Krokorok - Native Encounter
  (552, 55200, 12, NULL, 1, NULL),
  -- #0553 Krookodile - Evolution
  (553, 55300, 12, NULL, 7, NULL),
  -- #0554 Darumaka - Native Encounter
  (554, 55400, 12, NULL, 1, NULL),
  -- #0555 Darmanitan - Native Encounter
  (555, 55500, 12, NULL, 1, NULL),
  -- #0556 Maractus - Native Encounter
  (556, 55600, 12, NULL, 1, NULL),
  -- #0557 Dwebble - Native Encounter
  (557, 55700, 12, NULL, 1, NULL),
  -- #0558 Crustle - Native Encounter
  (558, 55800, 12, NULL, 1, NULL),
  -- #0559 Scraggy - Native Encounter
  (559, 55900, 12, NULL, 1, NULL),
  -- #0560 Scrafty - Native Encounter
  (560, 56000, 12, NULL, 1, NULL),
  -- #0561 Sigilyph - Native Encounter
  (561, 56100, 12, NULL, 1, NULL),
  -- #0562 Yamask - Native Encounter
  (562, 56200, 12, NULL, 1, NULL),
  -- #0563 Cofagrigus - Evolution
  (563, 56300, 12, NULL, 7, NULL),
  -- #0564 Tirtouga - Fossil Restoration
  (564, 56400, 12, NULL, 6, 'Available by restoring a fossil obtainable in Black 2/White 2.'),
  -- #0565 Carracosta - Evolution
  (565, 56500, 12, NULL, 7, NULL),
  -- #0566 Archen - Fossil Restoration
  (566, 56600, 12, NULL, 6, 'Available by restoring a fossil obtainable in Black 2/White 2.'),
  -- #0567 Archeops - Evolution
  (567, 56700, 12, NULL, 7, NULL),
  -- #0568 Trubbish - Native Encounter
  (568, 56800, 12, NULL, 1, NULL),
  -- #0569 Garbodor - Native Encounter
  (569, 56900, 12, NULL, 1, NULL),
  -- #0570 Zorua - Gift
  (570, 57000, 12, NULL, 4, 'Gift Zorua from Rood in Driftveil City.'),
  -- #0571 Zoroark - Evolution
  (571, 57100, 12, NULL, 7, NULL),
  -- #0572 Minccino - Native Encounter
  (572, 57200, 12, NULL, 1, NULL),
  -- #0573 Cinccino - Native Encounter
  (573, 57300, 12, NULL, 1, NULL),
  -- #0574 Gothita - Black 2 - Native Encounter
  (574, 57400, 12, 19, 1, NULL),
  -- #0574 Gothita - White 2 - External Trade
  (574, 57400, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0575 Gothorita - Black 2 - Native Encounter
  (575, 57500, 12, 19, 1, NULL),
  -- #0575 Gothorita - White 2 - External Trade
  (575, 57500, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0576 Gothitelle - Black 2 - Native Encounter
  (576, 57600, 12, 19, 1, NULL),
  -- #0576 Gothitelle - White 2 - External Trade
  (576, 57600, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0577 Solosis - Black 2 - External Trade
  (577, 57700, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0577 Solosis - White 2 - Native Encounter
  (577, 57700, 12, 20, 1, NULL),
  -- #0578 Duosion - Black 2 - External Trade
  (578, 57800, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0578 Duosion - White 2 - Native Encounter
  (578, 57800, 12, 20, 1, NULL),
  -- #0579 Reuniclus - Black 2 - External Trade
  (579, 57900, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0579 Reuniclus - White 2 - Native Encounter
  (579, 57900, 12, 20, 1, NULL),
  -- #0580 Ducklett - Native Encounter
  (580, 58000, 12, NULL, 1, NULL),
  -- #0581 Swanna - Native Encounter
  (581, 58100, 12, NULL, 1, NULL),
  -- #0582 Vanillite - Breeding
  (582, 58200, 12, NULL, 8, NULL),
  -- #0583 Vanillish - Native Encounter
  (583, 58300, 12, NULL, 1, NULL),
  -- #0584 Vanilluxe - Native Encounter
  (584, 58400, 12, NULL, 1, NULL),
  -- #0585 Deerling - Native Encounter
  (585, 58500, 12, NULL, 1, NULL),
  -- #0586 Sawsbuck - Native Encounter
  (586, 58600, 12, NULL, 1, NULL),
  -- #0587 Emolga - Native Encounter
  (587, 58700, 12, NULL, 1, NULL),
  -- #0588 Karrablast - Native Encounter
  (588, 58800, 12, NULL, 1, NULL),
  -- #0589 Escavalier - Evolution
  (589, 58900, 12, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0590 Foongus - Native Encounter
  (590, 59000, 12, NULL, 1, NULL),
  -- #0591 Amoonguss - Native Encounter
  (591, 59100, 12, NULL, 1, NULL),
  -- #0592 Frillish - Native Encounter
  (592, 59200, 12, NULL, 1, NULL),
  -- #0593 Jellicent - Native Encounter
  (593, 59300, 12, NULL, 1, NULL),
  -- #0594 Alomomola - Native Encounter
  (594, 59400, 12, NULL, 1, NULL),
  -- #0595 Joltik - Native Encounter
  (595, 59500, 12, NULL, 1, NULL),
  -- #0596 Galvantula - Evolution
  (596, 59600, 12, NULL, 7, NULL),
  -- #0597 Ferroseed - Native Encounter
  (597, 59700, 12, NULL, 1, NULL),
  -- #0598 Ferrothorn - Evolution
  (598, 59800, 12, NULL, 7, NULL),
  -- #0599 Klink - Native Encounter
  (599, 59900, 12, NULL, 1, NULL),
  -- #0600 Klang - Native Encounter
  (600, 60000, 12, NULL, 1, NULL),
  -- #0601 Klinklang - Native Encounter
  (601, 60100, 12, NULL, 1, NULL),
  -- #0602 Tynamo - Native Encounter
  (602, 60200, 12, NULL, 1, NULL),
  -- #0603 Eelektrik - Native Encounter
  (603, 60300, 12, NULL, 1, NULL),
  -- #0604 Eelektross - Evolution
  (604, 60400, 12, NULL, 7, NULL),
  -- #0605 Elgyem - Native Encounter
  (605, 60500, 12, NULL, 1, NULL),
  -- #0606 Beheeyem - Evolution
  (606, 60600, 12, NULL, 7, NULL),
  -- #0607 Litwick - Native Encounter
  (607, 60700, 12, NULL, 1, NULL),
  -- #0608 Lampent - Evolution
  (608, 60800, 12, NULL, 7, NULL),
  -- #0609 Chandelure - Evolution
  (609, 60900, 12, NULL, 7, NULL),
  -- #0610 Axew - Native Encounter
  (610, 61000, 12, NULL, 1, NULL),
  -- #0611 Fraxure - Native Encounter
  (611, 61100, 12, NULL, 1, NULL),
  -- #0612 Haxorus - Native Encounter
  (612, 61200, 12, NULL, 1, NULL),
  -- #0613 Cubchoo - Native Encounter
  (613, 61300, 12, NULL, 1, NULL),
  -- #0614 Beartic - Native Encounter
  (614, 61400, 12, NULL, 1, NULL),
  -- #0615 Cryogonal - Native Encounter
  (615, 61500, 12, NULL, 1, NULL),
  -- #0616 Shelmet - Native Encounter
  (616, 61600, 12, NULL, 1, NULL),
  -- #0617 Accelgor - Evolution
  (617, 61700, 12, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0618 Stunfisk - Native Encounter
  (618, 61800, 12, NULL, 1, NULL),
  -- #0619 Mienfoo - Native Encounter
  (619, 61900, 12, NULL, 1, NULL),
  -- #0620 Mienshao - Native Encounter
  (620, 62000, 12, NULL, 1, NULL),
  -- #0621 Druddigon - Native Encounter
  (621, 62100, 12, NULL, 1, NULL),
  -- #0622 Golett - Breeding
  (622, 62200, 12, NULL, 8, NULL),
  -- #0623 Golurk - Native Encounter
  (623, 62300, 12, NULL, 1, NULL),
  -- #0624 Pawniard - Native Encounter
  (624, 62400, 12, NULL, 1, NULL),
  -- #0625 Bisharp - Evolution
  (625, 62500, 12, NULL, 7, NULL),
  -- #0626 Bouffalant - Native Encounter
  (626, 62600, 12, NULL, 1, NULL),
  -- #0627 Rufflet - Black 2 - External Trade
  (627, 62700, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0627 Rufflet - White 2 - Native Encounter
  (627, 62700, 12, 20, 1, NULL),
  -- #0628 Braviary - Black 2 - External Trade
  (628, 62800, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0628 Braviary - White 2 - Native Encounter
  (628, 62800, 12, 20, 1, NULL),
  -- #0629 Vullaby - Black 2 - Native Encounter
  (629, 62900, 12, 19, 1, NULL),
  -- #0629 Vullaby - White 2 - External Trade
  (629, 62900, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0630 Mandibuzz - Black 2 - Native Encounter
  (630, 63000, 12, 19, 1, NULL),
  -- #0630 Mandibuzz - White 2 - External Trade
  (630, 63000, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0631 Heatmor - Native Encounter
  (631, 63100, 12, NULL, 1, NULL),
  -- #0632 Durant - Native Encounter
  (632, 63200, 12, NULL, 1, NULL),
  -- #0633 Deino - Breeding
  (633, 63300, 12, NULL, 8, NULL),
  -- #0634 Zweilous - Native Encounter
  (634, 63400, 12, NULL, 1, NULL),
  -- #0635 Hydreigon - Evolution
  (635, 63500, 12, NULL, 7, NULL),
  -- #0636 Larvesta - Breeding
  (636, 63600, 12, NULL, 8, NULL),
  -- #0637 Volcarona - Static Encounter
  (637, 63700, 12, NULL, 2, 'Relic Castle static encounter in Black 2/White 2.'),
  -- #0638 Cobalion - Static Encounter
  (638, 63800, 12, NULL, 2, 'Route 13 static encounter in Black 2/White 2.'),
  -- #0639 Terrakion - Static Encounter
  (639, 63900, 12, NULL, 2, 'Route 22 static encounter in Black 2/White 2.'),
  -- #0640 Virizion - Static Encounter
  (640, 64000, 12, NULL, 2, 'Route 11 static encounter in Black 2/White 2.'),
  -- #0641 Tornadus - Transfer Only
  (641, 64100, 12, NULL, 13, 'Pokémon Dream Radar transfer source for Black 2/White 2.'),
  -- #0641 Tornadus (Therian) - Transfer Only
  (641, 64101, 12, NULL, 13, 'Pokémon Dream Radar transfer and Reveal Glass form access in Black 2/White 2.'),
  -- #0642 Thundurus - Transfer Only
  (642, 64200, 12, NULL, 13, 'Pokémon Dream Radar transfer source for Black 2/White 2.'),
  -- #0642 Thundurus (Therian) - Transfer Only
  (642, 64201, 12, NULL, 13, 'Pokémon Dream Radar transfer and Reveal Glass form access in Black 2/White 2.'),
  -- #0643 Reshiram - Black 2 - External Trade
  (643, 64300, 12, 19, 12, 'Version source is White 2; available in Black 2 by trade or compatible external transfer.'),
  -- #0643 Reshiram - White 2 - Static Encounter
  (643, 64300, 12, 20, 2, 'White 2 static encounter after N''s Castle and Dragonspiral Tower progression.'),
  -- #0644 Zekrom - Black 2 - Static Encounter
  (644, 64400, 12, 19, 2, 'Black 2 static encounter after N''s Castle and Dragonspiral Tower progression.'),
  -- #0644 Zekrom - White 2 - External Trade
  (644, 64400, 12, 20, 12, 'Version source is Black 2; available in White 2 by trade or compatible external transfer.'),
  -- #0645 Landorus - Transfer Only
  (645, 64500, 12, NULL, 13, 'Pokémon Dream Radar transfer source for Black 2/White 2.'),
  -- #0645 Landorus (Therian) - Transfer Only
  (645, 64501, 12, NULL, 13, 'Pokémon Dream Radar transfer and Reveal Glass form access in Black 2/White 2.'),
  -- #0646 Kyurem - Static Encounter
  (646, 64600, 12, NULL, 2, 'Giant Chasm static encounter in Black 2/White 2.'),
  -- #0646 Kyurem (White) - White 2 - Static Encounter
  (646, 64601, 12, 20, 2, 'White Kyurem is available in White 2 through DNA Splicers form fusion using Kyurem and Reshiram.'),
  -- #0646 Kyurem (Black) - Black 2 - Static Encounter
  (646, 64602, 12, 19, 2, 'Black Kyurem is available in Black 2 through DNA Splicers form fusion using Kyurem and Zekrom.'),
  -- #0647 Keldeo - Event
  (647, 64700, 12, NULL, 11, 'Official Black 2/White 2 event or distribution source.'),
  -- #0648 Meloetta - Event
  (648, 64800, 12, NULL, 11, 'Official Black 2/White 2 event or distribution source.'),
  -- #0649 Genesect - Event
  (649, 64900, 12, NULL, 11, 'Official Black 2/White 2 event or distribution source.'),
  -- #0649 Genesect (Douse Drive) - Black 2 - External Trade
  (649, 64901, 12, 19, 12, 'Douse Drive is obtained in White 2; available in Black 2 by held-item trade for event Genesect.'),
  -- #0649 Genesect (Douse Drive) - White 2 - Event
  (649, 64901, 12, 20, 11, 'Douse Drive is obtained at P2 Laboratory in White 2 when shown an event Genesect.'),
  -- #0649 Genesect (Shock Drive) - Black 2 - Event
  (649, 64902, 12, 19, 11, 'Shock Drive is obtained at P2 Laboratory in Black 2 when shown an event Genesect.'),
  -- #0649 Genesect (Shock Drive) - White 2 - External Trade
  (649, 64902, 12, 20, 12, 'Shock Drive is obtained in Black 2; available in White 2 by held-item trade for event Genesect.'),
  -- #0649 Genesect (Burn Drive) - Black 2 - Event
  (649, 64903, 12, 19, 11, 'Burn Drive is obtained at P2 Laboratory in Black 2 when shown an event Genesect.'),
  -- #0649 Genesect (Burn Drive) - White 2 - External Trade
  (649, 64903, 12, 20, 12, 'Burn Drive is obtained in Black 2; available in White 2 by held-item trade for event Genesect.'),
  -- #0649 Genesect (Chill Drive) - Black 2 - External Trade
  (649, 64904, 12, 19, 12, 'Chill Drive is obtained in White 2; available in Black 2 by held-item trade for event Genesect.'),
  -- #0649 Genesect (Chill Drive) - White 2 - Event
  (649, 64904, 12, 20, 11, 'Chill Drive is obtained at P2 Laboratory in White 2 when shown an event Genesect.');
