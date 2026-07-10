-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Crystal missing Pokémon, availability, Odd Egg, legendary encounter, and species location pages.
-- Cross-check: PokemonDB Crystal unobtainable Pokémon, Crystal Pokedex, Serebii Pokémon Crystal pages, and legacy Voydex Crystal availability seed.
-- Scope note: primary availability method per obtainable form; external-trade rows preserve compatible-game usability for planning.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Crystal
-- Table: reference.pokemon_availability
-- Scope: 251 version-group-wide rows.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0001 Bulbasaur - External Trade
  (1, 100, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by Time Capsule trade from a compatible Generation I game.'),
  -- #0002 Ivysaur - External Trade
  (2, 200, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by Time Capsule trade from a compatible Generation I game.'),
  -- #0003 Venusaur - External Trade
  (3, 300, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by Time Capsule trade from a compatible Generation I game.'),
  -- #0004 Charmander - External Trade
  (4, 400, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by Time Capsule trade from a compatible Generation I game.'),
  -- #0005 Charmeleon - External Trade
  (5, 500, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by Time Capsule trade from a compatible Generation I game.'),
  -- #0006 Charizard - External Trade
  (6, 600, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by Time Capsule trade from a compatible Generation I game.'),
  -- #0007 Squirtle - External Trade
  (7, 700, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by Time Capsule trade from a compatible Generation I game.'),
  -- #0008 Wartortle - External Trade
  (8, 800, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by Time Capsule trade from a compatible Generation I game.'),
  -- #0009 Blastoise - External Trade
  (9, 900, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by Time Capsule trade from a compatible Generation I game.'),
  -- #0010 Caterpie - Native Encounter
  (10, 1000, 4, NULL, 1, NULL),
  -- #0011 Metapod - Evolution
  (11, 1100, 4, NULL, 7, NULL),
  -- #0012 Butterfree - Evolution
  (12, 1200, 4, NULL, 7, NULL),
  -- #0013 Weedle - Native Encounter
  (13, 1300, 4, NULL, 1, NULL),
  -- #0014 Kakuna - Evolution
  (14, 1400, 4, NULL, 7, NULL),
  -- #0015 Beedrill - Evolution
  (15, 1500, 4, NULL, 7, NULL),
  -- #0016 Pidgey - Native Encounter
  (16, 1600, 4, NULL, 1, NULL),
  -- #0017 Pidgeotto - Evolution
  (17, 1700, 4, NULL, 7, NULL),
  -- #0018 Pidgeot - Evolution
  (18, 1800, 4, NULL, 7, NULL),
  -- #0019 Rattata - Native Encounter
  (19, 1900, 4, NULL, 1, NULL),
  -- #0020 Raticate - Evolution
  (20, 2000, 4, NULL, 7, NULL),
  -- #0021 Spearow - Native Encounter
  (21, 2100, 4, NULL, 1, NULL),
  -- #0022 Fearow - Evolution
  (22, 2200, 4, NULL, 7, NULL),
  -- #0023 Ekans - Native Encounter
  (23, 2300, 4, NULL, 1, NULL),
  -- #0024 Arbok - Evolution
  (24, 2400, 4, NULL, 7, NULL),
  -- #0025 Pikachu - Native Encounter
  (25, 2500, 4, NULL, 1, NULL),
  -- #0026 Raichu - Evolution
  (26, 2600, 4, NULL, 7, NULL),
  -- #0027 Sandshrew - Native Encounter
  (27, 2700, 4, NULL, 1, NULL),
  -- #0028 Sandslash - Evolution
  (28, 2800, 4, NULL, 7, NULL),
  -- #0029 Nidoran F - Native Encounter
  (29, 2900, 4, NULL, 1, NULL),
  -- #0030 Nidorina - Evolution
  (30, 3000, 4, NULL, 7, NULL),
  -- #0031 Nidoqueen - Evolution
  (31, 3100, 4, NULL, 7, NULL),
  -- #0032 Nidoran M - Native Encounter
  (32, 3200, 4, NULL, 1, NULL),
  -- #0033 Nidorino - Evolution
  (33, 3300, 4, NULL, 7, NULL),
  -- #0034 Nidoking - Evolution
  (34, 3400, 4, NULL, 7, NULL),
  -- #0035 Clefairy - Native Encounter
  (35, 3500, 4, NULL, 1, NULL),
  -- #0036 Clefable - Evolution
  (36, 3600, 4, NULL, 7, NULL),
  -- #0037 Vulpix - External Trade
  (37, 3700, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available by trading from a compatible Gold/Silver or Generation I game.'),
  -- #0038 Ninetales - External Trade
  (38, 3800, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available by trading from a compatible Gold/Silver or Generation I game.'),
  -- #0039 Jigglypuff - Native Encounter
  (39, 3900, 4, NULL, 1, NULL),
  -- #0040 Wigglytuff - Evolution
  (40, 4000, 4, NULL, 7, NULL),
  -- #0041 Zubat - Native Encounter
  (41, 4100, 4, NULL, 1, NULL),
  -- #0042 Golbat - Evolution
  (42, 4200, 4, NULL, 7, NULL),
  -- #0043 Oddish - Native Encounter
  (43, 4300, 4, NULL, 1, NULL),
  -- #0044 Gloom - Evolution
  (44, 4400, 4, NULL, 7, NULL),
  -- #0045 Vileplume - Evolution
  (45, 4500, 4, NULL, 7, NULL),
  -- #0046 Paras - Native Encounter
  (46, 4600, 4, NULL, 1, NULL),
  -- #0047 Parasect - Evolution
  (47, 4700, 4, NULL, 7, NULL),
  -- #0048 Venonat - Native Encounter
  (48, 4800, 4, NULL, 1, NULL),
  -- #0049 Venomoth - Evolution
  (49, 4900, 4, NULL, 7, NULL),
  -- #0050 Diglett - Native Encounter
  (50, 5000, 4, NULL, 1, NULL),
  -- #0051 Dugtrio - Evolution
  (51, 5100, 4, NULL, 7, NULL),
  -- #0052 Meowth - Native Encounter
  (52, 5200, 4, NULL, 1, NULL),
  -- #0053 Persian - Evolution
  (53, 5300, 4, NULL, 7, NULL),
  -- #0054 Psyduck - Native Encounter
  (54, 5400, 4, NULL, 1, NULL),
  -- #0055 Golduck - Evolution
  (55, 5500, 4, NULL, 7, NULL),
  -- #0056 Mankey - External Trade
  (56, 5600, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available by trading from a compatible Gold/Silver or Generation I game.'),
  -- #0057 Primeape - External Trade
  (57, 5700, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available by trading from a compatible Gold/Silver or Generation I game.'),
  -- #0058 Growlithe - Native Encounter
  (58, 5800, 4, NULL, 1, NULL),
  -- #0059 Arcanine - Evolution
  (59, 5900, 4, NULL, 7, NULL),
  -- #0060 Poliwag - Native Encounter
  (60, 6000, 4, NULL, 1, NULL),
  -- #0061 Poliwhirl - Evolution
  (61, 6100, 4, NULL, 7, NULL),
  -- #0062 Poliwrath - Evolution
  (62, 6200, 4, NULL, 7, NULL),
  -- #0063 Abra - Native Encounter
  (63, 6300, 4, NULL, 1, NULL),
  -- #0064 Kadabra - Evolution
  (64, 6400, 4, NULL, 7, NULL),
  -- #0065 Alakazam - Evolution
  (65, 6500, 4, NULL, 7, 'Requires a link trade evolution in Generation II; not obtainable by single-cartridge play alone.'),
  -- #0066 Machop - Native Encounter
  (66, 6600, 4, NULL, 1, NULL),
  -- #0067 Machoke - Evolution
  (67, 6700, 4, NULL, 7, NULL),
  -- #0068 Machamp - Evolution
  (68, 6800, 4, NULL, 7, 'Requires a link trade evolution in Generation II; not obtainable by single-cartridge play alone.'),
  -- #0069 Bellsprout - Native Encounter
  (69, 6900, 4, NULL, 1, NULL),
  -- #0070 Weepinbell - Evolution
  (70, 7000, 4, NULL, 7, NULL),
  -- #0071 Victreebel - Evolution
  (71, 7100, 4, NULL, 7, NULL),
  -- #0072 Tentacool - Native Encounter
  (72, 7200, 4, NULL, 1, NULL),
  -- #0073 Tentacruel - Evolution
  (73, 7300, 4, NULL, 7, NULL),
  -- #0074 Geodude - Native Encounter
  (74, 7400, 4, NULL, 1, NULL),
  -- #0075 Graveler - Evolution
  (75, 7500, 4, NULL, 7, NULL),
  -- #0076 Golem - Evolution
  (76, 7600, 4, NULL, 7, 'Requires a link trade evolution in Generation II; not obtainable by single-cartridge play alone.'),
  -- #0077 Ponyta - Native Encounter
  (77, 7700, 4, NULL, 1, NULL),
  -- #0078 Rapidash - Evolution
  (78, 7800, 4, NULL, 7, NULL),
  -- #0079 Slowpoke - Native Encounter
  (79, 7900, 4, NULL, 1, NULL),
  -- #0080 Slowbro - Evolution
  (80, 8000, 4, NULL, 7, NULL),
  -- #0081 Magnemite - Native Encounter
  (81, 8100, 4, NULL, 1, NULL),
  -- #0082 Magneton - Evolution
  (82, 8200, 4, NULL, 7, NULL),
  -- #0083 Farfetch'd - Native Encounter
  (83, 8300, 4, NULL, 1, NULL),
  -- #0084 Doduo - Native Encounter
  (84, 8400, 4, NULL, 1, NULL),
  -- #0085 Dodrio - Evolution
  (85, 8500, 4, NULL, 7, NULL),
  -- #0086 Seel - Native Encounter
  (86, 8600, 4, NULL, 1, NULL),
  -- #0087 Dewgong - Evolution
  (87, 8700, 4, NULL, 7, NULL),
  -- #0088 Grimer - Native Encounter
  (88, 8800, 4, NULL, 1, NULL),
  -- #0089 Muk - Evolution
  (89, 8900, 4, NULL, 7, NULL),
  -- #0090 Shellder - Native Encounter
  (90, 9000, 4, NULL, 1, NULL),
  -- #0091 Cloyster - Evolution
  (91, 9100, 4, NULL, 7, NULL),
  -- #0092 Gastly - Native Encounter
  (92, 9200, 4, NULL, 1, NULL),
  -- #0093 Haunter - Evolution
  (93, 9300, 4, NULL, 7, NULL),
  -- #0094 Gengar - Evolution
  (94, 9400, 4, NULL, 7, 'Requires a link trade evolution in Generation II; not obtainable by single-cartridge play alone.'),
  -- #0095 Onix - Native Encounter
  (95, 9500, 4, NULL, 1, NULL),
  -- #0096 Drowzee - Native Encounter
  (96, 9600, 4, NULL, 1, NULL),
  -- #0097 Hypno - Evolution
  (97, 9700, 4, NULL, 7, NULL),
  -- #0098 Krabby - Native Encounter
  (98, 9800, 4, NULL, 1, NULL),
  -- #0099 Kingler - Evolution
  (99, 9900, 4, NULL, 7, NULL),
  -- #0100 Voltorb - Native Encounter
  (100, 10000, 4, NULL, 1, NULL),
  -- #0101 Electrode - Evolution
  (101, 10100, 4, NULL, 7, NULL),
  -- #0102 Exeggcute - Native Encounter
  (102, 10200, 4, NULL, 1, NULL),
  -- #0103 Exeggutor - Evolution
  (103, 10300, 4, NULL, 7, NULL),
  -- #0104 Cubone - Native Encounter
  (104, 10400, 4, NULL, 1, NULL),
  -- #0105 Marowak - Evolution
  (105, 10500, 4, NULL, 7, NULL),
  -- #0106 Hitmonlee - Evolution
  (106, 10600, 4, NULL, 7, NULL),
  -- #0107 Hitmonchan - Evolution
  (107, 10700, 4, NULL, 7, NULL),
  -- #0108 Lickitung - Native Encounter
  (108, 10800, 4, NULL, 1, NULL),
  -- #0109 Koffing - Native Encounter
  (109, 10900, 4, NULL, 1, NULL),
  -- #0110 Weezing - Evolution
  (110, 11000, 4, NULL, 7, NULL),
  -- #0111 Rhyhorn - Native Encounter
  (111, 11100, 4, NULL, 1, NULL),
  -- #0112 Rhydon - Evolution
  (112, 11200, 4, NULL, 7, NULL),
  -- #0113 Chansey - Native Encounter
  (113, 11300, 4, NULL, 1, NULL),
  -- #0114 Tangela - Native Encounter
  (114, 11400, 4, NULL, 1, NULL),
  -- #0115 Kangaskhan - Native Encounter
  (115, 11500, 4, NULL, 1, NULL),
  -- #0116 Horsea - Native Encounter
  (116, 11600, 4, NULL, 1, NULL),
  -- #0117 Seadra - Evolution
  (117, 11700, 4, NULL, 7, NULL),
  -- #0118 Goldeen - Native Encounter
  (118, 11800, 4, NULL, 1, NULL),
  -- #0119 Seaking - Evolution
  (119, 11900, 4, NULL, 7, NULL),
  -- #0120 Staryu - Native Encounter
  (120, 12000, 4, NULL, 1, NULL),
  -- #0121 Starmie - Evolution
  (121, 12100, 4, NULL, 7, NULL),
  -- #0122 Mr. Mime - Native Encounter
  (122, 12200, 4, NULL, 1, NULL),
  -- #0123 Scyther - Native Encounter
  (123, 12300, 4, NULL, 1, NULL),
  -- #0124 Jynx - Native Encounter
  (124, 12400, 4, NULL, 1, NULL),
  -- #0125 Electabuzz - Native Encounter
  (125, 12500, 4, NULL, 1, NULL),
  -- #0126 Magmar - Native Encounter
  (126, 12600, 4, NULL, 1, NULL),
  -- #0127 Pinsir - Native Encounter
  (127, 12700, 4, NULL, 1, NULL),
  -- #0128 Tauros - Native Encounter
  (128, 12800, 4, NULL, 1, NULL),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 4, NULL, 1, NULL),
  -- #0130 Gyarados - Static Encounter
  (130, 13000, 4, NULL, 2, NULL),
  -- #0131 Lapras - Static Encounter
  (131, 13100, 4, NULL, 2, NULL),
  -- #0132 Ditto - Native Encounter
  (132, 13200, 4, NULL, 1, NULL),
  -- #0133 Eevee - Gift
  (133, 13300, 4, NULL, 4, NULL),
  -- #0134 Vaporeon - Evolution
  (134, 13400, 4, NULL, 7, NULL),
  -- #0135 Jolteon - Evolution
  (135, 13500, 4, NULL, 7, NULL),
  -- #0136 Flareon - Evolution
  (136, 13600, 4, NULL, 7, NULL),
  -- #0137 Porygon - Gift
  (137, 13700, 4, NULL, 4, NULL),
  -- #0138 Omanyte - External Trade
  (138, 13800, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by Time Capsule trade from a compatible Generation I game.'),
  -- #0139 Omastar - External Trade
  (139, 13900, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by Time Capsule trade from a compatible Generation I game.'),
  -- #0140 Kabuto - External Trade
  (140, 14000, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by Time Capsule trade from a compatible Generation I game.'),
  -- #0141 Kabutops - External Trade
  (141, 14100, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by Time Capsule trade from a compatible Generation I game.'),
  -- #0142 Aerodactyl - External Trade
  (142, 14200, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by Time Capsule trade from a compatible Generation I game.'),
  -- #0143 Snorlax - Static Encounter
  (143, 14300, 4, NULL, 2, NULL),
  -- #0144 Articuno - External Trade
  (144, 14400, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by Time Capsule trade from a compatible Generation I game.'),
  -- #0145 Zapdos - External Trade
  (145, 14500, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by Time Capsule trade from a compatible Generation I game.'),
  -- #0146 Moltres - External Trade
  (146, 14600, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by Time Capsule trade from a compatible Generation I game.'),
  -- #0147 Dratini - Native Encounter
  (147, 14700, 4, NULL, 1, NULL),
  -- #0148 Dragonair - Evolution
  (148, 14800, 4, NULL, 7, NULL),
  -- #0149 Dragonite - Evolution
  (149, 14900, 4, NULL, 7, NULL),
  -- #0150 Mewtwo - External Trade
  (150, 15000, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by Time Capsule trade from a compatible Generation I game.'),
  -- #0151 Mew - Event
  (151, 15100, 4, NULL, 11, 'Event-exclusive in Generation II; no normal Crystal encounter. A legitimate Generation I event origin can be brought forward by Time Capsule.'),
  -- #0152 Chikorita - Starter
  (152, 15200, 4, NULL, 3, NULL),
  -- #0153 Bayleef - Evolution
  (153, 15300, 4, NULL, 7, NULL),
  -- #0154 Meganium - Evolution
  (154, 15400, 4, NULL, 7, NULL),
  -- #0155 Cyndaquil - Starter
  (155, 15500, 4, NULL, 3, NULL),
  -- #0156 Quilava - Evolution
  (156, 15600, 4, NULL, 7, NULL),
  -- #0157 Typhlosion - Evolution
  (157, 15700, 4, NULL, 7, NULL),
  -- #0158 Totodile - Starter
  (158, 15800, 4, NULL, 3, NULL),
  -- #0159 Croconaw - Evolution
  (159, 15900, 4, NULL, 7, NULL),
  -- #0160 Feraligatr - Evolution
  (160, 16000, 4, NULL, 7, NULL),
  -- #0161 Sentret - Native Encounter
  (161, 16100, 4, NULL, 1, NULL),
  -- #0162 Furret - Evolution
  (162, 16200, 4, NULL, 7, NULL),
  -- #0163 Hoothoot - Native Encounter
  (163, 16300, 4, NULL, 1, NULL),
  -- #0164 Noctowl - Evolution
  (164, 16400, 4, NULL, 7, NULL),
  -- #0165 Ledyba - Native Encounter
  (165, 16500, 4, NULL, 1, NULL),
  -- #0166 Ledian - Evolution
  (166, 16600, 4, NULL, 7, NULL),
  -- #0167 Spinarak - Native Encounter
  (167, 16700, 4, NULL, 1, NULL),
  -- #0168 Ariados - Evolution
  (168, 16800, 4, NULL, 7, NULL),
  -- #0169 Crobat - Evolution
  (169, 16900, 4, NULL, 7, NULL),
  -- #0170 Chinchou - Native Encounter
  (170, 17000, 4, NULL, 1, NULL),
  -- #0171 Lanturn - Evolution
  (171, 17100, 4, NULL, 7, NULL),
  -- #0172 Pichu - Gift
  (172, 17200, 4, NULL, 4, 'Can hatch from Crystal''s one-time Odd Egg; also breedable when a compatible parent is available.'),
  -- #0173 Cleffa - Gift
  (173, 17300, 4, NULL, 4, 'Can hatch from Crystal''s one-time Odd Egg; also breedable when a compatible parent is available.'),
  -- #0174 Igglybuff - Gift
  (174, 17400, 4, NULL, 4, 'Can hatch from Crystal''s one-time Odd Egg; also breedable when a compatible parent is available.'),
  -- #0175 Togepi - Gift
  (175, 17500, 4, NULL, 4, 'Egg gift from Mr. Pokémon during the story.'),
  -- #0176 Togetic - Evolution
  (176, 17600, 4, NULL, 7, NULL),
  -- #0177 Natu - Native Encounter
  (177, 17700, 4, NULL, 1, NULL),
  -- #0178 Xatu - Evolution
  (178, 17800, 4, NULL, 7, NULL),
  -- #0179 Mareep - External Trade
  (179, 17900, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by trading from a compatible Gold/Silver game.'),
  -- #0180 Flaaffy - External Trade
  (180, 18000, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by trading from a compatible Gold/Silver game.'),
  -- #0181 Ampharos - External Trade
  (181, 18100, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by trading from a compatible Gold/Silver game.'),
  -- #0182 Bellossom - Evolution
  (182, 18200, 4, NULL, 7, NULL),
  -- #0183 Marill - Native Encounter
  (183, 18300, 4, NULL, 1, NULL),
  -- #0184 Azumarill - Evolution
  (184, 18400, 4, NULL, 7, NULL),
  -- #0185 Sudowoodo - Static Encounter
  (185, 18500, 4, NULL, 2, NULL),
  -- #0186 Politoed - Evolution
  (186, 18600, 4, NULL, 7, 'Requires a link trade evolution in Generation II; not obtainable by single-cartridge play alone.'),
  -- #0187 Hoppip - Native Encounter
  (187, 18700, 4, NULL, 1, NULL),
  -- #0188 Skiploom - Evolution
  (188, 18800, 4, NULL, 7, NULL),
  -- #0189 Jumpluff - Evolution
  (189, 18900, 4, NULL, 7, NULL),
  -- #0190 Aipom - Native Encounter
  (190, 19000, 4, NULL, 1, NULL),
  -- #0191 Sunkern - Native Encounter
  (191, 19100, 4, NULL, 1, NULL),
  -- #0192 Sunflora - Evolution
  (192, 19200, 4, NULL, 7, NULL),
  -- #0193 Yanma - Native Encounter
  (193, 19300, 4, NULL, 1, NULL),
  -- #0194 Wooper - Native Encounter
  (194, 19400, 4, NULL, 1, NULL),
  -- #0195 Quagsire - Evolution
  (195, 19500, 4, NULL, 7, NULL),
  -- #0196 Espeon - Evolution
  (196, 19600, 4, NULL, 7, NULL),
  -- #0197 Umbreon - Evolution
  (197, 19700, 4, NULL, 7, NULL),
  -- #0198 Murkrow - Native Encounter
  (198, 19800, 4, NULL, 1, NULL),
  -- #0199 Slowking - Evolution
  (199, 19900, 4, NULL, 7, 'Requires a link trade evolution in Generation II; not obtainable by single-cartridge play alone.'),
  -- #0200 Misdreavus - Native Encounter
  (200, 20000, 4, NULL, 1, NULL),
  -- #0201 Unown - Native Encounter
  (201, 20100, 4, NULL, 1, 'Current reference scope tracks Unown default form only; letter forms are excluded by the cosmetic-form policy.'),
  -- #0202 Wobbuffet - Native Encounter
  (202, 20200, 4, NULL, 1, NULL),
  -- #0203 Girafarig - External Trade
  (203, 20300, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by trading from a compatible Gold/Silver game.'),
  -- #0204 Pineco - Native Encounter
  (204, 20400, 4, NULL, 1, NULL),
  -- #0205 Forretress - Evolution
  (205, 20500, 4, NULL, 7, NULL),
  -- #0206 Dunsparce - Native Encounter
  (206, 20600, 4, NULL, 1, NULL),
  -- #0207 Gligar - Native Encounter
  (207, 20700, 4, NULL, 1, NULL),
  -- #0208 Steelix - Evolution
  (208, 20800, 4, NULL, 7, 'Requires a link trade evolution in Generation II; not obtainable by single-cartridge play alone.'),
  -- #0209 Snubbull - Native Encounter
  (209, 20900, 4, NULL, 1, NULL),
  -- #0210 Granbull - Evolution
  (210, 21000, 4, NULL, 7, NULL),
  -- #0211 Qwilfish - Native Encounter
  (211, 21100, 4, NULL, 1, NULL),
  -- #0212 Scizor - Evolution
  (212, 21200, 4, NULL, 7, 'Requires a link trade evolution in Generation II; not obtainable by single-cartridge play alone.'),
  -- #0213 Shuckle - Gift
  (213, 21300, 4, NULL, 4, NULL),
  -- #0214 Heracross - Native Encounter
  (214, 21400, 4, NULL, 1, NULL),
  -- #0215 Sneasel - Native Encounter
  (215, 21500, 4, NULL, 1, NULL),
  -- #0216 Teddiursa - Native Encounter
  (216, 21600, 4, NULL, 1, NULL),
  -- #0217 Ursaring - Evolution
  (217, 21700, 4, NULL, 7, NULL),
  -- #0218 Slugma - Native Encounter
  (218, 21800, 4, NULL, 1, NULL),
  -- #0219 Magcargo - Evolution
  (219, 21900, 4, NULL, 7, NULL),
  -- #0220 Swinub - Native Encounter
  (220, 22000, 4, NULL, 1, NULL),
  -- #0221 Piloswine - Evolution
  (221, 22100, 4, NULL, 7, NULL),
  -- #0222 Corsola - Native Encounter
  (222, 22200, 4, NULL, 1, NULL),
  -- #0223 Remoraid - External Trade
  (223, 22300, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by trading from a compatible Gold/Silver game.'),
  -- #0224 Octillery - External Trade
  (224, 22400, 4, NULL, 12, 'Unavailable through normal Crystal gameplay; available only by trading from a compatible Gold/Silver game.'),
  -- #0225 Delibird - Native Encounter
  (225, 22500, 4, NULL, 1, NULL),
  -- #0226 Mantine - Native Encounter
  (226, 22600, 4, NULL, 1, NULL),
  -- #0227 Skarmory - Native Encounter
  (227, 22700, 4, NULL, 1, NULL),
  -- #0228 Houndour - Native Encounter
  (228, 22800, 4, NULL, 1, 'Kanto postgame night encounter; not available during the Johto badge journey.'),
  -- #0229 Houndoom - Evolution
  (229, 22900, 4, NULL, 7, NULL),
  -- #0230 Kingdra - Evolution
  (230, 23000, 4, NULL, 7, 'Requires a link trade evolution in Generation II; not obtainable by single-cartridge play alone.'),
  -- #0231 Phanpy - Native Encounter
  (231, 23100, 4, NULL, 1, NULL),
  -- #0232 Donphan - Evolution
  (232, 23200, 4, NULL, 7, NULL),
  -- #0233 Porygon2 - Evolution
  (233, 23300, 4, NULL, 7, 'Requires a link trade evolution in Generation II; not obtainable by single-cartridge play alone.'),
  -- #0234 Stantler - Native Encounter
  (234, 23400, 4, NULL, 1, NULL),
  -- #0235 Smeargle - Native Encounter
  (235, 23500, 4, NULL, 1, NULL),
  -- #0236 Tyrogue - Gift
  (236, 23600, 4, NULL, 4, 'Gift from the Karate King in Mt. Mortar; can also hatch from Crystal''s one-time Odd Egg.'),
  -- #0237 Hitmontop - Evolution
  (237, 23700, 4, NULL, 7, NULL),
  -- #0238 Smoochum - Gift
  (238, 23800, 4, NULL, 4, 'Can hatch from Crystal''s one-time Odd Egg; also breedable when a compatible parent is available.'),
  -- #0239 Elekid - Gift
  (239, 23900, 4, NULL, 4, 'Can hatch from Crystal''s one-time Odd Egg; also breedable when a compatible parent is available.'),
  -- #0240 Magby - Gift
  (240, 24000, 4, NULL, 4, 'Can hatch from Crystal''s one-time Odd Egg; also breedable when a compatible parent is available.'),
  -- #0241 Miltank - Native Encounter
  (241, 24100, 4, NULL, 1, NULL),
  -- #0242 Blissey - Evolution
  (242, 24200, 4, NULL, 7, NULL),
  -- #0243 Raikou - Roaming Encounter
  (243, 24300, 4, NULL, 9, NULL),
  -- #0244 Entei - Roaming Encounter
  (244, 24400, 4, NULL, 9, NULL),
  -- #0245 Suicune - Static Encounter
  (245, 24500, 4, NULL, 2, 'Crystal storyline static encounter in Tin Tower after receiving the Clear Bell.'),
  -- #0246 Larvitar - Native Encounter
  (246, 24600, 4, NULL, 1, 'Postgame Mt. Silver availability; not available during the Johto badge journey.'),
  -- #0247 Pupitar - Evolution
  (247, 24700, 4, NULL, 7, NULL),
  -- #0248 Tyranitar - Evolution
  (248, 24800, 4, NULL, 7, NULL),
  -- #0249 Lugia - Static Encounter
  (249, 24900, 4, NULL, 2, 'Postgame Whirl Islands encounter after receiving the Silver Wing in Pewter City.'),
  -- #0250 Ho-Oh - Static Encounter
  (250, 25000, 4, NULL, 2, 'Tin Tower encounter after entering the Hall of Fame, catching all three Legendary beasts, and receiving the Rainbow Wing.'),
  -- #0251 Celebi - Event
  (251, 25100, 4, NULL, 11, 'Original Crystal: GS Ball/event-distribution only. Virtual Console Crystal makes the GS Ball event available after entering the Hall of Fame.');
