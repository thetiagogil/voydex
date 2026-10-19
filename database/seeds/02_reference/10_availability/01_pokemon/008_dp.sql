-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by availability and Pokémon availability Generation IV notes.
-- Cross-check: PokemonDB Diamond/Pearl version exclusives, Serebii Diamond/Pearl Deoxys notes, and legacy Voydex availability seeds.
-- Scope note: primary availability method per obtainable form; external-source rows preserve compatible-game usability for planning.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Diamond / Pearl
-- Table: reference.pokemon_availability
-- Scope: 547 rows; all Generation IV-compatible species are represented, with game-specific rows for version sources and curated persistent form rows for Deoxys, Burmy, and Wormadam.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0001 Bulbasaur - External Trade
  (1, 100, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0002 Ivysaur - External Trade
  (2, 200, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0003 Venusaur - External Trade
  (3, 300, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0004 Charmander - External Trade
  (4, 400, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible external source, Pal Park transfer, trade, or historical official distribution.'),
  -- #0005 Charmeleon - External Trade
  (5, 500, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible external source, Pal Park transfer, trade, or historical official distribution.'),
  -- #0006 Charizard - External Trade
  (6, 600, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible external source, Pal Park transfer, trade, or historical official distribution.'),
  -- #0007 Squirtle - External Trade
  (7, 700, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0008 Wartortle - External Trade
  (8, 800, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0009 Blastoise - External Trade
  (9, 900, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0010 Caterpie - Raid or Special Encounter
  (10, 1000, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0011 Metapod - Raid or Special Encounter
  (11, 1100, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0012 Butterfree - Evolution
  (12, 1200, 8, NULL, 7, 'Requires evolving a dual-slot source Pokémon; National Dex and compatible Game Boy Advance cartridge required.'),
  -- #0013 Weedle - Raid or Special Encounter
  (13, 1300, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0014 Kakuna - Raid or Special Encounter
  (14, 1400, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0015 Beedrill - Evolution
  (15, 1500, 8, NULL, 7, 'Requires evolving a dual-slot source Pokémon; National Dex and compatible Game Boy Advance cartridge required.'),
  -- #0016 Pidgey - Raid or Special Encounter
  (16, 1600, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0017 Pidgeotto - Evolution
  (17, 1700, 8, NULL, 7, NULL),
  -- #0018 Pidgeot - Evolution
  (18, 1800, 8, NULL, 7, NULL),
  -- #0019 Rattata - Native Encounter
  (19, 1900, 8, NULL, 1, NULL),
  -- #0020 Raticate - Native Encounter
  (20, 2000, 8, NULL, 1, NULL),
  -- #0021 Spearow - Native Encounter
  (21, 2100, 8, NULL, 1, NULL),
  -- #0022 Fearow - Native Encounter
  (22, 2200, 8, NULL, 1, NULL),
  -- #0023 Ekans - Raid or Special Encounter
  (23, 2300, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0024 Arbok - Raid or Special Encounter
  (24, 2400, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0025 Pikachu - Native Encounter
  (25, 2500, 8, NULL, 1, NULL),
  -- #0026 Raichu - Evolution
  (26, 2600, 8, NULL, 7, NULL),
  -- #0027 Sandshrew - Raid or Special Encounter
  (27, 2700, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0028 Sandslash - Raid or Special Encounter
  (28, 2800, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0029 Nidoran F - Native Encounter
  (29, 2900, 8, NULL, 1, NULL),
  -- #0030 Nidorina - Native Encounter
  (30, 3000, 8, NULL, 1, NULL),
  -- #0031 Nidoqueen - Evolution
  (31, 3100, 8, NULL, 7, NULL),
  -- #0032 Nidoran M - Native Encounter
  (32, 3200, 8, NULL, 1, NULL),
  -- #0033 Nidorino - Native Encounter
  (33, 3300, 8, NULL, 1, NULL),
  -- #0034 Nidoking - Evolution
  (34, 3400, 8, NULL, 7, NULL),
  -- #0035 Clefairy - Native Encounter
  (35, 3500, 8, NULL, 1, NULL),
  -- #0036 Clefable - Evolution
  (36, 3600, 8, NULL, 7, NULL),
  -- #0037 Vulpix - Raid or Special Encounter
  (37, 3700, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0038 Ninetales - Evolution
  (38, 3800, 8, NULL, 7, 'Requires evolving a dual-slot source Pokémon; National Dex and compatible Game Boy Advance cartridge required.'),
  -- #0039 Jigglypuff - Raid or Special Encounter
  (39, 3900, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0040 Wigglytuff - Evolution
  (40, 4000, 8, NULL, 7, NULL),
  -- #0041 Zubat - Native Encounter
  (41, 4100, 8, NULL, 1, NULL),
  -- #0042 Golbat - Native Encounter
  (42, 4200, 8, NULL, 1, NULL),
  -- #0043 Oddish - Native Encounter
  (43, 4300, 8, NULL, 1, NULL),
  -- #0044 Gloom - Native Encounter
  (44, 4400, 8, NULL, 1, NULL),
  -- #0045 Vileplume - Evolution
  (45, 4500, 8, NULL, 7, NULL),
  -- #0046 Paras - Raid or Special Encounter
  (46, 4600, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0047 Parasect - Evolution
  (47, 4700, 8, NULL, 7, NULL),
  -- #0048 Venonat - Native Encounter
  (48, 4800, 8, NULL, 1, NULL),
  -- #0049 Venomoth - Native Encounter
  (49, 4900, 8, NULL, 1, NULL),
  -- #0050 Diglett - Native Encounter
  (50, 5000, 8, NULL, 1, NULL),
  -- #0051 Dugtrio - Native Encounter
  (51, 5100, 8, NULL, 1, NULL),
  -- #0052 Meowth - Raid or Special Encounter
  (52, 5200, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0053 Persian - Evolution
  (53, 5300, 8, NULL, 7, NULL),
  -- #0054 Psyduck - Native Encounter
  (54, 5400, 8, NULL, 1, NULL),
  -- #0055 Golduck - Native Encounter
  (55, 5500, 8, NULL, 1, NULL),
  -- #0056 Mankey - Native Encounter
  (56, 5600, 8, NULL, 1, NULL),
  -- #0057 Primeape - Native Encounter
  (57, 5700, 8, NULL, 1, NULL),
  -- #0058 Growlithe - Raid or Special Encounter
  (58, 5800, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0059 Arcanine - Evolution
  (59, 5900, 8, NULL, 7, 'Requires evolving a dual-slot source Pokémon; National Dex and compatible Game Boy Advance cartridge required.'),
  -- #0060 Poliwag - Native Encounter
  (60, 6000, 8, NULL, 1, NULL),
  -- #0061 Poliwhirl - Native Encounter
  (61, 6100, 8, NULL, 1, NULL),
  -- #0062 Poliwrath - Evolution
  (62, 6200, 8, NULL, 7, NULL),
  -- #0063 Abra - Native Encounter
  (63, 6300, 8, NULL, 1, NULL),
  -- #0064 Kadabra - Native Encounter
  (64, 6400, 8, NULL, 1, NULL),
  -- #0065 Alakazam - Evolution
  (65, 6500, 8, NULL, 7, 'Trade evolution from an available source Pokémon in Diamond/Pearl.'),
  -- #0066 Machop - Native Encounter
  (66, 6600, 8, NULL, 1, NULL),
  -- #0067 Machoke - Native Encounter
  (67, 6700, 8, NULL, 1, NULL),
  -- #0068 Machamp - Evolution
  (68, 6800, 8, NULL, 7, 'Trade evolution from an available source Pokémon in Diamond/Pearl.'),
  -- #0069 Bellsprout - Native Encounter
  (69, 6900, 8, NULL, 1, NULL),
  -- #0070 Weepinbell - Native Encounter
  (70, 7000, 8, NULL, 1, NULL),
  -- #0071 Victreebel - Evolution
  (71, 7100, 8, NULL, 7, NULL),
  -- #0072 Tentacool - Native Encounter
  (72, 7200, 8, NULL, 1, NULL),
  -- #0073 Tentacruel - Native Encounter
  (73, 7300, 8, NULL, 1, NULL),
  -- #0074 Geodude - Native Encounter
  (74, 7400, 8, NULL, 1, NULL),
  -- #0075 Graveler - Native Encounter
  (75, 7500, 8, NULL, 1, NULL),
  -- #0076 Golem - Evolution
  (76, 7600, 8, NULL, 7, 'Trade evolution from an available source Pokémon in Diamond/Pearl.'),
  -- #0077 Ponyta - Native Encounter
  (77, 7700, 8, NULL, 1, NULL),
  -- #0078 Rapidash - Evolution
  (78, 7800, 8, NULL, 7, NULL),
  -- #0079 Slowpoke - Diamond - External Trade
  (79, 7900, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0079 Slowpoke - Pearl - Native Encounter
  (79, 7900, 8, 13, 1, NULL),
  -- #0080 Slowbro - Diamond - External Trade
  (80, 8000, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0080 Slowbro - Pearl - Evolution
  (80, 8000, 8, 13, 7, NULL),
  -- #0081 Magnemite - Raid or Special Encounter
  (81, 8100, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0082 Magneton - Evolution
  (82, 8200, 8, NULL, 7, NULL),
  -- #0083 Farfetch'd - Raid or Special Encounter
  (83, 8300, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0084 Doduo - Raid or Special Encounter
  (84, 8400, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0085 Dodrio - Evolution
  (85, 8500, 8, NULL, 7, NULL),
  -- #0086 Seel - Diamond - Native Encounter
  (86, 8600, 8, 12, 1, NULL),
  -- #0086 Seel - Pearl - External Trade
  (86, 8600, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0087 Dewgong - Diamond - Native Encounter
  (87, 8700, 8, 12, 1, NULL),
  -- #0087 Dewgong - Pearl - External Trade
  (87, 8700, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0088 Grimer - Native Encounter
  (88, 8800, 8, NULL, 1, NULL),
  -- #0089 Muk - Evolution
  (89, 8900, 8, NULL, 7, NULL),
  -- #0090 Shellder - Native Encounter
  (90, 9000, 8, NULL, 1, NULL),
  -- #0091 Cloyster - Evolution
  (91, 9100, 8, NULL, 7, NULL),
  -- #0092 Gastly - Native Encounter
  (92, 9200, 8, NULL, 1, NULL),
  -- #0093 Haunter - Native Encounter
  (93, 9300, 8, NULL, 1, NULL),
  -- #0094 Gengar - Raid or Special Encounter
  (94, 9400, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0095 Onix - Native Encounter
  (95, 9500, 8, NULL, 1, NULL),
  -- #0096 Drowzee - Raid or Special Encounter
  (96, 9600, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0097 Hypno - Evolution
  (97, 9700, 8, NULL, 7, NULL),
  -- #0098 Krabby - Raid or Special Encounter
  (98, 9800, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0099 Kingler - Evolution
  (99, 9900, 8, NULL, 7, NULL),
  -- #0100 Voltorb - Raid or Special Encounter
  (100, 10000, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0101 Electrode - Evolution
  (101, 10100, 8, NULL, 7, NULL),
  -- #0102 Exeggcute - Raid or Special Encounter
  (102, 10200, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0103 Exeggutor - Evolution
  (103, 10300, 8, NULL, 7, NULL),
  -- #0104 Cubone - Raid or Special Encounter
  (104, 10400, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0105 Marowak - Evolution
  (105, 10500, 8, NULL, 7, NULL),
  -- #0106 Hitmonlee - Evolution
  (106, 10600, 8, NULL, 7, NULL),
  -- #0107 Hitmonchan - Evolution
  (107, 10700, 8, NULL, 7, NULL),
  -- #0108 Lickitung - Raid or Special Encounter
  (108, 10800, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0109 Koffing - Breeding
  (109, 10900, 8, NULL, 8, NULL),
  -- #0110 Weezing - Native Encounter
  (110, 11000, 8, NULL, 1, NULL),
  -- #0111 Rhyhorn - Native Encounter
  (111, 11100, 8, NULL, 1, NULL),
  -- #0112 Rhydon - Native Encounter
  (112, 11200, 8, NULL, 1, NULL),
  -- #0113 Chansey - Native Encounter
  (113, 11300, 8, NULL, 1, NULL),
  -- #0114 Tangela - External Trade
  (114, 11400, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible external source, Pal Park transfer, trade, or historical official distribution.'),
  -- #0115 Kangaskhan - Raid or Special Encounter
  (115, 11500, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0116 Horsea - Native Encounter
  (116, 11600, 8, NULL, 1, NULL),
  -- #0117 Seadra - Native Encounter
  (117, 11700, 8, NULL, 1, NULL),
  -- #0118 Goldeen - Native Encounter
  (118, 11800, 8, NULL, 1, NULL),
  -- #0119 Seaking - Native Encounter
  (119, 11900, 8, NULL, 1, NULL),
  -- #0120 Staryu - Native Encounter
  (120, 12000, 8, NULL, 1, NULL),
  -- #0121 Starmie - Evolution
  (121, 12100, 8, NULL, 7, NULL),
  -- #0122 Mr. Mime - Diamond - Native Encounter
  (122, 12200, 8, 12, 1, NULL),
  -- #0122 Mr. Mime - Pearl - Evolution
  (122, 12200, 8, 13, 7, NULL),
  -- #0123 Scyther - Diamond - Native Encounter
  (123, 12300, 8, 12, 1, NULL),
  -- #0123 Scyther - Pearl - External Trade
  (123, 12300, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0124 Jynx - Evolution
  (124, 12400, 8, NULL, 7, NULL),
  -- #0125 Electabuzz - Evolution
  (125, 12500, 8, NULL, 7, 'Requires evolving a dual-slot source Pokémon; National Dex and compatible Game Boy Advance cartridge required.'),
  -- #0126 Magmar - Evolution
  (126, 12600, 8, NULL, 7, 'Requires evolving a dual-slot source Pokémon; National Dex and compatible Game Boy Advance cartridge required.'),
  -- #0127 Pinsir - Diamond - External Trade
  (127, 12700, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0127 Pinsir - Pearl - Native Encounter
  (127, 12700, 8, 13, 1, NULL),
  -- #0128 Tauros - Native Encounter
  (128, 12800, 8, NULL, 1, NULL),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 8, NULL, 1, NULL),
  -- #0130 Gyarados - Native Encounter
  (130, 13000, 8, NULL, 1, NULL),
  -- #0131 Lapras - Native Encounter
  (131, 13100, 8, NULL, 1, NULL),
  -- #0132 Ditto - Native Encounter
  (132, 13200, 8, NULL, 1, NULL),
  -- #0133 Eevee - Gift
  (133, 13300, 8, NULL, 4, 'Bebe gift in Hearthome City after National Dex.'),
  -- #0134 Vaporeon - Evolution
  (134, 13400, 8, NULL, 7, NULL),
  -- #0135 Jolteon - Evolution
  (135, 13500, 8, NULL, 7, NULL),
  -- #0136 Flareon - Evolution
  (136, 13600, 8, NULL, 7, NULL),
  -- #0137 Porygon - Raid or Special Encounter
  (137, 13700, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0138 Omanyte - Fossil Restoration
  (138, 13800, 8, NULL, 6, 'Fossil restored from Underground fossil item.'),
  -- #0139 Omastar - Evolution
  (139, 13900, 8, NULL, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0140 Kabuto - Fossil Restoration
  (140, 14000, 8, NULL, 6, 'Fossil restored from Underground fossil item.'),
  -- #0141 Kabutops - Evolution
  (141, 14100, 8, NULL, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0142 Aerodactyl - Fossil Restoration
  (142, 14200, 8, NULL, 6, 'Fossil restored from Underground fossil item.'),
  -- #0143 Snorlax - Evolution
  (143, 14300, 8, NULL, 7, NULL),
  -- #0144 Articuno - External Trade
  (144, 14400, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0145 Zapdos - External Trade
  (145, 14500, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0146 Moltres - External Trade
  (146, 14600, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0147 Dratini - Native Encounter
  (147, 14700, 8, NULL, 1, NULL),
  -- #0148 Dragonair - Native Encounter
  (148, 14800, 8, NULL, 1, NULL),
  -- #0149 Dragonite - Evolution
  (149, 14900, 8, NULL, 7, NULL),
  -- #0150 Mewtwo - External Trade
  (150, 15000, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0151 Mew - Event
  (151, 15100, 8, NULL, 11, 'Event/distribution-only in Generation IV; not obtainable through normal Diamond/Pearl gameplay.'),
  -- #0152 Chikorita - External Trade
  (152, 15200, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0153 Bayleef - External Trade
  (153, 15300, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0154 Meganium - External Trade
  (154, 15400, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0155 Cyndaquil - External Trade
  (155, 15500, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0156 Quilava - External Trade
  (156, 15600, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0157 Typhlosion - External Trade
  (157, 15700, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0158 Totodile - External Trade
  (158, 15800, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0159 Croconaw - External Trade
  (159, 15900, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0160 Feraligatr - External Trade
  (160, 16000, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0161 Sentret - Native Encounter
  (161, 16100, 8, NULL, 1, NULL),
  -- #0162 Furret - Evolution
  (162, 16200, 8, NULL, 7, NULL),
  -- #0163 Hoothoot - Native Encounter
  (163, 16300, 8, NULL, 1, NULL),
  -- #0164 Noctowl - Native Encounter
  (164, 16400, 8, NULL, 1, NULL),
  -- #0165 Ledyba - Breeding
  (165, 16500, 8, NULL, 8, NULL),
  -- #0166 Ledian - Native Encounter
  (166, 16600, 8, NULL, 1, NULL),
  -- #0167 Spinarak - Breeding
  (167, 16700, 8, NULL, 8, NULL),
  -- #0168 Ariados - Native Encounter
  (168, 16800, 8, NULL, 1, NULL),
  -- #0169 Crobat - Evolution
  (169, 16900, 8, NULL, 7, NULL),
  -- #0170 Chinchou - Native Encounter
  (170, 17000, 8, NULL, 1, NULL),
  -- #0171 Lanturn - Native Encounter
  (171, 17100, 8, NULL, 1, NULL),
  -- #0172 Pichu - Native Encounter
  (172, 17200, 8, NULL, 1, NULL),
  -- #0173 Cleffa - Native Encounter
  (173, 17300, 8, NULL, 1, NULL),
  -- #0174 Igglybuff - Raid or Special Encounter
  (174, 17400, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0175 Togepi - Native Encounter
  (175, 17500, 8, NULL, 1, NULL),
  -- #0176 Togetic - Evolution
  (176, 17600, 8, NULL, 7, NULL),
  -- #0177 Natu - Raid or Special Encounter
  (177, 17700, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0178 Xatu - Evolution
  (178, 17800, 8, NULL, 7, NULL),
  -- #0179 Mareep - Native Encounter
  (179, 17900, 8, NULL, 1, NULL),
  -- #0180 Flaaffy - Native Encounter
  (180, 18000, 8, NULL, 1, NULL),
  -- #0181 Ampharos - Evolution
  (181, 18100, 8, NULL, 7, NULL),
  -- #0182 Bellossom - Evolution
  (182, 18200, 8, NULL, 7, NULL),
  -- #0183 Marill - Native Encounter
  (183, 18300, 8, NULL, 1, NULL),
  -- #0184 Azumarill - Evolution
  (184, 18400, 8, NULL, 7, NULL),
  -- #0185 Sudowoodo - Diamond - Evolution
  (185, 18500, 8, 12, 7, NULL),
  -- #0185 Sudowoodo - Pearl - Native Encounter
  (185, 18500, 8, 13, 1, NULL),
  -- #0186 Politoed - Evolution
  (186, 18600, 8, NULL, 7, 'Trade evolution from an available source Pokémon in Diamond/Pearl.'),
  -- #0187 Hoppip - Native Encounter
  (187, 18700, 8, NULL, 1, NULL),
  -- #0188 Skiploom - Native Encounter
  (188, 18800, 8, NULL, 1, NULL),
  -- #0189 Jumpluff - Evolution
  (189, 18900, 8, NULL, 7, NULL),
  -- #0190 Aipom - Native Encounter
  (190, 19000, 8, NULL, 1, NULL),
  -- #0191 Sunkern - Native Encounter
  (191, 19100, 8, NULL, 1, NULL),
  -- #0192 Sunflora - Evolution
  (192, 19200, 8, NULL, 7, NULL),
  -- #0193 Yanma - Raid or Special Encounter
  (193, 19300, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0194 Wooper - Native Encounter
  (194, 19400, 8, NULL, 1, NULL),
  -- #0195 Quagsire - Native Encounter
  (195, 19500, 8, NULL, 1, NULL),
  -- #0196 Espeon - Evolution
  (196, 19600, 8, NULL, 7, NULL),
  -- #0197 Umbreon - Evolution
  (197, 19700, 8, NULL, 7, NULL),
  -- #0198 Murkrow - Diamond - Native Encounter
  (198, 19800, 8, 12, 1, NULL),
  -- #0198 Murkrow - Pearl - External Trade
  (198, 19800, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0199 Slowking - Diamond - External Trade
  (199, 19900, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0199 Slowking - Pearl - Evolution
  (199, 19900, 8, 13, 7, 'Trade evolution from an available source Pokémon in Diamond/Pearl.'),
  -- #0200 Misdreavus - Diamond - External Trade
  (200, 20000, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0200 Misdreavus - Pearl - Native Encounter
  (200, 20000, 8, 13, 1, NULL),
  -- #0201 Unown - Native Encounter
  (201, 20100, 8, NULL, 1, NULL),
  -- #0202 Wobbuffet - Native Encounter
  (202, 20200, 8, NULL, 1, NULL),
  -- #0203 Girafarig - Native Encounter
  (203, 20300, 8, NULL, 1, NULL),
  -- #0204 Pineco - Raid or Special Encounter
  (204, 20400, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0205 Forretress - Evolution
  (205, 20500, 8, NULL, 7, 'Requires evolving a dual-slot source Pokémon; National Dex and compatible Game Boy Advance cartridge required.'),
  -- #0206 Dunsparce - Raid or Special Encounter
  (206, 20600, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0207 Gligar - Raid or Special Encounter
  (207, 20700, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0208 Steelix - Native Encounter
  (208, 20800, 8, NULL, 1, NULL),
  -- #0209 Snubbull - Raid or Special Encounter
  (209, 20900, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0210 Granbull - Evolution
  (210, 21000, 8, NULL, 7, NULL),
  -- #0211 Qwilfish - Native Encounter
  (211, 21100, 8, NULL, 1, NULL),
  -- #0212 Scizor - Diamond - Evolution
  (212, 21200, 8, 12, 7, 'Trade evolution from an available source Pokémon in Diamond/Pearl.'),
  -- #0212 Scizor - Pearl - External Trade
  (212, 21200, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0213 Shuckle - Raid or Special Encounter
  (213, 21300, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0214 Heracross - Native Encounter
  (214, 21400, 8, NULL, 1, NULL),
  -- #0215 Sneasel - Native Encounter
  (215, 21500, 8, NULL, 1, NULL),
  -- #0216 Teddiursa - Raid or Special Encounter
  (216, 21600, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0217 Ursaring - Raid or Special Encounter
  (217, 21700, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0218 Slugma - Native Encounter
  (218, 21800, 8, NULL, 1, NULL),
  -- #0219 Magcargo - Native Encounter
  (219, 21900, 8, NULL, 1, NULL),
  -- #0220 Swinub - Raid or Special Encounter
  (220, 22000, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0221 Piloswine - Evolution
  (221, 22100, 8, NULL, 7, NULL),
  -- #0222 Corsola - Raid or Special Encounter
  (222, 22200, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0223 Remoraid - Native Encounter
  (223, 22300, 8, NULL, 1, NULL),
  -- #0224 Octillery - Native Encounter
  (224, 22400, 8, NULL, 1, NULL),
  -- #0225 Delibird - Raid or Special Encounter
  (225, 22500, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0226 Mantine - Evolution
  (226, 22600, 8, NULL, 7, NULL),
  -- #0227 Skarmory - Native Encounter
  (227, 22700, 8, NULL, 1, NULL),
  -- #0228 Houndour - Diamond - External Trade
  (228, 22800, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0228 Houndour - Pearl - Breeding
  (228, 22800, 8, 13, 8, NULL),
  -- #0229 Houndoom - Diamond - External Trade
  (229, 22900, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0229 Houndoom - Pearl - Native Encounter
  (229, 22900, 8, 13, 1, NULL),
  -- #0230 Kingdra - Evolution
  (230, 23000, 8, NULL, 7, 'Trade evolution from an available source Pokémon in Diamond/Pearl.'),
  -- #0231 Phanpy - Raid or Special Encounter
  (231, 23100, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0232 Donphan - Evolution
  (232, 23200, 8, NULL, 7, NULL),
  -- #0233 Porygon2 - Evolution
  (233, 23300, 8, NULL, 7, 'Trade evolution from an available source Pokémon in Diamond/Pearl.'),
  -- #0234 Stantler - Diamond - External Trade
  (234, 23400, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0234 Stantler - Pearl - Native Encounter
  (234, 23400, 8, 13, 1, NULL),
  -- #0235 Smeargle - Native Encounter
  (235, 23500, 8, NULL, 1, NULL),
  -- #0236 Tyrogue - Native Encounter
  (236, 23600, 8, NULL, 1, NULL),
  -- #0237 Hitmontop - Evolution
  (237, 23700, 8, NULL, 7, NULL),
  -- #0238 Smoochum - Raid or Special Encounter
  (238, 23800, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0239 Elekid - Raid or Special Encounter
  (239, 23900, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0240 Magby - Raid or Special Encounter
  (240, 24000, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0241 Miltank - Native Encounter
  (241, 24100, 8, NULL, 1, NULL),
  -- #0242 Blissey - Evolution
  (242, 24200, 8, NULL, 7, NULL),
  -- #0243 Raikou - External Trade
  (243, 24300, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible external source, Pal Park transfer, trade, or historical official distribution.'),
  -- #0244 Entei - External Trade
  (244, 24400, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible external source, Pal Park transfer, trade, or historical official distribution.'),
  -- #0245 Suicune - External Trade
  (245, 24500, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible external source, Pal Park transfer, trade, or historical official distribution.'),
  -- #0246 Larvitar - Diamond - Native Encounter
  (246, 24600, 8, 12, 1, NULL),
  -- #0246 Larvitar - Pearl - External Trade
  (246, 24600, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0247 Pupitar - Diamond - Evolution
  (247, 24700, 8, 12, 7, NULL),
  -- #0247 Pupitar - Pearl - External Trade
  (247, 24700, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0248 Tyranitar - Diamond - Evolution
  (248, 24800, 8, 12, 7, NULL),
  -- #0248 Tyranitar - Pearl - External Trade
  (248, 24800, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0249 Lugia - External Trade
  (249, 24900, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0250 Ho-Oh - External Trade
  (250, 25000, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0251 Celebi - Event
  (251, 25100, 8, NULL, 11, 'Event/distribution-only in Generation IV; not obtainable through normal Diamond/Pearl gameplay.'),
  -- #0252 Treecko - External Trade
  (252, 25200, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0253 Grovyle - External Trade
  (253, 25300, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0254 Sceptile - External Trade
  (254, 25400, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0255 Torchic - External Trade
  (255, 25500, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0256 Combusken - External Trade
  (256, 25600, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0257 Blaziken - External Trade
  (257, 25700, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0258 Mudkip - External Trade
  (258, 25800, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0259 Marshtomp - External Trade
  (259, 25900, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0260 Swampert - External Trade
  (260, 26000, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0261 Poochyena - Diamond - Breeding
  (261, 26100, 8, 12, 8, NULL),
  -- #0261 Poochyena - Pearl - External Trade
  (261, 26100, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0262 Mightyena - Diamond - Native Encounter
  (262, 26200, 8, 12, 1, NULL),
  -- #0262 Mightyena - Pearl - External Trade
  (262, 26200, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0263 Zigzagoon - Raid or Special Encounter
  (263, 26300, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0264 Linoone - Evolution
  (264, 26400, 8, NULL, 7, NULL),
  -- #0265 Wurmple - Native Encounter
  (265, 26500, 8, NULL, 1, NULL),
  -- #0266 Silcoon - Diamond - Native Encounter
  (266, 26600, 8, 12, 1, NULL),
  -- #0266 Silcoon - Pearl - Evolution
  (266, 26600, 8, 13, 7, NULL),
  -- #0267 Beautifly - Native Encounter
  (267, 26700, 8, NULL, 1, NULL),
  -- #0268 Cascoon - Diamond - Evolution
  (268, 26800, 8, 12, 7, NULL),
  -- #0268 Cascoon - Pearl - Native Encounter
  (268, 26800, 8, 13, 1, NULL),
  -- #0269 Dustox - Diamond - Evolution
  (269, 26900, 8, 12, 7, NULL),
  -- #0269 Dustox - Pearl - Native Encounter
  (269, 26900, 8, 13, 1, NULL),
  -- #0270 Lotad - Raid or Special Encounter
  (270, 27000, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0271 Lombre - Raid or Special Encounter
  (271, 27100, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0272 Ludicolo - Evolution
  (272, 27200, 8, NULL, 7, 'Requires evolving a dual-slot source Pokémon; National Dex and compatible Game Boy Advance cartridge required.'),
  -- #0273 Seedot - Raid or Special Encounter
  (273, 27300, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0274 Nuzleaf - Raid or Special Encounter
  (274, 27400, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0275 Shiftry - Evolution
  (275, 27500, 8, NULL, 7, 'Requires evolving a dual-slot source Pokémon; National Dex and compatible Game Boy Advance cartridge required.'),
  -- #0276 Taillow - Breeding
  (276, 27600, 8, NULL, 8, NULL),
  -- #0277 Swellow - Native Encounter
  (277, 27700, 8, NULL, 1, NULL),
  -- #0278 Wingull - Native Encounter
  (278, 27800, 8, NULL, 1, NULL),
  -- #0279 Pelipper - Native Encounter
  (279, 27900, 8, NULL, 1, NULL),
  -- #0280 Ralts - Native Encounter
  (280, 28000, 8, NULL, 1, NULL),
  -- #0281 Kirlia - Native Encounter
  (281, 28100, 8, NULL, 1, NULL),
  -- #0282 Gardevoir - Evolution
  (282, 28200, 8, NULL, 7, NULL),
  -- #0283 Surskit - Raid or Special Encounter
  (283, 28300, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0284 Masquerain - Evolution
  (284, 28400, 8, NULL, 7, NULL),
  -- #0285 Shroomish - Raid or Special Encounter
  (285, 28500, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0286 Breloom - Evolution
  (286, 28600, 8, NULL, 7, NULL),
  -- #0287 Slakoth - Raid or Special Encounter
  (287, 28700, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0288 Vigoroth - Evolution
  (288, 28800, 8, NULL, 7, NULL),
  -- #0289 Slaking - Evolution
  (289, 28900, 8, NULL, 7, NULL),
  -- #0290 Nincada - Native Encounter
  (290, 29000, 8, NULL, 1, NULL),
  -- #0291 Ninjask - Evolution
  (291, 29100, 8, NULL, 7, NULL),
  -- #0292 Shedinja - Evolution
  (292, 29200, 8, NULL, 7, NULL),
  -- #0293 Whismur - Breeding
  (293, 29300, 8, NULL, 8, NULL),
  -- #0294 Loudred - Native Encounter
  (294, 29400, 8, NULL, 1, NULL),
  -- #0295 Exploud - Evolution
  (295, 29500, 8, NULL, 7, NULL),
  -- #0296 Makuhita - Raid or Special Encounter
  (296, 29600, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0297 Hariyama - Evolution
  (297, 29700, 8, NULL, 7, NULL),
  -- #0298 Azurill - Native Encounter
  (298, 29800, 8, NULL, 1, NULL),
  -- #0299 Nosepass - Raid or Special Encounter
  (299, 29900, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0300 Skitty - Raid or Special Encounter
  (300, 30000, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0301 Delcatty - Evolution
  (301, 30100, 8, NULL, 7, NULL),
  -- #0302 Sableye - Raid or Special Encounter
  (302, 30200, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0303 Mawile - Raid or Special Encounter
  (303, 30300, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0304 Aron - Diamond - Native Encounter
  (304, 30400, 8, 12, 1, NULL),
  -- #0304 Aron - Pearl - External Trade
  (304, 30400, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0305 Lairon - Diamond - Evolution
  (305, 30500, 8, 12, 7, NULL),
  -- #0305 Lairon - Pearl - External Trade
  (305, 30500, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0306 Aggron - Diamond - Evolution
  (306, 30600, 8, 12, 7, NULL),
  -- #0306 Aggron - Pearl - External Trade
  (306, 30600, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0307 Meditite - Native Encounter
  (307, 30700, 8, NULL, 1, NULL),
  -- #0308 Medicham - Native Encounter
  (308, 30800, 8, NULL, 1, NULL),
  -- #0309 Electrike - Raid or Special Encounter
  (309, 30900, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0310 Manectric - Evolution
  (310, 31000, 8, NULL, 7, NULL),
  -- #0311 Plusle - Raid or Special Encounter
  (311, 31100, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0312 Minun - Raid or Special Encounter
  (312, 31200, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0313 Volbeat - Native Encounter
  (313, 31300, 8, NULL, 1, NULL),
  -- #0314 Illumise - Native Encounter
  (314, 31400, 8, NULL, 1, NULL),
  -- #0315 Roselia - Native Encounter
  (315, 31500, 8, NULL, 1, NULL),
  -- #0316 Gulpin - Raid or Special Encounter
  (316, 31600, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0317 Swalot - Evolution
  (317, 31700, 8, NULL, 7, NULL),
  -- #0318 Carvanha - Native Encounter
  (318, 31800, 8, NULL, 1, NULL),
  -- #0319 Sharpedo - Native Encounter
  (319, 31900, 8, NULL, 1, NULL),
  -- #0320 Wailmer - Native Encounter
  (320, 32000, 8, NULL, 1, NULL),
  -- #0321 Wailord - Native Encounter
  (321, 32100, 8, NULL, 1, NULL),
  -- #0322 Numel - Native Encounter
  (322, 32200, 8, NULL, 1, NULL),
  -- #0323 Camerupt - Native Encounter
  (323, 32300, 8, NULL, 1, NULL),
  -- #0324 Torkoal - Native Encounter
  (324, 32400, 8, NULL, 1, NULL),
  -- #0325 Spoink - Raid or Special Encounter
  (325, 32500, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0326 Grumpig - Evolution
  (326, 32600, 8, NULL, 7, NULL),
  -- #0327 Spinda - Raid or Special Encounter
  (327, 32700, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0328 Trapinch - Native Encounter
  (328, 32800, 8, NULL, 1, NULL),
  -- #0329 Vibrava - Native Encounter
  (329, 32900, 8, NULL, 1, NULL),
  -- #0330 Flygon - Evolution
  (330, 33000, 8, NULL, 7, NULL),
  -- #0331 Cacnea - Native Encounter
  (331, 33100, 8, NULL, 1, NULL),
  -- #0332 Cacturne - Native Encounter
  (332, 33200, 8, NULL, 1, NULL),
  -- #0333 Swablu - Native Encounter
  (333, 33300, 8, NULL, 1, NULL),
  -- #0334 Altaria - Evolution
  (334, 33400, 8, NULL, 7, NULL),
  -- #0335 Zangoose - Raid or Special Encounter
  (335, 33500, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0336 Seviper - Raid or Special Encounter
  (336, 33600, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0337 Lunatone - Raid or Special Encounter
  (337, 33700, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0338 Solrock - Raid or Special Encounter
  (338, 33800, 8, NULL, 10, 'Dual-slot encounter; requires National Dex and a compatible Game Boy Advance cartridge inserted.'),
  -- #0339 Barboach - Native Encounter
  (339, 33900, 8, NULL, 1, NULL),
  -- #0340 Whiscash - Native Encounter
  (340, 34000, 8, NULL, 1, NULL),
  -- #0341 Corphish - Native Encounter
  (341, 34100, 8, NULL, 1, NULL),
  -- #0342 Crawdaunt - Native Encounter
  (342, 34200, 8, NULL, 1, NULL),
  -- #0343 Baltoy - Native Encounter
  (343, 34300, 8, NULL, 1, NULL),
  -- #0344 Claydol - Evolution
  (344, 34400, 8, NULL, 7, NULL),
  -- #0345 Lileep - Fossil Restoration
  (345, 34500, 8, NULL, 6, 'Fossil restored from Underground fossil item.'),
  -- #0346 Cradily - Evolution
  (346, 34600, 8, NULL, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0347 Anorith - Fossil Restoration
  (347, 34700, 8, NULL, 6, 'Fossil restored from Underground fossil item.'),
  -- #0348 Armaldo - Evolution
  (348, 34800, 8, NULL, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0349 Feebas - Native Encounter
  (349, 34900, 8, NULL, 1, NULL),
  -- #0350 Milotic - Evolution
  (350, 35000, 8, NULL, 7, NULL),
  -- #0351 Castform - Raid or Special Encounter
  (351, 35100, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0352 Kecleon - Diamond - Native Encounter
  (352, 35200, 8, 12, 1, NULL),
  -- #0352 Kecleon - Pearl - External Trade
  (352, 35200, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0353 Shuppet - Breeding
  (353, 35300, 8, NULL, 8, NULL),
  -- #0354 Banette - Native Encounter
  (354, 35400, 8, NULL, 1, NULL),
  -- #0355 Duskull - Native Encounter
  (355, 35500, 8, NULL, 1, NULL),
  -- #0356 Dusclops - Native Encounter
  (356, 35600, 8, NULL, 1, NULL),
  -- #0357 Tropius - External Trade
  (357, 35700, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible external source, Pal Park transfer, trade, or historical official distribution.'),
  -- #0358 Chimecho - Native Encounter
  (358, 35800, 8, NULL, 1, NULL),
  -- #0359 Absol - Raid or Special Encounter
  (359, 35900, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0360 Wynaut - Breeding
  (360, 36000, 8, NULL, 8, NULL),
  -- #0361 Snorunt - Native Encounter
  (361, 36100, 8, NULL, 1, NULL),
  -- #0362 Glalie - Evolution
  (362, 36200, 8, NULL, 7, NULL),
  -- #0363 Spheal - Diamond - External Trade
  (363, 36300, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0363 Spheal - Pearl - Native Encounter
  (363, 36300, 8, 13, 1, NULL),
  -- #0364 Sealeo - Diamond - External Trade
  (364, 36400, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0364 Sealeo - Pearl - Native Encounter
  (364, 36400, 8, 13, 1, NULL),
  -- #0365 Walrein - Diamond - External Trade
  (365, 36500, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0365 Walrein - Pearl - Evolution
  (365, 36500, 8, 13, 7, NULL),
  -- #0366 Clamperl - Native Encounter
  (366, 36600, 8, NULL, 1, NULL),
  -- #0367 Huntail - Evolution
  (367, 36700, 8, NULL, 7, 'Trade evolution from an available source Pokémon in Diamond/Pearl.'),
  -- #0368 Gorebyss - Evolution
  (368, 36800, 8, NULL, 7, 'Trade evolution from an available source Pokémon in Diamond/Pearl.'),
  -- #0369 Relicanth - Native Encounter
  (369, 36900, 8, NULL, 1, NULL),
  -- #0370 Luvdisc - Native Encounter
  (370, 37000, 8, NULL, 1, NULL),
  -- #0371 Bagon - Diamond - External Trade
  (371, 37100, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0371 Bagon - Pearl - Native Encounter
  (371, 37100, 8, 13, 1, NULL),
  -- #0372 Shelgon - Diamond - External Trade
  (372, 37200, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0372 Shelgon - Pearl - Evolution
  (372, 37200, 8, 13, 7, NULL),
  -- #0373 Salamence - Diamond - External Trade
  (373, 37300, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0373 Salamence - Pearl - Evolution
  (373, 37300, 8, 13, 7, NULL),
  -- #0374 Beldum - Raid or Special Encounter
  (374, 37400, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0375 Metang - Evolution
  (375, 37500, 8, NULL, 7, NULL),
  -- #0376 Metagross - Evolution
  (376, 37600, 8, NULL, 7, NULL),
  -- #0377 Regirock - External Trade
  (377, 37700, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0378 Regice - External Trade
  (378, 37800, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0379 Registeel - External Trade
  (379, 37900, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0380 Latias - External Trade
  (380, 38000, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0381 Latios - External Trade
  (381, 38100, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0382 Kyogre - External Trade
  (382, 38200, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0383 Groudon - External Trade
  (383, 38300, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible Generation IV trade or Pal Park transfer.'),
  -- #0384 Rayquaza - External Trade
  (384, 38400, 8, NULL, 12, 'Not obtainable through normal Diamond/Pearl gameplay; requires compatible external source, Pal Park transfer, trade, or historical official distribution.'),
  -- #0385 Jirachi - Event
  (385, 38500, 8, NULL, 11, 'Event/distribution-only in Generation IV; not obtainable through normal Diamond/Pearl gameplay.'),
  -- #0386 Deoxys - Event
  (386, 38600, 8, NULL, 11, 'Event/distribution-only in Generation IV; not obtainable through normal Diamond/Pearl gameplay.'),
  -- #0386 Deoxys (Attack) - Event
  (386, 38601, 8, NULL, 11, 'Requires event/distribution Deoxys; form can be changed with Veilstone meteorites in Diamond/Pearl.'),
  -- #0386 Deoxys (Defense) - Event
  (386, 38602, 8, NULL, 11, 'Requires event/distribution Deoxys; form can be changed with Veilstone meteorites in Diamond/Pearl.'),
  -- #0386 Deoxys (Speed) - Event
  (386, 38603, 8, NULL, 11, 'Requires event/distribution Deoxys; form can be changed with Veilstone meteorites in Diamond/Pearl.'),
  -- #0387 Turtwig - Starter
  (387, 38700, 8, NULL, 3, NULL),
  -- #0388 Grotle - Evolution
  (388, 38800, 8, NULL, 7, NULL),
  -- #0389 Torterra - Evolution
  (389, 38900, 8, NULL, 7, NULL),
  -- #0390 Chimchar - Starter
  (390, 39000, 8, NULL, 3, NULL),
  -- #0391 Monferno - Evolution
  (391, 39100, 8, NULL, 7, NULL),
  -- #0392 Infernape - Evolution
  (392, 39200, 8, NULL, 7, NULL),
  -- #0393 Piplup - Starter
  (393, 39300, 8, NULL, 3, NULL),
  -- #0394 Prinplup - Evolution
  (394, 39400, 8, NULL, 7, NULL),
  -- #0395 Empoleon - Evolution
  (395, 39500, 8, NULL, 7, NULL),
  -- #0396 Starly - Native Encounter
  (396, 39600, 8, NULL, 1, NULL),
  -- #0397 Staravia - Native Encounter
  (397, 39700, 8, NULL, 1, NULL),
  -- #0398 Staraptor - Evolution
  (398, 39800, 8, NULL, 7, NULL),
  -- #0399 Bidoof - Native Encounter
  (399, 39900, 8, NULL, 1, NULL),
  -- #0400 Bibarel - Native Encounter
  (400, 40000, 8, NULL, 1, NULL),
  -- #0401 Kricketot - Native Encounter
  (401, 40100, 8, NULL, 1, NULL),
  -- #0402 Kricketune - Native Encounter
  (402, 40200, 8, NULL, 1, NULL),
  -- #0403 Shinx - Native Encounter
  (403, 40300, 8, NULL, 1, NULL),
  -- #0404 Luxio - Native Encounter
  (404, 40400, 8, NULL, 1, NULL),
  -- #0405 Luxray - Evolution
  (405, 40500, 8, NULL, 7, NULL),
  -- #0406 Budew - Native Encounter
  (406, 40600, 8, NULL, 1, NULL),
  -- #0407 Roserade - Evolution
  (407, 40700, 8, NULL, 7, NULL),
  -- #0408 Cranidos - Diamond - Fossil Restoration
  (408, 40800, 8, 12, 6, 'Fossil restored from Underground fossil item.'),
  -- #0408 Cranidos - Pearl - External Trade
  (408, 40800, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0409 Rampardos - Diamond - Evolution
  (409, 40900, 8, 12, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0409 Rampardos - Pearl - External Trade
  (409, 40900, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0410 Shieldon - Diamond - External Trade
  (410, 41000, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0410 Shieldon - Pearl - Fossil Restoration
  (410, 41000, 8, 13, 6, 'Fossil restored from Underground fossil item.'),
  -- #0411 Bastiodon - Diamond - External Trade
  (411, 41100, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0411 Bastiodon - Pearl - Evolution
  (411, 41100, 8, 13, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0412 Burmy - Native Encounter
  (412, 41200, 8, NULL, 1, NULL),
  -- #0412 Burmy (Sandy Cloak) - Native Encounter
  (412, 41201, 8, NULL, 1, 'Burmy cloak form can be changed through battles in matching terrain; all cloaks are persistent team-selectable forms.'),
  -- #0412 Burmy (Trash Cloak) - Native Encounter
  (412, 41202, 8, NULL, 1, 'Burmy cloak form can be changed through battles in matching terrain; all cloaks are persistent team-selectable forms.'),
  -- #0413 Wormadam - Evolution
  (413, 41300, 8, NULL, 7, NULL),
  -- #0413 Wormadam (Sandy Cloak) - Evolution
  (413, 41301, 8, NULL, 7, 'Evolve a female Burmy with the matching cloak.'),
  -- #0413 Wormadam (Trash Cloak) - Evolution
  (413, 41302, 8, NULL, 7, 'Evolve a female Burmy with the matching cloak.'),
  -- #0414 Mothim - Evolution
  (414, 41400, 8, NULL, 7, NULL),
  -- #0415 Combee - Native Encounter
  (415, 41500, 8, NULL, 1, NULL),
  -- #0416 Vespiquen - Evolution
  (416, 41600, 8, NULL, 7, NULL),
  -- #0417 Pachirisu - Native Encounter
  (417, 41700, 8, NULL, 1, NULL),
  -- #0418 Buizel - Native Encounter
  (418, 41800, 8, NULL, 1, NULL),
  -- #0419 Floatzel - Native Encounter
  (419, 41900, 8, NULL, 1, NULL),
  -- #0420 Cherubi - Native Encounter
  (420, 42000, 8, NULL, 1, NULL),
  -- #0421 Cherrim - Evolution
  (421, 42100, 8, NULL, 7, NULL),
  -- #0422 Shellos - Native Encounter
  (422, 42200, 8, NULL, 1, NULL),
  -- #0423 Gastrodon - Native Encounter
  (423, 42300, 8, NULL, 1, NULL),
  -- #0424 Ambipom - Evolution
  (424, 42400, 8, NULL, 7, NULL),
  -- #0425 Drifloon - Static Encounter
  (425, 42500, 8, NULL, 2, 'Friday Valley Windworks static encounter.'),
  -- #0426 Drifblim - Evolution
  (426, 42600, 8, NULL, 7, NULL),
  -- #0427 Buneary - Native Encounter
  (427, 42700, 8, NULL, 1, NULL),
  -- #0428 Lopunny - Evolution
  (428, 42800, 8, NULL, 7, NULL),
  -- #0429 Mismagius - Diamond - External Trade
  (429, 42900, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0429 Mismagius - Pearl - Evolution
  (429, 42900, 8, 13, 7, NULL),
  -- #0430 Honchkrow - Diamond - Evolution
  (430, 43000, 8, 12, 7, NULL),
  -- #0430 Honchkrow - Pearl - External Trade
  (430, 43000, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0431 Glameow - Diamond - External Trade
  (431, 43100, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0431 Glameow - Pearl - Native Encounter
  (431, 43100, 8, 13, 1, NULL),
  -- #0432 Purugly - Diamond - External Trade
  (432, 43200, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0432 Purugly - Pearl - Native Encounter
  (432, 43200, 8, 13, 1, NULL),
  -- #0433 Chingling - Native Encounter
  (433, 43300, 8, NULL, 1, NULL),
  -- #0434 Stunky - Diamond - Native Encounter
  (434, 43400, 8, 12, 1, NULL),
  -- #0434 Stunky - Pearl - External Trade
  (434, 43400, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0435 Skuntank - Diamond - Native Encounter
  (435, 43500, 8, 12, 1, NULL),
  -- #0435 Skuntank - Pearl - External Trade
  (435, 43500, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0436 Bronzor - Native Encounter
  (436, 43600, 8, NULL, 1, NULL),
  -- #0437 Bronzong - Native Encounter
  (437, 43700, 8, NULL, 1, NULL),
  -- #0438 Bonsly - Diamond - Raid or Special Encounter
  (438, 43800, 8, 12, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0438 Bonsly - Pearl - Native Encounter
  (438, 43800, 8, 13, 1, NULL),
  -- #0439 Mime Jr. - Diamond - Native Encounter
  (439, 43900, 8, 12, 1, NULL),
  -- #0439 Mime Jr. - Pearl - Raid or Special Encounter
  (439, 43900, 8, 13, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0440 Happiny - Gift
  (440, 44000, 8, NULL, 4, 'Hearthome City Egg gift.'),
  -- #0441 Chatot - Native Encounter
  (441, 44100, 8, NULL, 1, NULL),
  -- #0442 Spiritomb - Static Encounter
  (442, 44200, 8, NULL, 2, 'Hallowed Tower static encounter requiring Underground player communication.'),
  -- #0443 Gible - Native Encounter
  (443, 44300, 8, NULL, 1, NULL),
  -- #0444 Gabite - Evolution
  (444, 44400, 8, NULL, 7, NULL),
  -- #0445 Garchomp - Evolution
  (445, 44500, 8, NULL, 7, NULL),
  -- #0446 Munchlax - Native Encounter
  (446, 44600, 8, NULL, 1, NULL),
  -- #0447 Riolu - Gift
  (447, 44700, 8, NULL, 4, 'Iron Island Egg gift from Riley.'),
  -- #0448 Lucario - Evolution
  (448, 44800, 8, NULL, 7, NULL),
  -- #0449 Hippopotas - Native Encounter
  (449, 44900, 8, NULL, 1, NULL),
  -- #0450 Hippowdon - Native Encounter
  (450, 45000, 8, NULL, 1, NULL),
  -- #0451 Skorupi - Raid or Special Encounter
  (451, 45100, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0452 Drapion - Raid or Special Encounter
  (452, 45200, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0453 Croagunk - Raid or Special Encounter
  (453, 45300, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0454 Toxicroak - Raid or Special Encounter
  (454, 45400, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0455 Carnivine - Raid or Special Encounter
  (455, 45500, 8, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0456 Finneon - Native Encounter
  (456, 45600, 8, NULL, 1, NULL),
  -- #0457 Lumineon - Native Encounter
  (457, 45700, 8, NULL, 1, NULL),
  -- #0458 Mantyke - Native Encounter
  (458, 45800, 8, NULL, 1, NULL),
  -- #0459 Snover - Native Encounter
  (459, 45900, 8, NULL, 1, NULL),
  -- #0460 Abomasnow - Native Encounter
  (460, 46000, 8, NULL, 1, NULL),
  -- #0461 Weavile - Evolution
  (461, 46100, 8, NULL, 7, NULL),
  -- #0462 Magnezone - Evolution
  (462, 46200, 8, NULL, 7, NULL),
  -- #0463 Lickilicky - Evolution
  (463, 46300, 8, NULL, 7, NULL),
  -- #0464 Rhyperior - Evolution
  (464, 46400, 8, NULL, 7, 'Trade evolution from an available source Pokémon in Diamond/Pearl.'),
  -- #0465 Tangrowth - Evolution
  (465, 46500, 8, NULL, 7, 'Requires transferring Tangela through Pal Park or compatible trade source, then evolving in Diamond/Pearl.'),
  -- #0466 Electivire - Evolution
  (466, 46600, 8, NULL, 7, 'Requires evolving a dual-slot source Pokémon by trade; National Dex and compatible Game Boy Advance cartridge required.'),
  -- #0467 Magmortar - Evolution
  (467, 46700, 8, NULL, 7, 'Requires evolving a dual-slot source Pokémon by trade; National Dex and compatible Game Boy Advance cartridge required.'),
  -- #0468 Togekiss - Evolution
  (468, 46800, 8, NULL, 7, NULL),
  -- #0469 Yanmega - Evolution
  (469, 46900, 8, NULL, 7, NULL),
  -- #0470 Leafeon - Evolution
  (470, 47000, 8, NULL, 7, NULL),
  -- #0471 Glaceon - Evolution
  (471, 47100, 8, NULL, 7, NULL),
  -- #0472 Gliscor - Evolution
  (472, 47200, 8, NULL, 7, 'Requires evolving a dual-slot source Pokémon; National Dex and compatible Game Boy Advance cartridge required.'),
  -- #0473 Mamoswine - Evolution
  (473, 47300, 8, NULL, 7, NULL),
  -- #0474 Porygon-Z - Evolution
  (474, 47400, 8, NULL, 7, 'Trade evolution from an available source Pokémon in Diamond/Pearl.'),
  -- #0475 Gallade - Evolution
  (475, 47500, 8, NULL, 7, NULL),
  -- #0476 Probopass - Evolution
  (476, 47600, 8, NULL, 7, NULL),
  -- #0477 Dusknoir - Evolution
  (477, 47700, 8, NULL, 7, 'Trade evolution from an available source Pokémon in Diamond/Pearl.'),
  -- #0478 Froslass - Evolution
  (478, 47800, 8, NULL, 7, NULL),
  -- #0479 Rotom - Static Encounter
  (479, 47900, 8, NULL, 2, 'Old Chateau static encounter after National Dex at night.'),
  -- #0480 Uxie - Static Encounter
  (480, 48000, 8, NULL, 2, 'Lake Acuity static encounter.'),
  -- #0481 Mesprit - Roaming Encounter
  (481, 48100, 8, NULL, 9, 'Roaming encounter after the Lake Verity story event.'),
  -- #0482 Azelf - Static Encounter
  (482, 48200, 8, NULL, 2, 'Lake Valor static encounter.'),
  -- #0483 Dialga - Diamond - Static Encounter
  (483, 48300, 8, 12, 2, 'Spear Pillar static encounter in Diamond.'),
  -- #0483 Dialga - Pearl - External Trade
  (483, 48300, 8, 13, 12, 'Version source is Diamond; available in Pearl by trade or compatible external transfer.'),
  -- #0484 Palkia - Diamond - External Trade
  (484, 48400, 8, 12, 12, 'Version source is Pearl; available in Diamond by trade or compatible external transfer.'),
  -- #0484 Palkia - Pearl - Static Encounter
  (484, 48400, 8, 13, 2, 'Spear Pillar static encounter in Pearl.'),
  -- #0485 Heatran - Static Encounter
  (485, 48500, 8, NULL, 2, 'Stark Mountain static encounter after National Dex.'),
  -- #0486 Regigigas - Static Encounter
  (486, 48600, 8, NULL, 2, 'Snowpoint Temple static encounter requiring Regirock, Regice, and Registeel in the party.'),
  -- #0487 Giratina - Static Encounter
  (487, 48700, 8, NULL, 2, 'Turnback Cave static encounter after National Dex.'),
  -- #0488 Cresselia - Roaming Encounter
  (488, 48800, 8, NULL, 9, 'Roaming encounter after the Fullmoon Island event.'),
  -- #0489 Phione - Breeding
  (489, 48900, 8, NULL, 8, 'Breed Manaphy with Ditto; requires Manaphy from Pokémon Ranger Egg or official distribution source.'),
  -- #0490 Manaphy - Event
  (490, 49000, 8, NULL, 11, 'Pokémon Ranger Egg or official distribution source; not obtainable through normal Diamond/Pearl gameplay.'),
  -- #0491 Darkrai - Event
  (491, 49100, 8, NULL, 11, 'Event/distribution-only in Generation IV; not obtainable through normal Diamond/Pearl gameplay.'),
  -- #0492 Shaymin - Event
  (492, 49200, 8, NULL, 11, 'Event/distribution-only in Generation IV; not obtainable through normal Diamond/Pearl gameplay.'),
  -- #0493 Arceus - Event
  (493, 49300, 8, NULL, 11, 'Event/distribution-only in Generation IV; not obtainable through normal Diamond/Pearl gameplay.'),
  -- #0493 Arceus (Fighting) - Event
  (493, 49301, 8, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Diamond/Pearl.'),
  -- #0493 Arceus (Flying) - Event
  (493, 49302, 8, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Diamond/Pearl.'),
  -- #0493 Arceus (Poison) - Event
  (493, 49303, 8, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Diamond/Pearl.'),
  -- #0493 Arceus (Ground) - Event
  (493, 49304, 8, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Diamond/Pearl.'),
  -- #0493 Arceus (Rock) - Event
  (493, 49305, 8, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Diamond/Pearl.'),
  -- #0493 Arceus (Bug) - Event
  (493, 49306, 8, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Diamond/Pearl.'),
  -- #0493 Arceus (Ghost) - Event
  (493, 49307, 8, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Diamond/Pearl.'),
  -- #0493 Arceus (Steel) - Event
  (493, 49308, 8, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Diamond/Pearl.'),
  -- #0493 Arceus (Fire) - Event
  (493, 49309, 8, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Diamond/Pearl.'),
  -- #0493 Arceus (Water) - Event
  (493, 49310, 8, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Diamond/Pearl.'),
  -- #0493 Arceus (Grass) - Event
  (493, 49311, 8, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Diamond/Pearl.'),
  -- #0493 Arceus (Electric) - Event
  (493, 49312, 8, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Diamond/Pearl.'),
  -- #0493 Arceus (Psychic) - Event
  (493, 49313, 8, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Diamond/Pearl.'),
  -- #0493 Arceus (Ice) - Event
  (493, 49314, 8, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Diamond/Pearl.'),
  -- #0493 Arceus (Dragon) - Event
  (493, 49315, 8, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Diamond/Pearl.'),
  -- #0493 Arceus (Dark) - Event
  (493, 49316, 8, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Diamond/Pearl.');
