-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by availability and X/Y availability notes.
-- Cross-check: PokemonDB X/Y version exclusives, Serebii X/Y version exclusives, Bulbapedia Friend Safari, in-game trade, and form-item/location pages.
-- Scope note: primary availability method per obtainable form; external-source rows preserve compatible-game usability for planning.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: X / Y
-- Table: reference.pokemon_availability
-- Scope: 809 rows; all Generation VI-compatible species are represented, with game-specific rows for version sources and curated persistent form rows for Basculin, Meowstic, Arceus Plates, Deoxys, Rotom, Giratina, Shaymin, Therian forms, Kyurem fusions, Genesect Drives, and Pumpkaboo/Gourgeist sizes.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0001 Bulbasaur - Starter
  (1, 100, 13, NULL, 3, 'Kanto first partner choice from Professor Sycamore in X/Y.'),
  -- #0002 Ivysaur - Evolution
  (2, 200, 13, NULL, 7, NULL),
  -- #0003 Venusaur - Evolution
  (3, 300, 13, NULL, 7, NULL),
  -- #0004 Charmander - Starter
  (4, 400, 13, NULL, 3, 'Kanto first partner choice from Professor Sycamore in X/Y.'),
  -- #0005 Charmeleon - Evolution
  (5, 500, 13, NULL, 7, NULL),
  -- #0006 Charizard - Evolution
  (6, 600, 13, NULL, 7, NULL),
  -- #0007 Squirtle - Starter
  (7, 700, 13, NULL, 3, 'Kanto first partner choice from Professor Sycamore in X/Y.'),
  -- #0008 Wartortle - Evolution
  (8, 800, 13, NULL, 7, NULL),
  -- #0009 Blastoise - Evolution
  (9, 900, 13, NULL, 7, NULL),
  -- #0010 Caterpie - Native Encounter
  (10, 1000, 13, NULL, 1, NULL),
  -- #0011 Metapod - X - Evolution
  (11, 1100, 13, 21, 7, NULL),
  -- #0011 Metapod - Y - Native Encounter
  (11, 1100, 13, 22, 1, NULL),
  -- #0012 Butterfree - Evolution
  (12, 1200, 13, NULL, 7, NULL),
  -- #0013 Weedle - Native Encounter
  (13, 1300, 13, NULL, 1, NULL),
  -- #0014 Kakuna - X - Native Encounter
  (14, 1400, 13, 21, 1, NULL),
  -- #0014 Kakuna - Y - Evolution
  (14, 1400, 13, 22, 7, NULL),
  -- #0015 Beedrill - Evolution
  (15, 1500, 13, NULL, 7, NULL),
  -- #0016 Pidgey - Native Encounter
  (16, 1600, 13, NULL, 1, NULL),
  -- #0017 Pidgeotto - Evolution
  (17, 1700, 13, NULL, 7, NULL),
  -- #0018 Pidgeot - Evolution
  (18, 1800, 13, NULL, 7, NULL),
  -- #0019 Rattata - Transfer Only
  (19, 1900, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0020 Raticate - Transfer Only
  (20, 2000, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0021 Spearow - Breeding
  (21, 2100, 13, NULL, 8, NULL),
  -- #0022 Fearow - Native Encounter
  (22, 2200, 13, NULL, 1, NULL),
  -- #0023 Ekans - Native Encounter
  (23, 2300, 13, NULL, 1, NULL),
  -- #0024 Arbok - Native Encounter
  (24, 2400, 13, NULL, 1, NULL),
  -- #0025 Pikachu - Native Encounter
  (25, 2500, 13, NULL, 1, NULL),
  -- #0026 Raichu - Evolution
  (26, 2600, 13, NULL, 7, NULL),
  -- #0027 Sandshrew - Breeding
  (27, 2700, 13, NULL, 8, NULL),
  -- #0028 Sandslash - Native Encounter
  (28, 2800, 13, NULL, 1, NULL),
  -- #0029 Nidoran F - Native Encounter
  (29, 2900, 13, NULL, 1, NULL),
  -- #0030 Nidorina - Native Encounter
  (30, 3000, 13, NULL, 1, NULL),
  -- #0031 Nidoqueen - Evolution
  (31, 3100, 13, NULL, 7, NULL),
  -- #0032 Nidoran M - Native Encounter
  (32, 3200, 13, NULL, 1, NULL),
  -- #0033 Nidorino - Native Encounter
  (33, 3300, 13, NULL, 1, NULL),
  -- #0034 Nidoking - Evolution
  (34, 3400, 13, NULL, 7, NULL),
  -- #0035 Clefairy - Raid or Special Encounter
  (35, 3500, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0036 Clefable - Evolution
  (36, 3600, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0037 Vulpix - Breeding
  (37, 3700, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0038 Ninetales - Raid or Special Encounter
  (38, 3800, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0039 Jigglypuff - Native Encounter
  (39, 3900, 13, NULL, 1, NULL),
  -- #0040 Wigglytuff - Evolution
  (40, 4000, 13, NULL, 7, NULL),
  -- #0041 Zubat - Native Encounter
  (41, 4100, 13, NULL, 1, NULL),
  -- #0042 Golbat - Evolution
  (42, 4200, 13, NULL, 7, NULL),
  -- #0043 Oddish - Native Encounter
  (43, 4300, 13, NULL, 1, NULL),
  -- #0044 Gloom - Evolution
  (44, 4400, 13, NULL, 7, NULL),
  -- #0045 Vileplume - Evolution
  (45, 4500, 13, NULL, 7, NULL),
  -- #0046 Paras - Raid or Special Encounter
  (46, 4600, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0047 Parasect - Evolution
  (47, 4700, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0048 Venonat - Breeding
  (48, 4800, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0049 Venomoth - Raid or Special Encounter
  (49, 4900, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0050 Diglett - Breeding
  (50, 5000, 13, NULL, 8, NULL),
  -- #0051 Dugtrio - Native Encounter
  (51, 5100, 13, NULL, 1, NULL),
  -- #0052 Meowth - Transfer Only
  (52, 5200, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0053 Persian - Transfer Only
  (53, 5300, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0054 Psyduck - Native Encounter
  (54, 5400, 13, NULL, 1, NULL),
  -- #0055 Golduck - Evolution
  (55, 5500, 13, NULL, 7, NULL),
  -- #0056 Mankey - Raid or Special Encounter
  (56, 5600, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0057 Primeape - Evolution
  (57, 5700, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0058 Growlithe - Raid or Special Encounter
  (58, 5800, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0059 Arcanine - Evolution
  (59, 5900, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0060 Poliwag - Native Encounter
  (60, 6000, 13, NULL, 1, NULL),
  -- #0061 Poliwhirl - Native Encounter
  (61, 6100, 13, NULL, 1, NULL),
  -- #0062 Poliwrath - Native Encounter
  (62, 6200, 13, NULL, 1, NULL),
  -- #0063 Abra - Native Encounter
  (63, 6300, 13, NULL, 1, NULL),
  -- #0064 Kadabra - Evolution
  (64, 6400, 13, NULL, 7, NULL),
  -- #0065 Alakazam - Evolution
  (65, 6500, 13, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0066 Machop - Native Encounter
  (66, 6600, 13, NULL, 1, NULL),
  -- #0067 Machoke - Evolution
  (67, 6700, 13, NULL, 7, NULL),
  -- #0068 Machamp - Evolution
  (68, 6800, 13, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0069 Bellsprout - Native Encounter
  (69, 6900, 13, NULL, 1, NULL),
  -- #0070 Weepinbell - Native Encounter
  (70, 7000, 13, NULL, 1, NULL),
  -- #0071 Victreebel - Evolution
  (71, 7100, 13, NULL, 7, NULL),
  -- #0072 Tentacool - Native Encounter
  (72, 7200, 13, NULL, 1, NULL),
  -- #0073 Tentacruel - Evolution
  (73, 7300, 13, NULL, 7, NULL),
  -- #0074 Geodude - Native Encounter
  (74, 7400, 13, NULL, 1, NULL),
  -- #0075 Graveler - Native Encounter
  (75, 7500, 13, NULL, 1, NULL),
  -- #0076 Golem - Evolution
  (76, 7600, 13, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0077 Ponyta - Raid or Special Encounter
  (77, 7700, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0078 Rapidash - Evolution
  (78, 7800, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0079 Slowpoke - Native Encounter
  (79, 7900, 13, NULL, 1, NULL),
  -- #0080 Slowbro - Evolution
  (80, 8000, 13, NULL, 7, NULL),
  -- #0081 Magnemite - Breeding
  (81, 8100, 13, NULL, 8, NULL),
  -- #0082 Magneton - Native Encounter
  (82, 8200, 13, NULL, 1, NULL),
  -- #0083 Farfetch'd - Native Encounter
  (83, 8300, 13, NULL, 1, NULL),
  -- #0084 Doduo - Native Encounter
  (84, 8400, 13, NULL, 1, NULL),
  -- #0085 Dodrio - Evolution
  (85, 8500, 13, NULL, 7, NULL),
  -- #0086 Seel - Breeding
  (86, 8600, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0087 Dewgong - Raid or Special Encounter
  (87, 8700, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0088 Grimer - Breeding
  (88, 8800, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0089 Muk - Raid or Special Encounter
  (89, 8900, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0090 Shellder - X - Breeding
  (90, 9000, 13, 21, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0090 Shellder - Y - Native Encounter
  (90, 9000, 13, 22, 1, NULL),
  -- #0091 Cloyster - X - Raid or Special Encounter
  (91, 9100, 13, 21, 10, 'Friend Safari source in X/Y.'),
  -- #0091 Cloyster - Y - Native Encounter
  (91, 9100, 13, 22, 1, NULL),
  -- #0092 Gastly - Breeding
  (92, 9200, 13, NULL, 8, NULL),
  -- #0093 Haunter - Native Encounter
  (93, 9300, 13, NULL, 1, NULL),
  -- #0094 Gengar - Evolution
  (94, 9400, 13, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0095 Onix - Native Encounter
  (95, 9500, 13, NULL, 1, NULL),
  -- #0096 Drowzee - Raid or Special Encounter
  (96, 9600, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0097 Hypno - Evolution
  (97, 9700, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0098 Krabby - Raid or Special Encounter
  (98, 9800, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0099 Kingler - Evolution
  (99, 9900, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0100 Voltorb - Breeding
  (100, 10000, 13, NULL, 8, NULL),
  -- #0101 Electrode - Native Encounter
  (101, 10100, 13, NULL, 1, NULL),
  -- #0102 Exeggcute - Native Encounter
  (102, 10200, 13, NULL, 1, NULL),
  -- #0103 Exeggutor - Evolution
  (103, 10300, 13, NULL, 7, NULL),
  -- #0104 Cubone - Native Encounter
  (104, 10400, 13, NULL, 1, NULL),
  -- #0105 Marowak - Evolution
  (105, 10500, 13, NULL, 7, NULL),
  -- #0106 Hitmonlee - Evolution
  (106, 10600, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0107 Hitmonchan - Evolution
  (107, 10700, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0108 Lickitung - Native Encounter
  (108, 10800, 13, NULL, 1, NULL),
  -- #0109 Koffing - Transfer Only
  (109, 10900, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0110 Weezing - Transfer Only
  (110, 11000, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0111 Rhyhorn - Native Encounter
  (111, 11100, 13, NULL, 1, NULL),
  -- #0112 Rhydon - Evolution
  (112, 11200, 13, NULL, 7, NULL),
  -- #0113 Chansey - Raid or Special Encounter
  (113, 11300, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0114 Tangela - Raid or Special Encounter
  (114, 11400, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0115 Kangaskhan - Native Encounter
  (115, 11500, 13, NULL, 1, NULL),
  -- #0116 Horsea - Native Encounter
  (116, 11600, 13, NULL, 1, NULL),
  -- #0117 Seadra - Native Encounter
  (117, 11700, 13, NULL, 1, NULL),
  -- #0118 Goldeen - Native Encounter
  (118, 11800, 13, NULL, 1, NULL),
  -- #0119 Seaking - Native Encounter
  (119, 11900, 13, NULL, 1, NULL),
  -- #0120 Staryu - X - Native Encounter
  (120, 12000, 13, 21, 1, NULL),
  -- #0120 Staryu - Y - External Trade
  (120, 12000, 13, 22, 12, 'Version source is Pokémon X; available in Pokémon Y by trade from the paired version or compatible external source.'),
  -- #0121 Starmie - X - Native Encounter
  (121, 12100, 13, 21, 1, NULL),
  -- #0121 Starmie - Y - External Trade
  (121, 12100, 13, 22, 12, 'Version source is Pokémon X; available in Pokémon Y by trade from the paired version or compatible external source.'),
  -- #0122 Mr. Mime - Native Encounter
  (122, 12200, 13, NULL, 1, NULL),
  -- #0123 Scyther - Native Encounter
  (123, 12300, 13, NULL, 1, NULL),
  -- #0124 Jynx - Native Encounter
  (124, 12400, 13, NULL, 1, NULL),
  -- #0125 Electabuzz - Raid or Special Encounter
  (125, 12500, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0126 Magmar - Raid or Special Encounter
  (126, 12600, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0127 Pinsir - X - Native Encounter
  (127, 12700, 13, 21, 1, NULL),
  -- #0127 Pinsir - Y - Raid or Special Encounter
  (127, 12700, 13, 22, 10, 'Friend Safari source in X/Y.'),
  -- #0128 Tauros - Native Encounter
  (128, 12800, 13, NULL, 1, NULL),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 13, NULL, 1, NULL),
  -- #0130 Gyarados - Native Encounter
  (130, 13000, 13, NULL, 1, NULL),
  -- #0131 Lapras - Gift
  (131, 13100, 13, NULL, 4, 'Gift Lapras received on Route 12 in X/Y.'),
  -- #0132 Ditto - Native Encounter
  (132, 13200, 13, NULL, 1, NULL),
  -- #0133 Eevee - Native Encounter
  (133, 13300, 13, NULL, 1, NULL),
  -- #0134 Vaporeon - Evolution
  (134, 13400, 13, NULL, 7, NULL),
  -- #0135 Jolteon - Evolution
  (135, 13500, 13, NULL, 7, NULL),
  -- #0136 Flareon - Evolution
  (136, 13600, 13, NULL, 7, NULL),
  -- #0137 Porygon - Transfer Only
  (137, 13700, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0138 Omanyte - X - External Trade
  (138, 13800, 13, 21, 12, 'Version source is Pokémon Y; available in Pokémon X by trade from the paired version or compatible external source.'),
  -- #0138 Omanyte - Y - Fossil Restoration
  (138, 13800, 13, 22, 6, 'Available by restoring a fossil obtainable in X/Y.'),
  -- #0139 Omastar - X - External Trade
  (139, 13900, 13, 21, 12, 'Version source is Pokémon Y; available in Pokémon X by trade from the paired version or compatible external source.'),
  -- #0139 Omastar - Y - Evolution
  (139, 13900, 13, 22, 7, NULL),
  -- #0140 Kabuto - X - External Trade
  (140, 14000, 13, 21, 12, 'Version source is Pokémon Y; available in Pokémon X by trade from the paired version or compatible external source.'),
  -- #0140 Kabuto - Y - Fossil Restoration
  (140, 14000, 13, 22, 6, 'Available by restoring a fossil obtainable in X/Y.'),
  -- #0141 Kabutops - X - External Trade
  (141, 14100, 13, 21, 12, 'Version source is Pokémon Y; available in Pokémon X by trade from the paired version or compatible external source.'),
  -- #0141 Kabutops - Y - Evolution
  (141, 14100, 13, 22, 7, NULL),
  -- #0142 Aerodactyl - Fossil Restoration
  (142, 14200, 13, NULL, 6, 'Available by restoring a fossil obtainable in X/Y.'),
  -- #0143 Snorlax - Static Encounter
  (143, 14300, 13, NULL, 2, 'Route 7 static encounter in X/Y.'),
  -- #0144 Articuno - Roaming Encounter
  (144, 14400, 13, NULL, 9, 'One Kanto legendary bird roams Kalos per save file based on the chosen Kalos first partner, then settles at Sea Spirit''s Den.'),
  -- #0145 Zapdos - Roaming Encounter
  (145, 14500, 13, NULL, 9, 'One Kanto legendary bird roams Kalos per save file based on the chosen Kalos first partner, then settles at Sea Spirit''s Den.'),
  -- #0146 Moltres - Roaming Encounter
  (146, 14600, 13, NULL, 9, 'One Kanto legendary bird roams Kalos per save file based on the chosen Kalos first partner, then settles at Sea Spirit''s Den.'),
  -- #0147 Dratini - Native Encounter
  (147, 14700, 13, NULL, 1, NULL),
  -- #0148 Dragonair - Native Encounter
  (148, 14800, 13, NULL, 1, NULL),
  -- #0149 Dragonite - Evolution
  (149, 14900, 13, NULL, 7, NULL),
  -- #0150 Mewtwo - Static Encounter
  (150, 15000, 13, NULL, 2, 'Unknown Dungeon static encounter in X/Y.'),
  -- #0151 Mew - Event
  (151, 15100, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0152 Chikorita - Event
  (152, 15200, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0153 Bayleef - Evolution
  (153, 15300, 13, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0154 Meganium - Event
  (154, 15400, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0155 Cyndaquil - Event
  (155, 15500, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0156 Quilava - Evolution
  (156, 15600, 13, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0157 Typhlosion - Event
  (157, 15700, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0158 Totodile - Event
  (158, 15800, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0159 Croconaw - Evolution
  (159, 15900, 13, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0160 Feraligatr - Event
  (160, 16000, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0161 Sentret - Native Encounter
  (161, 16100, 13, NULL, 1, NULL),
  -- #0162 Furret - Evolution
  (162, 16200, 13, NULL, 7, NULL),
  -- #0163 Hoothoot - Breeding
  (163, 16300, 13, NULL, 8, NULL),
  -- #0164 Noctowl - Native Encounter
  (164, 16400, 13, NULL, 1, NULL),
  -- #0165 Ledyba - Native Encounter
  (165, 16500, 13, NULL, 1, NULL),
  -- #0166 Ledian - Evolution
  (166, 16600, 13, NULL, 7, NULL),
  -- #0167 Spinarak - Breeding
  (167, 16700, 13, NULL, 8, NULL),
  -- #0168 Ariados - Native Encounter
  (168, 16800, 13, NULL, 1, NULL),
  -- #0169 Crobat - Evolution
  (169, 16900, 13, NULL, 7, NULL),
  -- #0170 Chinchou - Native Encounter
  (170, 17000, 13, NULL, 1, NULL),
  -- #0171 Lanturn - Native Encounter
  (171, 17100, 13, NULL, 1, NULL),
  -- #0172 Pichu - Breeding
  (172, 17200, 13, NULL, 8, NULL),
  -- #0173 Cleffa - Breeding
  (173, 17300, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0174 Igglybuff - Breeding
  (174, 17400, 13, NULL, 8, NULL),
  -- #0175 Togepi - Raid or Special Encounter
  (175, 17500, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0176 Togetic - Evolution
  (176, 17600, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0177 Natu - Breeding
  (177, 17700, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0178 Xatu - Raid or Special Encounter
  (178, 17800, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0179 Mareep - Native Encounter
  (179, 17900, 13, NULL, 1, NULL),
  -- #0180 Flaaffy - Evolution
  (180, 18000, 13, NULL, 7, NULL),
  -- #0181 Ampharos - Evolution
  (181, 18100, 13, NULL, 7, NULL),
  -- #0182 Bellossom - Evolution
  (182, 18200, 13, NULL, 7, NULL),
  -- #0183 Marill - Native Encounter
  (183, 18300, 13, NULL, 1, NULL),
  -- #0184 Azumarill - Native Encounter
  (184, 18400, 13, NULL, 1, NULL),
  -- #0185 Sudowoodo - Native Encounter
  (185, 18500, 13, NULL, 1, NULL),
  -- #0186 Politoed - Native Encounter
  (186, 18600, 13, NULL, 1, NULL),
  -- #0187 Hoppip - Native Encounter
  (187, 18700, 13, NULL, 1, NULL),
  -- #0188 Skiploom - Evolution
  (188, 18800, 13, NULL, 7, NULL),
  -- #0189 Jumpluff - Evolution
  (189, 18900, 13, NULL, 7, NULL),
  -- #0190 Aipom - Raid or Special Encounter
  (190, 19000, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0191 Sunkern - Raid or Special Encounter
  (191, 19100, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0192 Sunflora - Evolution
  (192, 19200, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0193 Yanma - Native Encounter
  (193, 19300, 13, NULL, 1, NULL),
  -- #0194 Wooper - Breeding
  (194, 19400, 13, NULL, 8, NULL),
  -- #0195 Quagsire - Native Encounter
  (195, 19500, 13, NULL, 1, NULL),
  -- #0196 Espeon - Evolution
  (196, 19600, 13, NULL, 7, NULL),
  -- #0197 Umbreon - Evolution
  (197, 19700, 13, NULL, 7, NULL),
  -- #0198 Murkrow - Native Encounter
  (198, 19800, 13, NULL, 1, NULL),
  -- #0199 Slowking - Evolution
  (199, 19900, 13, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0200 Misdreavus - Transfer Only
  (200, 20000, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0201 Unown - Transfer Only
  (201, 20100, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0202 Wobbuffet - Native Encounter
  (202, 20200, 13, NULL, 1, NULL),
  -- #0203 Girafarig - Raid or Special Encounter
  (203, 20300, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0204 Pineco - Breeding
  (204, 20400, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0205 Forretress - Raid or Special Encounter
  (205, 20500, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0206 Dunsparce - Native Encounter
  (206, 20600, 13, NULL, 1, NULL),
  -- #0207 Gligar - Native Encounter
  (207, 20700, 13, NULL, 1, NULL),
  -- #0208 Steelix - In-Game Trade
  (208, 20800, 13, NULL, 5, 'NPC in-game trade source in X/Y.'),
  -- #0209 Snubbull - Native Encounter
  (209, 20900, 13, NULL, 1, NULL),
  -- #0210 Granbull - Evolution
  (210, 21000, 13, NULL, 7, NULL),
  -- #0211 Qwilfish - Native Encounter
  (211, 21100, 13, NULL, 1, NULL),
  -- #0212 Scizor - Evolution
  (212, 21200, 13, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0213 Shuckle - Native Encounter
  (213, 21300, 13, NULL, 1, NULL),
  -- #0214 Heracross - X - Raid or Special Encounter
  (214, 21400, 13, 21, 10, 'Friend Safari source in X/Y.'),
  -- #0214 Heracross - Y - Native Encounter
  (214, 21400, 13, 22, 1, NULL),
  -- #0215 Sneasel - Native Encounter
  (215, 21500, 13, NULL, 1, NULL),
  -- #0216 Teddiursa - Breeding
  (216, 21600, 13, NULL, 8, NULL),
  -- #0217 Ursaring - Native Encounter
  (217, 21700, 13, NULL, 1, NULL),
  -- #0218 Slugma - Native Encounter
  (218, 21800, 13, NULL, 1, NULL),
  -- #0219 Magcargo - Evolution
  (219, 21900, 13, NULL, 7, NULL),
  -- #0220 Swinub - Breeding
  (220, 22000, 13, NULL, 8, NULL),
  -- #0221 Piloswine - Native Encounter
  (221, 22100, 13, NULL, 1, NULL),
  -- #0222 Corsola - Native Encounter
  (222, 22200, 13, NULL, 1, NULL),
  -- #0223 Remoraid - Native Encounter
  (223, 22300, 13, NULL, 1, NULL),
  -- #0224 Octillery - Native Encounter
  (224, 22400, 13, NULL, 1, NULL),
  -- #0225 Delibird - Native Encounter
  (225, 22500, 13, NULL, 1, NULL),
  -- #0226 Mantine - Evolution
  (226, 22600, 13, NULL, 7, NULL),
  -- #0227 Skarmory - Native Encounter
  (227, 22700, 13, NULL, 1, NULL),
  -- #0228 Houndour - X - Native Encounter
  (228, 22800, 13, 21, 1, NULL),
  -- #0228 Houndour - Y - External Trade
  (228, 22800, 13, 22, 12, 'Version source is Pokémon X; available in Pokémon Y by trade from the paired version or compatible external source.'),
  -- #0229 Houndoom - X - Evolution
  (229, 22900, 13, 21, 7, NULL),
  -- #0229 Houndoom - Y - External Trade
  (229, 22900, 13, 22, 12, 'Version source is Pokémon X; available in Pokémon Y by trade from the paired version or compatible external source.'),
  -- #0230 Kingdra - Evolution
  (230, 23000, 13, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0231 Phanpy - Raid or Special Encounter
  (231, 23100, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0232 Donphan - Evolution
  (232, 23200, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0233 Porygon2 - Transfer Only
  (233, 23300, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0234 Stantler - Transfer Only
  (234, 23400, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0235 Smeargle - Native Encounter
  (235, 23500, 13, NULL, 1, NULL),
  -- #0236 Tyrogue - Raid or Special Encounter
  (236, 23600, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0237 Hitmontop - Evolution
  (237, 23700, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0238 Smoochum - Native Encounter
  (238, 23800, 13, NULL, 1, NULL),
  -- #0239 Elekid - Breeding
  (239, 23900, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0240 Magby - Breeding
  (240, 24000, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0241 Miltank - Native Encounter
  (241, 24100, 13, NULL, 1, NULL),
  -- #0242 Blissey - Evolution
  (242, 24200, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0243 Raikou - Transfer Only
  (243, 24300, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0244 Entei - Transfer Only
  (244, 24400, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0245 Suicune - Transfer Only
  (245, 24500, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0246 Larvitar - X - Breeding
  (246, 24600, 13, 21, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0246 Larvitar - Y - Native Encounter
  (246, 24600, 13, 22, 1, NULL),
  -- #0247 Pupitar - X - Raid or Special Encounter
  (247, 24700, 13, 21, 10, 'Friend Safari source in X/Y.'),
  -- #0247 Pupitar - Y - Native Encounter
  (247, 24700, 13, 22, 1, NULL),
  -- #0248 Tyranitar - X - Evolution
  (248, 24800, 13, 21, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0248 Tyranitar - Y - Evolution
  (248, 24800, 13, 22, 7, NULL),
  -- #0249 Lugia - Event
  (249, 24900, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0250 Ho-Oh - Transfer Only
  (250, 25000, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0251 Celebi - Event
  (251, 25100, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0252 Treecko - Transfer Only
  (252, 25200, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0253 Grovyle - Transfer Only
  (253, 25300, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0254 Sceptile - Transfer Only
  (254, 25400, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0255 Torchic - Event
  (255, 25500, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0256 Combusken - Evolution
  (256, 25600, 13, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0257 Blaziken - Evolution
  (257, 25700, 13, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0258 Mudkip - Transfer Only
  (258, 25800, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0259 Marshtomp - Transfer Only
  (259, 25900, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0260 Swampert - Transfer Only
  (260, 26000, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0261 Poochyena - X - Breeding
  (261, 26100, 13, 21, 8, NULL),
  -- #0261 Poochyena - Y - Breeding
  (261, 26100, 13, 22, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0262 Mightyena - X - Native Encounter
  (262, 26200, 13, 21, 1, NULL),
  -- #0262 Mightyena - Y - Raid or Special Encounter
  (262, 26200, 13, 22, 10, 'Friend Safari source in X/Y.'),
  -- #0263 Zigzagoon - Native Encounter
  (263, 26300, 13, NULL, 1, NULL),
  -- #0264 Linoone - Evolution
  (264, 26400, 13, NULL, 7, NULL),
  -- #0265 Wurmple - Breeding
  (265, 26500, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0266 Silcoon - Breeding
  (266, 26600, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0267 Beautifly - Raid or Special Encounter
  (267, 26700, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0268 Cascoon - Raid or Special Encounter
  (268, 26800, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0269 Dustox - Evolution
  (269, 26900, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0270 Lotad - Breeding
  (270, 27000, 13, NULL, 8, NULL),
  -- #0271 Lombre - Native Encounter
  (271, 27100, 13, NULL, 1, NULL),
  -- #0272 Ludicolo - Evolution
  (272, 27200, 13, NULL, 7, NULL),
  -- #0273 Seedot - Breeding
  (273, 27300, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0274 Nuzleaf - Raid or Special Encounter
  (274, 27400, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0275 Shiftry - Evolution
  (275, 27500, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0276 Taillow - Native Encounter
  (276, 27600, 13, NULL, 1, NULL),
  -- #0277 Swellow - Evolution
  (277, 27700, 13, NULL, 7, NULL),
  -- #0278 Wingull - Native Encounter
  (278, 27800, 13, NULL, 1, NULL),
  -- #0279 Pelipper - Evolution
  (279, 27900, 13, NULL, 7, NULL),
  -- #0280 Ralts - Native Encounter
  (280, 28000, 13, NULL, 1, NULL),
  -- #0281 Kirlia - Evolution
  (281, 28100, 13, NULL, 7, NULL),
  -- #0282 Gardevoir - Evolution
  (282, 28200, 13, NULL, 7, NULL),
  -- #0283 Surskit - Breeding
  (283, 28300, 13, NULL, 8, NULL),
  -- #0284 Masquerain - Native Encounter
  (284, 28400, 13, NULL, 1, NULL),
  -- #0285 Shroomish - Breeding
  (285, 28500, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0286 Breloom - Raid or Special Encounter
  (286, 28600, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0287 Slakoth - Transfer Only
  (287, 28700, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0288 Vigoroth - Transfer Only
  (288, 28800, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0289 Slaking - Transfer Only
  (289, 28900, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0290 Nincada - Native Encounter
  (290, 29000, 13, NULL, 1, NULL),
  -- #0291 Ninjask - Evolution
  (291, 29100, 13, NULL, 7, NULL),
  -- #0292 Shedinja - Evolution
  (292, 29200, 13, NULL, 7, NULL),
  -- #0293 Whismur - Native Encounter
  (293, 29300, 13, NULL, 1, NULL),
  -- #0294 Loudred - Evolution
  (294, 29400, 13, NULL, 7, NULL),
  -- #0295 Exploud - Evolution
  (295, 29500, 13, NULL, 7, NULL),
  -- #0296 Makuhita - Breeding
  (296, 29600, 13, NULL, 8, NULL),
  -- #0297 Hariyama - Native Encounter
  (297, 29700, 13, NULL, 1, NULL),
  -- #0298 Azurill - Native Encounter
  (298, 29800, 13, NULL, 1, NULL),
  -- #0299 Nosepass - Native Encounter
  (299, 29900, 13, NULL, 1, NULL),
  -- #0300 Skitty - Native Encounter
  (300, 30000, 13, NULL, 1, NULL),
  -- #0301 Delcatty - Evolution
  (301, 30100, 13, NULL, 7, NULL),
  -- #0302 Sableye - Native Encounter
  (302, 30200, 13, NULL, 1, NULL),
  -- #0303 Mawile - Native Encounter
  (303, 30300, 13, NULL, 1, NULL),
  -- #0304 Aron - X - Native Encounter
  (304, 30400, 13, 21, 1, NULL),
  -- #0304 Aron - Y - External Trade
  (304, 30400, 13, 22, 12, 'Version source is Pokémon X; available in Pokémon Y by trade from the paired version or compatible external source.'),
  -- #0305 Lairon - X - Native Encounter
  (305, 30500, 13, 21, 1, NULL),
  -- #0305 Lairon - Y - External Trade
  (305, 30500, 13, 22, 12, 'Version source is Pokémon X; available in Pokémon Y by trade from the paired version or compatible external source.'),
  -- #0306 Aggron - X - Evolution
  (306, 30600, 13, 21, 7, NULL),
  -- #0306 Aggron - Y - External Trade
  (306, 30600, 13, 22, 12, 'Version source is Pokémon X; available in Pokémon Y by trade from the paired version or compatible external source.'),
  -- #0307 Meditite - Native Encounter
  (307, 30700, 13, NULL, 1, NULL),
  -- #0308 Medicham - Evolution
  (308, 30800, 13, NULL, 7, NULL),
  -- #0309 Electrike - X - Breeding
  (309, 30900, 13, 21, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0309 Electrike - Y - Native Encounter
  (309, 30900, 13, 22, 1, NULL),
  -- #0310 Manectric - X - Raid or Special Encounter
  (310, 31000, 13, 21, 10, 'Friend Safari source in X/Y.'),
  -- #0310 Manectric - Y - Evolution
  (310, 31000, 13, 22, 7, NULL),
  -- #0311 Plusle - Native Encounter
  (311, 31100, 13, NULL, 1, NULL),
  -- #0312 Minun - Native Encounter
  (312, 31200, 13, NULL, 1, NULL),
  -- #0313 Volbeat - Native Encounter
  (313, 31300, 13, NULL, 1, NULL),
  -- #0314 Illumise - Native Encounter
  (314, 31400, 13, NULL, 1, NULL),
  -- #0315 Roselia - Native Encounter
  (315, 31500, 13, NULL, 1, NULL),
  -- #0316 Gulpin - Native Encounter
  (316, 31600, 13, NULL, 1, NULL),
  -- #0317 Swalot - Evolution
  (317, 31700, 13, NULL, 7, NULL),
  -- #0318 Carvanha - Native Encounter
  (318, 31800, 13, NULL, 1, NULL),
  -- #0319 Sharpedo - Native Encounter
  (319, 31900, 13, NULL, 1, NULL),
  -- #0320 Wailmer - Native Encounter
  (320, 32000, 13, NULL, 1, NULL),
  -- #0321 Wailord - Evolution
  (321, 32100, 13, NULL, 7, NULL),
  -- #0322 Numel - Breeding
  (322, 32200, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0323 Camerupt - Raid or Special Encounter
  (323, 32300, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0324 Torkoal - Native Encounter
  (324, 32400, 13, NULL, 1, NULL),
  -- #0325 Spoink - Native Encounter
  (325, 32500, 13, NULL, 1, NULL),
  -- #0326 Grumpig - Evolution
  (326, 32600, 13, NULL, 7, NULL),
  -- #0327 Spinda - Native Encounter
  (327, 32700, 13, NULL, 1, NULL),
  -- #0328 Trapinch - Native Encounter
  (328, 32800, 13, NULL, 1, NULL),
  -- #0329 Vibrava - Evolution
  (329, 32900, 13, NULL, 7, NULL),
  -- #0330 Flygon - Evolution
  (330, 33000, 13, NULL, 7, NULL),
  -- #0331 Cacnea - Breeding
  (331, 33100, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0332 Cacturne - Raid or Special Encounter
  (332, 33200, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0333 Swablu - Native Encounter
  (333, 33300, 13, NULL, 1, NULL),
  -- #0334 Altaria - Native Encounter
  (334, 33400, 13, NULL, 1, NULL),
  -- #0335 Zangoose - Native Encounter
  (335, 33500, 13, NULL, 1, NULL),
  -- #0336 Seviper - Native Encounter
  (336, 33600, 13, NULL, 1, NULL),
  -- #0337 Lunatone - Native Encounter
  (337, 33700, 13, NULL, 1, NULL),
  -- #0338 Solrock - Native Encounter
  (338, 33800, 13, NULL, 1, NULL),
  -- #0339 Barboach - Native Encounter
  (339, 33900, 13, NULL, 1, NULL),
  -- #0340 Whiscash - Native Encounter
  (340, 34000, 13, NULL, 1, NULL),
  -- #0341 Corphish - Native Encounter
  (341, 34100, 13, NULL, 1, NULL),
  -- #0342 Crawdaunt - Native Encounter
  (342, 34200, 13, NULL, 1, NULL),
  -- #0343 Baltoy - Transfer Only
  (343, 34300, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0344 Claydol - Transfer Only
  (344, 34400, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0345 Lileep - X - Fossil Restoration
  (345, 34500, 13, 21, 6, 'Available by restoring a fossil obtainable in X/Y.'),
  -- #0345 Lileep - Y - External Trade
  (345, 34500, 13, 22, 12, 'Version source is Pokémon X; available in Pokémon Y by trade from the paired version or compatible external source.'),
  -- #0346 Cradily - X - Evolution
  (346, 34600, 13, 21, 7, NULL),
  -- #0346 Cradily - Y - External Trade
  (346, 34600, 13, 22, 12, 'Version source is Pokémon X; available in Pokémon Y by trade from the paired version or compatible external source.'),
  -- #0347 Anorith - X - Fossil Restoration
  (347, 34700, 13, 21, 6, 'Available by restoring a fossil obtainable in X/Y.'),
  -- #0347 Anorith - Y - External Trade
  (347, 34700, 13, 22, 12, 'Version source is Pokémon X; available in Pokémon Y by trade from the paired version or compatible external source.'),
  -- #0348 Armaldo - X - Evolution
  (348, 34800, 13, 21, 7, NULL),
  -- #0348 Armaldo - Y - External Trade
  (348, 34800, 13, 22, 12, 'Version source is Pokémon X; available in Pokémon Y by trade from the paired version or compatible external source.'),
  -- #0349 Feebas - Transfer Only
  (349, 34900, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0350 Milotic - Transfer Only
  (350, 35000, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0351 Castform - Transfer Only
  (351, 35100, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0352 Kecleon - Native Encounter
  (352, 35200, 13, NULL, 1, NULL),
  -- #0353 Shuppet - Breeding
  (353, 35300, 13, NULL, 8, NULL),
  -- #0354 Banette - Native Encounter
  (354, 35400, 13, NULL, 1, NULL),
  -- #0355 Duskull - Breeding
  (355, 35500, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0356 Dusclops - Raid or Special Encounter
  (356, 35600, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0357 Tropius - Raid or Special Encounter
  (357, 35700, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0358 Chimecho - Evolution
  (358, 35800, 13, NULL, 7, NULL),
  -- #0359 Absol - Native Encounter
  (359, 35900, 13, NULL, 1, NULL),
  -- #0360 Wynaut - Breeding
  (360, 36000, 13, NULL, 8, NULL),
  -- #0361 Snorunt - Raid or Special Encounter
  (361, 36100, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0362 Glalie - Evolution
  (362, 36200, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0363 Spheal - Raid or Special Encounter
  (363, 36300, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0364 Sealeo - Evolution
  (364, 36400, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0365 Walrein - Evolution
  (365, 36500, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0366 Clamperl - Native Encounter
  (366, 36600, 13, NULL, 1, NULL),
  -- #0367 Huntail - X - Native Encounter
  (367, 36700, 13, 21, 1, NULL),
  -- #0367 Huntail - Y - Evolution
  (367, 36700, 13, 22, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0368 Gorebyss - X - Evolution
  (368, 36800, 13, 21, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0368 Gorebyss - Y - Native Encounter
  (368, 36800, 13, 22, 1, NULL),
  -- #0369 Relicanth - Native Encounter
  (369, 36900, 13, NULL, 1, NULL),
  -- #0370 Luvdisc - Native Encounter
  (370, 37000, 13, NULL, 1, NULL),
  -- #0371 Bagon - Native Encounter
  (371, 37100, 13, NULL, 1, NULL),
  -- #0372 Shelgon - Evolution
  (372, 37200, 13, NULL, 7, NULL),
  -- #0373 Salamence - Evolution
  (373, 37300, 13, NULL, 7, NULL),
  -- #0374 Beldum - Breeding
  (374, 37400, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0375 Metang - Raid or Special Encounter
  (375, 37500, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0376 Metagross - Evolution
  (376, 37600, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0377 Regirock - Event
  (377, 37700, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0378 Regice - Event
  (378, 37800, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0379 Registeel - Event
  (379, 37900, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0380 Latias - Transfer Only
  (380, 38000, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0381 Latios - Event
  (381, 38100, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0382 Kyogre - Event
  (382, 38200, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0383 Groudon - Event
  (383, 38300, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0384 Rayquaza - Event
  (384, 38400, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0385 Jirachi - Event
  (385, 38500, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0386 Deoxys - Transfer Only
  (386, 38600, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0386 Deoxys (Attack) - Transfer Only
  (386, 38601, 13, NULL, 13, 'Requires transferred Deoxys and meteorite form access in X/Y.'),
  -- #0386 Deoxys (Defense) - Transfer Only
  (386, 38602, 13, NULL, 13, 'Requires transferred Deoxys and meteorite form access in X/Y.'),
  -- #0386 Deoxys (Speed) - Transfer Only
  (386, 38603, 13, NULL, 13, 'Requires transferred Deoxys and meteorite form access in X/Y.'),
  -- #0387 Turtwig - Transfer Only
  (387, 38700, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0388 Grotle - Transfer Only
  (388, 38800, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0389 Torterra - Transfer Only
  (389, 38900, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0390 Chimchar - Breeding
  (390, 39000, 13, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0391 Monferno - Breeding
  (391, 39100, 13, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0392 Infernape - Event
  (392, 39200, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0393 Piplup - Event
  (393, 39300, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0394 Prinplup - Evolution
  (394, 39400, 13, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0395 Empoleon - Evolution
  (395, 39500, 13, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0396 Starly - Native Encounter
  (396, 39600, 13, NULL, 1, NULL),
  -- #0397 Staravia - Native Encounter
  (397, 39700, 13, NULL, 1, NULL),
  -- #0398 Staraptor - Evolution
  (398, 39800, 13, NULL, 7, NULL),
  -- #0399 Bidoof - Native Encounter
  (399, 39900, 13, NULL, 1, NULL),
  -- #0400 Bibarel - Native Encounter
  (400, 40000, 13, NULL, 1, NULL),
  -- #0401 Kricketot - Transfer Only
  (401, 40100, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0402 Kricketune - Transfer Only
  (402, 40200, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0403 Shinx - Breeding
  (403, 40300, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0404 Luxio - Raid or Special Encounter
  (404, 40400, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0405 Luxray - Evolution
  (405, 40500, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0406 Budew - Native Encounter
  (406, 40600, 13, NULL, 1, NULL),
  -- #0407 Roserade - Evolution
  (407, 40700, 13, NULL, 7, NULL),
  -- #0408 Cranidos - Fossil Restoration
  (408, 40800, 13, NULL, 6, 'Available by restoring a fossil obtainable in X/Y.'),
  -- #0409 Rampardos - Evolution
  (409, 40900, 13, NULL, 7, NULL),
  -- #0410 Shieldon - Fossil Restoration
  (410, 41000, 13, NULL, 6, 'Available by restoring a fossil obtainable in X/Y.'),
  -- #0411 Bastiodon - Evolution
  (411, 41100, 13, NULL, 7, NULL),
  -- #0412 Burmy - Native Encounter
  (412, 41200, 13, NULL, 1, NULL),
  -- #0413 Wormadam - Evolution
  (413, 41300, 13, NULL, 7, NULL),
  -- #0414 Mothim - Evolution
  (414, 41400, 13, NULL, 7, NULL),
  -- #0415 Combee - Native Encounter
  (415, 41500, 13, NULL, 1, NULL),
  -- #0416 Vespiquen - Evolution
  (416, 41600, 13, NULL, 7, NULL),
  -- #0417 Pachirisu - Native Encounter
  (417, 41700, 13, NULL, 1, NULL),
  -- #0418 Buizel - Breeding
  (418, 41800, 13, NULL, 8, NULL),
  -- #0419 Floatzel - Native Encounter
  (419, 41900, 13, NULL, 1, NULL),
  -- #0420 Cherubi - Transfer Only
  (420, 42000, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0421 Cherrim - Transfer Only
  (421, 42100, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0422 Shellos - Breeding
  (422, 42200, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0423 Gastrodon - Raid or Special Encounter
  (423, 42300, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0424 Ambipom - Evolution
  (424, 42400, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0425 Drifloon - Native Encounter
  (425, 42500, 13, NULL, 1, NULL),
  -- #0426 Drifblim - Evolution
  (426, 42600, 13, NULL, 7, NULL),
  -- #0427 Buneary - Transfer Only
  (427, 42700, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0428 Lopunny - Transfer Only
  (428, 42800, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0429 Mismagius - Transfer Only
  (429, 42900, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0430 Honchkrow - Evolution
  (430, 43000, 13, NULL, 7, NULL),
  -- #0431 Glameow - Transfer Only
  (431, 43100, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0432 Purugly - Transfer Only
  (432, 43200, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0433 Chingling - Native Encounter
  (433, 43300, 13, NULL, 1, NULL),
  -- #0434 Stunky - Native Encounter
  (434, 43400, 13, NULL, 1, NULL),
  -- #0435 Skuntank - Evolution
  (435, 43500, 13, NULL, 7, NULL),
  -- #0436 Bronzor - Breeding
  (436, 43600, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0437 Bronzong - Raid or Special Encounter
  (437, 43700, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0438 Bonsly - Breeding
  (438, 43800, 13, NULL, 8, NULL),
  -- #0439 Mime Jr. - Native Encounter
  (439, 43900, 13, NULL, 1, NULL),
  -- #0440 Happiny - Breeding
  (440, 44000, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0441 Chatot - Native Encounter
  (441, 44100, 13, NULL, 1, NULL),
  -- #0442 Spiritomb - Raid or Special Encounter
  (442, 44200, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0443 Gible - Native Encounter
  (443, 44300, 13, NULL, 1, NULL),
  -- #0444 Gabite - Evolution
  (444, 44400, 13, NULL, 7, NULL),
  -- #0445 Garchomp - Evolution
  (445, 44500, 13, NULL, 7, NULL),
  -- #0446 Munchlax - Breeding
  (446, 44600, 13, NULL, 8, NULL),
  -- #0447 Riolu - Native Encounter
  (447, 44700, 13, NULL, 1, NULL),
  -- #0448 Lucario - Gift
  (448, 44800, 13, NULL, 4, 'Gift Lucario received from Korrina in X/Y.'),
  -- #0449 Hippopotas - Native Encounter
  (449, 44900, 13, NULL, 1, NULL),
  -- #0450 Hippowdon - Evolution
  (450, 45000, 13, NULL, 7, NULL),
  -- #0451 Skorupi - Native Encounter
  (451, 45100, 13, NULL, 1, NULL),
  -- #0452 Drapion - Native Encounter
  (452, 45200, 13, NULL, 1, NULL),
  -- #0453 Croagunk - Native Encounter
  (453, 45300, 13, NULL, 1, NULL),
  -- #0454 Toxicroak - Evolution
  (454, 45400, 13, NULL, 7, NULL),
  -- #0455 Carnivine - Native Encounter
  (455, 45500, 13, NULL, 1, NULL),
  -- #0456 Finneon - Transfer Only
  (456, 45600, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0457 Lumineon - Transfer Only
  (457, 45700, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0458 Mantyke - Native Encounter
  (458, 45800, 13, NULL, 1, NULL),
  -- #0459 Snover - Native Encounter
  (459, 45900, 13, NULL, 1, NULL),
  -- #0460 Abomasnow - Native Encounter
  (460, 46000, 13, NULL, 1, NULL),
  -- #0461 Weavile - Evolution
  (461, 46100, 13, NULL, 7, NULL),
  -- #0462 Magnezone - Evolution
  (462, 46200, 13, NULL, 7, NULL),
  -- #0463 Lickilicky - Evolution
  (463, 46300, 13, NULL, 7, NULL),
  -- #0464 Rhyperior - Evolution
  (464, 46400, 13, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0465 Tangrowth - Evolution
  (465, 46500, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0466 Electivire - Evolution
  (466, 46600, 13, NULL, 7, 'Requires trade evolution from a Friend Safari source Pokémon in X/Y.'),
  -- #0467 Magmortar - Evolution
  (467, 46700, 13, NULL, 7, 'Requires trade evolution from a Friend Safari source Pokémon in X/Y.'),
  -- #0468 Togekiss - Evolution
  (468, 46800, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0469 Yanmega - Evolution
  (469, 46900, 13, NULL, 7, NULL),
  -- #0470 Leafeon - Evolution
  (470, 47000, 13, NULL, 7, NULL),
  -- #0471 Glaceon - Evolution
  (471, 47100, 13, NULL, 7, NULL),
  -- #0472 Gliscor - Evolution
  (472, 47200, 13, NULL, 7, NULL),
  -- #0473 Mamoswine - Evolution
  (473, 47300, 13, NULL, 7, NULL),
  -- #0474 Porygon-Z - Transfer Only
  (474, 47400, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0475 Gallade - Evolution
  (475, 47500, 13, NULL, 7, NULL),
  -- #0476 Probopass - Evolution
  (476, 47600, 13, NULL, 7, NULL),
  -- #0477 Dusknoir - Evolution
  (477, 47700, 13, NULL, 7, 'Requires trade evolution from a Friend Safari source Pokémon in X/Y.'),
  -- #0478 Froslass - Evolution
  (478, 47800, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0479 Rotom - Raid or Special Encounter
  (479, 47900, 13, NULL, 10, 'Tuesday trash-can encounter at Lost Hotel in X/Y.'),
  -- #0479 Rotom (Heat) - Raid or Special Encounter
  (479, 47901, 13, NULL, 10, 'Requires Rotom and appliance form access in X/Y after obtaining Rotom.'),
  -- #0479 Rotom (Wash) - Raid or Special Encounter
  (479, 47902, 13, NULL, 10, 'Requires Rotom and appliance form access in X/Y after obtaining Rotom.'),
  -- #0479 Rotom (Frost) - Raid or Special Encounter
  (479, 47903, 13, NULL, 10, 'Requires Rotom and appliance form access in X/Y after obtaining Rotom.'),
  -- #0479 Rotom (Fan) - Raid or Special Encounter
  (479, 47904, 13, NULL, 10, 'Requires Rotom and appliance form access in X/Y after obtaining Rotom.'),
  -- #0479 Rotom (Mow) - Raid or Special Encounter
  (479, 47905, 13, NULL, 10, 'Requires Rotom and appliance form access in X/Y after obtaining Rotom.'),
  -- #0480 Uxie - Transfer Only
  (480, 48000, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0481 Mesprit - Transfer Only
  (481, 48100, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0482 Azelf - Transfer Only
  (482, 48200, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0483 Dialga - Event
  (483, 48300, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0484 Palkia - Event
  (484, 48400, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0485 Heatran - Transfer Only
  (485, 48500, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0486 Regigigas - Transfer Only
  (486, 48600, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0487 Giratina - Event
  (487, 48700, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0487 Giratina (Origin) - Event
  (487, 48701, 13, NULL, 11, 'Requires event/distribution Giratina and Griseous Orb form access in X/Y.'),
  -- #0488 Cresselia - Transfer Only
  (488, 48800, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0489 Phione - Breeding
  (489, 48900, 13, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0490 Manaphy - Event
  (490, 49000, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0491 Darkrai - Event
  (491, 49100, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0492 Shaymin - Event
  (492, 49200, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0492 Shaymin (Sky) - Event
  (492, 49201, 13, NULL, 11, 'Requires event/distribution Shaymin and Gracidea form access in X/Y.'),
  -- #0493 Arceus - Event
  (493, 49300, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0493 Arceus (Fighting) - Event
  (493, 49301, 13, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in X/Y.'),
  -- #0493 Arceus (Flying) - Event
  (493, 49302, 13, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in X/Y.'),
  -- #0493 Arceus (Poison) - Event
  (493, 49303, 13, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in X/Y.'),
  -- #0493 Arceus (Ground) - Event
  (493, 49304, 13, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in X/Y.'),
  -- #0493 Arceus (Rock) - Event
  (493, 49305, 13, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in X/Y.'),
  -- #0493 Arceus (Bug) - Event
  (493, 49306, 13, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in X/Y.'),
  -- #0493 Arceus (Ghost) - Event
  (493, 49307, 13, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in X/Y.'),
  -- #0493 Arceus (Steel) - Event
  (493, 49308, 13, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in X/Y.'),
  -- #0493 Arceus (Fire) - Event
  (493, 49309, 13, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in X/Y.'),
  -- #0493 Arceus (Water) - Event
  (493, 49310, 13, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in X/Y.'),
  -- #0493 Arceus (Grass) - Event
  (493, 49311, 13, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in X/Y.'),
  -- #0493 Arceus (Electric) - Event
  (493, 49312, 13, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in X/Y.'),
  -- #0493 Arceus (Psychic) - Event
  (493, 49313, 13, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in X/Y.'),
  -- #0493 Arceus (Ice) - Event
  (493, 49314, 13, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in X/Y.'),
  -- #0493 Arceus (Dragon) - Event
  (493, 49315, 13, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in X/Y.'),
  -- #0493 Arceus (Dark) - Event
  (493, 49316, 13, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in X/Y.'),
  -- #0493 Arceus (Fairy) - Event
  (493, 49317, 13, NULL, 11, 'Requires event/distribution Arceus and the matching Plate in X/Y.'),
  -- #0494 Victini - Event
  (494, 49400, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0495 Snivy - Transfer Only
  (495, 49500, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0496 Servine - Transfer Only
  (496, 49600, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0497 Serperior - Transfer Only
  (497, 49700, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0498 Tepig - Transfer Only
  (498, 49800, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0499 Pignite - Transfer Only
  (499, 49900, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0500 Emboar - Transfer Only
  (500, 50000, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0501 Oshawott - Transfer Only
  (501, 50100, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0502 Dewott - Transfer Only
  (502, 50200, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0503 Samurott - Transfer Only
  (503, 50300, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0504 Patrat - Breeding
  (504, 50400, 13, NULL, 8, NULL),
  -- #0505 Watchog - Native Encounter
  (505, 50500, 13, NULL, 1, NULL),
  -- #0506 Lillipup - Raid or Special Encounter
  (506, 50600, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0507 Herdier - Evolution
  (507, 50700, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0508 Stoutland - Evolution
  (508, 50800, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0509 Purrloin - X - Breeding
  (509, 50900, 13, 21, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0509 Purrloin - Y - Breeding
  (509, 50900, 13, 22, 8, NULL),
  -- #0510 Liepard - X - Raid or Special Encounter
  (510, 51000, 13, 21, 10, 'Friend Safari source in X/Y.'),
  -- #0510 Liepard - Y - Native Encounter
  (510, 51000, 13, 22, 1, NULL),
  -- #0511 Pansage - Native Encounter
  (511, 51100, 13, NULL, 1, NULL),
  -- #0512 Simisage - Evolution
  (512, 51200, 13, NULL, 7, NULL),
  -- #0513 Pansear - Native Encounter
  (513, 51300, 13, NULL, 1, NULL),
  -- #0514 Simisear - Evolution
  (514, 51400, 13, NULL, 7, NULL),
  -- #0515 Panpour - Native Encounter
  (515, 51500, 13, NULL, 1, NULL),
  -- #0516 Simipour - Evolution
  (516, 51600, 13, NULL, 7, NULL),
  -- #0517 Munna - Raid or Special Encounter
  (517, 51700, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0518 Musharna - Evolution
  (518, 51800, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0519 Pidove - Breeding
  (519, 51900, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0520 Tranquill - Raid or Special Encounter
  (520, 52000, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0521 Unfezant - Evolution
  (521, 52100, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0522 Blitzle - Breeding
  (522, 52200, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0523 Zebstrika - Raid or Special Encounter
  (523, 52300, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0524 Roggenrola - Native Encounter
  (524, 52400, 13, NULL, 1, NULL),
  -- #0525 Boldore - Evolution
  (525, 52500, 13, NULL, 7, NULL),
  -- #0526 Gigalith - Evolution
  (526, 52600, 13, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0527 Woobat - Native Encounter
  (527, 52700, 13, NULL, 1, NULL),
  -- #0528 Swoobat - Evolution
  (528, 52800, 13, NULL, 7, NULL),
  -- #0529 Drilbur - Breeding
  (529, 52900, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0530 Excadrill - Raid or Special Encounter
  (530, 53000, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0531 Audino - Native Encounter
  (531, 53100, 13, NULL, 1, NULL),
  -- #0532 Timburr - Breeding
  (532, 53200, 13, NULL, 8, NULL),
  -- #0533 Gurdurr - Native Encounter
  (533, 53300, 13, NULL, 1, NULL),
  -- #0534 Conkeldurr - Evolution
  (534, 53400, 13, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0535 Tympole - Breeding
  (535, 53500, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0536 Palpitoad - Raid or Special Encounter
  (536, 53600, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0537 Seismitoad - Evolution
  (537, 53700, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0538 Throh - X - Raid or Special Encounter
  (538, 53800, 13, 21, 10, 'Friend Safari source in X/Y.'),
  -- #0538 Throh - Y - Native Encounter
  (538, 53800, 13, 22, 1, NULL),
  -- #0539 Sawk - X - Native Encounter
  (539, 53900, 13, 21, 1, NULL),
  -- #0539 Sawk - Y - Raid or Special Encounter
  (539, 53900, 13, 22, 10, 'Friend Safari source in X/Y.'),
  -- #0540 Sewaddle - Breeding
  (540, 54000, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0541 Swadloon - Raid or Special Encounter
  (541, 54100, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0542 Leavanny - Evolution
  (542, 54200, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0543 Venipede - Native Encounter
  (543, 54300, 13, NULL, 1, NULL),
  -- #0544 Whirlipede - Evolution
  (544, 54400, 13, NULL, 7, NULL),
  -- #0545 Scolipede - Evolution
  (545, 54500, 13, NULL, 7, NULL),
  -- #0546 Cottonee - Transfer Only
  (546, 54600, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0547 Whimsicott - Transfer Only
  (547, 54700, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0548 Petilil - Raid or Special Encounter
  (548, 54800, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0549 Lilligant - Evolution
  (549, 54900, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0550 Basculin - Native Encounter
  (550, 55000, 13, NULL, 1, NULL),
  -- #0550 Basculin (Blue-Striped) - Native Encounter
  (550, 55001, 13, NULL, 1, NULL),
  -- #0551 Sandile - Native Encounter
  (551, 55100, 13, NULL, 1, NULL),
  -- #0552 Krokorok - Evolution
  (552, 55200, 13, NULL, 7, NULL),
  -- #0553 Krookodile - Evolution
  (553, 55300, 13, NULL, 7, NULL),
  -- #0554 Darumaka - Transfer Only
  (554, 55400, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0555 Darmanitan - Transfer Only
  (555, 55500, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0556 Maractus - Raid or Special Encounter
  (556, 55600, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0557 Dwebble - Native Encounter
  (557, 55700, 13, NULL, 1, NULL),
  -- #0558 Crustle - Evolution
  (558, 55800, 13, NULL, 7, NULL),
  -- #0559 Scraggy - Native Encounter
  (559, 55900, 13, NULL, 1, NULL),
  -- #0560 Scrafty - Evolution
  (560, 56000, 13, NULL, 7, NULL),
  -- #0561 Sigilyph - Native Encounter
  (561, 56100, 13, NULL, 1, NULL),
  -- #0562 Yamask - Transfer Only
  (562, 56200, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0563 Cofagrigus - Transfer Only
  (563, 56300, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0564 Tirtouga - Fossil Restoration
  (564, 56400, 13, NULL, 6, 'Available by restoring a fossil obtainable in X/Y.'),
  -- #0565 Carracosta - Evolution
  (565, 56500, 13, NULL, 7, NULL),
  -- #0566 Archen - Fossil Restoration
  (566, 56600, 13, NULL, 6, 'Available by restoring a fossil obtainable in X/Y.'),
  -- #0567 Archeops - Evolution
  (567, 56700, 13, NULL, 7, NULL),
  -- #0568 Trubbish - Native Encounter
  (568, 56800, 13, NULL, 1, NULL),
  -- #0569 Garbodor - Native Encounter
  (569, 56900, 13, NULL, 1, NULL),
  -- #0570 Zorua - Breeding
  (570, 57000, 13, NULL, 8, NULL),
  -- #0571 Zoroark - Native Encounter
  (571, 57100, 13, NULL, 1, NULL),
  -- #0572 Minccino - Raid or Special Encounter
  (572, 57200, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0573 Cinccino - Evolution
  (573, 57300, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0574 Gothita - Breeding
  (574, 57400, 13, NULL, 8, NULL),
  -- #0575 Gothorita - Native Encounter
  (575, 57500, 13, NULL, 1, NULL),
  -- #0576 Gothitelle - Evolution
  (576, 57600, 13, NULL, 7, NULL),
  -- #0577 Solosis - Native Encounter
  (577, 57700, 13, NULL, 1, NULL),
  -- #0578 Duosion - Evolution
  (578, 57800, 13, NULL, 7, NULL),
  -- #0579 Reuniclus - Evolution
  (579, 57900, 13, NULL, 7, NULL),
  -- #0580 Ducklett - Native Encounter
  (580, 58000, 13, NULL, 1, NULL),
  -- #0581 Swanna - Evolution
  (581, 58100, 13, NULL, 7, NULL),
  -- #0582 Vanillite - Native Encounter
  (582, 58200, 13, NULL, 1, NULL),
  -- #0583 Vanillish - Evolution
  (583, 58300, 13, NULL, 7, NULL),
  -- #0584 Vanilluxe - Evolution
  (584, 58400, 13, NULL, 7, NULL),
  -- #0585 Deerling - Breeding
  (585, 58500, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0586 Sawsbuck - Raid or Special Encounter
  (586, 58600, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0587 Emolga - Native Encounter
  (587, 58700, 13, NULL, 1, NULL),
  -- #0588 Karrablast - Native Encounter
  (588, 58800, 13, NULL, 1, NULL),
  -- #0589 Escavalier - Evolution
  (589, 58900, 13, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0590 Foongus - Native Encounter
  (590, 59000, 13, NULL, 1, NULL),
  -- #0591 Amoonguss - Native Encounter
  (591, 59100, 13, NULL, 1, NULL),
  -- #0592 Frillish - Transfer Only
  (592, 59200, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0593 Jellicent - Transfer Only
  (593, 59300, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0594 Alomomola - Native Encounter
  (594, 59400, 13, NULL, 1, NULL),
  -- #0595 Joltik - Breeding
  (595, 59500, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0596 Galvantula - Raid or Special Encounter
  (596, 59600, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0597 Ferroseed - Native Encounter
  (597, 59700, 13, NULL, 1, NULL),
  -- #0598 Ferrothorn - Evolution
  (598, 59800, 13, NULL, 7, NULL),
  -- #0599 Klink - Breeding
  (599, 59900, 13, NULL, 8, 'Requires breeding a Friend Safari source Pokémon in X/Y.'),
  -- #0600 Klang - Raid or Special Encounter
  (600, 60000, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0601 Klinklang - Evolution
  (601, 60100, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0602 Tynamo - Transfer Only
  (602, 60200, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0603 Eelektrik - Transfer Only
  (603, 60300, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0604 Eelektross - Transfer Only
  (604, 60400, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0605 Elgyem - Transfer Only
  (605, 60500, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0606 Beheeyem - Transfer Only
  (606, 60600, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0607 Litwick - Native Encounter
  (607, 60700, 13, NULL, 1, NULL),
  -- #0608 Lampent - Evolution
  (608, 60800, 13, NULL, 7, NULL),
  -- #0609 Chandelure - Evolution
  (609, 60900, 13, NULL, 7, NULL),
  -- #0610 Axew - Native Encounter
  (610, 61000, 13, NULL, 1, NULL),
  -- #0611 Fraxure - Evolution
  (611, 61100, 13, NULL, 7, NULL),
  -- #0612 Haxorus - Evolution
  (612, 61200, 13, NULL, 7, NULL),
  -- #0613 Cubchoo - Native Encounter
  (613, 61300, 13, NULL, 1, NULL),
  -- #0614 Beartic - Native Encounter
  (614, 61400, 13, NULL, 1, NULL),
  -- #0615 Cryogonal - Native Encounter
  (615, 61500, 13, NULL, 1, NULL),
  -- #0616 Shelmet - Native Encounter
  (616, 61600, 13, NULL, 1, NULL),
  -- #0617 Accelgor - Evolution
  (617, 61700, 13, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0618 Stunfisk - Native Encounter
  (618, 61800, 13, NULL, 1, NULL),
  -- #0619 Mienfoo - Native Encounter
  (619, 61900, 13, NULL, 1, NULL),
  -- #0620 Mienshao - Evolution
  (620, 62000, 13, NULL, 7, NULL),
  -- #0621 Druddigon - Native Encounter
  (621, 62100, 13, NULL, 1, NULL),
  -- #0622 Golett - Native Encounter
  (622, 62200, 13, NULL, 1, NULL),
  -- #0623 Golurk - Evolution
  (623, 62300, 13, NULL, 7, NULL),
  -- #0624 Pawniard - Native Encounter
  (624, 62400, 13, NULL, 1, NULL),
  -- #0625 Bisharp - In-Game Trade
  (625, 62500, 13, NULL, 5, 'NPC in-game trade source in X/Y.'),
  -- #0626 Bouffalant - Transfer Only
  (626, 62600, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0627 Rufflet - Raid or Special Encounter
  (627, 62700, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0628 Braviary - Evolution
  (628, 62800, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0629 Vullaby - Raid or Special Encounter
  (629, 62900, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0630 Mandibuzz - Evolution
  (630, 63000, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0631 Heatmor - Native Encounter
  (631, 63100, 13, NULL, 1, NULL),
  -- #0632 Durant - Native Encounter
  (632, 63200, 13, NULL, 1, NULL),
  -- #0633 Deino - Breeding
  (633, 63300, 13, NULL, 8, NULL),
  -- #0634 Zweilous - Native Encounter
  (634, 63400, 13, NULL, 1, NULL),
  -- #0635 Hydreigon - Native Encounter
  (635, 63500, 13, NULL, 1, NULL),
  -- #0636 Larvesta - Raid or Special Encounter
  (636, 63600, 13, NULL, 10, 'Friend Safari source in X/Y.'),
  -- #0637 Volcarona - Evolution
  (637, 63700, 13, NULL, 7, 'Requires evolving a Friend Safari source Pokémon in X/Y.'),
  -- #0638 Cobalion - Transfer Only
  (638, 63800, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0639 Terrakion - Transfer Only
  (639, 63900, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0640 Virizion - Transfer Only
  (640, 64000, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0641 Tornadus - Transfer Only
  (641, 64100, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0641 Tornadus (Therian) - Transfer Only
  (641, 64101, 13, NULL, 13, 'Requires transferred Forces of Nature and Reveal Glass form access in X/Y.'),
  -- #0642 Thundurus - Transfer Only
  (642, 64200, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0642 Thundurus (Therian) - Transfer Only
  (642, 64201, 13, NULL, 13, 'Requires transferred Forces of Nature and Reveal Glass form access in X/Y.'),
  -- #0643 Reshiram - Transfer Only
  (643, 64300, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0644 Zekrom - Transfer Only
  (644, 64400, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0645 Landorus - Transfer Only
  (645, 64500, 13, NULL, 13, 'Not obtainable through normal X/Y gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0645 Landorus (Therian) - Transfer Only
  (645, 64501, 13, NULL, 13, 'Requires transferred Forces of Nature and Reveal Glass form access in X/Y.'),
  -- #0646 Kyurem - Event
  (646, 64600, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0646 Kyurem (White) - Event
  (646, 64601, 13, NULL, 11, 'Requires event/distribution Kyurem, a transfer-only Tao trio counterpart, and DNA Splicers form fusion in X/Y.'),
  -- #0646 Kyurem (Black) - Event
  (646, 64602, 13, NULL, 11, 'Requires event/distribution Kyurem, a transfer-only Tao trio counterpart, and DNA Splicers form fusion in X/Y.'),
  -- #0647 Keldeo - Event
  (647, 64700, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0648 Meloetta - Event
  (648, 64800, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0649 Genesect - Event
  (649, 64900, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0649 Genesect (Douse Drive) - Event
  (649, 64901, 13, NULL, 11, 'Requires event/distribution Genesect and Drive item access from Ambrette Town in X/Y.'),
  -- #0649 Genesect (Shock Drive) - Event
  (649, 64902, 13, NULL, 11, 'Requires event/distribution Genesect and Drive item access from Ambrette Town in X/Y.'),
  -- #0649 Genesect (Burn Drive) - Event
  (649, 64903, 13, NULL, 11, 'Requires event/distribution Genesect and Drive item access from Ambrette Town in X/Y.'),
  -- #0649 Genesect (Chill Drive) - Event
  (649, 64904, 13, NULL, 11, 'Requires event/distribution Genesect and Drive item access from Ambrette Town in X/Y.'),
  -- #0650 Chespin - Starter
  (650, 65000, 13, NULL, 3, 'Kalos first partner choice in X/Y.'),
  -- #0651 Quilladin - Evolution
  (651, 65100, 13, NULL, 7, NULL),
  -- #0652 Chesnaught - Evolution
  (652, 65200, 13, NULL, 7, NULL),
  -- #0653 Fennekin - Starter
  (653, 65300, 13, NULL, 3, 'Kalos first partner choice in X/Y.'),
  -- #0654 Braixen - Evolution
  (654, 65400, 13, NULL, 7, NULL),
  -- #0655 Delphox - Evolution
  (655, 65500, 13, NULL, 7, NULL),
  -- #0656 Froakie - Starter
  (656, 65600, 13, NULL, 3, 'Kalos first partner choice in X/Y.'),
  -- #0657 Frogadier - Evolution
  (657, 65700, 13, NULL, 7, NULL),
  -- #0658 Greninja - Evolution
  (658, 65800, 13, NULL, 7, NULL),
  -- #0659 Bunnelby - Native Encounter
  (659, 65900, 13, NULL, 1, NULL),
  -- #0660 Diggersby - Native Encounter
  (660, 66000, 13, NULL, 1, NULL),
  -- #0661 Fletchling - Native Encounter
  (661, 66100, 13, NULL, 1, NULL),
  -- #0662 Fletchinder - Evolution
  (662, 66200, 13, NULL, 7, NULL),
  -- #0663 Talonflame - Evolution
  (663, 66300, 13, NULL, 7, NULL),
  -- #0664 Scatterbug - Native Encounter
  (664, 66400, 13, NULL, 1, NULL),
  -- #0665 Spewpa - Native Encounter
  (665, 66500, 13, NULL, 1, NULL),
  -- #0666 Vivillon - Evolution
  (666, 66600, 13, NULL, 7, NULL),
  -- #0667 Litleo - Native Encounter
  (667, 66700, 13, NULL, 1, NULL),
  -- #0668 Pyroar - Evolution
  (668, 66800, 13, NULL, 7, NULL),
  -- #0669 Flabebe - Native Encounter
  (669, 66900, 13, NULL, 1, NULL),
  -- #0670 Floette - Evolution
  (670, 67000, 13, NULL, 7, NULL),
  -- #0671 Florges - Evolution
  (671, 67100, 13, NULL, 7, NULL),
  -- #0672 Skiddo - Native Encounter
  (672, 67200, 13, NULL, 1, NULL),
  -- #0673 Gogoat - Evolution
  (673, 67300, 13, NULL, 7, NULL),
  -- #0674 Pancham - Native Encounter
  (674, 67400, 13, NULL, 1, NULL),
  -- #0675 Pangoro - Evolution
  (675, 67500, 13, NULL, 7, NULL),
  -- #0676 Furfrou - Native Encounter
  (676, 67600, 13, NULL, 1, NULL),
  -- #0677 Espurr - Native Encounter
  (677, 67700, 13, NULL, 1, NULL),
  -- #0678 Meowstic - Evolution
  (678, 67800, 13, NULL, 7, NULL),
  -- #0678 Meowstic (Female) - Evolution
  (678, 67801, 13, NULL, 7, NULL),
  -- #0679 Honedge - Native Encounter
  (679, 67900, 13, NULL, 1, NULL),
  -- #0680 Doublade - Evolution
  (680, 68000, 13, NULL, 7, NULL),
  -- #0681 Aegislash - Evolution
  (681, 68100, 13, NULL, 7, NULL),
  -- #0682 Spritzee - X - Raid or Special Encounter
  (682, 68200, 13, 21, 10, 'Friend Safari source in X/Y.'),
  -- #0682 Spritzee - Y - Native Encounter
  (682, 68200, 13, 22, 1, NULL),
  -- #0683 Aromatisse - X - Evolution
  (683, 68300, 13, 21, 7, 'Requires trade evolution from a Friend Safari source Pokémon in X/Y.'),
  -- #0683 Aromatisse - Y - Evolution
  (683, 68300, 13, 22, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0684 Swirlix - X - Native Encounter
  (684, 68400, 13, 21, 1, NULL),
  -- #0684 Swirlix - Y - Raid or Special Encounter
  (684, 68400, 13, 22, 10, 'Friend Safari source in X/Y.'),
  -- #0685 Slurpuff - X - Evolution
  (685, 68500, 13, 21, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0685 Slurpuff - Y - Evolution
  (685, 68500, 13, 22, 7, 'Requires trade evolution from a Friend Safari source Pokémon in X/Y.'),
  -- #0686 Inkay - Native Encounter
  (686, 68600, 13, NULL, 1, NULL),
  -- #0687 Malamar - Evolution
  (687, 68700, 13, NULL, 7, NULL),
  -- #0688 Binacle - Native Encounter
  (688, 68800, 13, NULL, 1, NULL),
  -- #0689 Barbaracle - Evolution
  (689, 68900, 13, NULL, 7, NULL),
  -- #0690 Skrelp - X - External Trade
  (690, 69000, 13, 21, 12, 'Version source is Pokémon Y; available in Pokémon X by trade from the paired version or compatible external source.'),
  -- #0690 Skrelp - Y - Native Encounter
  (690, 69000, 13, 22, 1, NULL),
  -- #0691 Dragalge - X - External Trade
  (691, 69100, 13, 21, 12, 'Version source is Pokémon Y; available in Pokémon X by trade from the paired version or compatible external source.'),
  -- #0691 Dragalge - Y - Native Encounter
  (691, 69100, 13, 22, 1, NULL),
  -- #0692 Clauncher - X - Native Encounter
  (692, 69200, 13, 21, 1, NULL),
  -- #0692 Clauncher - Y - External Trade
  (692, 69200, 13, 22, 12, 'Version source is Pokémon X; available in Pokémon Y by trade from the paired version or compatible external source.'),
  -- #0693 Clawitzer - X - Native Encounter
  (693, 69300, 13, 21, 1, NULL),
  -- #0693 Clawitzer - Y - External Trade
  (693, 69300, 13, 22, 12, 'Version source is Pokémon X; available in Pokémon Y by trade from the paired version or compatible external source.'),
  -- #0694 Helioptile - Native Encounter
  (694, 69400, 13, NULL, 1, NULL),
  -- #0695 Heliolisk - Evolution
  (695, 69500, 13, NULL, 7, NULL),
  -- #0696 Tyrunt - Fossil Restoration
  (696, 69600, 13, NULL, 6, 'Available by restoring a fossil obtainable in X/Y.'),
  -- #0697 Tyrantrum - Evolution
  (697, 69700, 13, NULL, 7, NULL),
  -- #0698 Amaura - Fossil Restoration
  (698, 69800, 13, NULL, 6, 'Available by restoring a fossil obtainable in X/Y.'),
  -- #0699 Aurorus - Evolution
  (699, 69900, 13, NULL, 7, NULL),
  -- #0700 Sylveon - Evolution
  (700, 70000, 13, NULL, 7, NULL),
  -- #0701 Hawlucha - Native Encounter
  (701, 70100, 13, NULL, 1, NULL),
  -- #0702 Dedenne - Native Encounter
  (702, 70200, 13, NULL, 1, NULL),
  -- #0703 Carbink - Native Encounter
  (703, 70300, 13, NULL, 1, NULL),
  -- #0704 Goomy - Native Encounter
  (704, 70400, 13, NULL, 1, NULL),
  -- #0705 Sliggoo - Native Encounter
  (705, 70500, 13, NULL, 1, NULL),
  -- #0706 Goodra - Evolution
  (706, 70600, 13, NULL, 7, NULL),
  -- #0707 Klefki - Native Encounter
  (707, 70700, 13, NULL, 1, NULL),
  -- #0708 Phantump - Native Encounter
  (708, 70800, 13, NULL, 1, NULL),
  -- #0709 Trevenant - Native Encounter
  (709, 70900, 13, NULL, 1, NULL),
  -- #0710 Pumpkaboo - Native Encounter
  (710, 71000, 13, NULL, 1, NULL),
  -- #0710 Pumpkaboo (Small) - Native Encounter
  (710, 71001, 13, NULL, 1, 'Pumpkaboo size form is available through normal X/Y encounter slots.'),
  -- #0710 Pumpkaboo (Large) - Native Encounter
  (710, 71002, 13, NULL, 1, 'Pumpkaboo size form is available through normal X/Y encounter slots.'),
  -- #0710 Pumpkaboo (Super) - Native Encounter
  (710, 71003, 13, NULL, 1, 'Pumpkaboo size form is available through normal X/Y encounter slots.'),
  -- #0711 Gourgeist - Evolution
  (711, 71100, 13, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0711 Gourgeist (Small) - Evolution
  (711, 71101, 13, NULL, 7, 'Requires trade evolution from the matching Pumpkaboo size form in X/Y.'),
  -- #0711 Gourgeist (Large) - Evolution
  (711, 71102, 13, NULL, 7, 'Requires trade evolution from the matching Pumpkaboo size form in X/Y.'),
  -- #0711 Gourgeist (Super) - Evolution
  (711, 71103, 13, NULL, 7, 'Requires trade evolution from the matching Pumpkaboo size form in X/Y.'),
  -- #0712 Bergmite - Native Encounter
  (712, 71200, 13, NULL, 1, NULL),
  -- #0713 Avalugg - Evolution
  (713, 71300, 13, NULL, 7, NULL),
  -- #0714 Noibat - Native Encounter
  (714, 71400, 13, NULL, 1, NULL),
  -- #0715 Noivern - Evolution
  (715, 71500, 13, NULL, 7, NULL),
  -- #0716 Xerneas - X - Static Encounter
  (716, 71600, 13, 21, 2, 'Team Flare Secret HQ static encounter in Pokémon X.'),
  -- #0716 Xerneas - Y - External Trade
  (716, 71600, 13, 22, 12, 'Version source is Pokémon X; available in Pokémon Y by trade from the paired version or compatible external source.'),
  -- #0717 Yveltal - X - External Trade
  (717, 71700, 13, 21, 12, 'Version source is Pokémon Y; available in Pokémon X by trade from the paired version or compatible external source.'),
  -- #0717 Yveltal - Y - Static Encounter
  (717, 71700, 13, 22, 2, 'Team Flare Secret HQ static encounter in Pokémon Y.'),
  -- #0718 Zygarde - Static Encounter
  (718, 71800, 13, NULL, 2, 'Terminus Cave static encounter in X/Y.'),
  -- #0719 Diancie - Event
  (719, 71900, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0720 Hoopa - Event
  (720, 72000, 13, NULL, 11, 'Official X/Y event or distribution source.'),
  -- #0721 Volcanion - Event
  (721, 72100, 13, NULL, 11, 'Official X/Y event or distribution source.');
