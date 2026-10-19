-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by availability and Ultra Sun/Ultra Moon availability notes.
-- Cross-check: PokemonDB Ultra Sun/Ultra Moon version exclusives, Serebii Ultra Sun/Ultra Moon version exclusives, Bulbapedia Ultra Warp Ride, Island Scan, in-game trade, gift, and form pages.
-- Scope note: primary availability method per obtainable form; external-source rows preserve compatible-game usability for planning.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Ultra Sun / Ultra Moon
-- Table: reference.pokemon_availability
-- Scope: curated Ultra Sun/Ultra Moon-compatible species and forms through #807, excluding LGPE-era Meltan/Melmetal; includes game-specific rows for version sources and curated persistent form rows for Alolan forms, Basculin, Meowstic, Rotom appliances, Arceus Plates, Deoxys, Giratina, Shaymin, Therian forms, Kyurem fusions, Genesect Drives, Zygarde 10%, Oricorio, Own Tempo Rockruff, Lycanroc Midnight/Dusk, Silvally Memories, and Necrozma fusions.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0001 Bulbasaur - Raid or Special Encounter
  (1, 100, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0002 Ivysaur - Evolution
  (2, 200, 16, NULL, 7, NULL),
  -- #0003 Venusaur - Evolution
  (3, 300, 16, NULL, 7, NULL),
  -- #0004 Charmander - Raid or Special Encounter
  (4, 400, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0005 Charmeleon - Evolution
  (5, 500, 16, NULL, 7, NULL),
  -- #0006 Charizard - Evolution
  (6, 600, 16, NULL, 7, NULL),
  -- #0007 Squirtle - Raid or Special Encounter
  (7, 700, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0008 Wartortle - Evolution
  (8, 800, 16, NULL, 7, NULL),
  -- #0009 Blastoise - Evolution
  (9, 900, 16, NULL, 7, NULL),
  -- #0010 Caterpie - Native Encounter
  (10, 1000, 16, NULL, 1, NULL),
  -- #0011 Metapod - Native Encounter
  (11, 1100, 16, NULL, 1, NULL),
  -- #0012 Butterfree - Native Encounter
  (12, 1200, 16, NULL, 1, NULL),
  -- #0013 Weedle - Breeding
  (13, 1300, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0014 Kakuna - Breeding
  (14, 1400, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0015 Beedrill - Raid or Special Encounter
  (15, 1500, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0016 Pidgey - Breeding
  (16, 1600, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0017 Pidgeotto - Breeding
  (17, 1700, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0018 Pidgeot - Raid or Special Encounter
  (18, 1800, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0019 Rattata - Transfer Only
  (19, 1900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0019 Alolan Rattata - Native Encounter
  (19, 1901, 16, NULL, 1, NULL),
  -- #0020 Raticate - Transfer Only
  (20, 2000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0020 Alolan Raticate - Native Encounter
  (20, 2001, 16, NULL, 1, NULL),
  -- #0021 Spearow - Native Encounter
  (21, 2100, 16, NULL, 1, NULL),
  -- #0022 Fearow - Native Encounter
  (22, 2200, 16, NULL, 1, NULL),
  -- #0023 Ekans - Native Encounter
  (23, 2300, 16, NULL, 1, NULL),
  -- #0024 Arbok - In-Game Trade
  (24, 2400, 16, NULL, 5, 'NPC in-game trade source in USUM.'),
  -- #0025 Pikachu - Native Encounter
  (25, 2500, 16, NULL, 1, NULL),
  -- #0026 Raichu - Evolution
  (26, 2600, 16, NULL, 7, NULL),
  -- #0026 Alolan Raichu - Evolution
  (26, 2601, 16, NULL, 7, NULL),
  -- #0027 Sandshrew - Transfer Only
  (27, 2700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0027 Alolan Sandshrew - Ultra Sun - External Trade
  (27, 2701, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0027 Alolan Sandshrew - Ultra Moon - Native Encounter
  (27, 2701, 16, 28, 1, NULL),
  -- #0028 Sandslash - Transfer Only
  (28, 2800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0028 Alolan Sandslash - Ultra Sun - External Trade
  (28, 2801, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0028 Alolan Sandslash - Ultra Moon - Evolution
  (28, 2801, 16, 28, 7, NULL),
  -- #0029 Nidoran F - Breeding
  (29, 2900, 16, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0030 Nidorina - Breeding
  (30, 3000, 16, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0031 Nidoqueen - Breeding
  (31, 3100, 16, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0032 Nidoran M - Breeding
  (32, 3200, 16, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0033 Nidorino - Breeding
  (33, 3300, 16, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0034 Nidoking - Event
  (34, 3400, 16, NULL, 11, 'Official Ultra Sun/Ultra Moon event or distribution source.'),
  -- #0035 Clefairy - Native Encounter
  (35, 3500, 16, NULL, 1, NULL),
  -- #0036 Clefable - Evolution
  (36, 3600, 16, NULL, 7, NULL),
  -- #0037 Vulpix - Transfer Only
  (37, 3700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0037 Alolan Vulpix - Ultra Sun - Native Encounter
  (37, 3701, 16, 27, 1, NULL),
  -- #0037 Alolan Vulpix - Ultra Moon - External Trade
  (37, 3701, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0038 Ninetales - Transfer Only
  (38, 3800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0038 Alolan Ninetales - Ultra Sun - Evolution
  (38, 3801, 16, 27, 7, NULL),
  -- #0038 Alolan Ninetales - Ultra Moon - External Trade
  (38, 3801, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0039 Jigglypuff - Native Encounter
  (39, 3900, 16, NULL, 1, NULL),
  -- #0040 Wigglytuff - Evolution
  (40, 4000, 16, NULL, 7, NULL),
  -- #0041 Zubat - Native Encounter
  (41, 4100, 16, NULL, 1, NULL),
  -- #0042 Golbat - Native Encounter
  (42, 4200, 16, NULL, 1, NULL),
  -- #0043 Oddish - Transfer Only
  (43, 4300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0044 Gloom - Transfer Only
  (44, 4400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0045 Vileplume - Transfer Only
  (45, 4500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0046 Paras - Native Encounter
  (46, 4600, 16, NULL, 1, NULL),
  -- #0047 Parasect - Native Encounter
  (47, 4700, 16, NULL, 1, NULL),
  -- #0048 Venonat - Transfer Only
  (48, 4800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0049 Venomoth - Transfer Only
  (49, 4900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0050 Diglett - Transfer Only
  (50, 5000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0050 Alolan Diglett - Native Encounter
  (50, 5001, 16, NULL, 1, NULL),
  -- #0051 Dugtrio - Transfer Only
  (51, 5100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0051 Alolan Dugtrio - Native Encounter
  (51, 5101, 16, NULL, 1, NULL),
  -- #0052 Meowth - Transfer Only
  (52, 5200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0052 Alolan Meowth - Native Encounter
  (52, 5201, 16, NULL, 1, NULL),
  -- #0053 Persian - Transfer Only
  (53, 5300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0053 Alolan Persian - Native Encounter
  (53, 5301, 16, NULL, 1, NULL),
  -- #0054 Psyduck - Native Encounter
  (54, 5400, 16, NULL, 1, NULL),
  -- #0055 Golduck - Native Encounter
  (55, 5500, 16, NULL, 1, NULL),
  -- #0056 Mankey - Native Encounter
  (56, 5600, 16, NULL, 1, NULL),
  -- #0057 Primeape - Native Encounter
  (57, 5700, 16, NULL, 1, NULL),
  -- #0058 Growlithe - Native Encounter
  (58, 5800, 16, NULL, 1, NULL),
  -- #0059 Arcanine - Evolution
  (59, 5900, 16, NULL, 7, NULL),
  -- #0060 Poliwag - Native Encounter
  (60, 6000, 16, NULL, 1, NULL),
  -- #0061 Poliwhirl - Native Encounter
  (61, 6100, 16, NULL, 1, NULL),
  -- #0062 Poliwrath - Native Encounter
  (62, 6200, 16, NULL, 1, NULL),
  -- #0063 Abra - Native Encounter
  (63, 6300, 16, NULL, 1, NULL),
  -- #0064 Kadabra - Evolution
  (64, 6400, 16, NULL, 7, NULL),
  -- #0065 Alakazam - Transfer Only
  (65, 6500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0066 Machop - Native Encounter
  (66, 6600, 16, NULL, 1, NULL),
  -- #0067 Machoke - Native Encounter
  (67, 6700, 16, NULL, 1, NULL),
  -- #0068 Machamp - Transfer Only
  (68, 6800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0069 Bellsprout - Transfer Only
  (69, 6900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0070 Weepinbell - Transfer Only
  (70, 7000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0071 Victreebel - Transfer Only
  (71, 7100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0072 Tentacool - Native Encounter
  (72, 7200, 16, NULL, 1, NULL),
  -- #0073 Tentacruel - Native Encounter
  (73, 7300, 16, NULL, 1, NULL),
  -- #0074 Geodude - Transfer Only
  (74, 7400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0074 Alolan Geodude - Breeding
  (74, 7401, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0075 Graveler - Transfer Only
  (75, 7500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0075 Alolan Graveler - Native Encounter
  (75, 7501, 16, NULL, 1, NULL),
  -- #0076 Golem - Transfer Only
  (76, 7600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0076 Alolan Golem - Transfer Only
  (76, 7601, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0077 Ponyta - Transfer Only
  (77, 7700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0078 Rapidash - Transfer Only
  (78, 7800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0079 Slowpoke - Native Encounter
  (79, 7900, 16, NULL, 1, NULL),
  -- #0080 Slowbro - Native Encounter
  (80, 8000, 16, NULL, 1, NULL),
  -- #0081 Magnemite - Native Encounter
  (81, 8100, 16, NULL, 1, NULL),
  -- #0082 Magneton - Evolution
  (82, 8200, 16, NULL, 7, NULL),
  -- #0083 Farfetch'd - Transfer Only
  (83, 8300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0084 Doduo - Transfer Only
  (84, 8400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0085 Dodrio - Transfer Only
  (85, 8500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0086 Seel - Native Encounter
  (86, 8600, 16, NULL, 1, NULL),
  -- #0087 Dewgong - Evolution
  (87, 8700, 16, NULL, 7, NULL),
  -- #0088 Grimer - Transfer Only
  (88, 8800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0088 Alolan Grimer - Native Encounter
  (88, 8801, 16, NULL, 1, NULL),
  -- #0089 Muk - Transfer Only
  (89, 8900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0089 Alolan Muk - Evolution
  (89, 8901, 16, NULL, 7, NULL),
  -- #0090 Shellder - Native Encounter
  (90, 9000, 16, NULL, 1, NULL),
  -- #0091 Cloyster - Evolution
  (91, 9100, 16, NULL, 7, NULL),
  -- #0092 Gastly - Native Encounter
  (92, 9200, 16, NULL, 1, NULL),
  -- #0093 Haunter - Native Encounter
  (93, 9300, 16, NULL, 1, NULL),
  -- #0094 Gengar - Native Encounter
  (94, 9400, 16, NULL, 1, NULL),
  -- #0095 Onix - Raid or Special Encounter
  (95, 9500, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0096 Drowzee - Native Encounter
  (96, 9600, 16, NULL, 1, NULL),
  -- #0097 Hypno - Native Encounter
  (97, 9700, 16, NULL, 1, NULL),
  -- #0098 Krabby - Transfer Only
  (98, 9800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0099 Kingler - Transfer Only
  (99, 9900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0100 Voltorb - Breeding
  (100, 10000, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0101 Electrode - Native Encounter
  (101, 10100, 16, NULL, 1, NULL),
  -- #0102 Exeggcute - Native Encounter
  (102, 10200, 16, NULL, 1, NULL),
  -- #0103 Exeggutor - Evolution
  (103, 10300, 16, NULL, 7, NULL),
  -- #0103 Alolan Exeggutor - Native Encounter
  (103, 10301, 16, NULL, 1, NULL),
  -- #0104 Cubone - Native Encounter
  (104, 10400, 16, NULL, 1, NULL),
  -- #0105 Marowak - Evolution
  (105, 10500, 16, NULL, 7, NULL),
  -- #0105 Alolan Marowak - Ultra Sun - Gift
  (105, 10501, 16, 27, 4, 'Totem-sized gift source in Ultra Sun; Ultra Moon can obtain Alolan Marowak by evolution.'),
  -- #0105 Alolan Marowak - Ultra Moon - Evolution
  (105, 10501, 16, 28, 7, NULL),
  -- #0106 Hitmonlee - Transfer Only
  (106, 10600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0107 Hitmonchan - Transfer Only
  (107, 10700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0108 Lickitung - Native Encounter
  (108, 10800, 16, NULL, 1, NULL),
  -- #0109 Koffing - Transfer Only
  (109, 10900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0110 Weezing - Transfer Only
  (110, 11000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0111 Rhyhorn - Raid or Special Encounter
  (111, 11100, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0112 Rhydon - Evolution
  (112, 11200, 16, NULL, 7, NULL),
  -- #0113 Chansey - Native Encounter
  (113, 11300, 16, NULL, 1, NULL),
  -- #0114 Tangela - Transfer Only
  (114, 11400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0115 Kangaskhan - Native Encounter
  (115, 11500, 16, NULL, 1, NULL),
  -- #0116 Horsea - Raid or Special Encounter
  (116, 11600, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0117 Seadra - Evolution
  (117, 11700, 16, NULL, 7, NULL),
  -- #0118 Goldeen - Native Encounter
  (118, 11800, 16, NULL, 1, NULL),
  -- #0119 Seaking - Native Encounter
  (119, 11900, 16, NULL, 1, NULL),
  -- #0120 Staryu - Native Encounter
  (120, 12000, 16, NULL, 1, NULL),
  -- #0121 Starmie - Native Encounter
  (121, 12100, 16, NULL, 1, NULL),
  -- #0122 Mr. Mime - Native Encounter
  (122, 12200, 16, NULL, 1, NULL),
  -- #0123 Scyther - Native Encounter
  (123, 12300, 16, NULL, 1, NULL),
  -- #0124 Jynx - Native Encounter
  (124, 12400, 16, NULL, 1, NULL),
  -- #0125 Electabuzz - Native Encounter
  (125, 12500, 16, NULL, 1, NULL),
  -- #0126 Magmar - Native Encounter
  (126, 12600, 16, NULL, 1, NULL),
  -- #0127 Pinsir - Native Encounter
  (127, 12700, 16, NULL, 1, NULL),
  -- #0128 Tauros - Native Encounter
  (128, 12800, 16, NULL, 1, NULL),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 16, NULL, 1, NULL),
  -- #0130 Gyarados - Evolution
  (130, 13000, 16, NULL, 7, NULL),
  -- #0131 Lapras - Native Encounter
  (131, 13100, 16, NULL, 1, NULL),
  -- #0132 Ditto - Native Encounter
  (132, 13200, 16, NULL, 1, NULL),
  -- #0133 Eevee - Native Encounter
  (133, 13300, 16, NULL, 1, NULL),
  -- #0134 Vaporeon - Evolution
  (134, 13400, 16, NULL, 7, NULL),
  -- #0135 Jolteon - Evolution
  (135, 13500, 16, NULL, 7, NULL),
  -- #0136 Flareon - Evolution
  (136, 13600, 16, NULL, 7, NULL),
  -- #0137 Porygon - Gift
  (137, 13700, 16, NULL, 4, 'Gift Porygon received after entering the Hall of Fame in USUM.'),
  -- #0138 Omanyte - Fossil Restoration
  (138, 13800, 16, NULL, 6, 'Available by restoring a fossil obtainable in USUM.'),
  -- #0139 Omastar - Evolution
  (139, 13900, 16, NULL, 7, NULL),
  -- #0140 Kabuto - Fossil Restoration
  (140, 14000, 16, NULL, 6, 'Available by restoring a fossil obtainable in USUM.'),
  -- #0141 Kabutops - Evolution
  (141, 14100, 16, NULL, 7, NULL),
  -- #0142 Aerodactyl - Fossil Restoration
  (142, 14200, 16, NULL, 6, 'Available by restoring a fossil obtainable in USUM.'),
  -- #0143 Snorlax - Native Encounter
  (143, 14300, 16, NULL, 1, NULL),
  -- #0144 Articuno - Raid or Special Encounter
  (144, 14400, 16, NULL, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0145 Zapdos - Raid or Special Encounter
  (145, 14500, 16, NULL, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0146 Moltres - Raid or Special Encounter
  (146, 14600, 16, NULL, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0147 Dratini - Native Encounter
  (147, 14700, 16, NULL, 1, NULL),
  -- #0148 Dragonair - Native Encounter
  (148, 14800, 16, NULL, 1, NULL),
  -- #0149 Dragonite - Native Encounter
  (149, 14900, 16, NULL, 1, NULL),
  -- #0150 Mewtwo - Raid or Special Encounter
  (150, 15000, 16, NULL, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0151 Mew - Transfer Only
  (151, 15100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0152 Chikorita - Transfer Only
  (152, 15200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0153 Bayleef - Transfer Only
  (153, 15300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0154 Meganium - Transfer Only
  (154, 15400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0155 Cyndaquil - Transfer Only
  (155, 15500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0156 Quilava - Transfer Only
  (156, 15600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0157 Typhlosion - Transfer Only
  (157, 15700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0158 Totodile - Transfer Only
  (158, 15800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0159 Croconaw - Transfer Only
  (159, 15900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0160 Feraligatr - Transfer Only
  (160, 16000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0161 Sentret - Transfer Only
  (161, 16100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0162 Furret - Transfer Only
  (162, 16200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0163 Hoothoot - Native Encounter
  (163, 16300, 16, NULL, 1, NULL),
  -- #0164 Noctowl - Native Encounter
  (164, 16400, 16, NULL, 1, NULL),
  -- #0165 Ledyba - Native Encounter
  (165, 16500, 16, NULL, 1, NULL),
  -- #0166 Ledian - Native Encounter
  (166, 16600, 16, NULL, 1, NULL),
  -- #0167 Spinarak - Native Encounter
  (167, 16700, 16, NULL, 1, NULL),
  -- #0168 Ariados - Native Encounter
  (168, 16800, 16, NULL, 1, NULL),
  -- #0169 Crobat - Native Encounter
  (169, 16900, 16, NULL, 1, NULL),
  -- #0170 Chinchou - Native Encounter
  (170, 17000, 16, NULL, 1, NULL),
  -- #0171 Lanturn - Native Encounter
  (171, 17100, 16, NULL, 1, NULL),
  -- #0172 Pichu - Native Encounter
  (172, 17200, 16, NULL, 1, NULL),
  -- #0173 Cleffa - Native Encounter
  (173, 17300, 16, NULL, 1, NULL),
  -- #0174 Igglybuff - Native Encounter
  (174, 17400, 16, NULL, 1, NULL),
  -- #0175 Togepi - Transfer Only
  (175, 17500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0176 Togetic - Transfer Only
  (176, 17600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0177 Natu - Native Encounter
  (177, 17700, 16, NULL, 1, NULL),
  -- #0178 Xatu - Native Encounter
  (178, 17800, 16, NULL, 1, NULL),
  -- #0179 Mareep - Native Encounter
  (179, 17900, 16, NULL, 1, NULL),
  -- #0180 Flaaffy - Native Encounter
  (180, 18000, 16, NULL, 1, NULL),
  -- #0181 Ampharos - Evolution
  (181, 18100, 16, NULL, 7, NULL),
  -- #0182 Bellossom - Transfer Only
  (182, 18200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0183 Marill - Transfer Only
  (183, 18300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0184 Azumarill - Transfer Only
  (184, 18400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0185 Sudowoodo - Native Encounter
  (185, 18500, 16, NULL, 1, NULL),
  -- #0186 Politoed - Native Encounter
  (186, 18600, 16, NULL, 1, NULL),
  -- #0187 Hoppip - Transfer Only
  (187, 18700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0188 Skiploom - Transfer Only
  (188, 18800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0189 Jumpluff - Transfer Only
  (189, 18900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0190 Aipom - Native Encounter
  (190, 19000, 16, NULL, 1, NULL),
  -- #0191 Sunkern - Transfer Only
  (191, 19100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0192 Sunflora - Transfer Only
  (192, 19200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0193 Yanma - Breeding
  (193, 19300, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0194 Wooper - Breeding
  (194, 19400, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0195 Quagsire - Native Encounter
  (195, 19500, 16, NULL, 1, NULL),
  -- #0196 Espeon - Native Encounter
  (196, 19600, 16, NULL, 1, NULL),
  -- #0197 Umbreon - Native Encounter
  (197, 19700, 16, NULL, 1, NULL),
  -- #0198 Murkrow - Native Encounter
  (198, 19800, 16, NULL, 1, NULL),
  -- #0199 Slowking - Native Encounter
  (199, 19900, 16, NULL, 1, NULL),
  -- #0200 Misdreavus - Native Encounter
  (200, 20000, 16, NULL, 1, NULL),
  -- #0201 Unown - Transfer Only
  (201, 20100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0202 Wobbuffet - Transfer Only
  (202, 20200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0203 Girafarig - Transfer Only
  (203, 20300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0204 Pineco - Native Encounter
  (204, 20400, 16, NULL, 1, NULL),
  -- #0205 Forretress - Evolution
  (205, 20500, 16, NULL, 7, NULL),
  -- #0206 Dunsparce - Native Encounter
  (206, 20600, 16, NULL, 1, NULL),
  -- #0207 Gligar - Transfer Only
  (207, 20700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0208 Steelix - Transfer Only
  (208, 20800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0209 Snubbull - Native Encounter
  (209, 20900, 16, NULL, 1, NULL),
  -- #0210 Granbull - Native Encounter
  (210, 21000, 16, NULL, 1, NULL),
  -- #0211 Qwilfish - Transfer Only
  (211, 21100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0212 Scizor - Transfer Only
  (212, 21200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0213 Shuckle - Transfer Only
  (213, 21300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0214 Heracross - Native Encounter
  (214, 21400, 16, NULL, 1, NULL),
  -- #0215 Sneasel - Native Encounter
  (215, 21500, 16, NULL, 1, NULL),
  -- #0216 Teddiursa - Transfer Only
  (216, 21600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0217 Ursaring - Transfer Only
  (217, 21700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0218 Slugma - Breeding
  (218, 21800, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0219 Magcargo - Native Encounter
  (219, 21900, 16, NULL, 1, NULL),
  -- #0220 Swinub - Raid or Special Encounter
  (220, 22000, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0221 Piloswine - Evolution
  (221, 22100, 16, NULL, 7, NULL),
  -- #0222 Corsola - Native Encounter
  (222, 22200, 16, NULL, 1, NULL),
  -- #0223 Remoraid - Native Encounter
  (223, 22300, 16, NULL, 1, NULL),
  -- #0224 Octillery - Native Encounter
  (224, 22400, 16, NULL, 1, NULL),
  -- #0225 Delibird - Native Encounter
  (225, 22500, 16, NULL, 1, NULL),
  -- #0226 Mantine - Evolution
  (226, 22600, 16, NULL, 7, NULL),
  -- #0227 Skarmory - Native Encounter
  (227, 22700, 16, NULL, 1, NULL),
  -- #0228 Houndour - Ultra Sun - Native Encounter
  (228, 22800, 16, 27, 1, NULL),
  -- #0228 Houndour - Ultra Moon - External Trade
  (228, 22800, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0229 Houndoom - Ultra Sun - Native Encounter
  (229, 22900, 16, 27, 1, NULL),
  -- #0229 Houndoom - Ultra Moon - External Trade
  (229, 22900, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0230 Kingdra - Transfer Only
  (230, 23000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0231 Phanpy - Transfer Only
  (231, 23100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0232 Donphan - Transfer Only
  (232, 23200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0233 Porygon2 - Transfer Only
  (233, 23300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0234 Stantler - Transfer Only
  (234, 23400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0235 Smeargle - Native Encounter
  (235, 23500, 16, NULL, 1, NULL),
  -- #0236 Tyrogue - Transfer Only
  (236, 23600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0237 Hitmontop - Transfer Only
  (237, 23700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0238 Smoochum - Native Encounter
  (238, 23800, 16, NULL, 1, NULL),
  -- #0239 Elekid - Native Encounter
  (239, 23900, 16, NULL, 1, NULL),
  -- #0240 Magby - Native Encounter
  (240, 24000, 16, NULL, 1, NULL),
  -- #0241 Miltank - Native Encounter
  (241, 24100, 16, NULL, 1, NULL),
  -- #0242 Blissey - Native Encounter
  (242, 24200, 16, NULL, 1, NULL),
  -- #0243 Raikou - Ultra Sun - Raid or Special Encounter
  (243, 24300, 16, 27, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0243 Raikou - Ultra Moon - External Trade
  (243, 24300, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0244 Entei - Ultra Sun - External Trade
  (244, 24400, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0244 Entei - Ultra Moon - Raid or Special Encounter
  (244, 24400, 16, 28, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0245 Suicune - Raid or Special Encounter
  (245, 24500, 16, NULL, 10, 'Conditional Ultra Warp Ride encounter requiring Raikou and Entei in USUM.'),
  -- #0246 Larvitar - Native Encounter
  (246, 24600, 16, NULL, 1, NULL),
  -- #0247 Pupitar - Evolution
  (247, 24700, 16, NULL, 7, NULL),
  -- #0248 Tyranitar - Evolution
  (248, 24800, 16, NULL, 7, NULL),
  -- #0249 Lugia - Ultra Sun - External Trade
  (249, 24900, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0249 Lugia - Ultra Moon - Raid or Special Encounter
  (249, 24900, 16, 28, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0250 Ho-Oh - Ultra Sun - Raid or Special Encounter
  (250, 25000, 16, 27, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0250 Ho-Oh - Ultra Moon - External Trade
  (250, 25000, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0251 Celebi - Event
  (251, 25100, 16, NULL, 11, 'Official Ultra Sun/Ultra Moon event or distribution source.'),
  -- #0252 Treecko - Breeding
  (252, 25200, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0253 Grovyle - Raid or Special Encounter
  (253, 25300, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0254 Sceptile - Evolution
  (254, 25400, 16, NULL, 7, NULL),
  -- #0255 Torchic - Breeding
  (255, 25500, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0256 Combusken - Raid or Special Encounter
  (256, 25600, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0257 Blaziken - Evolution
  (257, 25700, 16, NULL, 7, NULL),
  -- #0258 Mudkip - Breeding
  (258, 25800, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0259 Marshtomp - Raid or Special Encounter
  (259, 25900, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0260 Swampert - Evolution
  (260, 26000, 16, NULL, 7, NULL),
  -- #0261 Poochyena - Breeding
  (261, 26100, 16, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0262 Mightyena - Event
  (262, 26200, 16, NULL, 11, 'Official Ultra Sun/Ultra Moon event or distribution source.'),
  -- #0263 Zigzagoon - Transfer Only
  (263, 26300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0264 Linoone - Transfer Only
  (264, 26400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0265 Wurmple - Transfer Only
  (265, 26500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0266 Silcoon - Transfer Only
  (266, 26600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0267 Beautifly - Transfer Only
  (267, 26700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0268 Cascoon - Transfer Only
  (268, 26800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0269 Dustox - Transfer Only
  (269, 26900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0270 Lotad - Breeding
  (270, 27000, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0271 Lombre - Native Encounter
  (271, 27100, 16, NULL, 1, NULL),
  -- #0272 Ludicolo - Evolution
  (272, 27200, 16, NULL, 7, NULL),
  -- #0273 Seedot - Breeding
  (273, 27300, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0274 Nuzleaf - Native Encounter
  (274, 27400, 16, NULL, 1, NULL),
  -- #0275 Shiftry - Evolution
  (275, 27500, 16, NULL, 7, NULL),
  -- #0276 Taillow - Breeding
  (276, 27600, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0277 Swellow - Native Encounter
  (277, 27700, 16, NULL, 1, NULL),
  -- #0278 Wingull - Native Encounter
  (278, 27800, 16, NULL, 1, NULL),
  -- #0279 Pelipper - Native Encounter
  (279, 27900, 16, NULL, 1, NULL),
  -- #0280 Ralts - Raid or Special Encounter
  (280, 28000, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0281 Kirlia - Evolution
  (281, 28100, 16, NULL, 7, NULL),
  -- #0282 Gardevoir - Evolution
  (282, 28200, 16, NULL, 7, NULL),
  -- #0283 Surskit - Native Encounter
  (283, 28300, 16, NULL, 1, NULL),
  -- #0284 Masquerain - Native Encounter
  (284, 28400, 16, NULL, 1, NULL),
  -- #0285 Shroomish - Transfer Only
  (285, 28500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0286 Breloom - Transfer Only
  (286, 28600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0287 Slakoth - Transfer Only
  (287, 28700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0288 Vigoroth - Transfer Only
  (288, 28800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0289 Slaking - Transfer Only
  (289, 28900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0290 Nincada - Transfer Only
  (290, 29000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0291 Ninjask - Transfer Only
  (291, 29100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0292 Shedinja - Transfer Only
  (292, 29200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0293 Whismur - Transfer Only
  (293, 29300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0294 Loudred - Transfer Only
  (294, 29400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0295 Exploud - Transfer Only
  (295, 29500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0296 Makuhita - Native Encounter
  (296, 29600, 16, NULL, 1, NULL),
  -- #0297 Hariyama - Native Encounter
  (297, 29700, 16, NULL, 1, NULL),
  -- #0298 Azurill - Transfer Only
  (298, 29800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0299 Nosepass - Native Encounter
  (299, 29900, 16, NULL, 1, NULL),
  -- #0300 Skitty - Transfer Only
  (300, 30000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0301 Delcatty - Transfer Only
  (301, 30100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0302 Sableye - Native Encounter
  (302, 30200, 16, NULL, 1, NULL),
  -- #0303 Mawile - Native Encounter
  (303, 30300, 16, NULL, 1, NULL),
  -- #0304 Aron - Breeding
  (304, 30400, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0305 Lairon - Breeding
  (305, 30500, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0306 Aggron - Raid or Special Encounter
  (306, 30600, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0307 Meditite - Breeding
  (307, 30700, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0308 Medicham - Native Encounter
  (308, 30800, 16, NULL, 1, NULL),
  -- #0309 Electrike - Ultra Sun - External Trade
  (309, 30900, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0309 Electrike - Ultra Moon - Native Encounter
  (309, 30900, 16, 28, 1, NULL),
  -- #0310 Manectric - Ultra Sun - External Trade
  (310, 31000, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0310 Manectric - Ultra Moon - Native Encounter
  (310, 31000, 16, 28, 1, NULL),
  -- #0311 Plusle - Transfer Only
  (311, 31100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0312 Minun - Transfer Only
  (312, 31200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0313 Volbeat - Transfer Only
  (313, 31300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0314 Illumise - Transfer Only
  (314, 31400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0315 Roselia - Transfer Only
  (315, 31500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0316 Gulpin - Transfer Only
  (316, 31600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0317 Swalot - Transfer Only
  (317, 31700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0318 Carvanha - Native Encounter
  (318, 31800, 16, NULL, 1, NULL),
  -- #0319 Sharpedo - Native Encounter
  (319, 31900, 16, NULL, 1, NULL),
  -- #0320 Wailmer - Native Encounter
  (320, 32000, 16, NULL, 1, NULL),
  -- #0321 Wailord - Native Encounter
  (321, 32100, 16, NULL, 1, NULL),
  -- #0322 Numel - Transfer Only
  (322, 32200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0323 Camerupt - Transfer Only
  (323, 32300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0324 Torkoal - Native Encounter
  (324, 32400, 16, NULL, 1, NULL),
  -- #0325 Spoink - Breeding
  (325, 32500, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0326 Grumpig - Native Encounter
  (326, 32600, 16, NULL, 1, NULL),
  -- #0327 Spinda - Native Encounter
  (327, 32700, 16, NULL, 1, NULL),
  -- #0328 Trapinch - Native Encounter
  (328, 32800, 16, NULL, 1, NULL),
  -- #0329 Vibrava - Evolution
  (329, 32900, 16, NULL, 7, NULL),
  -- #0330 Flygon - Evolution
  (330, 33000, 16, NULL, 7, NULL),
  -- #0331 Cacnea - Transfer Only
  (331, 33100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0332 Cacturne - Transfer Only
  (332, 33200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0333 Swablu - Breeding
  (333, 33300, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0334 Altaria - Native Encounter
  (334, 33400, 16, NULL, 1, NULL),
  -- #0335 Zangoose - Transfer Only
  (335, 33500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0336 Seviper - Transfer Only
  (336, 33600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0337 Lunatone - Transfer Only
  (337, 33700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0338 Solrock - Transfer Only
  (338, 33800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0339 Barboach - Native Encounter
  (339, 33900, 16, NULL, 1, NULL),
  -- #0340 Whiscash - Evolution
  (340, 34000, 16, NULL, 7, NULL),
  -- #0341 Corphish - Native Encounter
  (341, 34100, 16, NULL, 1, NULL),
  -- #0342 Crawdaunt - Native Encounter
  (342, 34200, 16, NULL, 1, NULL),
  -- #0343 Baltoy - Ultra Sun - External Trade
  (343, 34300, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0343 Baltoy - Ultra Moon - Native Encounter
  (343, 34300, 16, 28, 1, NULL),
  -- #0344 Claydol - Ultra Sun - External Trade
  (344, 34400, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0344 Claydol - Ultra Moon - Evolution
  (344, 34400, 16, 28, 7, NULL),
  -- #0345 Lileep - Fossil Restoration
  (345, 34500, 16, NULL, 6, 'Available by restoring a fossil obtainable in USUM.'),
  -- #0346 Cradily - Evolution
  (346, 34600, 16, NULL, 7, NULL),
  -- #0347 Anorith - Fossil Restoration
  (347, 34700, 16, NULL, 6, 'Available by restoring a fossil obtainable in USUM.'),
  -- #0348 Armaldo - Evolution
  (348, 34800, 16, NULL, 7, NULL),
  -- #0349 Feebas - Native Encounter
  (349, 34900, 16, NULL, 1, NULL),
  -- #0350 Milotic - Transfer Only
  (350, 35000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0351 Castform - Native Encounter
  (351, 35100, 16, NULL, 1, NULL),
  -- #0352 Kecleon - Native Encounter
  (352, 35200, 16, NULL, 1, NULL),
  -- #0353 Shuppet - Native Encounter
  (353, 35300, 16, NULL, 1, NULL),
  -- #0354 Banette - Native Encounter
  (354, 35400, 16, NULL, 1, NULL),
  -- #0355 Duskull - Transfer Only
  (355, 35500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0356 Dusclops - Transfer Only
  (356, 35600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0357 Tropius - Native Encounter
  (357, 35700, 16, NULL, 1, NULL),
  -- #0358 Chimecho - Transfer Only
  (358, 35800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0359 Absol - Native Encounter
  (359, 35900, 16, NULL, 1, NULL),
  -- #0360 Wynaut - Transfer Only
  (360, 36000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0361 Snorunt - Native Encounter
  (361, 36100, 16, NULL, 1, NULL),
  -- #0362 Glalie - Native Encounter
  (362, 36200, 16, NULL, 1, NULL),
  -- #0363 Spheal - Raid or Special Encounter
  (363, 36300, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0364 Sealeo - Evolution
  (364, 36400, 16, NULL, 7, NULL),
  -- #0365 Walrein - Evolution
  (365, 36500, 16, NULL, 7, NULL),
  -- #0366 Clamperl - Native Encounter
  (366, 36600, 16, NULL, 1, NULL),
  -- #0367 Huntail - Native Encounter
  (367, 36700, 16, NULL, 1, NULL),
  -- #0368 Gorebyss - Native Encounter
  (368, 36800, 16, NULL, 1, NULL),
  -- #0369 Relicanth - Native Encounter
  (369, 36900, 16, NULL, 1, NULL),
  -- #0370 Luvdisc - Native Encounter
  (370, 37000, 16, NULL, 1, NULL),
  -- #0371 Bagon - Native Encounter
  (371, 37100, 16, NULL, 1, NULL),
  -- #0372 Shelgon - Native Encounter
  (372, 37200, 16, NULL, 1, NULL),
  -- #0373 Salamence - Native Encounter
  (373, 37300, 16, NULL, 1, NULL),
  -- #0374 Beldum - Native Encounter
  (374, 37400, 16, NULL, 1, NULL),
  -- #0375 Metang - Evolution
  (375, 37500, 16, NULL, 7, NULL),
  -- #0376 Metagross - Evolution
  (376, 37600, 16, NULL, 7, NULL),
  -- #0377 Regirock - Raid or Special Encounter
  (377, 37700, 16, NULL, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0378 Regice - Raid or Special Encounter
  (378, 37800, 16, NULL, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0379 Registeel - Raid or Special Encounter
  (379, 37900, 16, NULL, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0380 Latias - Ultra Sun - External Trade
  (380, 38000, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0380 Latias - Ultra Moon - Raid or Special Encounter
  (380, 38000, 16, 28, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0381 Latios - Ultra Sun - Raid or Special Encounter
  (381, 38100, 16, 27, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0381 Latios - Ultra Moon - External Trade
  (381, 38100, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0382 Kyogre - Ultra Sun - External Trade
  (382, 38200, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0382 Kyogre - Ultra Moon - Raid or Special Encounter
  (382, 38200, 16, 28, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0383 Groudon - Ultra Sun - Raid or Special Encounter
  (383, 38300, 16, 27, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0383 Groudon - Ultra Moon - External Trade
  (383, 38300, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0384 Rayquaza - Raid or Special Encounter
  (384, 38400, 16, NULL, 10, 'Conditional Ultra Warp Ride encounter requiring Kyogre and Groudon in USUM.'),
  -- #0385 Jirachi - Event
  (385, 38500, 16, NULL, 11, 'Official Ultra Sun/Ultra Moon event or distribution source.'),
  -- #0386 Deoxys - Transfer Only
  (386, 38600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0386 Deoxys (Attack) - Transfer Only
  (386, 38601, 16, NULL, 13, 'Requires transferred Deoxys and Meteorite form access in USUM.'),
  -- #0386 Deoxys (Defense) - Transfer Only
  (386, 38602, 16, NULL, 13, 'Requires transferred Deoxys and Meteorite form access in USUM.'),
  -- #0386 Deoxys (Speed) - Transfer Only
  (386, 38603, 16, NULL, 13, 'Requires transferred Deoxys and Meteorite form access in USUM.'),
  -- #0387 Turtwig - Breeding
  (387, 38700, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0388 Grotle - Raid or Special Encounter
  (388, 38800, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0389 Torterra - Evolution
  (389, 38900, 16, NULL, 7, NULL),
  -- #0390 Chimchar - Breeding
  (390, 39000, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0391 Monferno - Raid or Special Encounter
  (391, 39100, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0392 Infernape - Evolution
  (392, 39200, 16, NULL, 7, NULL),
  -- #0393 Piplup - Breeding
  (393, 39300, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0394 Prinplup - Raid or Special Encounter
  (394, 39400, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0395 Empoleon - Evolution
  (395, 39500, 16, NULL, 7, NULL),
  -- #0396 Starly - Transfer Only
  (396, 39600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0397 Staravia - Transfer Only
  (397, 39700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0398 Staraptor - Transfer Only
  (398, 39800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0399 Bidoof - Transfer Only
  (399, 39900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0400 Bibarel - Transfer Only
  (400, 40000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0401 Kricketot - Transfer Only
  (401, 40100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0402 Kricketune - Transfer Only
  (402, 40200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0403 Shinx - Transfer Only
  (403, 40300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0404 Luxio - Transfer Only
  (404, 40400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0405 Luxray - Transfer Only
  (405, 40500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0406 Budew - Transfer Only
  (406, 40600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0407 Roserade - Transfer Only
  (407, 40700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0408 Cranidos - Fossil Restoration
  (408, 40800, 16, NULL, 6, 'Available by restoring a fossil obtainable in USUM.'),
  -- #0409 Rampardos - Evolution
  (409, 40900, 16, NULL, 7, NULL),
  -- #0410 Shieldon - Fossil Restoration
  (410, 41000, 16, NULL, 6, 'Available by restoring a fossil obtainable in USUM.'),
  -- #0411 Bastiodon - Evolution
  (411, 41100, 16, NULL, 7, NULL),
  -- #0412 Burmy - Transfer Only
  (412, 41200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0413 Wormadam - Transfer Only
  (413, 41300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0414 Mothim - Transfer Only
  (414, 41400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0415 Combee - Transfer Only
  (415, 41500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0416 Vespiquen - Transfer Only
  (416, 41600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0417 Pachirisu - Transfer Only
  (417, 41700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0418 Buizel - Breeding
  (418, 41800, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0419 Floatzel - Native Encounter
  (419, 41900, 16, NULL, 1, NULL),
  -- #0420 Cherubi - Transfer Only
  (420, 42000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0421 Cherrim - Transfer Only
  (421, 42100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0422 Shellos - In-Game Trade
  (422, 42200, 16, NULL, 5, 'NPC in-game trade source in USUM.'),
  -- #0423 Gastrodon - Evolution
  (423, 42300, 16, NULL, 7, NULL),
  -- #0424 Ambipom - Native Encounter
  (424, 42400, 16, NULL, 1, NULL),
  -- #0425 Drifloon - Native Encounter
  (425, 42500, 16, NULL, 1, NULL),
  -- #0426 Drifblim - Evolution
  (426, 42600, 16, NULL, 7, NULL),
  -- #0427 Buneary - Native Encounter
  (427, 42700, 16, NULL, 1, NULL),
  -- #0428 Lopunny - Native Encounter
  (428, 42800, 16, NULL, 1, NULL),
  -- #0429 Mismagius - Evolution
  (429, 42900, 16, NULL, 7, NULL),
  -- #0430 Honchkrow - Native Encounter
  (430, 43000, 16, NULL, 1, NULL),
  -- #0431 Glameow - Transfer Only
  (431, 43100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0432 Purugly - Transfer Only
  (432, 43200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0433 Chingling - Transfer Only
  (433, 43300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0434 Stunky - Transfer Only
  (434, 43400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0435 Skuntank - Transfer Only
  (435, 43500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0436 Bronzor - Transfer Only
  (436, 43600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0437 Bronzong - Transfer Only
  (437, 43700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0438 Bonsly - Native Encounter
  (438, 43800, 16, NULL, 1, NULL),
  -- #0439 Mime Jr. - Native Encounter
  (439, 43900, 16, NULL, 1, NULL),
  -- #0440 Happiny - Native Encounter
  (440, 44000, 16, NULL, 1, NULL),
  -- #0441 Chatot - Transfer Only
  (441, 44100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0442 Spiritomb - Transfer Only
  (442, 44200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0443 Gible - Breeding
  (443, 44300, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0444 Gabite - Native Encounter
  (444, 44400, 16, NULL, 1, NULL),
  -- #0445 Garchomp - Evolution
  (445, 44500, 16, NULL, 7, NULL),
  -- #0446 Munchlax - Native Encounter
  (446, 44600, 16, NULL, 1, NULL),
  -- #0447 Riolu - Native Encounter
  (447, 44700, 16, NULL, 1, NULL),
  -- #0448 Lucario - Native Encounter
  (448, 44800, 16, NULL, 1, NULL),
  -- #0449 Hippopotas - Breeding
  (449, 44900, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0450 Hippowdon - Native Encounter
  (450, 45000, 16, NULL, 1, NULL),
  -- #0451 Skorupi - Breeding
  (451, 45100, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0452 Drapion - Native Encounter
  (452, 45200, 16, NULL, 1, NULL),
  -- #0453 Croagunk - Transfer Only
  (453, 45300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0454 Toxicroak - Transfer Only
  (454, 45400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0455 Carnivine - Transfer Only
  (455, 45500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0456 Finneon - Native Encounter
  (456, 45600, 16, NULL, 1, NULL),
  -- #0457 Lumineon - Native Encounter
  (457, 45700, 16, NULL, 1, NULL),
  -- #0458 Mantyke - Native Encounter
  (458, 45800, 16, NULL, 1, NULL),
  -- #0459 Snover - Breeding
  (459, 45900, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0460 Abomasnow - Native Encounter
  (460, 46000, 16, NULL, 1, NULL),
  -- #0461 Weavile - Evolution
  (461, 46100, 16, NULL, 7, NULL),
  -- #0462 Magnezone - Evolution
  (462, 46200, 16, NULL, 7, NULL),
  -- #0463 Lickilicky - Evolution
  (463, 46300, 16, NULL, 7, NULL),
  -- #0464 Rhyperior - Transfer Only
  (464, 46400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0465 Tangrowth - Transfer Only
  (465, 46500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0466 Electivire - Transfer Only
  (466, 46600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0467 Magmortar - Transfer Only
  (467, 46700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0468 Togekiss - Transfer Only
  (468, 46800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0469 Yanmega - Native Encounter
  (469, 46900, 16, NULL, 1, NULL),
  -- #0470 Leafeon - Evolution
  (470, 47000, 16, NULL, 7, NULL),
  -- #0471 Glaceon - Evolution
  (471, 47100, 16, NULL, 7, NULL),
  -- #0472 Gliscor - Transfer Only
  (472, 47200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0473 Mamoswine - Evolution
  (473, 47300, 16, NULL, 7, NULL),
  -- #0474 Porygon-Z - Transfer Only
  (474, 47400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0475 Gallade - Evolution
  (475, 47500, 16, NULL, 7, NULL),
  -- #0476 Probopass - Evolution
  (476, 47600, 16, NULL, 7, NULL),
  -- #0477 Dusknoir - Transfer Only
  (477, 47700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0478 Froslass - Evolution
  (478, 47800, 16, NULL, 7, NULL),
  -- #0479 Rotom - Raid or Special Encounter
  (479, 47900, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0479 Rotom (Heat) - Raid or Special Encounter
  (479, 47901, 16, NULL, 10, 'Requires Rotom from Island Scan and appliance form access in USUM.'),
  -- #0479 Rotom (Wash) - Raid or Special Encounter
  (479, 47902, 16, NULL, 10, 'Requires Rotom from Island Scan and appliance form access in USUM.'),
  -- #0479 Rotom (Frost) - Raid or Special Encounter
  (479, 47903, 16, NULL, 10, 'Requires Rotom from Island Scan and appliance form access in USUM.'),
  -- #0479 Rotom (Fan) - Raid or Special Encounter
  (479, 47904, 16, NULL, 10, 'Requires Rotom from Island Scan and appliance form access in USUM.'),
  -- #0479 Rotom (Mow) - Raid or Special Encounter
  (479, 47905, 16, NULL, 10, 'Requires Rotom from Island Scan and appliance form access in USUM.'),
  -- #0480 Uxie - Raid or Special Encounter
  (480, 48000, 16, NULL, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0481 Mesprit - Raid or Special Encounter
  (481, 48100, 16, NULL, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0482 Azelf - Raid or Special Encounter
  (482, 48200, 16, NULL, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0483 Dialga - Ultra Sun - Raid or Special Encounter
  (483, 48300, 16, 27, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0483 Dialga - Ultra Moon - External Trade
  (483, 48300, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0484 Palkia - Ultra Sun - External Trade
  (484, 48400, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0484 Palkia - Ultra Moon - Raid or Special Encounter
  (484, 48400, 16, 28, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0485 Heatran - Ultra Sun - Raid or Special Encounter
  (485, 48500, 16, 27, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0485 Heatran - Ultra Moon - External Trade
  (485, 48500, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0486 Regigigas - Ultra Sun - External Trade
  (486, 48600, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0486 Regigigas - Ultra Moon - Raid or Special Encounter
  (486, 48600, 16, 28, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0487 Giratina - Raid or Special Encounter
  (487, 48700, 16, NULL, 10, 'Conditional Ultra Warp Ride encounter requiring Dialga and Palkia in USUM.'),
  -- #0487 Giratina (Origin) - Raid or Special Encounter
  (487, 48701, 16, NULL, 10, 'Conditional Ultra Warp Ride encounter requiring Dialga and Palkia in USUM.'),
  -- #0488 Cresselia - Raid or Special Encounter
  (488, 48800, 16, NULL, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0489 Phione - Breeding
  (489, 48900, 16, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0490 Manaphy - Event
  (490, 49000, 16, NULL, 11, 'Official Ultra Sun/Ultra Moon event or distribution source.'),
  -- #0491 Darkrai - Event
  (491, 49100, 16, NULL, 11, 'Official Ultra Sun/Ultra Moon event or distribution source.'),
  -- #0492 Shaymin - Event
  (492, 49200, 16, NULL, 11, 'Official Ultra Sun/Ultra Moon event or distribution source.'),
  -- #0492 Shaymin (Sky) - Event
  (492, 49201, 16, NULL, 11, 'Requires official event/distribution Shaymin and Gracidea form access in USUM.'),
  -- #0493 Arceus - Event
  (493, 49300, 16, NULL, 11, 'Official Ultra Sun/Ultra Moon event or distribution source.'),
  -- #0493 Arceus (Fighting) - Event
  (493, 49301, 16, NULL, 11, 'Requires official event/distribution Arceus and the matching Plate in USUM.'),
  -- #0493 Arceus (Flying) - Event
  (493, 49302, 16, NULL, 11, 'Requires official event/distribution Arceus and the matching Plate in USUM.'),
  -- #0493 Arceus (Poison) - Event
  (493, 49303, 16, NULL, 11, 'Requires official event/distribution Arceus and the matching Plate in USUM.'),
  -- #0493 Arceus (Ground) - Event
  (493, 49304, 16, NULL, 11, 'Requires official event/distribution Arceus and the matching Plate in USUM.'),
  -- #0493 Arceus (Rock) - Event
  (493, 49305, 16, NULL, 11, 'Requires official event/distribution Arceus and the matching Plate in USUM.'),
  -- #0493 Arceus (Bug) - Event
  (493, 49306, 16, NULL, 11, 'Requires official event/distribution Arceus and the matching Plate in USUM.'),
  -- #0493 Arceus (Ghost) - Event
  (493, 49307, 16, NULL, 11, 'Requires official event/distribution Arceus and the matching Plate in USUM.'),
  -- #0493 Arceus (Steel) - Event
  (493, 49308, 16, NULL, 11, 'Requires official event/distribution Arceus and the matching Plate in USUM.'),
  -- #0493 Arceus (Fire) - Event
  (493, 49309, 16, NULL, 11, 'Requires official event/distribution Arceus and the matching Plate in USUM.'),
  -- #0493 Arceus (Water) - Event
  (493, 49310, 16, NULL, 11, 'Requires official event/distribution Arceus and the matching Plate in USUM.'),
  -- #0493 Arceus (Grass) - Event
  (493, 49311, 16, NULL, 11, 'Requires official event/distribution Arceus and the matching Plate in USUM.'),
  -- #0493 Arceus (Electric) - Event
  (493, 49312, 16, NULL, 11, 'Requires official event/distribution Arceus and the matching Plate in USUM.'),
  -- #0493 Arceus (Psychic) - Event
  (493, 49313, 16, NULL, 11, 'Requires official event/distribution Arceus and the matching Plate in USUM.'),
  -- #0493 Arceus (Ice) - Event
  (493, 49314, 16, NULL, 11, 'Requires official event/distribution Arceus and the matching Plate in USUM.'),
  -- #0493 Arceus (Dragon) - Event
  (493, 49315, 16, NULL, 11, 'Requires official event/distribution Arceus and the matching Plate in USUM.'),
  -- #0493 Arceus (Dark) - Event
  (493, 49316, 16, NULL, 11, 'Requires official event/distribution Arceus and the matching Plate in USUM.'),
  -- #0493 Arceus (Fairy) - Event
  (493, 49317, 16, NULL, 11, 'Requires official event/distribution Arceus and the matching Plate in USUM.'),
  -- #0494 Victini - Transfer Only
  (494, 49400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0495 Snivy - Transfer Only
  (495, 49500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0496 Servine - Transfer Only
  (496, 49600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0497 Serperior - Transfer Only
  (497, 49700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0498 Tepig - Transfer Only
  (498, 49800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0499 Pignite - Transfer Only
  (499, 49900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0500 Emboar - Transfer Only
  (500, 50000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0501 Oshawott - Transfer Only
  (501, 50100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0502 Dewott - Transfer Only
  (502, 50200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0503 Samurott - Transfer Only
  (503, 50300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0504 Patrat - Transfer Only
  (504, 50400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0505 Watchog - Transfer Only
  (505, 50500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0506 Lillipup - Native Encounter
  (506, 50600, 16, NULL, 1, NULL),
  -- #0507 Herdier - Evolution
  (507, 50700, 16, NULL, 7, NULL),
  -- #0508 Stoutland - Evolution
  (508, 50800, 16, NULL, 7, NULL),
  -- #0509 Purrloin - Transfer Only
  (509, 50900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0510 Liepard - Transfer Only
  (510, 51000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0511 Pansage - Transfer Only
  (511, 51100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0512 Simisage - Transfer Only
  (512, 51200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0513 Pansear - Transfer Only
  (513, 51300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0514 Simisear - Transfer Only
  (514, 51400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0515 Panpour - Transfer Only
  (515, 51500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0516 Simipour - Transfer Only
  (516, 51600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0517 Munna - Transfer Only
  (517, 51700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0518 Musharna - Transfer Only
  (518, 51800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0519 Pidove - Transfer Only
  (519, 51900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0520 Tranquill - Transfer Only
  (520, 52000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0521 Unfezant - Transfer Only
  (521, 52100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0522 Blitzle - Transfer Only
  (522, 52200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0523 Zebstrika - Transfer Only
  (523, 52300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0524 Roggenrola - Native Encounter
  (524, 52400, 16, NULL, 1, NULL),
  -- #0525 Boldore - Native Encounter
  (525, 52500, 16, NULL, 1, NULL),
  -- #0526 Gigalith - Transfer Only
  (526, 52600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0527 Woobat - Transfer Only
  (527, 52700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0528 Swoobat - Transfer Only
  (528, 52800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0529 Drilbur - Transfer Only
  (529, 52900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0530 Excadrill - Transfer Only
  (530, 53000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0531 Audino - Native Encounter
  (531, 53100, 16, NULL, 1, NULL),
  -- #0532 Timburr - Transfer Only
  (532, 53200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0533 Gurdurr - Transfer Only
  (533, 53300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0534 Conkeldurr - Transfer Only
  (534, 53400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0535 Tympole - Transfer Only
  (535, 53500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0536 Palpitoad - Transfer Only
  (536, 53600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0537 Seismitoad - Transfer Only
  (537, 53700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0538 Throh - Transfer Only
  (538, 53800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0539 Sawk - Transfer Only
  (539, 53900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0540 Sewaddle - Breeding
  (540, 54000, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0541 Swadloon - Breeding
  (541, 54100, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0542 Leavanny - Raid or Special Encounter
  (542, 54200, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0543 Venipede - Transfer Only
  (543, 54300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0544 Whirlipede - Transfer Only
  (544, 54400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0545 Scolipede - Transfer Only
  (545, 54500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0546 Cottonee - Ultra Sun - Native Encounter
  (546, 54600, 16, 27, 1, NULL),
  -- #0546 Cottonee - Ultra Moon - External Trade
  (546, 54600, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0547 Whimsicott - Ultra Sun - Evolution
  (547, 54700, 16, 27, 7, NULL),
  -- #0547 Whimsicott - Ultra Moon - External Trade
  (547, 54700, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0548 Petilil - Ultra Sun - External Trade
  (548, 54800, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0548 Petilil - Ultra Moon - Native Encounter
  (548, 54800, 16, 28, 1, NULL),
  -- #0549 Lilligant - Ultra Sun - External Trade
  (549, 54900, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0549 Lilligant - Ultra Moon - Evolution
  (549, 54900, 16, 28, 7, NULL),
  -- #0550 Basculin - Ultra Sun - Native Encounter
  (550, 55000, 16, 27, 1, NULL),
  -- #0550 Basculin - Ultra Moon - External Trade
  (550, 55000, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0550 Basculin (Blue-Striped) - Ultra Sun - External Trade
  (550, 55001, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0550 Basculin (Blue-Striped) - Ultra Moon - Native Encounter
  (550, 55001, 16, 28, 1, NULL),
  -- #0551 Sandile - Breeding
  (551, 55100, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0552 Krokorok - Native Encounter
  (552, 55200, 16, NULL, 1, NULL),
  -- #0553 Krookodile - Evolution
  (553, 55300, 16, NULL, 7, NULL),
  -- #0554 Darumaka - Transfer Only
  (554, 55400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0555 Darmanitan - Transfer Only
  (555, 55500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0556 Maractus - Transfer Only
  (556, 55600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0557 Dwebble - Breeding
  (557, 55700, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0558 Crustle - Native Encounter
  (558, 55800, 16, NULL, 1, NULL),
  -- #0559 Scraggy - Native Encounter
  (559, 55900, 16, NULL, 1, NULL),
  -- #0560 Scrafty - Evolution
  (560, 56000, 16, NULL, 7, NULL),
  -- #0561 Sigilyph - Native Encounter
  (561, 56100, 16, NULL, 1, NULL),
  -- #0562 Yamask - Breeding
  (562, 56200, 16, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0563 Cofagrigus - Event
  (563, 56300, 16, NULL, 11, 'Official Ultra Sun/Ultra Moon event or distribution source.'),
  -- #0564 Tirtouga - Fossil Restoration
  (564, 56400, 16, NULL, 6, 'Available by restoring a fossil obtainable in USUM.'),
  -- #0565 Carracosta - Evolution
  (565, 56500, 16, NULL, 7, NULL),
  -- #0566 Archen - Fossil Restoration
  (566, 56600, 16, NULL, 6, 'Available by restoring a fossil obtainable in USUM.'),
  -- #0567 Archeops - Evolution
  (567, 56700, 16, NULL, 7, NULL),
  -- #0568 Trubbish - Native Encounter
  (568, 56800, 16, NULL, 1, NULL),
  -- #0569 Garbodor - Evolution
  (569, 56900, 16, NULL, 7, NULL),
  -- #0570 Zorua - Native Encounter
  (570, 57000, 16, NULL, 1, NULL),
  -- #0571 Zoroark - Native Encounter
  (571, 57100, 16, NULL, 1, NULL),
  -- #0572 Minccino - Native Encounter
  (572, 57200, 16, NULL, 1, NULL),
  -- #0573 Cinccino - Evolution
  (573, 57300, 16, NULL, 7, NULL),
  -- #0574 Gothita - Transfer Only
  (574, 57400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0575 Gothorita - Transfer Only
  (575, 57500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0576 Gothitelle - Transfer Only
  (576, 57600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0577 Solosis - Transfer Only
  (577, 57700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0578 Duosion - Transfer Only
  (578, 57800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0579 Reuniclus - Transfer Only
  (579, 57900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0580 Ducklett - Breeding
  (580, 58000, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0581 Swanna - Native Encounter
  (581, 58100, 16, NULL, 1, NULL),
  -- #0582 Vanillite - Native Encounter
  (582, 58200, 16, NULL, 1, NULL),
  -- #0583 Vanillish - Native Encounter
  (583, 58300, 16, NULL, 1, NULL),
  -- #0584 Vanilluxe - Native Encounter
  (584, 58400, 16, NULL, 1, NULL),
  -- #0585 Deerling - Transfer Only
  (585, 58500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0586 Sawsbuck - Transfer Only
  (586, 58600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0587 Emolga - Native Encounter
  (587, 58700, 16, NULL, 1, NULL),
  -- #0588 Karrablast - Transfer Only
  (588, 58800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0589 Escavalier - Transfer Only
  (589, 58900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0590 Foongus - Transfer Only
  (590, 59000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0591 Amoonguss - Transfer Only
  (591, 59100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0592 Frillish - Native Encounter
  (592, 59200, 16, NULL, 1, NULL),
  -- #0593 Jellicent - Evolution
  (593, 59300, 16, NULL, 7, NULL),
  -- #0594 Alomomola - Native Encounter
  (594, 59400, 16, NULL, 1, NULL),
  -- #0595 Joltik - Transfer Only
  (595, 59500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0596 Galvantula - Transfer Only
  (596, 59600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0597 Ferroseed - Transfer Only
  (597, 59700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0598 Ferrothorn - Transfer Only
  (598, 59800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0599 Klink - Transfer Only
  (599, 59900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0600 Klang - Transfer Only
  (600, 60000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0601 Klinklang - Transfer Only
  (601, 60100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0602 Tynamo - Breeding
  (602, 60200, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0603 Eelektrik - Breeding
  (603, 60300, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0604 Eelektross - Raid or Special Encounter
  (604, 60400, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0605 Elgyem - Native Encounter
  (605, 60500, 16, NULL, 1, NULL),
  -- #0606 Beheeyem - Evolution
  (606, 60600, 16, NULL, 7, NULL),
  -- #0607 Litwick - Raid or Special Encounter
  (607, 60700, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0608 Lampent - Evolution
  (608, 60800, 16, NULL, 7, NULL),
  -- #0609 Chandelure - Evolution
  (609, 60900, 16, NULL, 7, NULL),
  -- #0610 Axew - Raid or Special Encounter
  (610, 61000, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0611 Fraxure - Evolution
  (611, 61100, 16, NULL, 7, NULL),
  -- #0612 Haxorus - Evolution
  (612, 61200, 16, NULL, 7, NULL),
  -- #0613 Cubchoo - Transfer Only
  (613, 61300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0614 Beartic - Transfer Only
  (614, 61400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0615 Cryogonal - Transfer Only
  (615, 61500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0616 Shelmet - Transfer Only
  (616, 61600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0617 Accelgor - Transfer Only
  (617, 61700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0618 Stunfisk - Native Encounter
  (618, 61800, 16, NULL, 1, NULL),
  -- #0619 Mienfoo - Native Encounter
  (619, 61900, 16, NULL, 1, NULL),
  -- #0620 Mienshao - Evolution
  (620, 62000, 16, NULL, 7, NULL),
  -- #0621 Druddigon - Native Encounter
  (621, 62100, 16, NULL, 1, NULL),
  -- #0622 Golett - Ultra Sun - Native Encounter
  (622, 62200, 16, 27, 1, NULL),
  -- #0622 Golett - Ultra Moon - External Trade
  (622, 62200, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0623 Golurk - Ultra Sun - Evolution
  (623, 62300, 16, 27, 7, NULL),
  -- #0623 Golurk - Ultra Moon - External Trade
  (623, 62300, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0624 Pawniard - Native Encounter
  (624, 62400, 16, NULL, 1, NULL),
  -- #0625 Bisharp - Native Encounter
  (625, 62500, 16, NULL, 1, NULL),
  -- #0626 Bouffalant - Transfer Only
  (626, 62600, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0627 Rufflet - Ultra Sun - Native Encounter
  (627, 62700, 16, 27, 1, NULL),
  -- #0627 Rufflet - Ultra Moon - External Trade
  (627, 62700, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0628 Braviary - Ultra Sun - Native Encounter
  (628, 62800, 16, 27, 1, NULL),
  -- #0628 Braviary - Ultra Moon - External Trade
  (628, 62800, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0629 Vullaby - Ultra Sun - External Trade
  (629, 62900, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0629 Vullaby - Ultra Moon - Native Encounter
  (629, 62900, 16, 28, 1, NULL),
  -- #0630 Mandibuzz - Ultra Sun - External Trade
  (630, 63000, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0630 Mandibuzz - Ultra Moon - Native Encounter
  (630, 63000, 16, 28, 1, NULL),
  -- #0631 Heatmor - Transfer Only
  (631, 63100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0632 Durant - Transfer Only
  (632, 63200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0633 Deino - Transfer Only
  (633, 63300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0634 Zweilous - Transfer Only
  (634, 63400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0635 Hydreigon - Transfer Only
  (635, 63500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0636 Larvesta - Native Encounter
  (636, 63600, 16, NULL, 1, NULL),
  -- #0637 Volcarona - Native Encounter
  (637, 63700, 16, NULL, 1, NULL),
  -- #0638 Cobalion - Raid or Special Encounter
  (638, 63800, 16, NULL, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0639 Terrakion - Raid or Special Encounter
  (639, 63900, 16, NULL, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0640 Virizion - Raid or Special Encounter
  (640, 64000, 16, NULL, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0641 Tornadus - Ultra Sun - Raid or Special Encounter
  (641, 64100, 16, 27, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0641 Tornadus - Ultra Moon - External Trade
  (641, 64100, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0641 Tornadus (Therian) - Ultra Sun - Raid or Special Encounter
  (641, 64101, 16, 27, 10, 'Ultra Warp Ride Tornadus encounter with Reveal Glass form access in Ultra Sun.'),
  -- #0641 Tornadus (Therian) - Ultra Moon - External Trade
  (641, 64101, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0642 Thundurus - Ultra Sun - External Trade
  (642, 64200, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0642 Thundurus - Ultra Moon - Raid or Special Encounter
  (642, 64200, 16, 28, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0642 Thundurus (Therian) - Ultra Sun - External Trade
  (642, 64201, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0642 Thundurus (Therian) - Ultra Moon - Raid or Special Encounter
  (642, 64201, 16, 28, 10, 'Ultra Warp Ride Thundurus encounter with Reveal Glass form access in Ultra Moon.'),
  -- #0643 Reshiram - Ultra Sun - Raid or Special Encounter
  (643, 64300, 16, 27, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0643 Reshiram - Ultra Moon - External Trade
  (643, 64300, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0644 Zekrom - Ultra Sun - External Trade
  (644, 64400, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0644 Zekrom - Ultra Moon - Raid or Special Encounter
  (644, 64400, 16, 28, 10, 'Ultra Warp Ride legendary encounter in USUM.'),
  -- #0645 Landorus - Raid or Special Encounter
  (645, 64500, 16, NULL, 10, 'Conditional Ultra Warp Ride encounter requiring Tornadus and Thundurus in USUM.'),
  -- #0645 Landorus (Therian) - Raid or Special Encounter
  (645, 64501, 16, NULL, 10, 'Conditional Ultra Warp Ride Landorus encounter with Reveal Glass form access in USUM.'),
  -- #0646 Kyurem - Raid or Special Encounter
  (646, 64600, 16, NULL, 10, 'Conditional Ultra Warp Ride encounter requiring Reshiram and Zekrom in USUM.'),
  -- #0646 Kyurem (White) - Raid or Special Encounter
  (646, 64601, 16, NULL, 10, 'Requires Kyurem, the paired Tao dragon, and DNA Splicers form access in USUM.'),
  -- #0646 Kyurem (Black) - Raid or Special Encounter
  (646, 64602, 16, NULL, 10, 'Requires Kyurem, the paired Tao dragon, and DNA Splicers form access in USUM.'),
  -- #0647 Keldeo - Transfer Only
  (647, 64700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0648 Meloetta - Event
  (648, 64800, 16, NULL, 11, 'Official Ultra Sun/Ultra Moon event or distribution source.'),
  -- #0649 Genesect - Transfer Only
  (649, 64900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0649 Genesect (Douse Drive) - Transfer Only
  (649, 64901, 16, NULL, 13, 'Requires transferred/imported Genesect plus Drive item access from Colress on Route 8 after becoming Champion in USUM.'),
  -- #0649 Genesect (Shock Drive) - Transfer Only
  (649, 64902, 16, NULL, 13, 'Requires transferred/imported Genesect plus Drive item access from Colress on Route 8 after becoming Champion in USUM.'),
  -- #0649 Genesect (Burn Drive) - Transfer Only
  (649, 64903, 16, NULL, 13, 'Requires transferred/imported Genesect plus Drive item access from Colress on Route 8 after becoming Champion in USUM.'),
  -- #0649 Genesect (Chill Drive) - Transfer Only
  (649, 64904, 16, NULL, 13, 'Requires transferred/imported Genesect plus Drive item access from Colress on Route 8 after becoming Champion in USUM.'),
  -- #0650 Chespin - Breeding
  (650, 65000, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0651 Quilladin - Breeding
  (651, 65100, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0652 Chesnaught - Raid or Special Encounter
  (652, 65200, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0653 Fennekin - Breeding
  (653, 65300, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0654 Braixen - Breeding
  (654, 65400, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0655 Delphox - Raid or Special Encounter
  (655, 65500, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0656 Froakie - Breeding
  (656, 65600, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0657 Frogadier - Breeding
  (657, 65700, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0658 Greninja - Raid or Special Encounter
  (658, 65800, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0659 Bunnelby - Transfer Only
  (659, 65900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0660 Diggersby - Transfer Only
  (660, 66000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0661 Fletchling - Native Encounter
  (661, 66100, 16, NULL, 1, NULL),
  -- #0662 Fletchinder - Native Encounter
  (662, 66200, 16, NULL, 1, NULL),
  -- #0663 Talonflame - Evolution
  (663, 66300, 16, NULL, 7, NULL),
  -- #0664 Scatterbug - Raid or Special Encounter
  (664, 66400, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0665 Spewpa - Evolution
  (665, 66500, 16, NULL, 7, NULL),
  -- #0666 Vivillon - Evolution
  (666, 66600, 16, NULL, 7, NULL),
  -- #0667 Litleo - Native Encounter
  (667, 66700, 16, NULL, 1, NULL),
  -- #0668 Pyroar - Native Encounter
  (668, 66800, 16, NULL, 1, NULL),
  -- #0669 Flabebe - Native Encounter
  (669, 66900, 16, NULL, 1, NULL),
  -- #0670 Floette - Native Encounter
  (670, 67000, 16, NULL, 1, NULL),
  -- #0671 Florges - Evolution
  (671, 67100, 16, NULL, 7, NULL),
  -- #0672 Skiddo - Transfer Only
  (672, 67200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0673 Gogoat - Transfer Only
  (673, 67300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0674 Pancham - Native Encounter
  (674, 67400, 16, NULL, 1, NULL),
  -- #0675 Pangoro - Native Encounter
  (675, 67500, 16, NULL, 1, NULL),
  -- #0676 Furfrou - Native Encounter
  (676, 67600, 16, NULL, 1, NULL),
  -- #0677 Espurr - Transfer Only
  (677, 67700, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0678 Meowstic - Transfer Only
  (678, 67800, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0678 Meowstic (Female) - Transfer Only
  (678, 67801, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0679 Honedge - Raid or Special Encounter
  (679, 67900, 16, NULL, 10, 'Island Scan source in Ultra Sun/Ultra Moon.'),
  -- #0680 Doublade - Evolution
  (680, 68000, 16, NULL, 7, NULL),
  -- #0681 Aegislash - Evolution
  (681, 68100, 16, NULL, 7, NULL),
  -- #0682 Spritzee - Transfer Only
  (682, 68200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0683 Aromatisse - Transfer Only
  (683, 68300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0684 Swirlix - Transfer Only
  (684, 68400, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0685 Slurpuff - Transfer Only
  (685, 68500, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0686 Inkay - Native Encounter
  (686, 68600, 16, NULL, 1, NULL),
  -- #0687 Malamar - Evolution
  (687, 68700, 16, NULL, 7, NULL),
  -- #0688 Binacle - Breeding
  (688, 68800, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0689 Barbaracle - Native Encounter
  (689, 68900, 16, NULL, 1, NULL),
  -- #0690 Skrelp - Ultra Sun - External Trade
  (690, 69000, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0690 Skrelp - Ultra Moon - Breeding
  (690, 69000, 16, 28, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0691 Dragalge - Ultra Sun - External Trade
  (691, 69100, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0691 Dragalge - Ultra Moon - Native Encounter
  (691, 69100, 16, 28, 1, NULL),
  -- #0692 Clauncher - Ultra Sun - Breeding
  (692, 69200, 16, 27, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0692 Clauncher - Ultra Moon - External Trade
  (692, 69200, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0693 Clawitzer - Ultra Sun - Native Encounter
  (693, 69300, 16, 27, 1, NULL),
  -- #0693 Clawitzer - Ultra Moon - External Trade
  (693, 69300, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0694 Helioptile - Breeding
  (694, 69400, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0695 Heliolisk - Native Encounter
  (695, 69500, 16, NULL, 1, NULL),
  -- #0696 Tyrunt - Fossil Restoration
  (696, 69600, 16, NULL, 6, 'Available by restoring a fossil obtainable in USUM.'),
  -- #0697 Tyrantrum - Evolution
  (697, 69700, 16, NULL, 7, NULL),
  -- #0698 Amaura - Fossil Restoration
  (698, 69800, 16, NULL, 6, 'Available by restoring a fossil obtainable in USUM.'),
  -- #0699 Aurorus - Evolution
  (699, 69900, 16, NULL, 7, NULL),
  -- #0700 Sylveon - Evolution
  (700, 70000, 16, NULL, 7, NULL),
  -- #0701 Hawlucha - Native Encounter
  (701, 70100, 16, NULL, 1, NULL),
  -- #0702 Dedenne - Native Encounter
  (702, 70200, 16, NULL, 1, NULL),
  -- #0703 Carbink - Native Encounter
  (703, 70300, 16, NULL, 1, NULL),
  -- #0704 Goomy - Native Encounter
  (704, 70400, 16, NULL, 1, NULL),
  -- #0705 Sliggoo - Native Encounter
  (705, 70500, 16, NULL, 1, NULL),
  -- #0706 Goodra - Evolution
  (706, 70600, 16, NULL, 7, NULL),
  -- #0707 Klefki - Native Encounter
  (707, 70700, 16, NULL, 1, NULL),
  -- #0708 Phantump - Native Encounter
  (708, 70800, 16, NULL, 1, NULL),
  -- #0709 Trevenant - In-Game Trade
  (709, 70900, 16, NULL, 5, 'NPC in-game trade source in USUM.'),
  -- #0710 Pumpkaboo - Transfer Only
  (710, 71000, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0711 Gourgeist - Transfer Only
  (711, 71100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0712 Bergmite - Transfer Only
  (712, 71200, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0713 Avalugg - Transfer Only
  (713, 71300, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0714 Noibat - Native Encounter
  (714, 71400, 16, NULL, 1, NULL),
  -- #0715 Noivern - Native Encounter
  (715, 71500, 16, NULL, 1, NULL),
  -- #0716 Xerneas - Ultra Sun - Native Encounter
  (716, 71600, 16, 27, 1, NULL),
  -- #0716 Xerneas - Ultra Moon - Event
  (716, 71600, 16, 28, 11, 'Official Ultra Sun/Ultra Moon event or distribution source.'),
  -- #0717 Yveltal - Ultra Sun - Event
  (717, 71700, 16, 27, 11, 'Official Ultra Sun/Ultra Moon event or distribution source.'),
  -- #0717 Yveltal - Ultra Moon - Native Encounter
  (717, 71700, 16, 28, 1, NULL),
  -- #0718 Zygarde - Static Encounter
  (718, 71800, 16, NULL, 2, 'Resolution Cave static encounter after entering the Hall of Fame in USUM.'),
  -- #0718 Zygarde (10% Forme) - Static Encounter
  (718, 71801, 16, NULL, 2, 'Requires Zygarde from Resolution Cave and Reassembly Unit form access in USUM.'),
  -- #0719 Diancie - Transfer Only
  (719, 71900, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0720 Hoopa - Event
  (720, 72000, 16, NULL, 11, 'Official Ultra Sun/Ultra Moon event or distribution source.'),
  -- #0721 Volcanion - Transfer Only
  (721, 72100, 16, NULL, 13, 'Not obtainable through normal Ultra Sun/Ultra Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0722 Rowlet - Starter
  (722, 72200, 16, NULL, 3, 'Alola first partner choice in USUM.'),
  -- #0723 Dartrix - Evolution
  (723, 72300, 16, NULL, 7, NULL),
  -- #0724 Decidueye - Evolution
  (724, 72400, 16, NULL, 7, NULL),
  -- #0725 Litten - Starter
  (725, 72500, 16, NULL, 3, 'Alola first partner choice in USUM.'),
  -- #0726 Torracat - Evolution
  (726, 72600, 16, NULL, 7, NULL),
  -- #0727 Incineroar - Evolution
  (727, 72700, 16, NULL, 7, NULL),
  -- #0728 Popplio - Starter
  (728, 72800, 16, NULL, 3, 'Alola first partner choice in USUM.'),
  -- #0729 Brionne - Evolution
  (729, 72900, 16, NULL, 7, NULL),
  -- #0730 Primarina - Evolution
  (730, 73000, 16, NULL, 7, NULL),
  -- #0731 Pikipek - Native Encounter
  (731, 73100, 16, NULL, 1, NULL),
  -- #0732 Trumbeak - Native Encounter
  (732, 73200, 16, NULL, 1, NULL),
  -- #0733 Toucannon - Native Encounter
  (733, 73300, 16, NULL, 1, NULL),
  -- #0734 Yungoos - Native Encounter
  (734, 73400, 16, NULL, 1, NULL),
  -- #0735 Gumshoos - Native Encounter
  (735, 73500, 16, NULL, 1, NULL),
  -- #0736 Grubbin - Native Encounter
  (736, 73600, 16, NULL, 1, NULL),
  -- #0737 Charjabug - Native Encounter
  (737, 73700, 16, NULL, 1, NULL),
  -- #0738 Vikavolt - Native Encounter
  (738, 73800, 16, NULL, 1, NULL),
  -- #0739 Crabrawler - Native Encounter
  (739, 73900, 16, NULL, 1, NULL),
  -- #0740 Crabominable - Evolution
  (740, 74000, 16, NULL, 7, NULL),
  -- #0741 Oricorio - Native Encounter
  (741, 74100, 16, NULL, 1, NULL),
  -- #0741 Oricorio (Pom-Pom) - Native Encounter
  (741, 74101, 16, NULL, 1, 'Requires Oricorio and nectar form access in USUM.'),
  -- #0741 Oricorio (Pa'u) - Native Encounter
  (741, 74102, 16, NULL, 1, 'Requires Oricorio and nectar form access in USUM.'),
  -- #0741 Oricorio (Sensu) - Native Encounter
  (741, 74103, 16, NULL, 1, 'Requires Oricorio and nectar form access in USUM.'),
  -- #0742 Cutiefly - Native Encounter
  (742, 74200, 16, NULL, 1, NULL),
  -- #0743 Ribombee - Native Encounter
  (743, 74300, 16, NULL, 1, NULL),
  -- #0744 Rockruff - Native Encounter
  (744, 74400, 16, NULL, 1, NULL),
  -- #0744 Rockruff (Own Tempo) - Event
  (744, 74401, 16, NULL, 11, 'Own Tempo Rockruff official event/distribution source in USUM.'),
  -- #0745 Lycanroc - Native Encounter
  (745, 74500, 16, NULL, 1, NULL),
  -- #0745 Lycanroc (Midnight) - Native Encounter
  (745, 74501, 16, NULL, 1, NULL),
  -- #0745 Lycanroc (Dusk) - Evolution
  (745, 74502, 16, NULL, 7, 'Requires evolving an event or distribution source Pokémon in USUM.'),
  -- #0746 Wishiwashi - Native Encounter
  (746, 74600, 16, NULL, 1, NULL),
  -- #0747 Mareanie - Native Encounter
  (747, 74700, 16, NULL, 1, NULL),
  -- #0748 Toxapex - Evolution
  (748, 74800, 16, NULL, 7, NULL),
  -- #0749 Mudbray - Native Encounter
  (749, 74900, 16, NULL, 1, NULL),
  -- #0750 Mudsdale - Native Encounter
  (750, 75000, 16, NULL, 1, NULL),
  -- #0751 Dewpider - Native Encounter
  (751, 75100, 16, NULL, 1, NULL),
  -- #0752 Araquanid - Native Encounter
  (752, 75200, 16, NULL, 1, NULL),
  -- #0753 Fomantis - Native Encounter
  (753, 75300, 16, NULL, 1, NULL),
  -- #0754 Lurantis - Evolution
  (754, 75400, 16, NULL, 7, NULL),
  -- #0755 Morelull - Native Encounter
  (755, 75500, 16, NULL, 1, NULL),
  -- #0756 Shiinotic - Native Encounter
  (756, 75600, 16, NULL, 1, NULL),
  -- #0757 Salandit - Native Encounter
  (757, 75700, 16, NULL, 1, NULL),
  -- #0758 Salazzle - Native Encounter
  (758, 75800, 16, NULL, 1, NULL),
  -- #0759 Stufful - Native Encounter
  (759, 75900, 16, NULL, 1, NULL),
  -- #0760 Bewear - Native Encounter
  (760, 76000, 16, NULL, 1, NULL),
  -- #0761 Bounsweet - Breeding
  (761, 76100, 16, NULL, 8, 'Requires breeding an available source Pokémon in USUM.'),
  -- #0762 Steenee - Native Encounter
  (762, 76200, 16, NULL, 1, NULL),
  -- #0763 Tsareena - Evolution
  (763, 76300, 16, NULL, 7, NULL),
  -- #0764 Comfey - Native Encounter
  (764, 76400, 16, NULL, 1, NULL),
  -- #0765 Oranguru - Ultra Sun - External Trade
  (765, 76500, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0765 Oranguru - Ultra Moon - Native Encounter
  (765, 76500, 16, 28, 1, NULL),
  -- #0766 Passimian - Ultra Sun - Native Encounter
  (766, 76600, 16, 27, 1, NULL),
  -- #0766 Passimian - Ultra Moon - External Trade
  (766, 76600, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0767 Wimpod - Native Encounter
  (767, 76700, 16, NULL, 1, NULL),
  -- #0768 Golisopod - Evolution
  (768, 76800, 16, NULL, 7, NULL),
  -- #0769 Sandygast - Native Encounter
  (769, 76900, 16, NULL, 1, NULL),
  -- #0770 Palossand - Evolution
  (770, 77000, 16, NULL, 7, NULL),
  -- #0771 Pyukumuku - Native Encounter
  (771, 77100, 16, NULL, 1, NULL),
  -- #0772 Type: Null - Gift
  (772, 77200, 16, NULL, 4, 'Gift Type: Null received after entering the Hall of Fame in USUM.'),
  -- #0773 Silvally - Evolution
  (773, 77300, 16, NULL, 7, NULL),
  -- #0773 Silvally (Fighting) - Evolution
  (773, 77301, 16, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in USUM.'),
  -- #0773 Silvally (Flying) - Evolution
  (773, 77302, 16, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in USUM.'),
  -- #0773 Silvally (Poison) - Evolution
  (773, 77303, 16, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in USUM.'),
  -- #0773 Silvally (Ground) - Evolution
  (773, 77304, 16, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in USUM.'),
  -- #0773 Silvally (Rock) - Evolution
  (773, 77305, 16, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in USUM.'),
  -- #0773 Silvally (Bug) - Evolution
  (773, 77306, 16, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in USUM.'),
  -- #0773 Silvally (Ghost) - Evolution
  (773, 77307, 16, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in USUM.'),
  -- #0773 Silvally (Steel) - Evolution
  (773, 77308, 16, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in USUM.'),
  -- #0773 Silvally (Fire) - Evolution
  (773, 77309, 16, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in USUM.'),
  -- #0773 Silvally (Water) - Evolution
  (773, 77310, 16, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in USUM.'),
  -- #0773 Silvally (Grass) - Evolution
  (773, 77311, 16, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in USUM.'),
  -- #0773 Silvally (Electric) - Evolution
  (773, 77312, 16, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in USUM.'),
  -- #0773 Silvally (Psychic) - Evolution
  (773, 77313, 16, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in USUM.'),
  -- #0773 Silvally (Ice) - Evolution
  (773, 77314, 16, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in USUM.'),
  -- #0773 Silvally (Dragon) - Evolution
  (773, 77315, 16, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in USUM.'),
  -- #0773 Silvally (Dark) - Evolution
  (773, 77316, 16, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in USUM.'),
  -- #0773 Silvally (Fairy) - Evolution
  (773, 77317, 16, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in USUM.'),
  -- #0774 Minior - Native Encounter
  (774, 77400, 16, NULL, 1, NULL),
  -- #0775 Komala - Native Encounter
  (775, 77500, 16, NULL, 1, NULL),
  -- #0776 Turtonator - Ultra Sun - Native Encounter
  (776, 77600, 16, 27, 1, NULL),
  -- #0776 Turtonator - Ultra Moon - External Trade
  (776, 77600, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0777 Togedemaru - Native Encounter
  (777, 77700, 16, NULL, 1, NULL),
  -- #0778 Mimikyu - Native Encounter
  (778, 77800, 16, NULL, 1, NULL),
  -- #0779 Bruxish - Native Encounter
  (779, 77900, 16, NULL, 1, NULL),
  -- #0780 Drampa - Ultra Sun - External Trade
  (780, 78000, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0780 Drampa - Ultra Moon - Native Encounter
  (780, 78000, 16, 28, 1, NULL),
  -- #0781 Dhelmise - Native Encounter
  (781, 78100, 16, NULL, 1, NULL),
  -- #0782 Jangmo-o - Native Encounter
  (782, 78200, 16, NULL, 1, NULL),
  -- #0783 Hakamo-o - Native Encounter
  (783, 78300, 16, NULL, 1, NULL),
  -- #0784 Kommo-o - Native Encounter
  (784, 78400, 16, NULL, 1, NULL),
  -- #0785 Tapu Koko - Static Encounter
  (785, 78500, 16, NULL, 2, NULL),
  -- #0786 Tapu Lele - Static Encounter
  (786, 78600, 16, NULL, 2, NULL),
  -- #0787 Tapu Bulu - Static Encounter
  (787, 78700, 16, NULL, 2, NULL),
  -- #0788 Tapu Fini - Static Encounter
  (788, 78800, 16, NULL, 2, NULL),
  -- #0789 Cosmog - Gift
  (789, 78900, 16, NULL, 4, 'Gift Cosmog received after entering the Hall of Fame in USUM.'),
  -- #0790 Cosmoem - Evolution
  (790, 79000, 16, NULL, 7, NULL),
  -- #0791 Solgaleo - Ultra Sun - Static Encounter
  (791, 79100, 16, 27, 2, 'Ultra Sun version legendary encounter in USUM.'),
  -- #0791 Solgaleo - Ultra Moon - External Trade
  (791, 79100, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0792 Lunala - Ultra Sun - External Trade
  (792, 79200, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0792 Lunala - Ultra Moon - Static Encounter
  (792, 79200, 16, 28, 2, 'Ultra Moon version legendary encounter in USUM.'),
  -- #0793 Nihilego - Raid or Special Encounter
  (793, 79300, 16, NULL, 10, 'Ultra Warp Ride or postgame Ultra Beast encounter in USUM.'),
  -- #0794 Buzzwole - Ultra Sun - Raid or Special Encounter
  (794, 79400, 16, 27, 10, 'Ultra Warp Ride or postgame Ultra Beast encounter in USUM.'),
  -- #0794 Buzzwole - Ultra Moon - External Trade
  (794, 79400, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0795 Pheromosa - Ultra Sun - External Trade
  (795, 79500, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0795 Pheromosa - Ultra Moon - Raid or Special Encounter
  (795, 79500, 16, 28, 10, 'Ultra Warp Ride or postgame Ultra Beast encounter in USUM.'),
  -- #0796 Xurkitree - Raid or Special Encounter
  (796, 79600, 16, NULL, 10, 'Ultra Warp Ride or postgame Ultra Beast encounter in USUM.'),
  -- #0797 Celesteela - Ultra Sun - External Trade
  (797, 79700, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0797 Celesteela - Ultra Moon - Raid or Special Encounter
  (797, 79700, 16, 28, 10, 'Ultra Warp Ride or postgame Ultra Beast encounter in USUM.'),
  -- #0798 Kartana - Ultra Sun - Raid or Special Encounter
  (798, 79800, 16, 27, 10, 'Ultra Warp Ride or postgame Ultra Beast encounter in USUM.'),
  -- #0798 Kartana - Ultra Moon - External Trade
  (798, 79800, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0799 Guzzlord - Raid or Special Encounter
  (799, 79900, 16, NULL, 10, 'Ultra Warp Ride or postgame Ultra Beast encounter in USUM.'),
  -- #0800 Necrozma - Static Encounter
  (800, 80000, 16, NULL, 2, 'Mount Lanakila static encounter after entering the Hall of Fame in USUM.'),
  -- #0800 Necrozma (Dusk Mane) - Ultra Sun - Raid or Special Encounter
  (800, 80001, 16, 27, 10, 'Requires Necrozma, Solgaleo, and N-Solarizer form fusion in Ultra Sun.'),
  -- #0800 Necrozma (Dusk Mane) - Ultra Moon - External Trade
  (800, 80001, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0800 Necrozma (Dawn Wings) - Ultra Sun - External Trade
  (800, 80002, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0800 Necrozma (Dawn Wings) - Ultra Moon - Raid or Special Encounter
  (800, 80002, 16, 28, 10, 'Requires Necrozma, Lunala, and N-Lunarizer form fusion in Ultra Moon.'),
  -- #0801 Magearna - Event
  (801, 80100, 16, NULL, 11, 'Official Ultra Sun/Ultra Moon event or distribution source.'),
  -- #0802 Marshadow - Event
  (802, 80200, 16, NULL, 11, 'Official Ultra Sun/Ultra Moon event or distribution source.'),
  -- #0803 Poipole - Gift
  (803, 80300, 16, NULL, 4, 'Gift Poipole received during the Ultra Megalopolis story in USUM.'),
  -- #0804 Naganadel - Evolution
  (804, 80400, 16, NULL, 7, NULL),
  -- #0805 Stakataka - Ultra Sun - External Trade
  (805, 80500, 16, 27, 12, 'Version source is Pokémon Ultra Moon; available in Pokémon Ultra Sun by trade from the paired version or compatible external source.'),
  -- #0805 Stakataka - Ultra Moon - Raid or Special Encounter
  (805, 80500, 16, 28, 10, 'Ultra Warp Ride or postgame Ultra Beast encounter in USUM.'),
  -- #0806 Blacephalon - Ultra Sun - Raid or Special Encounter
  (806, 80600, 16, 27, 10, 'Ultra Warp Ride or postgame Ultra Beast encounter in USUM.'),
  -- #0806 Blacephalon - Ultra Moon - External Trade
  (806, 80600, 16, 28, 12, 'Version source is Pokémon Ultra Sun; available in Pokémon Ultra Moon by trade from the paired version or compatible external source.'),
  -- #0807 Zeraora - Event
  (807, 80700, 16, NULL, 11, 'Official Ultra Sun/Ultra Moon event or distribution source.');
