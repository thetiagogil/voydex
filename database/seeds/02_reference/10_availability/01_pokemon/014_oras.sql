-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by availability and Omega Ruby/Alpha Sapphire availability notes.
-- Cross-check: PokemonDB ORAS version exclusives, Serebii ORAS version exclusives/gift Pokémon, and Bulbapedia Mirage spot, Eon Ticket, and form-item pages.
-- Scope note: primary availability method per obtainable form; external-source rows preserve compatible-game usability for planning.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Omega Ruby / Alpha Sapphire
-- Table: reference.pokemon_availability
-- Scope: 808 rows; all Generation VI-compatible species are represented, with game-specific rows for version sources and curated persistent form rows for Basculin, Meowstic, Arceus Plates, Deoxys, Rotom, Giratina, Shaymin, Therian forms, Kyurem fusions, Genesect Drives, and Hoopa Unbound.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0001 Bulbasaur - Event
  (1, 100, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0002 Ivysaur - Evolution
  (2, 200, 14, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0003 Venusaur - Event
  (3, 300, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0004 Charmander - Event
  (4, 400, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0005 Charmeleon - Evolution
  (5, 500, 14, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0006 Charizard - Event
  (6, 600, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0007 Squirtle - Event
  (7, 700, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0008 Wartortle - Evolution
  (8, 800, 14, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0009 Blastoise - Event
  (9, 900, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0010 Caterpie - External Trade
  (10, 1000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0011 Metapod - External Trade
  (11, 1100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0012 Butterfree - External Trade
  (12, 1200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0013 Weedle - Breeding
  (13, 1300, 14, NULL, 8, NULL),
  -- #0014 Kakuna - Native Encounter
  (14, 1400, 14, NULL, 1, NULL),
  -- #0015 Beedrill - Evolution
  (15, 1500, 14, NULL, 7, NULL),
  -- #0016 Pidgey - Breeding
  (16, 1600, 14, NULL, 8, NULL),
  -- #0017 Pidgeotto - Native Encounter
  (17, 1700, 14, NULL, 1, NULL),
  -- #0018 Pidgeot - Evolution
  (18, 1800, 14, NULL, 7, NULL),
  -- #0019 Rattata - Native Encounter
  (19, 1900, 14, NULL, 1, NULL),
  -- #0020 Raticate - Native Encounter
  (20, 2000, 14, NULL, 1, NULL),
  -- #0021 Spearow - External Trade
  (21, 2100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0022 Fearow - External Trade
  (22, 2200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0023 Ekans - External Trade
  (23, 2300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0024 Arbok - External Trade
  (24, 2400, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0025 Pikachu - Native Encounter
  (25, 2500, 14, NULL, 1, NULL),
  -- #0026 Raichu - Evolution
  (26, 2600, 14, NULL, 7, NULL),
  -- #0027 Sandshrew - Native Encounter
  (27, 2700, 14, NULL, 1, NULL),
  -- #0028 Sandslash - Evolution
  (28, 2800, 14, NULL, 7, NULL),
  -- #0029 Nidoran F - External Trade
  (29, 2900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0030 Nidorina - External Trade
  (30, 3000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0031 Nidoqueen - External Trade
  (31, 3100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0032 Nidoran M - External Trade
  (32, 3200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0033 Nidorino - External Trade
  (33, 3300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0034 Nidoking - External Trade
  (34, 3400, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0035 Clefairy - Native Encounter
  (35, 3500, 14, NULL, 1, NULL),
  -- #0036 Clefable - Evolution
  (36, 3600, 14, NULL, 7, NULL),
  -- #0037 Vulpix - Native Encounter
  (37, 3700, 14, NULL, 1, NULL),
  -- #0038 Ninetales - Evolution
  (38, 3800, 14, NULL, 7, NULL),
  -- #0039 Jigglypuff - Native Encounter
  (39, 3900, 14, NULL, 1, NULL),
  -- #0040 Wigglytuff - Evolution
  (40, 4000, 14, NULL, 7, NULL),
  -- #0041 Zubat - Native Encounter
  (41, 4100, 14, NULL, 1, NULL),
  -- #0042 Golbat - Native Encounter
  (42, 4200, 14, NULL, 1, NULL),
  -- #0043 Oddish - Native Encounter
  (43, 4300, 14, NULL, 1, NULL),
  -- #0044 Gloom - Native Encounter
  (44, 4400, 14, NULL, 1, NULL),
  -- #0045 Vileplume - Evolution
  (45, 4500, 14, NULL, 7, NULL),
  -- #0046 Paras - Native Encounter
  (46, 4600, 14, NULL, 1, NULL),
  -- #0047 Parasect - Evolution
  (47, 4700, 14, NULL, 7, NULL),
  -- #0048 Venonat - Breeding
  (48, 4800, 14, NULL, 8, NULL),
  -- #0049 Venomoth - Native Encounter
  (49, 4900, 14, NULL, 1, NULL),
  -- #0050 Diglett - Native Encounter
  (50, 5000, 14, NULL, 1, NULL),
  -- #0051 Dugtrio - Evolution
  (51, 5100, 14, NULL, 7, NULL),
  -- #0052 Meowth - Breeding
  (52, 5200, 14, NULL, 8, NULL),
  -- #0053 Persian - Native Encounter
  (53, 5300, 14, NULL, 1, NULL),
  -- #0054 Psyduck - Native Encounter
  (54, 5400, 14, NULL, 1, NULL),
  -- #0055 Golduck - Evolution
  (55, 5500, 14, NULL, 7, NULL),
  -- #0056 Mankey - Native Encounter
  (56, 5600, 14, NULL, 1, NULL),
  -- #0057 Primeape - Evolution
  (57, 5700, 14, NULL, 7, NULL),
  -- #0058 Growlithe - Native Encounter
  (58, 5800, 14, NULL, 1, NULL),
  -- #0059 Arcanine - Evolution
  (59, 5900, 14, NULL, 7, NULL),
  -- #0060 Poliwag - External Trade
  (60, 6000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0061 Poliwhirl - External Trade
  (61, 6100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0062 Poliwrath - External Trade
  (62, 6200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0063 Abra - Native Encounter
  (63, 6300, 14, NULL, 1, NULL),
  -- #0064 Kadabra - Evolution
  (64, 6400, 14, NULL, 7, NULL),
  -- #0065 Alakazam - Evolution
  (65, 6500, 14, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0066 Machop - Native Encounter
  (66, 6600, 14, NULL, 1, NULL),
  -- #0067 Machoke - Evolution
  (67, 6700, 14, NULL, 7, NULL),
  -- #0068 Machamp - Evolution
  (68, 6800, 14, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0069 Bellsprout - External Trade
  (69, 6900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0070 Weepinbell - External Trade
  (70, 7000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0071 Victreebel - External Trade
  (71, 7100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0072 Tentacool - Native Encounter
  (72, 7200, 14, NULL, 1, NULL),
  -- #0073 Tentacruel - Native Encounter
  (73, 7300, 14, NULL, 1, NULL),
  -- #0074 Geodude - Native Encounter
  (74, 7400, 14, NULL, 1, NULL),
  -- #0075 Graveler - Native Encounter
  (75, 7500, 14, NULL, 1, NULL),
  -- #0076 Golem - Evolution
  (76, 7600, 14, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0077 Ponyta - Native Encounter
  (77, 7700, 14, NULL, 1, NULL),
  -- #0078 Rapidash - Evolution
  (78, 7800, 14, NULL, 7, NULL),
  -- #0079 Slowpoke - Native Encounter
  (79, 7900, 14, NULL, 1, NULL),
  -- #0080 Slowbro - Evolution
  (80, 8000, 14, NULL, 7, NULL),
  -- #0081 Magnemite - Native Encounter
  (81, 8100, 14, NULL, 1, NULL),
  -- #0082 Magneton - Evolution
  (82, 8200, 14, NULL, 7, NULL),
  -- #0083 Farfetch'd - External Trade
  (83, 8300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0084 Doduo - Native Encounter
  (84, 8400, 14, NULL, 1, NULL),
  -- #0085 Dodrio - Evolution
  (85, 8500, 14, NULL, 7, NULL),
  -- #0086 Seel - Native Encounter
  (86, 8600, 14, NULL, 1, NULL),
  -- #0087 Dewgong - Native Encounter
  (87, 8700, 14, NULL, 1, NULL),
  -- #0088 Grimer - Native Encounter
  (88, 8800, 14, NULL, 1, NULL),
  -- #0089 Muk - Evolution
  (89, 8900, 14, NULL, 7, NULL),
  -- #0090 Shellder - External Trade
  (90, 9000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0091 Cloyster - External Trade
  (91, 9100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0092 Gastly - Breeding
  (92, 9200, 14, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0093 Haunter - Breeding
  (93, 9300, 14, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0094 Gengar - Event
  (94, 9400, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0095 Onix - Native Encounter
  (95, 9500, 14, NULL, 1, NULL),
  -- #0096 Drowzee - Breeding
  (96, 9600, 14, NULL, 8, NULL),
  -- #0097 Hypno - Native Encounter
  (97, 9700, 14, NULL, 1, NULL),
  -- #0098 Krabby - Native Encounter
  (98, 9800, 14, NULL, 1, NULL),
  -- #0099 Kingler - Evolution
  (99, 9900, 14, NULL, 7, NULL),
  -- #0100 Voltorb - Native Encounter
  (100, 10000, 14, NULL, 1, NULL),
  -- #0101 Electrode - Native Encounter
  (101, 10100, 14, NULL, 1, NULL),
  -- #0102 Exeggcute - External Trade
  (102, 10200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0103 Exeggutor - External Trade
  (103, 10300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0104 Cubone - External Trade
  (104, 10400, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0105 Marowak - External Trade
  (105, 10500, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0106 Hitmonlee - Evolution
  (106, 10600, 14, NULL, 7, NULL),
  -- #0107 Hitmonchan - Evolution
  (107, 10700, 14, NULL, 7, NULL),
  -- #0108 Lickitung - External Trade
  (108, 10800, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0109 Koffing - Native Encounter
  (109, 10900, 14, NULL, 1, NULL),
  -- #0110 Weezing - Evolution
  (110, 11000, 14, NULL, 7, NULL),
  -- #0111 Rhyhorn - Native Encounter
  (111, 11100, 14, NULL, 1, NULL),
  -- #0112 Rhydon - Evolution
  (112, 11200, 14, NULL, 7, NULL),
  -- #0113 Chansey - Evolution
  (113, 11300, 14, NULL, 7, NULL),
  -- #0114 Tangela - Native Encounter
  (114, 11400, 14, NULL, 1, NULL),
  -- #0115 Kangaskhan - Event
  (115, 11500, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0116 Horsea - Native Encounter
  (116, 11600, 14, NULL, 1, NULL),
  -- #0117 Seadra - Native Encounter
  (117, 11700, 14, NULL, 1, NULL),
  -- #0118 Goldeen - Native Encounter
  (118, 11800, 14, NULL, 1, NULL),
  -- #0119 Seaking - Native Encounter
  (119, 11900, 14, NULL, 1, NULL),
  -- #0120 Staryu - Native Encounter
  (120, 12000, 14, NULL, 1, NULL),
  -- #0121 Starmie - Evolution
  (121, 12100, 14, NULL, 7, NULL),
  -- #0122 Mr. Mime - External Trade
  (122, 12200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0123 Scyther - External Trade
  (123, 12300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0124 Jynx - External Trade
  (124, 12400, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0125 Electabuzz - Evolution
  (125, 12500, 14, NULL, 7, NULL),
  -- #0126 Magmar - Evolution
  (126, 12600, 14, NULL, 7, NULL),
  -- #0127 Pinsir - Native Encounter
  (127, 12700, 14, NULL, 1, NULL),
  -- #0128 Tauros - External Trade
  (128, 12800, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 14, NULL, 1, NULL),
  -- #0130 Gyarados - Native Encounter
  (130, 13000, 14, NULL, 1, NULL),
  -- #0131 Lapras - External Trade
  (131, 13100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0132 Ditto - Native Encounter
  (132, 13200, 14, NULL, 1, NULL),
  -- #0133 Eevee - Native Encounter
  (133, 13300, 14, NULL, 1, NULL),
  -- #0134 Vaporeon - Evolution
  (134, 13400, 14, NULL, 7, NULL),
  -- #0135 Jolteon - Evolution
  (135, 13500, 14, NULL, 7, NULL),
  -- #0136 Flareon - Evolution
  (136, 13600, 14, NULL, 7, NULL),
  -- #0137 Porygon - Native Encounter
  (137, 13700, 14, NULL, 1, NULL),
  -- #0138 Omanyte - Omega Ruby - External Trade
  (138, 13800, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0138 Omanyte - Alpha Sapphire - Fossil Restoration
  (138, 13800, 14, 24, 6, 'Available by restoring a fossil obtainable in ORAS.'),
  -- #0139 Omastar - Omega Ruby - External Trade
  (139, 13900, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0139 Omastar - Alpha Sapphire - Evolution
  (139, 13900, 14, 24, 7, NULL),
  -- #0140 Kabuto - Omega Ruby - Fossil Restoration
  (140, 14000, 14, 23, 6, 'Available by restoring a fossil obtainable in ORAS.'),
  -- #0140 Kabuto - Alpha Sapphire - External Trade
  (140, 14000, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0141 Kabutops - Omega Ruby - Evolution
  (141, 14100, 14, 23, 7, NULL),
  -- #0141 Kabutops - Alpha Sapphire - External Trade
  (141, 14100, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0142 Aerodactyl - Fossil Restoration
  (142, 14200, 14, NULL, 6, 'Available by restoring a fossil obtainable in ORAS.'),
  -- #0143 Snorlax - External Trade
  (143, 14300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0144 Articuno - Event
  (144, 14400, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0145 Zapdos - Event
  (145, 14500, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0146 Moltres - Event
  (146, 14600, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0147 Dratini - Breeding
  (147, 14700, 14, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0148 Dragonair - Breeding
  (148, 14800, 14, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0149 Dragonite - Event
  (149, 14900, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0150 Mewtwo - Event
  (150, 15000, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0151 Mew - Event
  (151, 15100, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0152 Chikorita - Starter
  (152, 15200, 14, NULL, 3, 'Postgame starter choice from Professor Birch in ORAS.'),
  -- #0153 Bayleef - Evolution
  (153, 15300, 14, NULL, 7, NULL),
  -- #0154 Meganium - Evolution
  (154, 15400, 14, NULL, 7, NULL),
  -- #0155 Cyndaquil - Starter
  (155, 15500, 14, NULL, 3, 'Postgame starter choice from Professor Birch in ORAS.'),
  -- #0156 Quilava - Evolution
  (156, 15600, 14, NULL, 7, NULL),
  -- #0157 Typhlosion - Evolution
  (157, 15700, 14, NULL, 7, NULL),
  -- #0158 Totodile - Starter
  (158, 15800, 14, NULL, 3, 'Postgame starter choice from Professor Birch in ORAS.'),
  -- #0159 Croconaw - Evolution
  (159, 15900, 14, NULL, 7, NULL),
  -- #0160 Feraligatr - Evolution
  (160, 16000, 14, NULL, 7, NULL),
  -- #0161 Sentret - External Trade
  (161, 16100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0162 Furret - External Trade
  (162, 16200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0163 Hoothoot - External Trade
  (163, 16300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0164 Noctowl - External Trade
  (164, 16400, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0165 Ledyba - External Trade
  (165, 16500, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0166 Ledian - External Trade
  (166, 16600, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0167 Spinarak - Breeding
  (167, 16700, 14, NULL, 8, NULL),
  -- #0168 Ariados - Native Encounter
  (168, 16800, 14, NULL, 1, NULL),
  -- #0169 Crobat - Evolution
  (169, 16900, 14, NULL, 7, NULL),
  -- #0170 Chinchou - Native Encounter
  (170, 17000, 14, NULL, 1, NULL),
  -- #0171 Lanturn - Native Encounter
  (171, 17100, 14, NULL, 1, NULL),
  -- #0172 Pichu - Breeding
  (172, 17200, 14, NULL, 8, NULL),
  -- #0173 Cleffa - Breeding
  (173, 17300, 14, NULL, 8, NULL),
  -- #0174 Igglybuff - Breeding
  (174, 17400, 14, NULL, 8, NULL),
  -- #0175 Togepi - Gift
  (175, 17500, 14, NULL, 4, 'Gift Togepi Egg received in Lavaridge Town in ORAS.'),
  -- #0176 Togetic - Evolution
  (176, 17600, 14, NULL, 7, NULL),
  -- #0177 Natu - Breeding
  (177, 17700, 14, NULL, 8, NULL),
  -- #0178 Xatu - Native Encounter
  (178, 17800, 14, NULL, 1, NULL),
  -- #0179 Mareep - Event
  (179, 17900, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0180 Flaaffy - Evolution
  (180, 18000, 14, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0181 Ampharos - Evolution
  (181, 18100, 14, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0182 Bellossom - Evolution
  (182, 18200, 14, NULL, 7, NULL),
  -- #0183 Marill - Native Encounter
  (183, 18300, 14, NULL, 1, NULL),
  -- #0184 Azumarill - Native Encounter
  (184, 18400, 14, NULL, 1, NULL),
  -- #0185 Sudowoodo - External Trade
  (185, 18500, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0186 Politoed - External Trade
  (186, 18600, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0187 Hoppip - External Trade
  (187, 18700, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0188 Skiploom - External Trade
  (188, 18800, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0189 Jumpluff - External Trade
  (189, 18900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0190 Aipom - Native Encounter
  (190, 19000, 14, NULL, 1, NULL),
  -- #0191 Sunkern - Native Encounter
  (191, 19100, 14, NULL, 1, NULL),
  -- #0192 Sunflora - Evolution
  (192, 19200, 14, NULL, 7, NULL),
  -- #0193 Yanma - External Trade
  (193, 19300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0194 Wooper - External Trade
  (194, 19400, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0195 Quagsire - External Trade
  (195, 19500, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0196 Espeon - Evolution
  (196, 19600, 14, NULL, 7, NULL),
  -- #0197 Umbreon - Evolution
  (197, 19700, 14, NULL, 7, NULL),
  -- #0198 Murkrow - Native Encounter
  (198, 19800, 14, NULL, 1, NULL),
  -- #0199 Slowking - Evolution
  (199, 19900, 14, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0200 Misdreavus - Native Encounter
  (200, 20000, 14, NULL, 1, NULL),
  -- #0201 Unown - Native Encounter
  (201, 20100, 14, NULL, 1, NULL),
  -- #0202 Wobbuffet - Native Encounter
  (202, 20200, 14, NULL, 1, NULL),
  -- #0203 Girafarig - Native Encounter
  (203, 20300, 14, NULL, 1, NULL),
  -- #0204 Pineco - Breeding
  (204, 20400, 14, NULL, 8, NULL),
  -- #0205 Forretress - Native Encounter
  (205, 20500, 14, NULL, 1, NULL),
  -- #0206 Dunsparce - External Trade
  (206, 20600, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0207 Gligar - External Trade
  (207, 20700, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0208 Steelix - Evolution
  (208, 20800, 14, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0209 Snubbull - External Trade
  (209, 20900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0210 Granbull - External Trade
  (210, 21000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0211 Qwilfish - External Trade
  (211, 21100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0212 Scizor - External Trade
  (212, 21200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0213 Shuckle - External Trade
  (213, 21300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0214 Heracross - Native Encounter
  (214, 21400, 14, NULL, 1, NULL),
  -- #0215 Sneasel - External Trade
  (215, 21500, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0216 Teddiursa - External Trade
  (216, 21600, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0217 Ursaring - External Trade
  (217, 21700, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0218 Slugma - Native Encounter
  (218, 21800, 14, NULL, 1, NULL),
  -- #0219 Magcargo - Evolution
  (219, 21900, 14, NULL, 7, NULL),
  -- #0220 Swinub - External Trade
  (220, 22000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0221 Piloswine - External Trade
  (221, 22100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0222 Corsola - Native Encounter
  (222, 22200, 14, NULL, 1, NULL),
  -- #0223 Remoraid - Native Encounter
  (223, 22300, 14, NULL, 1, NULL),
  -- #0224 Octillery - Native Encounter
  (224, 22400, 14, NULL, 1, NULL),
  -- #0225 Delibird - Native Encounter
  (225, 22500, 14, NULL, 1, NULL),
  -- #0226 Mantine - Native Encounter
  (226, 22600, 14, NULL, 1, NULL),
  -- #0227 Skarmory - Native Encounter
  (227, 22700, 14, NULL, 1, NULL),
  -- #0228 Houndour - External Trade
  (228, 22800, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0229 Houndoom - External Trade
  (229, 22900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0230 Kingdra - Evolution
  (230, 23000, 14, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0231 Phanpy - Breeding
  (231, 23100, 14, NULL, 8, NULL),
  -- #0232 Donphan - Native Encounter
  (232, 23200, 14, NULL, 1, NULL),
  -- #0233 Porygon2 - Evolution
  (233, 23300, 14, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0234 Stantler - Native Encounter
  (234, 23400, 14, NULL, 1, NULL),
  -- #0235 Smeargle - Event
  (235, 23500, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0236 Tyrogue - Native Encounter
  (236, 23600, 14, NULL, 1, NULL),
  -- #0237 Hitmontop - Evolution
  (237, 23700, 14, NULL, 7, NULL),
  -- #0238 Smoochum - External Trade
  (238, 23800, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0239 Elekid - Native Encounter
  (239, 23900, 14, NULL, 1, NULL),
  -- #0240 Magby - Native Encounter
  (240, 24000, 14, NULL, 1, NULL),
  -- #0241 Miltank - Event
  (241, 24100, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0242 Blissey - Evolution
  (242, 24200, 14, NULL, 7, NULL),
  -- #0243 Raikou - Raid or Special Encounter
  (243, 24300, 14, NULL, 10, 'Trackless Forest Mirage spot encounter in ORAS.'),
  -- #0244 Entei - Raid or Special Encounter
  (244, 24400, 14, NULL, 10, 'Trackless Forest Mirage spot encounter in ORAS.'),
  -- #0245 Suicune - Raid or Special Encounter
  (245, 24500, 14, NULL, 10, 'Trackless Forest Mirage spot encounter in ORAS.'),
  -- #0246 Larvitar - Breeding
  (246, 24600, 14, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0247 Pupitar - Breeding
  (247, 24700, 14, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0248 Tyranitar - Event
  (248, 24800, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0249 Lugia - Omega Ruby - External Trade
  (249, 24900, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0249 Lugia - Alpha Sapphire - Static Encounter
  (249, 24900, 14, 24, 2, 'Sea Mauville static encounter in Alpha Sapphire after obtaining the Tidal Bell.'),
  -- #0250 Ho-Oh - Omega Ruby - Static Encounter
  (250, 25000, 14, 23, 2, 'Sea Mauville static encounter in Omega Ruby after obtaining the Clear Bell.'),
  -- #0250 Ho-Oh - Alpha Sapphire - External Trade
  (250, 25000, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0251 Celebi - Event
  (251, 25100, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0252 Treecko - Starter
  (252, 25200, 14, NULL, 3, 'Hoenn first partner choice in ORAS.'),
  -- #0253 Grovyle - Evolution
  (253, 25300, 14, NULL, 7, NULL),
  -- #0254 Sceptile - Evolution
  (254, 25400, 14, NULL, 7, NULL),
  -- #0255 Torchic - Starter
  (255, 25500, 14, NULL, 3, 'Hoenn first partner choice in ORAS.'),
  -- #0256 Combusken - Evolution
  (256, 25600, 14, NULL, 7, NULL),
  -- #0257 Blaziken - Evolution
  (257, 25700, 14, NULL, 7, NULL),
  -- #0258 Mudkip - Starter
  (258, 25800, 14, NULL, 3, 'Hoenn first partner choice in ORAS.'),
  -- #0259 Marshtomp - Evolution
  (259, 25900, 14, NULL, 7, NULL),
  -- #0260 Swampert - Evolution
  (260, 26000, 14, NULL, 7, NULL),
  -- #0261 Poochyena - Native Encounter
  (261, 26100, 14, NULL, 1, NULL),
  -- #0262 Mightyena - Evolution
  (262, 26200, 14, NULL, 7, NULL),
  -- #0263 Zigzagoon - Native Encounter
  (263, 26300, 14, NULL, 1, NULL),
  -- #0264 Linoone - Native Encounter
  (264, 26400, 14, NULL, 1, NULL),
  -- #0265 Wurmple - Native Encounter
  (265, 26500, 14, NULL, 1, NULL),
  -- #0266 Silcoon - Native Encounter
  (266, 26600, 14, NULL, 1, NULL),
  -- #0267 Beautifly - Evolution
  (267, 26700, 14, NULL, 7, NULL),
  -- #0268 Cascoon - Native Encounter
  (268, 26800, 14, NULL, 1, NULL),
  -- #0269 Dustox - Evolution
  (269, 26900, 14, NULL, 7, NULL),
  -- #0270 Lotad - Omega Ruby - External Trade
  (270, 27000, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0270 Lotad - Alpha Sapphire - Native Encounter
  (270, 27000, 14, 24, 1, NULL),
  -- #0271 Lombre - Omega Ruby - External Trade
  (271, 27100, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0271 Lombre - Alpha Sapphire - Native Encounter
  (271, 27100, 14, 24, 1, NULL),
  -- #0272 Ludicolo - Omega Ruby - External Trade
  (272, 27200, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0272 Ludicolo - Alpha Sapphire - Evolution
  (272, 27200, 14, 24, 7, NULL),
  -- #0273 Seedot - Omega Ruby - Native Encounter
  (273, 27300, 14, 23, 1, NULL),
  -- #0273 Seedot - Alpha Sapphire - External Trade
  (273, 27300, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0274 Nuzleaf - Omega Ruby - Native Encounter
  (274, 27400, 14, 23, 1, NULL),
  -- #0274 Nuzleaf - Alpha Sapphire - External Trade
  (274, 27400, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0275 Shiftry - Omega Ruby - Evolution
  (275, 27500, 14, 23, 7, NULL),
  -- #0275 Shiftry - Alpha Sapphire - External Trade
  (275, 27500, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0276 Taillow - Native Encounter
  (276, 27600, 14, NULL, 1, NULL),
  -- #0277 Swellow - Evolution
  (277, 27700, 14, NULL, 7, NULL),
  -- #0278 Wingull - Native Encounter
  (278, 27800, 14, NULL, 1, NULL),
  -- #0279 Pelipper - Native Encounter
  (279, 27900, 14, NULL, 1, NULL),
  -- #0280 Ralts - Native Encounter
  (280, 28000, 14, NULL, 1, NULL),
  -- #0281 Kirlia - Evolution
  (281, 28100, 14, NULL, 7, NULL),
  -- #0282 Gardevoir - Evolution
  (282, 28200, 14, NULL, 7, NULL),
  -- #0283 Surskit - Native Encounter
  (283, 28300, 14, NULL, 1, NULL),
  -- #0284 Masquerain - Native Encounter
  (284, 28400, 14, NULL, 1, NULL),
  -- #0285 Shroomish - Native Encounter
  (285, 28500, 14, NULL, 1, NULL),
  -- #0286 Breloom - Evolution
  (286, 28600, 14, NULL, 7, NULL),
  -- #0287 Slakoth - Native Encounter
  (287, 28700, 14, NULL, 1, NULL),
  -- #0288 Vigoroth - Evolution
  (288, 28800, 14, NULL, 7, NULL),
  -- #0289 Slaking - Evolution
  (289, 28900, 14, NULL, 7, NULL),
  -- #0290 Nincada - Native Encounter
  (290, 29000, 14, NULL, 1, NULL),
  -- #0291 Ninjask - Evolution
  (291, 29100, 14, NULL, 7, NULL),
  -- #0292 Shedinja - Evolution
  (292, 29200, 14, NULL, 7, NULL),
  -- #0293 Whismur - Native Encounter
  (293, 29300, 14, NULL, 1, NULL),
  -- #0294 Loudred - Native Encounter
  (294, 29400, 14, NULL, 1, NULL),
  -- #0295 Exploud - Evolution
  (295, 29500, 14, NULL, 7, NULL),
  -- #0296 Makuhita - Native Encounter
  (296, 29600, 14, NULL, 1, NULL),
  -- #0297 Hariyama - Native Encounter
  (297, 29700, 14, NULL, 1, NULL),
  -- #0298 Azurill - Breeding
  (298, 29800, 14, NULL, 8, NULL),
  -- #0299 Nosepass - Native Encounter
  (299, 29900, 14, NULL, 1, NULL),
  -- #0300 Skitty - Native Encounter
  (300, 30000, 14, NULL, 1, NULL),
  -- #0301 Delcatty - Evolution
  (301, 30100, 14, NULL, 7, NULL),
  -- #0302 Sableye - Omega Ruby - External Trade
  (302, 30200, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0302 Sableye - Alpha Sapphire - Native Encounter
  (302, 30200, 14, 24, 1, NULL),
  -- #0303 Mawile - Omega Ruby - Native Encounter
  (303, 30300, 14, 23, 1, NULL),
  -- #0303 Mawile - Alpha Sapphire - External Trade
  (303, 30300, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0304 Aron - Native Encounter
  (304, 30400, 14, NULL, 1, NULL),
  -- #0305 Lairon - Native Encounter
  (305, 30500, 14, NULL, 1, NULL),
  -- #0306 Aggron - Evolution
  (306, 30600, 14, NULL, 7, NULL),
  -- #0307 Meditite - Native Encounter
  (307, 30700, 14, NULL, 1, NULL),
  -- #0308 Medicham - Native Encounter
  (308, 30800, 14, NULL, 1, NULL),
  -- #0309 Electrike - Native Encounter
  (309, 30900, 14, NULL, 1, NULL),
  -- #0310 Manectric - Evolution
  (310, 31000, 14, NULL, 7, NULL),
  -- #0311 Plusle - Native Encounter
  (311, 31100, 14, NULL, 1, NULL),
  -- #0312 Minun - Native Encounter
  (312, 31200, 14, NULL, 1, NULL),
  -- #0313 Volbeat - Native Encounter
  (313, 31300, 14, NULL, 1, NULL),
  -- #0314 Illumise - Native Encounter
  (314, 31400, 14, NULL, 1, NULL),
  -- #0315 Roselia - Native Encounter
  (315, 31500, 14, NULL, 1, NULL),
  -- #0316 Gulpin - Native Encounter
  (316, 31600, 14, NULL, 1, NULL),
  -- #0317 Swalot - Evolution
  (317, 31700, 14, NULL, 7, NULL),
  -- #0318 Carvanha - Native Encounter
  (318, 31800, 14, NULL, 1, NULL),
  -- #0319 Sharpedo - Native Encounter
  (319, 31900, 14, NULL, 1, NULL),
  -- #0320 Wailmer - Native Encounter
  (320, 32000, 14, NULL, 1, NULL),
  -- #0321 Wailord - Evolution
  (321, 32100, 14, NULL, 7, NULL),
  -- #0322 Numel - Native Encounter
  (322, 32200, 14, NULL, 1, NULL),
  -- #0323 Camerupt - Gift
  (323, 32300, 14, NULL, 4, 'Gift Camerupt received at the Battle Resort in ORAS.'),
  -- #0324 Torkoal - Native Encounter
  (324, 32400, 14, NULL, 1, NULL),
  -- #0325 Spoink - Native Encounter
  (325, 32500, 14, NULL, 1, NULL),
  -- #0326 Grumpig - Evolution
  (326, 32600, 14, NULL, 7, NULL),
  -- #0327 Spinda - Native Encounter
  (327, 32700, 14, NULL, 1, NULL),
  -- #0328 Trapinch - Native Encounter
  (328, 32800, 14, NULL, 1, NULL),
  -- #0329 Vibrava - Evolution
  (329, 32900, 14, NULL, 7, NULL),
  -- #0330 Flygon - Evolution
  (330, 33000, 14, NULL, 7, NULL),
  -- #0331 Cacnea - Native Encounter
  (331, 33100, 14, NULL, 1, NULL),
  -- #0332 Cacturne - Evolution
  (332, 33200, 14, NULL, 7, NULL),
  -- #0333 Swablu - Native Encounter
  (333, 33300, 14, NULL, 1, NULL),
  -- #0334 Altaria - Evolution
  (334, 33400, 14, NULL, 7, NULL),
  -- #0335 Zangoose - Omega Ruby - Native Encounter
  (335, 33500, 14, 23, 1, NULL),
  -- #0335 Zangoose - Alpha Sapphire - External Trade
  (335, 33500, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0336 Seviper - Omega Ruby - External Trade
  (336, 33600, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0336 Seviper - Alpha Sapphire - Native Encounter
  (336, 33600, 14, 24, 1, NULL),
  -- #0337 Lunatone - Omega Ruby - External Trade
  (337, 33700, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0337 Lunatone - Alpha Sapphire - Native Encounter
  (337, 33700, 14, 24, 1, NULL),
  -- #0338 Solrock - Omega Ruby - Native Encounter
  (338, 33800, 14, 23, 1, NULL),
  -- #0338 Solrock - Alpha Sapphire - External Trade
  (338, 33800, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0339 Barboach - Native Encounter
  (339, 33900, 14, NULL, 1, NULL),
  -- #0340 Whiscash - Native Encounter
  (340, 34000, 14, NULL, 1, NULL),
  -- #0341 Corphish - Native Encounter
  (341, 34100, 14, NULL, 1, NULL),
  -- #0342 Crawdaunt - Native Encounter
  (342, 34200, 14, NULL, 1, NULL),
  -- #0343 Baltoy - Native Encounter
  (343, 34300, 14, NULL, 1, NULL),
  -- #0344 Claydol - Native Encounter
  (344, 34400, 14, NULL, 1, NULL),
  -- #0345 Lileep - Fossil Restoration
  (345, 34500, 14, NULL, 6, 'Available by restoring a fossil obtainable in ORAS.'),
  -- #0346 Cradily - Evolution
  (346, 34600, 14, NULL, 7, NULL),
  -- #0347 Anorith - Fossil Restoration
  (347, 34700, 14, NULL, 6, 'Available by restoring a fossil obtainable in ORAS.'),
  -- #0348 Armaldo - Evolution
  (348, 34800, 14, NULL, 7, NULL),
  -- #0349 Feebas - Native Encounter
  (349, 34900, 14, NULL, 1, NULL),
  -- #0350 Milotic - Evolution
  (350, 35000, 14, NULL, 7, NULL),
  -- #0351 Castform - Gift
  (351, 35100, 14, NULL, 4, 'Gift Castform received at the Weather Institute in ORAS.'),
  -- #0352 Kecleon - Native Encounter
  (352, 35200, 14, NULL, 1, NULL),
  -- #0353 Shuppet - Native Encounter
  (353, 35300, 14, NULL, 1, NULL),
  -- #0354 Banette - Evolution
  (354, 35400, 14, NULL, 7, NULL),
  -- #0355 Duskull - Native Encounter
  (355, 35500, 14, NULL, 1, NULL),
  -- #0356 Dusclops - Evolution
  (356, 35600, 14, NULL, 7, NULL),
  -- #0357 Tropius - Native Encounter
  (357, 35700, 14, NULL, 1, NULL),
  -- #0358 Chimecho - Native Encounter
  (358, 35800, 14, NULL, 1, NULL),
  -- #0359 Absol - Native Encounter
  (359, 35900, 14, NULL, 1, NULL),
  -- #0360 Wynaut - Gift
  (360, 36000, 14, NULL, 4, 'Gift Wynaut Egg received in Lavaridge Town in ORAS.'),
  -- #0361 Snorunt - Native Encounter
  (361, 36100, 14, NULL, 1, NULL),
  -- #0362 Glalie - Evolution
  (362, 36200, 14, NULL, 7, NULL),
  -- #0363 Spheal - Native Encounter
  (363, 36300, 14, NULL, 1, NULL),
  -- #0364 Sealeo - Native Encounter
  (364, 36400, 14, NULL, 1, NULL),
  -- #0365 Walrein - Evolution
  (365, 36500, 14, NULL, 7, NULL),
  -- #0366 Clamperl - Native Encounter
  (366, 36600, 14, NULL, 1, NULL),
  -- #0367 Huntail - Evolution
  (367, 36700, 14, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0368 Gorebyss - Evolution
  (368, 36800, 14, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0369 Relicanth - Native Encounter
  (369, 36900, 14, NULL, 1, NULL),
  -- #0370 Luvdisc - Native Encounter
  (370, 37000, 14, NULL, 1, NULL),
  -- #0371 Bagon - Native Encounter
  (371, 37100, 14, NULL, 1, NULL),
  -- #0372 Shelgon - Evolution
  (372, 37200, 14, NULL, 7, NULL),
  -- #0373 Salamence - Evolution
  (373, 37300, 14, NULL, 7, NULL),
  -- #0374 Beldum - Gift
  (374, 37400, 14, NULL, 4, 'Gift Beldum received from Steven in ORAS.'),
  -- #0375 Metang - Evolution
  (375, 37500, 14, NULL, 7, NULL),
  -- #0376 Metagross - Evolution
  (376, 37600, 14, NULL, 7, NULL),
  -- #0377 Regirock - Static Encounter
  (377, 37700, 14, NULL, 2, 'Desert Ruins static encounter in ORAS.'),
  -- #0378 Regice - Static Encounter
  (378, 37800, 14, NULL, 2, 'Island Cave static encounter in ORAS.'),
  -- #0379 Registeel - Static Encounter
  (379, 37900, 14, NULL, 2, 'Ancient Tomb static encounter in ORAS.'),
  -- #0380 Latias - Omega Ruby - Event
  (380, 38000, 14, 23, 11, 'Eon Ticket event-unlocked Southern Island encounter in ORAS.'),
  -- #0380 Latias - Alpha Sapphire - Gift
  (380, 38000, 14, 24, 4, 'Latias joins the player during the Southern Island story sequence in Alpha Sapphire.'),
  -- #0381 Latios - Omega Ruby - Gift
  (381, 38100, 14, 23, 4, 'Latios joins the player during the Southern Island story sequence in Omega Ruby.'),
  -- #0381 Latios - Alpha Sapphire - Event
  (381, 38100, 14, 24, 11, 'Eon Ticket event-unlocked Southern Island encounter in ORAS.'),
  -- #0382 Kyogre - Omega Ruby - External Trade
  (382, 38200, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0382 Kyogre - Alpha Sapphire - Static Encounter
  (382, 38200, 14, 24, 2, 'Cave of Origin static encounter in Alpha Sapphire.'),
  -- #0383 Groudon - Omega Ruby - Static Encounter
  (383, 38300, 14, 23, 2, 'Cave of Origin static encounter in Omega Ruby.'),
  -- #0383 Groudon - Alpha Sapphire - External Trade
  (383, 38300, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0384 Rayquaza - Static Encounter
  (384, 38400, 14, NULL, 2, 'Sky Pillar static encounter during the Delta Episode in ORAS.'),
  -- #0385 Jirachi - Event
  (385, 38500, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0386 Deoxys - Static Encounter
  (386, 38600, 14, NULL, 2, 'Delta Episode static encounter after Rayquaza in ORAS.'),
  -- #0386 Deoxys (Attack) - Static Encounter
  (386, 38601, 14, NULL, 2, 'Requires Delta Episode Deoxys and meteorite form access in ORAS.'),
  -- #0386 Deoxys (Defense) - Static Encounter
  (386, 38602, 14, NULL, 2, 'Requires Delta Episode Deoxys and meteorite form access in ORAS.'),
  -- #0386 Deoxys (Speed) - Static Encounter
  (386, 38603, 14, NULL, 2, 'Requires Delta Episode Deoxys and meteorite form access in ORAS.'),
  -- #0387 Turtwig - Starter
  (387, 38700, 14, NULL, 3, 'Postgame starter choice from Professor Birch in ORAS.'),
  -- #0388 Grotle - Evolution
  (388, 38800, 14, NULL, 7, NULL),
  -- #0389 Torterra - Evolution
  (389, 38900, 14, NULL, 7, NULL),
  -- #0390 Chimchar - Starter
  (390, 39000, 14, NULL, 3, 'Postgame starter choice from Professor Birch in ORAS.'),
  -- #0391 Monferno - Evolution
  (391, 39100, 14, NULL, 7, NULL),
  -- #0392 Infernape - Evolution
  (392, 39200, 14, NULL, 7, NULL),
  -- #0393 Piplup - Starter
  (393, 39300, 14, NULL, 3, 'Postgame starter choice from Professor Birch in ORAS.'),
  -- #0394 Prinplup - Evolution
  (394, 39400, 14, NULL, 7, NULL),
  -- #0395 Empoleon - Evolution
  (395, 39500, 14, NULL, 7, NULL),
  -- #0396 Starly - External Trade
  (396, 39600, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0397 Staravia - External Trade
  (397, 39700, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0398 Staraptor - External Trade
  (398, 39800, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0399 Bidoof - External Trade
  (399, 39900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0400 Bibarel - External Trade
  (400, 40000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0401 Kricketot - Breeding
  (401, 40100, 14, NULL, 8, NULL),
  -- #0402 Kricketune - Native Encounter
  (402, 40200, 14, NULL, 1, NULL),
  -- #0403 Shinx - Breeding
  (403, 40300, 14, NULL, 8, NULL),
  -- #0404 Luxio - Native Encounter
  (404, 40400, 14, NULL, 1, NULL),
  -- #0405 Luxray - Evolution
  (405, 40500, 14, NULL, 7, NULL),
  -- #0406 Budew - Breeding
  (406, 40600, 14, NULL, 8, NULL),
  -- #0407 Roserade - Evolution
  (407, 40700, 14, NULL, 7, NULL),
  -- #0408 Cranidos - Omega Ruby - External Trade
  (408, 40800, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0408 Cranidos - Alpha Sapphire - Fossil Restoration
  (408, 40800, 14, 24, 6, 'Available by restoring a fossil obtainable in ORAS.'),
  -- #0409 Rampardos - Omega Ruby - External Trade
  (409, 40900, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0409 Rampardos - Alpha Sapphire - Evolution
  (409, 40900, 14, 24, 7, NULL),
  -- #0410 Shieldon - Omega Ruby - Fossil Restoration
  (410, 41000, 14, 23, 6, 'Available by restoring a fossil obtainable in ORAS.'),
  -- #0410 Shieldon - Alpha Sapphire - External Trade
  (410, 41000, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0411 Bastiodon - Omega Ruby - Evolution
  (411, 41100, 14, 23, 7, NULL),
  -- #0411 Bastiodon - Alpha Sapphire - External Trade
  (411, 41100, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0412 Burmy - External Trade
  (412, 41200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0413 Wormadam - External Trade
  (413, 41300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0414 Mothim - External Trade
  (414, 41400, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0415 Combee - External Trade
  (415, 41500, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0416 Vespiquen - External Trade
  (416, 41600, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0417 Pachirisu - Event
  (417, 41700, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0418 Buizel - External Trade
  (418, 41800, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0419 Floatzel - External Trade
  (419, 41900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0420 Cherubi - Breeding
  (420, 42000, 14, NULL, 8, NULL),
  -- #0421 Cherrim - Native Encounter
  (421, 42100, 14, NULL, 1, NULL),
  -- #0422 Shellos - Native Encounter
  (422, 42200, 14, NULL, 1, NULL),
  -- #0423 Gastrodon - Evolution
  (423, 42300, 14, NULL, 7, NULL),
  -- #0424 Ambipom - Evolution
  (424, 42400, 14, NULL, 7, NULL),
  -- #0425 Drifloon - Native Encounter
  (425, 42500, 14, NULL, 1, NULL),
  -- #0426 Drifblim - Evolution
  (426, 42600, 14, NULL, 7, NULL),
  -- #0427 Buneary - Native Encounter
  (427, 42700, 14, NULL, 1, NULL),
  -- #0428 Lopunny - Evolution
  (428, 42800, 14, NULL, 7, NULL),
  -- #0429 Mismagius - Evolution
  (429, 42900, 14, NULL, 7, NULL),
  -- #0430 Honchkrow - Evolution
  (430, 43000, 14, NULL, 7, NULL),
  -- #0431 Glameow - Native Encounter
  (431, 43100, 14, NULL, 1, NULL),
  -- #0432 Purugly - Native Encounter
  (432, 43200, 14, NULL, 1, NULL),
  -- #0433 Chingling - Breeding
  (433, 43300, 14, NULL, 8, NULL),
  -- #0434 Stunky - External Trade
  (434, 43400, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0435 Skuntank - External Trade
  (435, 43500, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0436 Bronzor - Native Encounter
  (436, 43600, 14, NULL, 1, NULL),
  -- #0437 Bronzong - Evolution
  (437, 43700, 14, NULL, 7, NULL),
  -- #0438 Bonsly - External Trade
  (438, 43800, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0439 Mime Jr. - External Trade
  (439, 43900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0440 Happiny - Native Encounter
  (440, 44000, 14, NULL, 1, NULL),
  -- #0441 Chatot - Native Encounter
  (441, 44100, 14, NULL, 1, NULL),
  -- #0442 Spiritomb - Native Encounter
  (442, 44200, 14, NULL, 1, NULL),
  -- #0443 Gible - Native Encounter
  (443, 44300, 14, NULL, 1, NULL),
  -- #0444 Gabite - Evolution
  (444, 44400, 14, NULL, 7, NULL),
  -- #0445 Garchomp - Evolution
  (445, 44500, 14, NULL, 7, NULL),
  -- #0446 Munchlax - External Trade
  (446, 44600, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0447 Riolu - External Trade
  (447, 44700, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0448 Lucario - Event
  (448, 44800, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0449 Hippopotas - External Trade
  (449, 44900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0450 Hippowdon - External Trade
  (450, 45000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0451 Skorupi - Native Encounter
  (451, 45100, 14, NULL, 1, NULL),
  -- #0452 Drapion - Evolution
  (452, 45200, 14, NULL, 7, NULL),
  -- #0453 Croagunk - External Trade
  (453, 45300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0454 Toxicroak - External Trade
  (454, 45400, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0455 Carnivine - External Trade
  (455, 45500, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0456 Finneon - Native Encounter
  (456, 45600, 14, NULL, 1, NULL),
  -- #0457 Lumineon - Evolution
  (457, 45700, 14, NULL, 7, NULL),
  -- #0458 Mantyke - Native Encounter
  (458, 45800, 14, NULL, 1, NULL),
  -- #0459 Snover - External Trade
  (459, 45900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0460 Abomasnow - External Trade
  (460, 46000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0461 Weavile - External Trade
  (461, 46100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0462 Magnezone - Evolution
  (462, 46200, 14, NULL, 7, NULL),
  -- #0463 Lickilicky - External Trade
  (463, 46300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0464 Rhyperior - Evolution
  (464, 46400, 14, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0465 Tangrowth - Evolution
  (465, 46500, 14, NULL, 7, NULL),
  -- #0466 Electivire - Evolution
  (466, 46600, 14, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0467 Magmortar - Evolution
  (467, 46700, 14, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0468 Togekiss - Evolution
  (468, 46800, 14, NULL, 7, NULL),
  -- #0469 Yanmega - External Trade
  (469, 46900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0470 Leafeon - Evolution
  (470, 47000, 14, NULL, 7, NULL),
  -- #0471 Glaceon - Evolution
  (471, 47100, 14, NULL, 7, NULL),
  -- #0472 Gliscor - External Trade
  (472, 47200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0473 Mamoswine - External Trade
  (473, 47300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0474 Porygon-Z - Evolution
  (474, 47400, 14, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0475 Gallade - Evolution
  (475, 47500, 14, NULL, 7, NULL),
  -- #0476 Probopass - Evolution
  (476, 47600, 14, NULL, 7, NULL),
  -- #0477 Dusknoir - Evolution
  (477, 47700, 14, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0478 Froslass - Evolution
  (478, 47800, 14, NULL, 7, NULL),
  -- #0479 Rotom - External Trade
  (479, 47900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0479 Rotom (Heat) - External Trade
  (479, 47901, 14, NULL, 12, 'Requires Rotom from X/Y or another compatible Generation VI source and appliance form access in ORAS.'),
  -- #0479 Rotom (Wash) - External Trade
  (479, 47902, 14, NULL, 12, 'Requires Rotom from X/Y or another compatible Generation VI source and appliance form access in ORAS.'),
  -- #0479 Rotom (Frost) - External Trade
  (479, 47903, 14, NULL, 12, 'Requires Rotom from X/Y or another compatible Generation VI source and appliance form access in ORAS.'),
  -- #0479 Rotom (Fan) - External Trade
  (479, 47904, 14, NULL, 12, 'Requires Rotom from X/Y or another compatible Generation VI source and appliance form access in ORAS.'),
  -- #0479 Rotom (Mow) - External Trade
  (479, 47905, 14, NULL, 12, 'Requires Rotom from X/Y or another compatible Generation VI source and appliance form access in ORAS.'),
  -- #0480 Uxie - Raid or Special Encounter
  (480, 48000, 14, NULL, 10, 'Nameless Cavern Mirage spot encounter in ORAS.'),
  -- #0481 Mesprit - Raid or Special Encounter
  (481, 48100, 14, NULL, 10, 'Nameless Cavern Mirage spot encounter in ORAS.'),
  -- #0482 Azelf - Raid or Special Encounter
  (482, 48200, 14, NULL, 10, 'Nameless Cavern Mirage spot encounter in ORAS.'),
  -- #0483 Dialga - Omega Ruby - External Trade
  (483, 48300, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0483 Dialga - Alpha Sapphire - Raid or Special Encounter
  (483, 48300, 14, 24, 10, 'Dimensional Rift soaring encounter in Alpha Sapphire.'),
  -- #0484 Palkia - Omega Ruby - Raid or Special Encounter
  (484, 48400, 14, 23, 10, 'Dimensional Rift soaring encounter in Omega Ruby.'),
  -- #0484 Palkia - Alpha Sapphire - External Trade
  (484, 48400, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0485 Heatran - Static Encounter
  (485, 48500, 14, NULL, 2, 'Scorched Slab static encounter in ORAS.'),
  -- #0486 Regigigas - Static Encounter
  (486, 48600, 14, NULL, 2, 'Island Cave conditional static encounter after catching the Hoenn Regis in ORAS.'),
  -- #0487 Giratina - Raid or Special Encounter
  (487, 48700, 14, NULL, 10, 'Conditional Dimensional Rift encounter requiring Dialga and Palkia in ORAS.'),
  -- #0487 Giratina (Origin) - Raid or Special Encounter
  (487, 48701, 14, NULL, 10, 'Requires conditional Mirage spot Giratina and Griseous Orb form access in ORAS.'),
  -- #0488 Cresselia - Raid or Special Encounter
  (488, 48800, 14, NULL, 10, 'Crescent Isle Mirage spot encounter in ORAS.'),
  -- #0489 Phione - Breeding
  (489, 48900, 14, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0490 Manaphy - Event
  (490, 49000, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0491 Darkrai - Event
  (491, 49100, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0492 Shaymin - Event
  (492, 49200, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0492 Shaymin (Sky) - Event
  (492, 49201, 14, NULL, 11, 'Requires event/distribution Shaymin and Gracidea form access in ORAS.'),
  -- #0493 Arceus - Event
  (493, 49300, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0493 Arceus (Fighting) - Event
  (493, 49301, 14, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in ORAS.'),
  -- #0493 Arceus (Flying) - Event
  (493, 49302, 14, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in ORAS.'),
  -- #0493 Arceus (Poison) - Event
  (493, 49303, 14, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in ORAS.'),
  -- #0493 Arceus (Ground) - Event
  (493, 49304, 14, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in ORAS.'),
  -- #0493 Arceus (Rock) - Event
  (493, 49305, 14, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in ORAS.'),
  -- #0493 Arceus (Bug) - Event
  (493, 49306, 14, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in ORAS.'),
  -- #0493 Arceus (Ghost) - Event
  (493, 49307, 14, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in ORAS.'),
  -- #0493 Arceus (Steel) - Event
  (493, 49308, 14, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in ORAS.'),
  -- #0493 Arceus (Fire) - Event
  (493, 49309, 14, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in ORAS.'),
  -- #0493 Arceus (Water) - Event
  (493, 49310, 14, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in ORAS.'),
  -- #0493 Arceus (Grass) - Event
  (493, 49311, 14, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in ORAS.'),
  -- #0493 Arceus (Electric) - Event
  (493, 49312, 14, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in ORAS.'),
  -- #0493 Arceus (Psychic) - Event
  (493, 49313, 14, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in ORAS.'),
  -- #0493 Arceus (Ice) - Event
  (493, 49314, 14, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in ORAS.'),
  -- #0493 Arceus (Dragon) - Event
  (493, 49315, 14, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in ORAS.'),
  -- #0493 Arceus (Dark) - Event
  (493, 49316, 14, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in ORAS.'),
  -- #0493 Arceus (Fairy) - Event
  (493, 49317, 14, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in ORAS.'),
  -- #0494 Victini - Event
  (494, 49400, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0495 Snivy - Starter
  (495, 49500, 14, NULL, 3, 'Postgame starter choice from Professor Birch in ORAS.'),
  -- #0496 Servine - Evolution
  (496, 49600, 14, NULL, 7, NULL),
  -- #0497 Serperior - Evolution
  (497, 49700, 14, NULL, 7, NULL),
  -- #0498 Tepig - Starter
  (498, 49800, 14, NULL, 3, 'Postgame starter choice from Professor Birch in ORAS.'),
  -- #0499 Pignite - Evolution
  (499, 49900, 14, NULL, 7, NULL),
  -- #0500 Emboar - Evolution
  (500, 50000, 14, NULL, 7, NULL),
  -- #0501 Oshawott - Starter
  (501, 50100, 14, NULL, 3, 'Postgame starter choice from Professor Birch in ORAS.'),
  -- #0502 Dewott - Evolution
  (502, 50200, 14, NULL, 7, NULL),
  -- #0503 Samurott - Evolution
  (503, 50300, 14, NULL, 7, NULL),
  -- #0504 Patrat - External Trade
  (504, 50400, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0505 Watchog - External Trade
  (505, 50500, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0506 Lillipup - Native Encounter
  (506, 50600, 14, NULL, 1, NULL),
  -- #0507 Herdier - Evolution
  (507, 50700, 14, NULL, 7, NULL),
  -- #0508 Stoutland - Evolution
  (508, 50800, 14, NULL, 7, NULL),
  -- #0509 Purrloin - External Trade
  (509, 50900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0510 Liepard - External Trade
  (510, 51000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0511 Pansage - External Trade
  (511, 51100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0512 Simisage - External Trade
  (512, 51200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0513 Pansear - Breeding
  (513, 51300, 14, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0514 Simisear - Event
  (514, 51400, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0515 Panpour - External Trade
  (515, 51500, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0516 Simipour - External Trade
  (516, 51600, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0517 Munna - Native Encounter
  (517, 51700, 14, NULL, 1, NULL),
  -- #0518 Musharna - Evolution
  (518, 51800, 14, NULL, 7, NULL),
  -- #0519 Pidove - Native Encounter
  (519, 51900, 14, NULL, 1, NULL),
  -- #0520 Tranquill - Evolution
  (520, 52000, 14, NULL, 7, NULL),
  -- #0521 Unfezant - Evolution
  (521, 52100, 14, NULL, 7, NULL),
  -- #0522 Blitzle - Breeding
  (522, 52200, 14, NULL, 8, NULL),
  -- #0523 Zebstrika - Native Encounter
  (523, 52300, 14, NULL, 1, NULL),
  -- #0524 Roggenrola - Native Encounter
  (524, 52400, 14, NULL, 1, NULL),
  -- #0525 Boldore - Native Encounter
  (525, 52500, 14, NULL, 1, NULL),
  -- #0526 Gigalith - Evolution
  (526, 52600, 14, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0527 Woobat - External Trade
  (527, 52700, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0528 Swoobat - External Trade
  (528, 52800, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0529 Drilbur - Breeding
  (529, 52900, 14, NULL, 8, NULL),
  -- #0530 Excadrill - Native Encounter
  (530, 53000, 14, NULL, 1, NULL),
  -- #0531 Audino - Native Encounter
  (531, 53100, 14, NULL, 1, NULL),
  -- #0532 Timburr - Native Encounter
  (532, 53200, 14, NULL, 1, NULL),
  -- #0533 Gurdurr - Evolution
  (533, 53300, 14, NULL, 7, NULL),
  -- #0534 Conkeldurr - Evolution
  (534, 53400, 14, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0535 Tympole - Native Encounter
  (535, 53500, 14, NULL, 1, NULL),
  -- #0536 Palpitoad - Evolution
  (536, 53600, 14, NULL, 7, NULL),
  -- #0537 Seismitoad - Evolution
  (537, 53700, 14, NULL, 7, NULL),
  -- #0538 Throh - Omega Ruby - Native Encounter
  (538, 53800, 14, 23, 1, NULL),
  -- #0538 Throh - Alpha Sapphire - External Trade
  (538, 53800, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0539 Sawk - Omega Ruby - External Trade
  (539, 53900, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0539 Sawk - Alpha Sapphire - Native Encounter
  (539, 53900, 14, 24, 1, NULL),
  -- #0540 Sewaddle - Native Encounter
  (540, 54000, 14, NULL, 1, NULL),
  -- #0541 Swadloon - Evolution
  (541, 54100, 14, NULL, 7, NULL),
  -- #0542 Leavanny - Evolution
  (542, 54200, 14, NULL, 7, NULL),
  -- #0543 Venipede - External Trade
  (543, 54300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0544 Whirlipede - External Trade
  (544, 54400, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0545 Scolipede - External Trade
  (545, 54500, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0546 Cottonee - Native Encounter
  (546, 54600, 14, NULL, 1, NULL),
  -- #0547 Whimsicott - Evolution
  (547, 54700, 14, NULL, 7, NULL),
  -- #0548 Petilil - Native Encounter
  (548, 54800, 14, NULL, 1, NULL),
  -- #0549 Lilligant - Evolution
  (549, 54900, 14, NULL, 7, NULL),
  -- #0550 Basculin - External Trade
  (550, 55000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0550 Basculin (Blue-Striped) - External Trade
  (550, 55001, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0551 Sandile - Native Encounter
  (551, 55100, 14, NULL, 1, NULL),
  -- #0552 Krokorok - Evolution
  (552, 55200, 14, NULL, 7, NULL),
  -- #0553 Krookodile - Evolution
  (553, 55300, 14, NULL, 7, NULL),
  -- #0554 Darumaka - Breeding
  (554, 55400, 14, NULL, 8, NULL),
  -- #0555 Darmanitan - Native Encounter
  (555, 55500, 14, NULL, 1, NULL),
  -- #0556 Maractus - Native Encounter
  (556, 55600, 14, NULL, 1, NULL),
  -- #0557 Dwebble - Native Encounter
  (557, 55700, 14, NULL, 1, NULL),
  -- #0558 Crustle - Native Encounter
  (558, 55800, 14, NULL, 1, NULL),
  -- #0559 Scraggy - Native Encounter
  (559, 55900, 14, NULL, 1, NULL),
  -- #0560 Scrafty - Evolution
  (560, 56000, 14, NULL, 7, NULL),
  -- #0561 Sigilyph - External Trade
  (561, 56100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0562 Yamask - Breeding
  (562, 56200, 14, NULL, 8, NULL),
  -- #0563 Cofagrigus - Native Encounter
  (563, 56300, 14, NULL, 1, NULL),
  -- #0564 Tirtouga - Omega Ruby - External Trade
  (564, 56400, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0564 Tirtouga - Alpha Sapphire - Fossil Restoration
  (564, 56400, 14, 24, 6, 'Available by restoring a fossil obtainable in ORAS.'),
  -- #0565 Carracosta - Omega Ruby - External Trade
  (565, 56500, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0565 Carracosta - Alpha Sapphire - Evolution
  (565, 56500, 14, 24, 7, NULL),
  -- #0566 Archen - Omega Ruby - Fossil Restoration
  (566, 56600, 14, 23, 6, 'Available by restoring a fossil obtainable in ORAS.'),
  -- #0566 Archen - Alpha Sapphire - External Trade
  (566, 56600, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0567 Archeops - Omega Ruby - Evolution
  (567, 56700, 14, 23, 7, NULL),
  -- #0567 Archeops - Alpha Sapphire - External Trade
  (567, 56700, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0568 Trubbish - Native Encounter
  (568, 56800, 14, NULL, 1, NULL),
  -- #0569 Garbodor - Evolution
  (569, 56900, 14, NULL, 7, NULL),
  -- #0570 Zorua - Native Encounter
  (570, 57000, 14, NULL, 1, NULL),
  -- #0571 Zoroark - Evolution
  (571, 57100, 14, NULL, 7, NULL),
  -- #0572 Minccino - Native Encounter
  (572, 57200, 14, NULL, 1, NULL),
  -- #0573 Cinccino - Evolution
  (573, 57300, 14, NULL, 7, NULL),
  -- #0574 Gothita - Native Encounter
  (574, 57400, 14, NULL, 1, NULL),
  -- #0575 Gothorita - Evolution
  (575, 57500, 14, NULL, 7, NULL),
  -- #0576 Gothitelle - Evolution
  (576, 57600, 14, NULL, 7, NULL),
  -- #0577 Solosis - External Trade
  (577, 57700, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0578 Duosion - External Trade
  (578, 57800, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0579 Reuniclus - External Trade
  (579, 57900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0580 Ducklett - External Trade
  (580, 58000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0581 Swanna - External Trade
  (581, 58100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0582 Vanillite - External Trade
  (582, 58200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0583 Vanillish - External Trade
  (583, 58300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0584 Vanilluxe - External Trade
  (584, 58400, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0585 Deerling - Native Encounter
  (585, 58500, 14, NULL, 1, NULL),
  -- #0586 Sawsbuck - Evolution
  (586, 58600, 14, NULL, 7, NULL),
  -- #0587 Emolga - External Trade
  (587, 58700, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0588 Karrablast - External Trade
  (588, 58800, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0589 Escavalier - External Trade
  (589, 58900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0590 Foongus - External Trade
  (590, 59000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0591 Amoonguss - External Trade
  (591, 59100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0592 Frillish - Native Encounter
  (592, 59200, 14, NULL, 1, NULL),
  -- #0593 Jellicent - Evolution
  (593, 59300, 14, NULL, 7, NULL),
  -- #0594 Alomomola - Native Encounter
  (594, 59400, 14, NULL, 1, NULL),
  -- #0595 Joltik - Native Encounter
  (595, 59500, 14, NULL, 1, NULL),
  -- #0596 Galvantula - Evolution
  (596, 59600, 14, NULL, 7, NULL),
  -- #0597 Ferroseed - External Trade
  (597, 59700, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0598 Ferrothorn - External Trade
  (598, 59800, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0599 Klink - Native Encounter
  (599, 59900, 14, NULL, 1, NULL),
  -- #0600 Klang - Evolution
  (600, 60000, 14, NULL, 7, NULL),
  -- #0601 Klinklang - Evolution
  (601, 60100, 14, NULL, 7, NULL),
  -- #0602 Tynamo - Native Encounter
  (602, 60200, 14, NULL, 1, NULL),
  -- #0603 Eelektrik - Evolution
  (603, 60300, 14, NULL, 7, NULL),
  -- #0604 Eelektross - Evolution
  (604, 60400, 14, NULL, 7, NULL),
  -- #0605 Elgyem - Native Encounter
  (605, 60500, 14, NULL, 1, NULL),
  -- #0606 Beheeyem - Evolution
  (606, 60600, 14, NULL, 7, NULL),
  -- #0607 Litwick - External Trade
  (607, 60700, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0608 Lampent - External Trade
  (608, 60800, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0609 Chandelure - External Trade
  (609, 60900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0610 Axew - Native Encounter
  (610, 61000, 14, NULL, 1, NULL),
  -- #0611 Fraxure - Evolution
  (611, 61100, 14, NULL, 7, NULL),
  -- #0612 Haxorus - Evolution
  (612, 61200, 14, NULL, 7, NULL),
  -- #0613 Cubchoo - Native Encounter
  (613, 61300, 14, NULL, 1, NULL),
  -- #0614 Beartic - Evolution
  (614, 61400, 14, NULL, 7, NULL),
  -- #0615 Cryogonal - External Trade
  (615, 61500, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0616 Shelmet - External Trade
  (616, 61600, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0617 Accelgor - External Trade
  (617, 61700, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0618 Stunfisk - External Trade
  (618, 61800, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0619 Mienfoo - External Trade
  (619, 61900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0620 Mienshao - External Trade
  (620, 62000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0621 Druddigon - Native Encounter
  (621, 62100, 14, NULL, 1, NULL),
  -- #0622 Golett - External Trade
  (622, 62200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0623 Golurk - External Trade
  (623, 62300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0624 Pawniard - External Trade
  (624, 62400, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0625 Bisharp - External Trade
  (625, 62500, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0626 Bouffalant - Native Encounter
  (626, 62600, 14, NULL, 1, NULL),
  -- #0627 Rufflet - Native Encounter
  (627, 62700, 14, NULL, 1, NULL),
  -- #0628 Braviary - Native Encounter
  (628, 62800, 14, NULL, 1, NULL),
  -- #0629 Vullaby - Native Encounter
  (629, 62900, 14, NULL, 1, NULL),
  -- #0630 Mandibuzz - Evolution
  (630, 63000, 14, NULL, 7, NULL),
  -- #0631 Heatmor - External Trade
  (631, 63100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0632 Durant - External Trade
  (632, 63200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0633 Deino - Native Encounter
  (633, 63300, 14, NULL, 1, NULL),
  -- #0634 Zweilous - Evolution
  (634, 63400, 14, NULL, 7, NULL),
  -- #0635 Hydreigon - Evolution
  (635, 63500, 14, NULL, 7, NULL),
  -- #0636 Larvesta - Native Encounter
  (636, 63600, 14, NULL, 1, NULL),
  -- #0637 Volcarona - Evolution
  (637, 63700, 14, NULL, 7, NULL),
  -- #0638 Cobalion - Raid or Special Encounter
  (638, 63800, 14, NULL, 10, 'Pathless Plain Mirage spot encounter in ORAS.'),
  -- #0639 Terrakion - Raid or Special Encounter
  (639, 63900, 14, NULL, 10, 'Pathless Plain Mirage spot encounter in ORAS.'),
  -- #0640 Virizion - Raid or Special Encounter
  (640, 64000, 14, NULL, 10, 'Pathless Plain Mirage spot encounter in ORAS.'),
  -- #0641 Tornadus - Omega Ruby - Raid or Special Encounter
  (641, 64100, 14, 23, 10, 'Storm Cloud soaring encounter in Omega Ruby.'),
  -- #0641 Tornadus - Alpha Sapphire - External Trade
  (641, 64100, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0641 Tornadus (Therian) - Omega Ruby - Raid or Special Encounter
  (641, 64101, 14, 23, 10, 'Requires Omega Ruby Tornadus and Reveal Glass form access in ORAS.'),
  -- #0641 Tornadus (Therian) - Alpha Sapphire - External Trade
  (641, 64101, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0642 Thundurus - Omega Ruby - External Trade
  (642, 64200, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0642 Thundurus - Alpha Sapphire - Raid or Special Encounter
  (642, 64200, 14, 24, 10, 'Storm Cloud soaring encounter in Alpha Sapphire.'),
  -- #0642 Thundurus (Therian) - Omega Ruby - External Trade
  (642, 64201, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0642 Thundurus (Therian) - Alpha Sapphire - Raid or Special Encounter
  (642, 64201, 14, 24, 10, 'Requires Alpha Sapphire Thundurus and Reveal Glass form access in ORAS.'),
  -- #0643 Reshiram - Omega Ruby - Raid or Special Encounter
  (643, 64300, 14, 23, 10, 'Fabled Cave Mirage spot encounter in Omega Ruby.'),
  -- #0643 Reshiram - Alpha Sapphire - External Trade
  (643, 64300, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0644 Zekrom - Omega Ruby - External Trade
  (644, 64400, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0644 Zekrom - Alpha Sapphire - Raid or Special Encounter
  (644, 64400, 14, 24, 10, 'Fabled Cave Mirage spot encounter in Alpha Sapphire.'),
  -- #0645 Landorus - Raid or Special Encounter
  (645, 64500, 14, NULL, 10, 'Conditional Storm Cloud encounter requiring Tornadus and Thundurus in ORAS.'),
  -- #0645 Landorus (Therian) - Raid or Special Encounter
  (645, 64501, 14, NULL, 10, 'Requires conditional Landorus encounter and Reveal Glass form access in ORAS.'),
  -- #0646 Kyurem - Raid or Special Encounter
  (646, 64600, 14, NULL, 10, 'Conditional Gnarled Den encounter requiring Reshiram and Zekrom in ORAS.'),
  -- #0646 Kyurem (White) - Raid or Special Encounter
  (646, 64601, 14, NULL, 10, 'Requires conditional Kyurem encounter and DNA Splicers form fusion in ORAS.'),
  -- #0646 Kyurem (Black) - Raid or Special Encounter
  (646, 64602, 14, NULL, 10, 'Requires conditional Kyurem encounter and DNA Splicers form fusion in ORAS.'),
  -- #0647 Keldeo - Event
  (647, 64700, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0648 Meloetta - Event
  (648, 64800, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0649 Genesect - Event
  (649, 64900, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0649 Genesect (Douse Drive) - Event
  (649, 64901, 14, NULL, 11, 'Requires event/distribution Genesect and Drive item access in ORAS.'),
  -- #0649 Genesect (Shock Drive) - Event
  (649, 64902, 14, NULL, 11, 'Requires event/distribution Genesect and Drive item access in ORAS.'),
  -- #0649 Genesect (Burn Drive) - Event
  (649, 64903, 14, NULL, 11, 'Requires event/distribution Genesect and Drive item access in ORAS.'),
  -- #0649 Genesect (Chill Drive) - Event
  (649, 64904, 14, NULL, 11, 'Requires event/distribution Genesect and Drive item access in ORAS.'),
  -- #0650 Chespin - External Trade
  (650, 65000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0651 Quilladin - External Trade
  (651, 65100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0652 Chesnaught - External Trade
  (652, 65200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0653 Fennekin - Event
  (653, 65300, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0654 Braixen - Evolution
  (654, 65400, 14, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0655 Delphox - Evolution
  (655, 65500, 14, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0656 Froakie - Event
  (656, 65600, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0657 Frogadier - Evolution
  (657, 65700, 14, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0658 Greninja - Event
  (658, 65800, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0659 Bunnelby - External Trade
  (659, 65900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0660 Diggersby - External Trade
  (660, 66000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0661 Fletchling - External Trade
  (661, 66100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0662 Fletchinder - External Trade
  (662, 66200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0663 Talonflame - External Trade
  (663, 66300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0664 Scatterbug - External Trade
  (664, 66400, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0665 Spewpa - External Trade
  (665, 66500, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0666 Vivillon - Event
  (666, 66600, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0667 Litleo - External Trade
  (667, 66700, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0668 Pyroar - External Trade
  (668, 66800, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0669 Flabebe - External Trade
  (669, 66900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0670 Floette - External Trade
  (670, 67000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0671 Florges - External Trade
  (671, 67100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0672 Skiddo - External Trade
  (672, 67200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0673 Gogoat - External Trade
  (673, 67300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0674 Pancham - Event
  (674, 67400, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0675 Pangoro - Evolution
  (675, 67500, 14, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0676 Furfrou - External Trade
  (676, 67600, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0677 Espurr - External Trade
  (677, 67700, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0678 Meowstic - External Trade
  (678, 67800, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0678 Meowstic (Female) - External Trade
  (678, 67801, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0679 Honedge - External Trade
  (679, 67900, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0680 Doublade - External Trade
  (680, 68000, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0681 Aegislash - External Trade
  (681, 68100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0682 Spritzee - Omega Ruby - Breeding
  (682, 68200, 14, 23, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0682 Spritzee - Alpha Sapphire - External Trade
  (682, 68200, 14, 24, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0683 Aromatisse - Omega Ruby - Event
  (683, 68300, 14, 23, 11, 'Official ORAS event or distribution source.'),
  -- #0683 Aromatisse - Alpha Sapphire - External Trade
  (683, 68300, 14, 24, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0684 Swirlix - External Trade
  (684, 68400, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0685 Slurpuff - External Trade
  (685, 68500, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0686 Inkay - Omega Ruby - Breeding
  (686, 68600, 14, 23, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0686 Inkay - Alpha Sapphire - External Trade
  (686, 68600, 14, 24, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0687 Malamar - Omega Ruby - Event
  (687, 68700, 14, 23, 11, 'Official ORAS event or distribution source.'),
  -- #0687 Malamar - Alpha Sapphire - External Trade
  (687, 68700, 14, 24, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0688 Binacle - Native Encounter
  (688, 68800, 14, NULL, 1, NULL),
  -- #0689 Barbaracle - Evolution
  (689, 68900, 14, NULL, 7, NULL),
  -- #0690 Skrelp - Omega Ruby - Native Encounter
  (690, 69000, 14, 23, 1, NULL),
  -- #0690 Skrelp - Alpha Sapphire - External Trade
  (690, 69000, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0691 Dragalge - Omega Ruby - Evolution
  (691, 69100, 14, 23, 7, NULL),
  -- #0691 Dragalge - Alpha Sapphire - External Trade
  (691, 69100, 14, 24, 12, 'Version source is Pokémon Omega Ruby; available in Pokémon Alpha Sapphire by trade from the paired version or compatible external source.'),
  -- #0692 Clauncher - Omega Ruby - External Trade
  (692, 69200, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0692 Clauncher - Alpha Sapphire - Native Encounter
  (692, 69200, 14, 24, 1, NULL),
  -- #0693 Clawitzer - Omega Ruby - External Trade
  (693, 69300, 14, 23, 12, 'Version source is Pokémon Alpha Sapphire; available in Pokémon Omega Ruby by trade from the paired version or compatible external source.'),
  -- #0693 Clawitzer - Alpha Sapphire - Evolution
  (693, 69300, 14, 24, 7, NULL),
  -- #0694 Helioptile - External Trade
  (694, 69400, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0695 Heliolisk - External Trade
  (695, 69500, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0696 Tyrunt - Event
  (696, 69600, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0697 Tyrantrum - Evolution
  (697, 69700, 14, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0698 Amaura - Event
  (698, 69800, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0699 Aurorus - Evolution
  (699, 69900, 14, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0700 Sylveon - Evolution
  (700, 70000, 14, NULL, 7, NULL),
  -- #0701 Hawlucha - External Trade
  (701, 70100, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0702 Dedenne - External Trade
  (702, 70200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0703 Carbink - External Trade
  (703, 70300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0704 Goomy - External Trade
  (704, 70400, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0705 Sliggoo - External Trade
  (705, 70500, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0706 Goodra - External Trade
  (706, 70600, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0707 Klefki - Native Encounter
  (707, 70700, 14, NULL, 1, NULL),
  -- #0708 Phantump - Native Encounter
  (708, 70800, 14, NULL, 1, NULL),
  -- #0709 Trevenant - Evolution
  (709, 70900, 14, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0710 Pumpkaboo - Event
  (710, 71000, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0711 Gourgeist - Evolution
  (711, 71100, 14, NULL, 7, 'Requires trade evolution from an event or distribution source Pokémon.'),
  -- #0712 Bergmite - External Trade
  (712, 71200, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0713 Avalugg - External Trade
  (713, 71300, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0714 Noibat - External Trade
  (714, 71400, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0715 Noivern - External Trade
  (715, 71500, 14, NULL, 12, 'Available in ORAS by trade from Pokémon X/Y or another compatible Generation VI source.'),
  -- #0716 Xerneas - Event
  (716, 71600, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0717 Yveltal - Event
  (717, 71700, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0718 Zygarde - Event
  (718, 71800, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0719 Diancie - Event
  (719, 71900, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0720 Hoopa - Event
  (720, 72000, 14, NULL, 11, 'Official ORAS event or distribution source.'),
  -- #0720 Hoopa (Unbound) - Event
  (720, 72001, 14, NULL, 11, 'Requires event/distribution Hoopa and Prison Bottle form access in ORAS.'),
  -- #0721 Volcanion - Event
  (721, 72100, 14, NULL, 11, 'Official ORAS event or distribution source.');
