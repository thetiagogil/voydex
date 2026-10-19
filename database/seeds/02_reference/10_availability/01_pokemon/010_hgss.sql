-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by availability and HeartGold/SoulSilver legendary, Pokewalker, and form behavior notes.
-- Cross-check: PokemonDB HeartGold/SoulSilver version exclusives, Serebii HeartGold/SoulSilver exclusives/trade pages, and legacy Voydex availability seeds.
-- Scope note: primary availability method per obtainable form; external-source rows preserve compatible-game usability for planning.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: HeartGold / SoulSilver
-- Table: reference.pokemon_availability
-- Scope: 547 rows; all Generation IV-compatible species are represented, with game-specific rows for version sources and curated persistent form rows for Deoxys, Burmy, Wormadam, Rotom, Giratina, and Shaymin.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0001 Bulbasaur - Gift
  (1, 100, 10, NULL, 4, 'One Kanto first partner gift choice from Professor Oak after defeating Red.'),
  -- #0002 Ivysaur - Evolution
  (2, 200, 10, NULL, 7, NULL),
  -- #0003 Venusaur - Evolution
  (3, 300, 10, NULL, 7, NULL),
  -- #0004 Charmander - Gift
  (4, 400, 10, NULL, 4, 'One Kanto first partner gift choice from Professor Oak after defeating Red.'),
  -- #0005 Charmeleon - Evolution
  (5, 500, 10, NULL, 7, NULL),
  -- #0006 Charizard - Evolution
  (6, 600, 10, NULL, 7, NULL),
  -- #0007 Squirtle - Gift
  (7, 700, 10, NULL, 4, 'One Kanto first partner gift choice from Professor Oak after defeating Red.'),
  -- #0008 Wartortle - Evolution
  (8, 800, 10, NULL, 7, NULL),
  -- #0009 Blastoise - Evolution
  (9, 900, 10, NULL, 7, NULL),
  -- #0010 Caterpie - Native Encounter
  (10, 1000, 10, NULL, 1, NULL),
  -- #0011 Metapod - Native Encounter
  (11, 1100, 10, NULL, 1, NULL),
  -- #0012 Butterfree - Native Encounter
  (12, 1200, 10, NULL, 1, NULL),
  -- #0013 Weedle - Native Encounter
  (13, 1300, 10, NULL, 1, NULL),
  -- #0014 Kakuna - Native Encounter
  (14, 1400, 10, NULL, 1, NULL),
  -- #0015 Beedrill - Native Encounter
  (15, 1500, 10, NULL, 1, NULL),
  -- #0016 Pidgey - Native Encounter
  (16, 1600, 10, NULL, 1, NULL),
  -- #0017 Pidgeotto - Native Encounter
  (17, 1700, 10, NULL, 1, NULL),
  -- #0018 Pidgeot - Evolution
  (18, 1800, 10, NULL, 7, NULL),
  -- #0019 Rattata - Native Encounter
  (19, 1900, 10, NULL, 1, NULL),
  -- #0020 Raticate - Native Encounter
  (20, 2000, 10, NULL, 1, NULL),
  -- #0021 Spearow - Native Encounter
  (21, 2100, 10, NULL, 1, NULL),
  -- #0022 Fearow - Native Encounter
  (22, 2200, 10, NULL, 1, NULL),
  -- #0023 Ekans - Native Encounter
  (23, 2300, 10, NULL, 1, NULL),
  -- #0024 Arbok - Native Encounter
  (24, 2400, 10, NULL, 1, NULL),
  -- #0025 Pikachu - Native Encounter
  (25, 2500, 10, NULL, 1, NULL),
  -- #0026 Raichu - Evolution
  (26, 2600, 10, NULL, 7, NULL),
  -- #0027 Sandshrew - Native Encounter
  (27, 2700, 10, NULL, 1, NULL),
  -- #0028 Sandslash - Native Encounter
  (28, 2800, 10, NULL, 1, NULL),
  -- #0029 Nidoran F - Native Encounter
  (29, 2900, 10, NULL, 1, NULL),
  -- #0030 Nidorina - Native Encounter
  (30, 3000, 10, NULL, 1, NULL),
  -- #0031 Nidoqueen - Evolution
  (31, 3100, 10, NULL, 7, NULL),
  -- #0032 Nidoran M - Native Encounter
  (32, 3200, 10, NULL, 1, NULL),
  -- #0033 Nidorino - Native Encounter
  (33, 3300, 10, NULL, 1, NULL),
  -- #0034 Nidoking - Evolution
  (34, 3400, 10, NULL, 7, NULL),
  -- #0035 Clefairy - Native Encounter
  (35, 3500, 10, NULL, 1, NULL),
  -- #0036 Clefable - Evolution
  (36, 3600, 10, NULL, 7, NULL),
  -- #0037 Vulpix - HeartGold - External Trade
  (37, 3700, 10, 15, 12, 'Version source is SoulSilver; available in HeartGold by trade or compatible external transfer.'),
  -- #0037 Vulpix - SoulSilver - Native Encounter
  (37, 3700, 10, 16, 1, NULL),
  -- #0038 Ninetales - HeartGold - External Trade
  (38, 3800, 10, 15, 12, 'Version source is SoulSilver; available in HeartGold by trade or compatible external transfer.'),
  -- #0038 Ninetales - SoulSilver - Evolution
  (38, 3800, 10, 16, 7, NULL),
  -- #0039 Jigglypuff - Native Encounter
  (39, 3900, 10, NULL, 1, NULL),
  -- #0040 Wigglytuff - Evolution
  (40, 4000, 10, NULL, 7, NULL),
  -- #0041 Zubat - Native Encounter
  (41, 4100, 10, NULL, 1, NULL),
  -- #0042 Golbat - Native Encounter
  (42, 4200, 10, NULL, 1, NULL),
  -- #0043 Oddish - Native Encounter
  (43, 4300, 10, NULL, 1, NULL),
  -- #0044 Gloom - Native Encounter
  (44, 4400, 10, NULL, 1, NULL),
  -- #0045 Vileplume - Evolution
  (45, 4500, 10, NULL, 7, NULL),
  -- #0046 Paras - Native Encounter
  (46, 4600, 10, NULL, 1, NULL),
  -- #0047 Parasect - Native Encounter
  (47, 4700, 10, NULL, 1, NULL),
  -- #0048 Venonat - Native Encounter
  (48, 4800, 10, NULL, 1, NULL),
  -- #0049 Venomoth - Native Encounter
  (49, 4900, 10, NULL, 1, NULL),
  -- #0050 Diglett - Native Encounter
  (50, 5000, 10, NULL, 1, NULL),
  -- #0051 Dugtrio - Native Encounter
  (51, 5100, 10, NULL, 1, NULL),
  -- #0052 Meowth - HeartGold - External Trade
  (52, 5200, 10, 15, 12, 'Version source is SoulSilver; available in HeartGold by trade or compatible external transfer.'),
  -- #0052 Meowth - SoulSilver - Native Encounter
  (52, 5200, 10, 16, 1, NULL),
  -- #0053 Persian - HeartGold - External Trade
  (53, 5300, 10, 15, 12, 'Version source is SoulSilver; available in HeartGold by trade or compatible external transfer.'),
  -- #0053 Persian - SoulSilver - Native Encounter
  (53, 5300, 10, 16, 1, NULL),
  -- #0054 Psyduck - Native Encounter
  (54, 5400, 10, NULL, 1, NULL),
  -- #0055 Golduck - Native Encounter
  (55, 5500, 10, NULL, 1, NULL),
  -- #0056 Mankey - HeartGold - Native Encounter
  (56, 5600, 10, 15, 1, NULL),
  -- #0056 Mankey - SoulSilver - External Trade
  (56, 5600, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0057 Primeape - HeartGold - Native Encounter
  (57, 5700, 10, 15, 1, NULL),
  -- #0057 Primeape - SoulSilver - External Trade
  (57, 5700, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0058 Growlithe - HeartGold - Native Encounter
  (58, 5800, 10, 15, 1, NULL),
  -- #0058 Growlithe - SoulSilver - External Trade
  (58, 5800, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0059 Arcanine - HeartGold - Evolution
  (59, 5900, 10, 15, 7, NULL),
  -- #0059 Arcanine - SoulSilver - External Trade
  (59, 5900, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0060 Poliwag - Native Encounter
  (60, 6000, 10, NULL, 1, NULL),
  -- #0061 Poliwhirl - Native Encounter
  (61, 6100, 10, NULL, 1, NULL),
  -- #0062 Poliwrath - Evolution
  (62, 6200, 10, NULL, 7, NULL),
  -- #0063 Abra - Native Encounter
  (63, 6300, 10, NULL, 1, NULL),
  -- #0064 Kadabra - Native Encounter
  (64, 6400, 10, NULL, 1, NULL),
  -- #0065 Alakazam - Evolution
  (65, 6500, 10, NULL, 7, 'Trade evolution from an available source Pokémon in HeartGold/SoulSilver.'),
  -- #0066 Machop - Native Encounter
  (66, 6600, 10, NULL, 1, NULL),
  -- #0067 Machoke - Native Encounter
  (67, 6700, 10, NULL, 1, NULL),
  -- #0068 Machamp - Evolution
  (68, 6800, 10, NULL, 7, 'Trade evolution from an available source Pokémon in HeartGold/SoulSilver.'),
  -- #0069 Bellsprout - Native Encounter
  (69, 6900, 10, NULL, 1, NULL),
  -- #0070 Weepinbell - Native Encounter
  (70, 7000, 10, NULL, 1, NULL),
  -- #0071 Victreebel - Evolution
  (71, 7100, 10, NULL, 7, NULL),
  -- #0072 Tentacool - Native Encounter
  (72, 7200, 10, NULL, 1, NULL),
  -- #0073 Tentacruel - Native Encounter
  (73, 7300, 10, NULL, 1, NULL),
  -- #0074 Geodude - Native Encounter
  (74, 7400, 10, NULL, 1, NULL),
  -- #0075 Graveler - Native Encounter
  (75, 7500, 10, NULL, 1, NULL),
  -- #0076 Golem - Evolution
  (76, 7600, 10, NULL, 7, 'Trade evolution from an available source Pokémon in HeartGold/SoulSilver.'),
  -- #0077 Ponyta - Native Encounter
  (77, 7700, 10, NULL, 1, NULL),
  -- #0078 Rapidash - Native Encounter
  (78, 7800, 10, NULL, 1, NULL),
  -- #0079 Slowpoke - Native Encounter
  (79, 7900, 10, NULL, 1, NULL),
  -- #0080 Slowbro - Native Encounter
  (80, 8000, 10, NULL, 1, NULL),
  -- #0081 Magnemite - Native Encounter
  (81, 8100, 10, NULL, 1, NULL),
  -- #0082 Magneton - Native Encounter
  (82, 8200, 10, NULL, 1, NULL),
  -- #0083 Farfetch'd - Native Encounter
  (83, 8300, 10, NULL, 1, NULL),
  -- #0084 Doduo - Native Encounter
  (84, 8400, 10, NULL, 1, NULL),
  -- #0085 Dodrio - Native Encounter
  (85, 8500, 10, NULL, 1, NULL),
  -- #0086 Seel - Native Encounter
  (86, 8600, 10, NULL, 1, NULL),
  -- #0087 Dewgong - Native Encounter
  (87, 8700, 10, NULL, 1, NULL),
  -- #0088 Grimer - Native Encounter
  (88, 8800, 10, NULL, 1, NULL),
  -- #0089 Muk - Native Encounter
  (89, 8900, 10, NULL, 1, NULL),
  -- #0090 Shellder - Native Encounter
  (90, 9000, 10, NULL, 1, NULL),
  -- #0091 Cloyster - Evolution
  (91, 9100, 10, NULL, 7, NULL),
  -- #0092 Gastly - Native Encounter
  (92, 9200, 10, NULL, 1, NULL),
  -- #0093 Haunter - Native Encounter
  (93, 9300, 10, NULL, 1, NULL),
  -- #0094 Gengar - Evolution
  (94, 9400, 10, NULL, 7, 'Trade evolution from an available source Pokémon in HeartGold/SoulSilver.'),
  -- #0095 Onix - Native Encounter
  (95, 9500, 10, NULL, 1, NULL),
  -- #0096 Drowzee - Native Encounter
  (96, 9600, 10, NULL, 1, NULL),
  -- #0097 Hypno - Native Encounter
  (97, 9700, 10, NULL, 1, NULL),
  -- #0098 Krabby - Native Encounter
  (98, 9800, 10, NULL, 1, NULL),
  -- #0099 Kingler - Native Encounter
  (99, 9900, 10, NULL, 1, NULL),
  -- #0100 Voltorb - Native Encounter
  (100, 10000, 10, NULL, 1, NULL),
  -- #0101 Electrode - Native Encounter
  (101, 10100, 10, NULL, 1, NULL),
  -- #0102 Exeggcute - Native Encounter
  (102, 10200, 10, NULL, 1, NULL),
  -- #0103 Exeggutor - Evolution
  (103, 10300, 10, NULL, 7, NULL),
  -- #0104 Cubone - Native Encounter
  (104, 10400, 10, NULL, 1, NULL),
  -- #0105 Marowak - Native Encounter
  (105, 10500, 10, NULL, 1, NULL),
  -- #0106 Hitmonlee - Evolution
  (106, 10600, 10, NULL, 7, NULL),
  -- #0107 Hitmonchan - Evolution
  (107, 10700, 10, NULL, 7, NULL),
  -- #0108 Lickitung - Native Encounter
  (108, 10800, 10, NULL, 1, NULL),
  -- #0109 Koffing - Native Encounter
  (109, 10900, 10, NULL, 1, NULL),
  -- #0110 Weezing - Native Encounter
  (110, 11000, 10, NULL, 1, NULL),
  -- #0111 Rhyhorn - Native Encounter
  (111, 11100, 10, NULL, 1, NULL),
  -- #0112 Rhydon - Native Encounter
  (112, 11200, 10, NULL, 1, NULL),
  -- #0113 Chansey - Native Encounter
  (113, 11300, 10, NULL, 1, NULL),
  -- #0114 Tangela - Native Encounter
  (114, 11400, 10, NULL, 1, NULL),
  -- #0115 Kangaskhan - Native Encounter
  (115, 11500, 10, NULL, 1, NULL),
  -- #0116 Horsea - Native Encounter
  (116, 11600, 10, NULL, 1, NULL),
  -- #0117 Seadra - Native Encounter
  (117, 11700, 10, NULL, 1, NULL),
  -- #0118 Goldeen - Native Encounter
  (118, 11800, 10, NULL, 1, NULL),
  -- #0119 Seaking - Native Encounter
  (119, 11900, 10, NULL, 1, NULL),
  -- #0120 Staryu - Native Encounter
  (120, 12000, 10, NULL, 1, NULL),
  -- #0121 Starmie - Evolution
  (121, 12100, 10, NULL, 7, NULL),
  -- #0122 Mr. Mime - Native Encounter
  (122, 12200, 10, NULL, 1, NULL),
  -- #0123 Scyther - Native Encounter
  (123, 12300, 10, NULL, 1, NULL),
  -- #0124 Jynx - Native Encounter
  (124, 12400, 10, NULL, 1, NULL),
  -- #0125 Electabuzz - Native Encounter
  (125, 12500, 10, NULL, 1, NULL),
  -- #0126 Magmar - Native Encounter
  (126, 12600, 10, NULL, 1, NULL),
  -- #0127 Pinsir - Native Encounter
  (127, 12700, 10, NULL, 1, NULL),
  -- #0128 Tauros - Native Encounter
  (128, 12800, 10, NULL, 1, NULL),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 10, NULL, 1, NULL),
  -- #0130 Gyarados - Native Encounter
  (130, 13000, 10, NULL, 1, NULL),
  -- #0131 Lapras - Native Encounter
  (131, 13100, 10, NULL, 1, NULL),
  -- #0132 Ditto - Native Encounter
  (132, 13200, 10, NULL, 1, NULL),
  -- #0133 Eevee - Gift
  (133, 13300, 10, NULL, 4, 'Bill gift in Goldenrod City.'),
  -- #0134 Vaporeon - Evolution
  (134, 13400, 10, NULL, 7, NULL),
  -- #0135 Jolteon - Evolution
  (135, 13500, 10, NULL, 7, NULL),
  -- #0136 Flareon - Evolution
  (136, 13600, 10, NULL, 7, NULL),
  -- #0137 Porygon - Gift
  (137, 13700, 10, NULL, 4, 'Celadon Game Corner prize/gift source.'),
  -- #0138 Omanyte - HeartGold - Fossil Restoration
  (138, 13800, 10, 15, 6, 'Helix Fossil restored in HeartGold.'),
  -- #0138 Omanyte - SoulSilver - External Trade
  (138, 13800, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0139 Omastar - HeartGold - Evolution
  (139, 13900, 10, 15, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0139 Omastar - SoulSilver - External Trade
  (139, 13900, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0140 Kabuto - HeartGold - External Trade
  (140, 14000, 10, 15, 12, 'Version source is SoulSilver; available in HeartGold by trade or compatible external transfer.'),
  -- #0140 Kabuto - SoulSilver - Fossil Restoration
  (140, 14000, 10, 16, 6, 'Dome Fossil restored in SoulSilver.'),
  -- #0141 Kabutops - HeartGold - External Trade
  (141, 14100, 10, 15, 12, 'Version source is SoulSilver; available in HeartGold by trade or compatible external transfer.'),
  -- #0141 Kabutops - SoulSilver - Evolution
  (141, 14100, 10, 16, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0142 Aerodactyl - Fossil Restoration
  (142, 14200, 10, NULL, 6, 'Old Amber fossil restored in HeartGold/SoulSilver.'),
  -- #0143 Snorlax - Native Encounter
  (143, 14300, 10, NULL, 1, NULL),
  -- #0144 Articuno - Static Encounter
  (144, 14400, 10, NULL, 2, 'Seafoam Islands static encounter after the Kanto story opens.'),
  -- #0145 Zapdos - Static Encounter
  (145, 14500, 10, NULL, 2, 'Power Plant static encounter after the Kanto story opens.'),
  -- #0146 Moltres - Static Encounter
  (146, 14600, 10, NULL, 2, 'Mt. Silver static encounter after the Kanto story opens.'),
  -- #0147 Dratini - Native Encounter
  (147, 14700, 10, NULL, 1, NULL),
  -- #0148 Dragonair - Native Encounter
  (148, 14800, 10, NULL, 1, NULL),
  -- #0149 Dragonite - Evolution
  (149, 14900, 10, NULL, 7, NULL),
  -- #0150 Mewtwo - Static Encounter
  (150, 15000, 10, NULL, 2, 'Cerulean Cave static encounter after all Kanto badges.'),
  -- #0151 Mew - Event
  (151, 15100, 10, NULL, 11, 'Event/distribution-only in Generation IV; not obtainable through normal HeartGold/SoulSilver gameplay.'),
  -- #0152 Chikorita - Starter
  (152, 15200, 10, NULL, 3, 'One Johto first partner choice from Professor Elm.'),
  -- #0153 Bayleef - Evolution
  (153, 15300, 10, NULL, 7, NULL),
  -- #0154 Meganium - Evolution
  (154, 15400, 10, NULL, 7, NULL),
  -- #0155 Cyndaquil - Starter
  (155, 15500, 10, NULL, 3, 'One Johto first partner choice from Professor Elm.'),
  -- #0156 Quilava - Evolution
  (156, 15600, 10, NULL, 7, NULL),
  -- #0157 Typhlosion - Evolution
  (157, 15700, 10, NULL, 7, NULL),
  -- #0158 Totodile - Starter
  (158, 15800, 10, NULL, 3, 'One Johto first partner choice from Professor Elm.'),
  -- #0159 Croconaw - Evolution
  (159, 15900, 10, NULL, 7, NULL),
  -- #0160 Feraligatr - Evolution
  (160, 16000, 10, NULL, 7, NULL),
  -- #0161 Sentret - Native Encounter
  (161, 16100, 10, NULL, 1, NULL),
  -- #0162 Furret - Native Encounter
  (162, 16200, 10, NULL, 1, NULL),
  -- #0163 Hoothoot - Native Encounter
  (163, 16300, 10, NULL, 1, NULL),
  -- #0164 Noctowl - Native Encounter
  (164, 16400, 10, NULL, 1, NULL),
  -- #0165 Ledyba - HeartGold - External Trade
  (165, 16500, 10, 15, 12, 'Version source is SoulSilver; available in HeartGold by trade or compatible external transfer.'),
  -- #0165 Ledyba - SoulSilver - Native Encounter
  (165, 16500, 10, 16, 1, NULL),
  -- #0166 Ledian - HeartGold - External Trade
  (166, 16600, 10, 15, 12, 'Version source is SoulSilver; available in HeartGold by trade or compatible external transfer.'),
  -- #0166 Ledian - SoulSilver - Native Encounter
  (166, 16600, 10, 16, 1, NULL),
  -- #0167 Spinarak - HeartGold - Native Encounter
  (167, 16700, 10, 15, 1, NULL),
  -- #0167 Spinarak - SoulSilver - External Trade
  (167, 16700, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0168 Ariados - HeartGold - Native Encounter
  (168, 16800, 10, 15, 1, NULL),
  -- #0168 Ariados - SoulSilver - External Trade
  (168, 16800, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0169 Crobat - Evolution
  (169, 16900, 10, NULL, 7, NULL),
  -- #0170 Chinchou - Native Encounter
  (170, 17000, 10, NULL, 1, NULL),
  -- #0171 Lanturn - Native Encounter
  (171, 17100, 10, NULL, 1, NULL),
  -- #0172 Pichu - Breeding
  (172, 17200, 10, NULL, 8, NULL),
  -- #0173 Cleffa - Breeding
  (173, 17300, 10, NULL, 8, NULL),
  -- #0174 Igglybuff - Breeding
  (174, 17400, 10, NULL, 8, NULL),
  -- #0175 Togepi - Gift
  (175, 17500, 10, NULL, 4, 'Togepi Egg gift from Professor Elm assistant.'),
  -- #0176 Togetic - Evolution
  (176, 17600, 10, NULL, 7, NULL),
  -- #0177 Natu - Native Encounter
  (177, 17700, 10, NULL, 1, NULL),
  -- #0178 Xatu - In-Game Trade
  (178, 17800, 10, NULL, 5, 'Pewter City in-game trade: receive Xatu for Haunter.'),
  -- #0179 Mareep - Native Encounter
  (179, 17900, 10, NULL, 1, NULL),
  -- #0180 Flaaffy - Native Encounter
  (180, 18000, 10, NULL, 1, NULL),
  -- #0181 Ampharos - Evolution
  (181, 18100, 10, NULL, 7, NULL),
  -- #0182 Bellossom - Evolution
  (182, 18200, 10, NULL, 7, NULL),
  -- #0183 Marill - Native Encounter
  (183, 18300, 10, NULL, 1, NULL),
  -- #0184 Azumarill - Evolution
  (184, 18400, 10, NULL, 7, NULL),
  -- #0185 Sudowoodo - Native Encounter
  (185, 18500, 10, NULL, 1, NULL),
  -- #0186 Politoed - Evolution
  (186, 18600, 10, NULL, 7, 'Trade evolution from an available source Pokémon in HeartGold/SoulSilver.'),
  -- #0187 Hoppip - Native Encounter
  (187, 18700, 10, NULL, 1, NULL),
  -- #0188 Skiploom - Native Encounter
  (188, 18800, 10, NULL, 1, NULL),
  -- #0189 Jumpluff - Native Encounter
  (189, 18900, 10, NULL, 1, NULL),
  -- #0190 Aipom - Native Encounter
  (190, 19000, 10, NULL, 1, NULL),
  -- #0191 Sunkern - Native Encounter
  (191, 19100, 10, NULL, 1, NULL),
  -- #0192 Sunflora - Evolution
  (192, 19200, 10, NULL, 7, NULL),
  -- #0193 Yanma - Native Encounter
  (193, 19300, 10, NULL, 1, NULL),
  -- #0194 Wooper - Native Encounter
  (194, 19400, 10, NULL, 1, NULL),
  -- #0195 Quagsire - Native Encounter
  (195, 19500, 10, NULL, 1, NULL),
  -- #0196 Espeon - Evolution
  (196, 19600, 10, NULL, 7, NULL),
  -- #0197 Umbreon - Evolution
  (197, 19700, 10, NULL, 7, NULL),
  -- #0198 Murkrow - Native Encounter
  (198, 19800, 10, NULL, 1, NULL),
  -- #0199 Slowking - Evolution
  (199, 19900, 10, NULL, 7, 'Trade evolution from an available source Pokémon in HeartGold/SoulSilver.'),
  -- #0200 Misdreavus - Native Encounter
  (200, 20000, 10, NULL, 1, NULL),
  -- #0201 Unown - Native Encounter
  (201, 20100, 10, NULL, 1, NULL),
  -- #0202 Wobbuffet - Native Encounter
  (202, 20200, 10, NULL, 1, NULL),
  -- #0203 Girafarig - Native Encounter
  (203, 20300, 10, NULL, 1, NULL),
  -- #0204 Pineco - Native Encounter
  (204, 20400, 10, NULL, 1, NULL),
  -- #0205 Forretress - Evolution
  (205, 20500, 10, NULL, 7, NULL),
  -- #0206 Dunsparce - Native Encounter
  (206, 20600, 10, NULL, 1, NULL),
  -- #0207 Gligar - HeartGold - Native Encounter
  (207, 20700, 10, 15, 1, NULL),
  -- #0207 Gligar - SoulSilver - External Trade
  (207, 20700, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0208 Steelix - Native Encounter
  (208, 20800, 10, NULL, 1, NULL),
  -- #0209 Snubbull - Native Encounter
  (209, 20900, 10, NULL, 1, NULL),
  -- #0210 Granbull - Evolution
  (210, 21000, 10, NULL, 7, NULL),
  -- #0211 Qwilfish - Native Encounter
  (211, 21100, 10, NULL, 1, NULL),
  -- #0212 Scizor - Evolution
  (212, 21200, 10, NULL, 7, 'Trade evolution from an available source Pokémon in HeartGold/SoulSilver.'),
  -- #0213 Shuckle - Native Encounter
  (213, 21300, 10, NULL, 1, NULL),
  -- #0214 Heracross - Native Encounter
  (214, 21400, 10, NULL, 1, NULL),
  -- #0215 Sneasel - Native Encounter
  (215, 21500, 10, NULL, 1, NULL),
  -- #0216 Teddiursa - HeartGold - External Trade
  (216, 21600, 10, 15, 12, 'Version source is SoulSilver; available in HeartGold by trade or compatible external transfer.'),
  -- #0216 Teddiursa - SoulSilver - Native Encounter
  (216, 21600, 10, 16, 1, NULL),
  -- #0217 Ursaring - HeartGold - External Trade
  (217, 21700, 10, 15, 12, 'Version source is SoulSilver; available in HeartGold by trade or compatible external transfer.'),
  -- #0217 Ursaring - SoulSilver - Native Encounter
  (217, 21700, 10, 16, 1, NULL),
  -- #0218 Slugma - Native Encounter
  (218, 21800, 10, NULL, 1, NULL),
  -- #0219 Magcargo - Evolution
  (219, 21900, 10, NULL, 7, NULL),
  -- #0220 Swinub - Native Encounter
  (220, 22000, 10, NULL, 1, NULL),
  -- #0221 Piloswine - Evolution
  (221, 22100, 10, NULL, 7, NULL),
  -- #0222 Corsola - Native Encounter
  (222, 22200, 10, NULL, 1, NULL),
  -- #0223 Remoraid - Native Encounter
  (223, 22300, 10, NULL, 1, NULL),
  -- #0224 Octillery - Evolution
  (224, 22400, 10, NULL, 7, NULL),
  -- #0225 Delibird - HeartGold - External Trade
  (225, 22500, 10, 15, 12, 'Version source is SoulSilver; available in HeartGold by trade or compatible external transfer.'),
  -- #0225 Delibird - SoulSilver - Native Encounter
  (225, 22500, 10, 16, 1, NULL),
  -- #0226 Mantine - HeartGold - Native Encounter
  (226, 22600, 10, 15, 1, NULL),
  -- #0226 Mantine - SoulSilver - External Trade
  (226, 22600, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0227 Skarmory - HeartGold - External Trade
  (227, 22700, 10, 15, 12, 'Version source is SoulSilver; available in HeartGold by trade or compatible external transfer.'),
  -- #0227 Skarmory - SoulSilver - Native Encounter
  (227, 22700, 10, 16, 1, NULL),
  -- #0228 Houndour - Native Encounter
  (228, 22800, 10, NULL, 1, NULL),
  -- #0229 Houndoom - Native Encounter
  (229, 22900, 10, NULL, 1, NULL),
  -- #0230 Kingdra - Evolution
  (230, 23000, 10, NULL, 7, 'Trade evolution from an available source Pokémon in HeartGold/SoulSilver.'),
  -- #0231 Phanpy - HeartGold - Native Encounter
  (231, 23100, 10, 15, 1, NULL),
  -- #0231 Phanpy - SoulSilver - External Trade
  (231, 23100, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0232 Donphan - HeartGold - Native Encounter
  (232, 23200, 10, 15, 1, NULL),
  -- #0232 Donphan - SoulSilver - External Trade
  (232, 23200, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0233 Porygon2 - Evolution
  (233, 23300, 10, NULL, 7, 'Trade evolution from an available source Pokémon in HeartGold/SoulSilver.'),
  -- #0234 Stantler - Native Encounter
  (234, 23400, 10, NULL, 1, NULL),
  -- #0235 Smeargle - Native Encounter
  (235, 23500, 10, NULL, 1, NULL),
  -- #0236 Tyrogue - Gift
  (236, 23600, 10, NULL, 4, 'Mt. Mortar gift from the Karate King.'),
  -- #0237 Hitmontop - Evolution
  (237, 23700, 10, NULL, 7, NULL),
  -- #0238 Smoochum - Breeding
  (238, 23800, 10, NULL, 8, NULL),
  -- #0239 Elekid - Breeding
  (239, 23900, 10, NULL, 8, NULL),
  -- #0240 Magby - Breeding
  (240, 24000, 10, NULL, 8, NULL),
  -- #0241 Miltank - Native Encounter
  (241, 24100, 10, NULL, 1, NULL),
  -- #0242 Blissey - Evolution
  (242, 24200, 10, NULL, 7, NULL),
  -- #0243 Raikou - Roaming Encounter
  (243, 24300, 10, NULL, 9, 'Roaming encounter after the Burned Tower event.'),
  -- #0244 Entei - Roaming Encounter
  (244, 24400, 10, NULL, 9, 'Roaming encounter after the Burned Tower event.'),
  -- #0245 Suicune - Static Encounter
  (245, 24500, 10, NULL, 2, 'Route 25 static encounter after the Suicune chase sequence.'),
  -- #0246 Larvitar - Native Encounter
  (246, 24600, 10, NULL, 1, NULL),
  -- #0247 Pupitar - Native Encounter
  (247, 24700, 10, NULL, 1, NULL),
  -- #0248 Tyranitar - Evolution
  (248, 24800, 10, NULL, 7, NULL),
  -- #0249 Lugia - Static Encounter
  (249, 24900, 10, NULL, 2, 'Whirl Islands or Pewter City static encounter; main story order differs by version.'),
  -- #0250 Ho-Oh - Static Encounter
  (250, 25000, 10, NULL, 2, 'Bell Tower or Pewter City static encounter; main story order differs by version.'),
  -- #0251 Celebi - Event
  (251, 25100, 10, NULL, 11, 'Event/distribution-only in Generation IV; not obtainable through normal HeartGold/SoulSilver gameplay.'),
  -- #0252 Treecko - Gift
  (252, 25200, 10, NULL, 4, 'One Hoenn first partner gift choice from Steven Stone after defeating Red.'),
  -- #0253 Grovyle - Evolution
  (253, 25300, 10, NULL, 7, NULL),
  -- #0254 Sceptile - Evolution
  (254, 25400, 10, NULL, 7, NULL),
  -- #0255 Torchic - Gift
  (255, 25500, 10, NULL, 4, 'One Hoenn first partner gift choice from Steven Stone after defeating Red.'),
  -- #0256 Combusken - Evolution
  (256, 25600, 10, NULL, 7, NULL),
  -- #0257 Blaziken - Evolution
  (257, 25700, 10, NULL, 7, NULL),
  -- #0258 Mudkip - Gift
  (258, 25800, 10, NULL, 4, 'One Hoenn first partner gift choice from Steven Stone after defeating Red.'),
  -- #0259 Marshtomp - Evolution
  (259, 25900, 10, NULL, 7, NULL),
  -- #0260 Swampert - Evolution
  (260, 26000, 10, NULL, 7, NULL),
  -- #0261 Poochyena - Raid or Special Encounter
  (261, 26100, 10, NULL, 10, 'Special availability such as swarm, Safari Zone, radio, headbutt, or daily/conditional source.'),
  -- #0262 Mightyena - Evolution
  (262, 26200, 10, NULL, 7, NULL),
  -- #0263 Zigzagoon - Native Encounter
  (263, 26300, 10, NULL, 1, NULL),
  -- #0264 Linoone - Native Encounter
  (264, 26400, 10, NULL, 1, NULL),
  -- #0265 Wurmple - Native Encounter
  (265, 26500, 10, NULL, 1, NULL),
  -- #0266 Silcoon - Native Encounter
  (266, 26600, 10, NULL, 1, NULL),
  -- #0267 Beautifly - Native Encounter
  (267, 26700, 10, NULL, 1, NULL),
  -- #0268 Cascoon - Native Encounter
  (268, 26800, 10, NULL, 1, NULL),
  -- #0269 Dustox - Native Encounter
  (269, 26900, 10, NULL, 1, NULL),
  -- #0270 Lotad - Native Encounter
  (270, 27000, 10, NULL, 1, NULL),
  -- #0271 Lombre - Native Encounter
  (271, 27100, 10, NULL, 1, NULL),
  -- #0272 Ludicolo - Evolution
  (272, 27200, 10, NULL, 7, NULL),
  -- #0273 Seedot - Native Encounter
  (273, 27300, 10, NULL, 1, NULL),
  -- #0274 Nuzleaf - Native Encounter
  (274, 27400, 10, NULL, 1, NULL),
  -- #0275 Shiftry - Evolution
  (275, 27500, 10, NULL, 7, NULL),
  -- #0276 Taillow - Native Encounter
  (276, 27600, 10, NULL, 1, NULL),
  -- #0277 Swellow - Evolution
  (277, 27700, 10, NULL, 7, NULL),
  -- #0278 Wingull - Raid or Special Encounter
  (278, 27800, 10, NULL, 10, 'Special availability such as swarm, Safari Zone, radio, headbutt, or daily/conditional source.'),
  -- #0279 Pelipper - Evolution
  (279, 27900, 10, NULL, 7, NULL),
  -- #0280 Ralts - Raid or Special Encounter
  (280, 28000, 10, NULL, 10, 'Special availability such as swarm, Safari Zone, radio, headbutt, or daily/conditional source.'),
  -- #0281 Kirlia - Evolution
  (281, 28100, 10, NULL, 7, NULL),
  -- #0282 Gardevoir - Evolution
  (282, 28200, 10, NULL, 7, NULL),
  -- #0283 Surskit - Native Encounter
  (283, 28300, 10, NULL, 1, NULL),
  -- #0284 Masquerain - Native Encounter
  (284, 28400, 10, NULL, 1, NULL),
  -- #0285 Shroomish - Native Encounter
  (285, 28500, 10, NULL, 1, NULL),
  -- #0286 Breloom - Native Encounter
  (286, 28600, 10, NULL, 1, NULL),
  -- #0287 Slakoth - Native Encounter
  (287, 28700, 10, NULL, 1, NULL),
  -- #0288 Vigoroth - Native Encounter
  (288, 28800, 10, NULL, 1, NULL),
  -- #0289 Slaking - Evolution
  (289, 28900, 10, NULL, 7, NULL),
  -- #0290 Nincada - Native Encounter
  (290, 29000, 10, NULL, 1, NULL),
  -- #0291 Ninjask - Evolution
  (291, 29100, 10, NULL, 7, NULL),
  -- #0292 Shedinja - Evolution
  (292, 29200, 10, NULL, 7, NULL),
  -- #0293 Whismur - Native Encounter
  (293, 29300, 10, NULL, 1, NULL),
  -- #0294 Loudred - Evolution
  (294, 29400, 10, NULL, 7, NULL),
  -- #0295 Exploud - Evolution
  (295, 29500, 10, NULL, 7, NULL),
  -- #0296 Makuhita - Native Encounter
  (296, 29600, 10, NULL, 1, NULL),
  -- #0297 Hariyama - Evolution
  (297, 29700, 10, NULL, 7, NULL),
  -- #0298 Azurill - Native Encounter
  (298, 29800, 10, NULL, 1, NULL),
  -- #0299 Nosepass - Native Encounter
  (299, 29900, 10, NULL, 1, NULL),
  -- #0300 Skitty - Raid or Special Encounter
  (300, 30000, 10, NULL, 10, 'Pokewalker route source; transferred to HeartGold/SoulSilver.'),
  -- #0301 Delcatty - Evolution
  (301, 30100, 10, NULL, 7, 'Evolves from a Pokewalker source Pokémon in HeartGold/SoulSilver.'),
  -- #0302 Sableye - HeartGold - Raid or Special Encounter
  (302, 30200, 10, 15, 10, 'Special availability such as swarm, Safari Zone, radio, headbutt, or daily/conditional source.'),
  -- #0302 Sableye - SoulSilver - External Trade
  (302, 30200, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0303 Mawile - HeartGold - External Trade
  (303, 30300, 10, 15, 12, 'Version source is SoulSilver; available in HeartGold by trade or compatible external transfer.'),
  -- #0303 Mawile - SoulSilver - Raid or Special Encounter
  (303, 30300, 10, 16, 10, 'Special availability such as swarm, Safari Zone, radio, headbutt, or daily/conditional source.'),
  -- #0304 Aron - Native Encounter
  (304, 30400, 10, NULL, 1, NULL),
  -- #0305 Lairon - Native Encounter
  (305, 30500, 10, NULL, 1, NULL),
  -- #0306 Aggron - Evolution
  (306, 30600, 10, NULL, 7, NULL),
  -- #0307 Meditite - Native Encounter
  (307, 30700, 10, NULL, 1, NULL),
  -- #0308 Medicham - Native Encounter
  (308, 30800, 10, NULL, 1, NULL),
  -- #0309 Electrike - Native Encounter
  (309, 30900, 10, NULL, 1, NULL),
  -- #0310 Manectric - Native Encounter
  (310, 31000, 10, NULL, 1, NULL),
  -- #0311 Plusle - Native Encounter
  (311, 31100, 10, NULL, 1, NULL),
  -- #0312 Minun - Native Encounter
  (312, 31200, 10, NULL, 1, NULL),
  -- #0313 Volbeat - Native Encounter
  (313, 31300, 10, NULL, 1, NULL),
  -- #0314 Illumise - Native Encounter
  (314, 31400, 10, NULL, 1, NULL),
  -- #0315 Roselia - Native Encounter
  (315, 31500, 10, NULL, 1, NULL),
  -- #0316 Gulpin - HeartGold - External Trade
  (316, 31600, 10, 15, 12, 'Version source is SoulSilver; available in HeartGold by trade or compatible external transfer.'),
  -- #0316 Gulpin - SoulSilver - Raid or Special Encounter
  (316, 31600, 10, 16, 10, 'Special availability such as swarm, Safari Zone, radio, headbutt, or daily/conditional source.'),
  -- #0317 Swalot - HeartGold - External Trade
  (317, 31700, 10, 15, 12, 'Version source is SoulSilver; available in HeartGold by trade or compatible external transfer.'),
  -- #0317 Swalot - SoulSilver - Evolution
  (317, 31700, 10, 16, 7, NULL),
  -- #0318 Carvanha - Raid or Special Encounter
  (318, 31800, 10, NULL, 10, 'Pokewalker route source; transferred to HeartGold/SoulSilver.'),
  -- #0319 Sharpedo - Evolution
  (319, 31900, 10, NULL, 7, 'Evolves from a Pokewalker source Pokémon in HeartGold/SoulSilver.'),
  -- #0320 Wailmer - Raid or Special Encounter
  (320, 32000, 10, NULL, 10, 'Pokewalker route source; transferred to HeartGold/SoulSilver.'),
  -- #0321 Wailord - Evolution
  (321, 32100, 10, NULL, 7, 'Evolves from a Pokewalker source Pokémon in HeartGold/SoulSilver.'),
  -- #0322 Numel - Native Encounter
  (322, 32200, 10, NULL, 1, NULL),
  -- #0323 Camerupt - Evolution
  (323, 32300, 10, NULL, 7, NULL),
  -- #0324 Torkoal - Native Encounter
  (324, 32400, 10, NULL, 1, NULL),
  -- #0325 Spoink - Native Encounter
  (325, 32500, 10, NULL, 1, NULL),
  -- #0326 Grumpig - Evolution
  (326, 32600, 10, NULL, 7, NULL),
  -- #0327 Spinda - Native Encounter
  (327, 32700, 10, NULL, 1, NULL),
  -- #0328 Trapinch - Native Encounter
  (328, 32800, 10, NULL, 1, NULL),
  -- #0329 Vibrava - Native Encounter
  (329, 32900, 10, NULL, 1, NULL),
  -- #0330 Flygon - Evolution
  (330, 33000, 10, NULL, 7, NULL),
  -- #0331 Cacnea - Native Encounter
  (331, 33100, 10, NULL, 1, NULL),
  -- #0332 Cacturne - Native Encounter
  (332, 33200, 10, NULL, 1, NULL),
  -- #0333 Swablu - Raid or Special Encounter
  (333, 33300, 10, NULL, 10, 'Special availability such as swarm, Safari Zone, radio, headbutt, or daily/conditional source.'),
  -- #0334 Altaria - Evolution
  (334, 33400, 10, NULL, 7, NULL),
  -- #0335 Zangoose - Native Encounter
  (335, 33500, 10, NULL, 1, NULL),
  -- #0336 Seviper - Native Encounter
  (336, 33600, 10, NULL, 1, NULL),
  -- #0337 Lunatone - Native Encounter
  (337, 33700, 10, NULL, 1, NULL),
  -- #0338 Solrock - Native Encounter
  (338, 33800, 10, NULL, 1, NULL),
  -- #0339 Barboach - Native Encounter
  (339, 33900, 10, NULL, 1, NULL),
  -- #0340 Whiscash - Raid or Special Encounter
  (340, 34000, 10, NULL, 10, 'Special availability such as swarm, Safari Zone, radio, headbutt, or daily/conditional source.'),
  -- #0341 Corphish - Native Encounter
  (341, 34100, 10, NULL, 1, NULL),
  -- #0342 Crawdaunt - Evolution
  (342, 34200, 10, NULL, 7, NULL),
  -- #0343 Baltoy - HeartGold - Raid or Special Encounter
  (343, 34300, 10, 15, 10, 'Special availability such as swarm, Safari Zone, radio, headbutt, or daily/conditional source.'),
  -- #0343 Baltoy - SoulSilver - External Trade
  (343, 34300, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0344 Claydol - HeartGold - Evolution
  (344, 34400, 10, 15, 7, NULL),
  -- #0344 Claydol - SoulSilver - External Trade
  (344, 34400, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0345 Lileep - HeartGold - External Trade
  (345, 34500, 10, 15, 12, 'Version source is SoulSilver; available in HeartGold by trade or compatible external transfer.'),
  -- #0345 Lileep - SoulSilver - Fossil Restoration
  (345, 34500, 10, 16, 6, 'Root Fossil restored in SoulSilver.'),
  -- #0346 Cradily - HeartGold - External Trade
  (346, 34600, 10, 15, 12, 'Version source is SoulSilver; available in HeartGold by trade or compatible external transfer.'),
  -- #0346 Cradily - SoulSilver - Evolution
  (346, 34600, 10, 16, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0347 Anorith - HeartGold - Fossil Restoration
  (347, 34700, 10, 15, 6, 'Claw Fossil restored in HeartGold.'),
  -- #0347 Anorith - SoulSilver - External Trade
  (347, 34700, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0348 Armaldo - HeartGold - Evolution
  (348, 34800, 10, 15, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0348 Armaldo - SoulSilver - External Trade
  (348, 34800, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0349 Feebas - Raid or Special Encounter
  (349, 34900, 10, NULL, 10, 'Pokewalker route source; transferred to HeartGold/SoulSilver.'),
  -- #0350 Milotic - Evolution
  (350, 35000, 10, NULL, 7, 'Evolves from a Pokewalker source Pokémon in HeartGold/SoulSilver.'),
  -- #0351 Castform - Raid or Special Encounter
  (351, 35100, 10, NULL, 10, 'Pokewalker route source; transferred to HeartGold/SoulSilver.'),
  -- #0352 Kecleon - Raid or Special Encounter
  (352, 35200, 10, NULL, 10, 'Pokewalker route source; transferred to HeartGold/SoulSilver.'),
  -- #0353 Shuppet - Native Encounter
  (353, 35300, 10, NULL, 1, NULL),
  -- #0354 Banette - Native Encounter
  (354, 35400, 10, NULL, 1, NULL),
  -- #0355 Duskull - Native Encounter
  (355, 35500, 10, NULL, 1, NULL),
  -- #0356 Dusclops - Native Encounter
  (356, 35600, 10, NULL, 1, NULL),
  -- #0357 Tropius - Raid or Special Encounter
  (357, 35700, 10, NULL, 10, 'Pokewalker route source; transferred to HeartGold/SoulSilver.'),
  -- #0358 Chimecho - Native Encounter
  (358, 35800, 10, NULL, 1, NULL),
  -- #0359 Absol - Native Encounter
  (359, 35900, 10, NULL, 1, NULL),
  -- #0360 Wynaut - Breeding
  (360, 36000, 10, NULL, 8, NULL),
  -- #0361 Snorunt - Raid or Special Encounter
  (361, 36100, 10, NULL, 10, 'Pokewalker route source; transferred to HeartGold/SoulSilver.'),
  -- #0362 Glalie - Evolution
  (362, 36200, 10, NULL, 7, 'Evolves from a Pokewalker source Pokémon in HeartGold/SoulSilver.'),
  -- #0363 Spheal - Native Encounter
  (363, 36300, 10, NULL, 1, NULL),
  -- #0364 Sealeo - Native Encounter
  (364, 36400, 10, NULL, 1, NULL),
  -- #0365 Walrein - Evolution
  (365, 36500, 10, NULL, 7, NULL),
  -- #0366 Clamperl - Raid or Special Encounter
  (366, 36600, 10, NULL, 10, 'Special availability such as swarm, Safari Zone, radio, headbutt, or daily/conditional source.'),
  -- #0367 Huntail - Evolution
  (367, 36700, 10, NULL, 7, 'Trade evolution from an available source Pokémon in HeartGold/SoulSilver.'),
  -- #0368 Gorebyss - Evolution
  (368, 36800, 10, NULL, 7, 'Trade evolution from an available source Pokémon in HeartGold/SoulSilver.'),
  -- #0369 Relicanth - Raid or Special Encounter
  (369, 36900, 10, NULL, 10, 'Special availability such as swarm, Safari Zone, radio, headbutt, or daily/conditional source.'),
  -- #0370 Luvdisc - Raid or Special Encounter
  (370, 37000, 10, NULL, 10, 'Special availability such as swarm, Safari Zone, radio, headbutt, or daily/conditional source.'),
  -- #0371 Bagon - Native Encounter
  (371, 37100, 10, NULL, 1, NULL),
  -- #0372 Shelgon - Native Encounter
  (372, 37200, 10, NULL, 1, NULL),
  -- #0373 Salamence - Evolution
  (373, 37300, 10, NULL, 7, NULL),
  -- #0374 Beldum - In-Game Trade
  (374, 37400, 10, NULL, 5, 'Silph Co. in-game trade: receive Beldum for Forretress.'),
  -- #0375 Metang - Native Encounter
  (375, 37500, 10, NULL, 1, NULL),
  -- #0376 Metagross - Evolution
  (376, 37600, 10, NULL, 7, NULL),
  -- #0377 Regirock - External Trade
  (377, 37700, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0378 Regice - External Trade
  (378, 37800, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0379 Registeel - External Trade
  (379, 37900, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0380 Latias - HeartGold - Roaming Encounter
  (380, 38000, 10, 15, 9, 'Roaming encounter in Kanto after National Dex and Steven Stone event.'),
  -- #0380 Latias - SoulSilver - Event
  (380, 38000, 10, 16, 11, 'Enigma Stone event-unlocked Pewter Museum encounter in SoulSilver.'),
  -- #0381 Latios - HeartGold - Event
  (381, 38100, 10, 15, 11, 'Enigma Stone event-unlocked Pewter Museum encounter in HeartGold.'),
  -- #0381 Latios - SoulSilver - Roaming Encounter
  (381, 38100, 10, 16, 9, 'Roaming encounter in Kanto after National Dex and Steven Stone event.'),
  -- #0382 Kyogre - HeartGold - Static Encounter
  (382, 38200, 10, 15, 2, 'Embedded Tower static encounter in HeartGold.'),
  -- #0382 Kyogre - SoulSilver - External Trade
  (382, 38200, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0383 Groudon - HeartGold - External Trade
  (383, 38300, 10, 15, 12, 'Version source is SoulSilver; available in HeartGold by trade or compatible external transfer.'),
  -- #0383 Groudon - SoulSilver - Static Encounter
  (383, 38300, 10, 16, 2, 'Embedded Tower static encounter in SoulSilver.'),
  -- #0384 Rayquaza - Static Encounter
  (384, 38400, 10, NULL, 2, 'Embedded Tower static encounter requiring Kyogre and Groudon from HeartGold/SoulSilver.'),
  -- #0385 Jirachi - Event
  (385, 38500, 10, NULL, 11, 'Event/distribution-only in Generation IV; not obtainable through normal HeartGold/SoulSilver gameplay.'),
  -- #0386 Deoxys - Event
  (386, 38600, 10, NULL, 11, 'Event/distribution-only in Generation IV; not obtainable through normal HeartGold/SoulSilver gameplay.'),
  -- #0386 Deoxys (Attack) - Event
  (386, 38601, 10, NULL, 11, 'Requires event/distribution Deoxys; form can be changed with Route 3 meteorites in HeartGold/SoulSilver.'),
  -- #0386 Deoxys (Defense) - Event
  (386, 38602, 10, NULL, 11, 'Requires event/distribution Deoxys; form can be changed with Route 3 meteorites in HeartGold/SoulSilver.'),
  -- #0386 Deoxys (Speed) - Event
  (386, 38603, 10, NULL, 11, 'Requires event/distribution Deoxys; form can be changed with Route 3 meteorites in HeartGold/SoulSilver.'),
  -- #0387 Turtwig - External Trade
  (387, 38700, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0388 Grotle - External Trade
  (388, 38800, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0389 Torterra - External Trade
  (389, 38900, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0390 Chimchar - External Trade
  (390, 39000, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible external source, Pal Park transfer, trade, or historical official distribution.'),
  -- #0391 Monferno - External Trade
  (391, 39100, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible external source, Pal Park transfer, trade, or historical official distribution.'),
  -- #0392 Infernape - External Trade
  (392, 39200, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible external source, Pal Park transfer, trade, or historical official distribution.'),
  -- #0393 Piplup - External Trade
  (393, 39300, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0394 Prinplup - External Trade
  (394, 39400, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0395 Empoleon - External Trade
  (395, 39500, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0396 Starly - Native Encounter
  (396, 39600, 10, NULL, 1, NULL),
  -- #0397 Staravia - Evolution
  (397, 39700, 10, NULL, 7, NULL),
  -- #0398 Staraptor - Evolution
  (398, 39800, 10, NULL, 7, NULL),
  -- #0399 Bidoof - Native Encounter
  (399, 39900, 10, NULL, 1, NULL),
  -- #0400 Bibarel - Evolution
  (400, 40000, 10, NULL, 7, NULL),
  -- #0401 Kricketot - Native Encounter
  (401, 40100, 10, NULL, 1, NULL),
  -- #0402 Kricketune - Native Encounter
  (402, 40200, 10, NULL, 1, NULL),
  -- #0403 Shinx - Native Encounter
  (403, 40300, 10, NULL, 1, NULL),
  -- #0404 Luxio - Native Encounter
  (404, 40400, 10, NULL, 1, NULL),
  -- #0405 Luxray - Evolution
  (405, 40500, 10, NULL, 7, NULL),
  -- #0406 Budew - Native Encounter
  (406, 40600, 10, NULL, 1, NULL),
  -- #0407 Roserade - Evolution
  (407, 40700, 10, NULL, 7, NULL),
  -- #0408 Cranidos - External Trade
  (408, 40800, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0409 Rampardos - External Trade
  (409, 40900, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0410 Shieldon - External Trade
  (410, 41000, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0411 Bastiodon - External Trade
  (411, 41100, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0412 Burmy - Native Encounter
  (412, 41200, 10, NULL, 1, NULL),
  -- #0412 Burmy (Sandy Cloak) - Native Encounter
  (412, 41201, 10, NULL, 1, 'Burmy cloak form can be changed through battles in matching terrain; all cloaks are persistent team-selectable forms.'),
  -- #0412 Burmy (Trash Cloak) - Native Encounter
  (412, 41202, 10, NULL, 1, 'Burmy cloak form can be changed through battles in matching terrain; all cloaks are persistent team-selectable forms.'),
  -- #0413 Wormadam - Evolution
  (413, 41300, 10, NULL, 7, NULL),
  -- #0413 Wormadam (Sandy Cloak) - Evolution
  (413, 41301, 10, NULL, 7, 'Evolve a female Burmy with the matching cloak.'),
  -- #0413 Wormadam (Trash Cloak) - Evolution
  (413, 41302, 10, NULL, 7, 'Evolve a female Burmy with the matching cloak.'),
  -- #0414 Mothim - Evolution
  (414, 41400, 10, NULL, 7, NULL),
  -- #0415 Combee - Native Encounter
  (415, 41500, 10, NULL, 1, NULL),
  -- #0416 Vespiquen - Evolution
  (416, 41600, 10, NULL, 7, NULL),
  -- #0417 Pachirisu - Native Encounter
  (417, 41700, 10, NULL, 1, NULL),
  -- #0418 Buizel - Native Encounter
  (418, 41800, 10, NULL, 1, NULL),
  -- #0419 Floatzel - Native Encounter
  (419, 41900, 10, NULL, 1, NULL),
  -- #0420 Cherubi - Native Encounter
  (420, 42000, 10, NULL, 1, NULL),
  -- #0421 Cherrim - Evolution
  (421, 42100, 10, NULL, 7, NULL),
  -- #0422 Shellos - Raid or Special Encounter
  (422, 42200, 10, NULL, 10, 'Pokewalker route source; transferred to HeartGold/SoulSilver.'),
  -- #0423 Gastrodon - Evolution
  (423, 42300, 10, NULL, 7, 'Evolves from a Pokewalker source Pokémon in HeartGold/SoulSilver.'),
  -- #0424 Ambipom - Evolution
  (424, 42400, 10, NULL, 7, NULL),
  -- #0425 Drifloon - External Trade
  (425, 42500, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0426 Drifblim - External Trade
  (426, 42600, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0427 Buneary - Raid or Special Encounter
  (427, 42700, 10, NULL, 10, 'Special availability such as swarm, Safari Zone, radio, headbutt, or daily/conditional source.'),
  -- #0428 Lopunny - Evolution
  (428, 42800, 10, NULL, 7, NULL),
  -- #0429 Mismagius - Evolution
  (429, 42900, 10, NULL, 7, NULL),
  -- #0430 Honchkrow - Evolution
  (430, 43000, 10, NULL, 7, NULL),
  -- #0431 Glameow - External Trade
  (431, 43100, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0432 Purugly - External Trade
  (432, 43200, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0433 Chingling - Native Encounter
  (433, 43300, 10, NULL, 1, NULL),
  -- #0434 Stunky - External Trade
  (434, 43400, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0435 Skuntank - External Trade
  (435, 43500, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0436 Bronzor - Native Encounter
  (436, 43600, 10, NULL, 1, NULL),
  -- #0437 Bronzong - Native Encounter
  (437, 43700, 10, NULL, 1, NULL),
  -- #0438 Bonsly - Breeding
  (438, 43800, 10, NULL, 8, NULL),
  -- #0439 Mime Jr. - Breeding
  (439, 43900, 10, NULL, 8, NULL),
  -- #0440 Happiny - Breeding
  (440, 44000, 10, NULL, 8, NULL),
  -- #0441 Chatot - Native Encounter
  (441, 44100, 10, NULL, 1, NULL),
  -- #0442 Spiritomb - Raid or Special Encounter
  (442, 44200, 10, NULL, 10, 'Pokewalker route source; transferred to HeartGold/SoulSilver.'),
  -- #0443 Gible - Native Encounter
  (443, 44300, 10, NULL, 1, NULL),
  -- #0444 Gabite - Evolution
  (444, 44400, 10, NULL, 7, NULL),
  -- #0445 Garchomp - Evolution
  (445, 44500, 10, NULL, 7, NULL),
  -- #0446 Munchlax - Breeding
  (446, 44600, 10, NULL, 8, NULL),
  -- #0447 Riolu - Raid or Special Encounter
  (447, 44700, 10, NULL, 10, 'Safari Zone area source in HeartGold/SoulSilver.'),
  -- #0448 Lucario - Evolution
  (448, 44800, 10, NULL, 7, NULL),
  -- #0449 Hippopotas - Native Encounter
  (449, 44900, 10, NULL, 1, NULL),
  -- #0450 Hippowdon - Evolution
  (450, 45000, 10, NULL, 7, NULL),
  -- #0451 Skorupi - Native Encounter
  (451, 45100, 10, NULL, 1, NULL),
  -- #0452 Drapion - Evolution
  (452, 45200, 10, NULL, 7, NULL),
  -- #0453 Croagunk - Native Encounter
  (453, 45300, 10, NULL, 1, NULL),
  -- #0454 Toxicroak - Evolution
  (454, 45400, 10, NULL, 7, NULL),
  -- #0455 Carnivine - Native Encounter
  (455, 45500, 10, NULL, 1, NULL),
  -- #0456 Finneon - Raid or Special Encounter
  (456, 45600, 10, NULL, 10, 'Pokewalker route source; transferred to HeartGold/SoulSilver.'),
  -- #0457 Lumineon - Evolution
  (457, 45700, 10, NULL, 7, 'Evolves from a Pokewalker source Pokémon in HeartGold/SoulSilver.'),
  -- #0458 Mantyke - HeartGold - Breeding
  (458, 45800, 10, 15, 8, NULL),
  -- #0458 Mantyke - SoulSilver - External Trade
  (458, 45800, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0459 Snover - Raid or Special Encounter
  (459, 45900, 10, NULL, 10, 'Pokewalker route source; transferred to HeartGold/SoulSilver.'),
  -- #0460 Abomasnow - Evolution
  (460, 46000, 10, NULL, 7, 'Evolves from a Pokewalker source Pokémon in HeartGold/SoulSilver.'),
  -- #0461 Weavile - Evolution
  (461, 46100, 10, NULL, 7, NULL),
  -- #0462 Magnezone - External Trade
  (462, 46200, 10, NULL, 12, 'Requires moving an available source Pokémon to a compatible game where the evolution can occur, then trading it back.'),
  -- #0463 Lickilicky - Evolution
  (463, 46300, 10, NULL, 7, NULL),
  -- #0464 Rhyperior - Evolution
  (464, 46400, 10, NULL, 7, 'Trade evolution from an available source Pokémon in HeartGold/SoulSilver.'),
  -- #0465 Tangrowth - Evolution
  (465, 46500, 10, NULL, 7, NULL),
  -- #0466 Electivire - Evolution
  (466, 46600, 10, NULL, 7, 'Trade evolution from an available source Pokémon in HeartGold/SoulSilver.'),
  -- #0467 Magmortar - Evolution
  (467, 46700, 10, NULL, 7, 'Trade evolution from an available source Pokémon in HeartGold/SoulSilver.'),
  -- #0468 Togekiss - Evolution
  (468, 46800, 10, NULL, 7, NULL),
  -- #0469 Yanmega - Evolution
  (469, 46900, 10, NULL, 7, NULL),
  -- #0470 Leafeon - External Trade
  (470, 47000, 10, NULL, 12, 'Requires moving an available source Pokémon to a compatible game where the evolution can occur, then trading it back.'),
  -- #0471 Glaceon - External Trade
  (471, 47100, 10, NULL, 12, 'Requires moving an available source Pokémon to a compatible game where the evolution can occur, then trading it back.'),
  -- #0472 Gliscor - HeartGold - Evolution
  (472, 47200, 10, 15, 7, NULL),
  -- #0472 Gliscor - SoulSilver - External Trade
  (472, 47200, 10, 16, 12, 'Version source is HeartGold; available in SoulSilver by trade or compatible external transfer.'),
  -- #0473 Mamoswine - Evolution
  (473, 47300, 10, NULL, 7, NULL),
  -- #0474 Porygon-Z - Evolution
  (474, 47400, 10, NULL, 7, 'Trade evolution from an available source Pokémon in HeartGold/SoulSilver.'),
  -- #0475 Gallade - Evolution
  (475, 47500, 10, NULL, 7, NULL),
  -- #0476 Probopass - External Trade
  (476, 47600, 10, NULL, 12, 'Requires moving an available source Pokémon to a compatible game where the evolution can occur, then trading it back.'),
  -- #0477 Dusknoir - Evolution
  (477, 47700, 10, NULL, 7, 'Trade evolution from an available source Pokémon in HeartGold/SoulSilver.'),
  -- #0478 Froslass - Evolution
  (478, 47800, 10, NULL, 7, 'Evolves from a Pokewalker source Pokémon in HeartGold/SoulSilver.'),
  -- #0479 Rotom - External Trade
  (479, 47900, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0479 Rotom (Heat) - External Trade
  (479, 47901, 10, NULL, 12, 'Requires external Rotom; appliance forms can be changed in Silph Co. in HeartGold/SoulSilver.'),
  -- #0479 Rotom (Wash) - External Trade
  (479, 47902, 10, NULL, 12, 'Requires external Rotom; appliance forms can be changed in Silph Co. in HeartGold/SoulSilver.'),
  -- #0479 Rotom (Frost) - External Trade
  (479, 47903, 10, NULL, 12, 'Requires external Rotom; appliance forms can be changed in Silph Co. in HeartGold/SoulSilver.'),
  -- #0479 Rotom (Fan) - External Trade
  (479, 47904, 10, NULL, 12, 'Requires external Rotom; appliance forms can be changed in Silph Co. in HeartGold/SoulSilver.'),
  -- #0479 Rotom (Mow) - External Trade
  (479, 47905, 10, NULL, 12, 'Requires external Rotom; appliance forms can be changed in Silph Co. in HeartGold/SoulSilver.'),
  -- #0480 Uxie - External Trade
  (480, 48000, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0481 Mesprit - External Trade
  (481, 48100, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0482 Azelf - External Trade
  (482, 48200, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0483 Dialga - Event
  (483, 48300, 10, NULL, 11, 'Sinjoh Ruins event choice requiring event Arceus transferred to HeartGold/SoulSilver.'),
  -- #0484 Palkia - Event
  (484, 48400, 10, NULL, 11, 'Sinjoh Ruins event choice requiring event Arceus transferred to HeartGold/SoulSilver.'),
  -- #0485 Heatran - Event
  (485, 48500, 10, NULL, 11, 'Event/distribution-only in Generation IV; not obtainable through normal HeartGold/SoulSilver gameplay.'),
  -- #0486 Regigigas - External Trade
  (486, 48600, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0487 Giratina - Event
  (487, 48700, 10, NULL, 11, 'Sinjoh Ruins event choice requiring event Arceus transferred to HeartGold/SoulSilver.'),
  -- #0487 Giratina (Origin) - Event
  (487, 48701, 10, NULL, 11, 'Sinjoh Ruins event Giratina can hold Griseous Orb for Origin Forme in HeartGold/SoulSilver.'),
  -- #0488 Cresselia - External Trade
  (488, 48800, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0489 Phione - Breeding
  (489, 48900, 10, NULL, 8, 'Breed Manaphy with Ditto; requires Manaphy from Pokémon Ranger Egg or official distribution source.'),
  -- #0490 Manaphy - Event
  (490, 49000, 10, NULL, 11, 'Pokémon Ranger Egg or official distribution source; not obtainable through normal HeartGold/SoulSilver gameplay.'),
  -- #0491 Darkrai - Event
  (491, 49100, 10, NULL, 11, 'Event/distribution-only in Generation IV; not obtainable through normal HeartGold/SoulSilver gameplay.'),
  -- #0492 Shaymin - Event
  (492, 49200, 10, NULL, 11, 'Event/distribution-only in Generation IV; not obtainable through normal HeartGold/SoulSilver gameplay.'),
  -- #0492 Shaymin (Sky) - Event
  (492, 49201, 10, NULL, 11, 'Requires event/distribution Shaymin and Gracidea use in HeartGold/SoulSilver during valid time conditions.'),
  -- #0493 Arceus - External Trade
  (493, 49300, 10, NULL, 12, 'Not obtainable through normal HeartGold/SoulSilver gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0493 Arceus (Fighting) - External Trade
  (493, 49301, 10, NULL, 12, 'Requires compatible Arceus plus Plate item access in HeartGold/SoulSilver.'),
  -- #0493 Arceus (Flying) - External Trade
  (493, 49302, 10, NULL, 12, 'Requires compatible Arceus plus Plate item access in HeartGold/SoulSilver.'),
  -- #0493 Arceus (Poison) - External Trade
  (493, 49303, 10, NULL, 12, 'Requires compatible Arceus plus Plate item access in HeartGold/SoulSilver.'),
  -- #0493 Arceus (Ground) - External Trade
  (493, 49304, 10, NULL, 12, 'Requires compatible Arceus plus Plate item access in HeartGold/SoulSilver.'),
  -- #0493 Arceus (Rock) - External Trade
  (493, 49305, 10, NULL, 12, 'Requires compatible Arceus plus Plate item access in HeartGold/SoulSilver.'),
  -- #0493 Arceus (Bug) - External Trade
  (493, 49306, 10, NULL, 12, 'Requires compatible Arceus plus Plate item access in HeartGold/SoulSilver.'),
  -- #0493 Arceus (Ghost) - External Trade
  (493, 49307, 10, NULL, 12, 'Requires compatible Arceus plus Plate item access in HeartGold/SoulSilver.'),
  -- #0493 Arceus (Steel) - External Trade
  (493, 49308, 10, NULL, 12, 'Requires compatible Arceus plus Plate item access in HeartGold/SoulSilver.'),
  -- #0493 Arceus (Fire) - External Trade
  (493, 49309, 10, NULL, 12, 'Requires compatible Arceus plus Plate item access in HeartGold/SoulSilver.'),
  -- #0493 Arceus (Water) - External Trade
  (493, 49310, 10, NULL, 12, 'Requires compatible Arceus plus Plate item access in HeartGold/SoulSilver.'),
  -- #0493 Arceus (Grass) - External Trade
  (493, 49311, 10, NULL, 12, 'Requires compatible Arceus plus Plate item access in HeartGold/SoulSilver.'),
  -- #0493 Arceus (Electric) - External Trade
  (493, 49312, 10, NULL, 12, 'Requires compatible Arceus plus Plate item access in HeartGold/SoulSilver.'),
  -- #0493 Arceus (Psychic) - External Trade
  (493, 49313, 10, NULL, 12, 'Requires compatible Arceus plus Plate item access in HeartGold/SoulSilver.'),
  -- #0493 Arceus (Ice) - External Trade
  (493, 49314, 10, NULL, 12, 'Requires compatible Arceus plus Plate item access in HeartGold/SoulSilver.'),
  -- #0493 Arceus (Dragon) - External Trade
  (493, 49315, 10, NULL, 12, 'Requires compatible Arceus plus Plate item access in HeartGold/SoulSilver.'),
  -- #0493 Arceus (Dark) - External Trade
  (493, 49316, 10, NULL, 12, 'Requires compatible Arceus plus Plate item access in HeartGold/SoulSilver.');
