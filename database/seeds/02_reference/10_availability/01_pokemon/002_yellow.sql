-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon availability, gift Pokémon, in-game trade, and species location pages.
-- Cross-check: PokemonDB Yellow Pokedex, PokemonDB Yellow unobtainable list, and legacy Voydex Yellow availability seed.
-- Scope note: all 151 Kanto species are modeled for planning; Yellow-unavailable species use external_trade.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Yellow
-- Table: reference.pokemon_availability
-- Scope: 151 version-group-wide rows, including 13 external-trade-only species.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0001 Bulbasaur - Gift
  (1, 100, 2, NULL, 4, 'Gift in Cerulean City; requires sufficient starter Pikachu friendship.'),
  -- #0002 Ivysaur - Evolution
  (2, 200, 2, NULL, 7, NULL),
  -- #0003 Venusaur - Evolution
  (3, 300, 2, NULL, 7, NULL),
  -- #0004 Charmander - Gift
  (4, 400, 2, NULL, 4, 'Gift north of Route 24.'),
  -- #0005 Charmeleon - Evolution
  (5, 500, 2, NULL, 7, NULL),
  -- #0006 Charizard - Evolution
  (6, 600, 2, NULL, 7, NULL),
  -- #0007 Squirtle - Gift
  (7, 700, 2, NULL, 4, 'Gift in Vermilion City after defeating Lt. Surge.'),
  -- #0008 Wartortle - Evolution
  (8, 800, 2, NULL, 7, NULL),
  -- #0009 Blastoise - Evolution
  (9, 900, 2, NULL, 7, NULL),
  -- #0010 Caterpie - Native Encounter
  (10, 1000, 2, NULL, 1, NULL),
  -- #0011 Metapod - Evolution
  (11, 1100, 2, NULL, 7, NULL),
  -- #0012 Butterfree - Evolution
  (12, 1200, 2, NULL, 7, NULL),
  -- #0013 Weedle - External Trade
  (13, 1300, 2, NULL, 12, 'Unavailable through normal Yellow gameplay; available only by trading from a compatible external game.'),
  -- #0014 Kakuna - External Trade
  (14, 1400, 2, NULL, 12, 'Unavailable through normal Yellow gameplay; available only by trading from a compatible external game.'),
  -- #0015 Beedrill - External Trade
  (15, 1500, 2, NULL, 12, 'Unavailable through normal Yellow gameplay; available only by trading from a compatible external game.'),
  -- #0016 Pidgey - Native Encounter
  (16, 1600, 2, NULL, 1, NULL),
  -- #0017 Pidgeotto - Evolution
  (17, 1700, 2, NULL, 7, NULL),
  -- #0018 Pidgeot - Evolution
  (18, 1800, 2, NULL, 7, NULL),
  -- #0019 Rattata - Native Encounter
  (19, 1900, 2, NULL, 1, NULL),
  -- #0020 Raticate - Evolution
  (20, 2000, 2, NULL, 7, NULL),
  -- #0021 Spearow - Native Encounter
  (21, 2100, 2, NULL, 1, NULL),
  -- #0022 Fearow - Evolution
  (22, 2200, 2, NULL, 7, NULL),
  -- #0023 Ekans - External Trade
  (23, 2300, 2, NULL, 12, 'Unavailable through normal Yellow gameplay; available only by trading from a compatible external game.'),
  -- #0024 Arbok - External Trade
  (24, 2400, 2, NULL, 12, 'Unavailable through normal Yellow gameplay; available only by trading from a compatible external game.'),
  -- #0025 Pikachu - Starter
  (25, 2500, 2, NULL, 3, 'Only the starter Pikachu is available in Yellow; it follows the player and cannot evolve into Raichu in the same game.'),
  -- #0026 Raichu - External Trade
  (26, 2600, 2, NULL, 12, 'Unavailable through normal Yellow gameplay; available only by trading from a compatible external game.'),
  -- #0027 Sandshrew - Native Encounter
  (27, 2700, 2, NULL, 1, NULL),
  -- #0028 Sandslash - Evolution
  (28, 2800, 2, NULL, 7, NULL),
  -- #0029 Nidoran F - Native Encounter
  (29, 2900, 2, NULL, 1, NULL),
  -- #0030 Nidorina - Evolution
  (30, 3000, 2, NULL, 7, NULL),
  -- #0031 Nidoqueen - Evolution
  (31, 3100, 2, NULL, 7, NULL),
  -- #0032 Nidoran M - Native Encounter
  (32, 3200, 2, NULL, 1, NULL),
  -- #0033 Nidorino - Evolution
  (33, 3300, 2, NULL, 7, NULL),
  -- #0034 Nidoking - Evolution
  (34, 3400, 2, NULL, 7, NULL),
  -- #0035 Clefairy - Native Encounter
  (35, 3500, 2, NULL, 1, NULL),
  -- #0036 Clefable - Evolution
  (36, 3600, 2, NULL, 7, NULL),
  -- #0037 Vulpix - Native Encounter
  (37, 3700, 2, NULL, 1, NULL),
  -- #0038 Ninetales - Evolution
  (38, 3800, 2, NULL, 7, NULL),
  -- #0039 Jigglypuff - Native Encounter
  (39, 3900, 2, NULL, 1, NULL),
  -- #0040 Wigglytuff - Evolution
  (40, 4000, 2, NULL, 7, NULL),
  -- #0041 Zubat - Native Encounter
  (41, 4100, 2, NULL, 1, NULL),
  -- #0042 Golbat - Evolution
  (42, 4200, 2, NULL, 7, NULL),
  -- #0043 Oddish - Native Encounter
  (43, 4300, 2, NULL, 1, NULL),
  -- #0044 Gloom - Evolution
  (44, 4400, 2, NULL, 7, NULL),
  -- #0045 Vileplume - Evolution
  (45, 4500, 2, NULL, 7, NULL),
  -- #0046 Paras - Native Encounter
  (46, 4600, 2, NULL, 1, NULL),
  -- #0047 Parasect - Evolution
  (47, 4700, 2, NULL, 7, NULL),
  -- #0048 Venonat - Native Encounter
  (48, 4800, 2, NULL, 1, NULL),
  -- #0049 Venomoth - Evolution
  (49, 4900, 2, NULL, 7, NULL),
  -- #0050 Diglett - Native Encounter
  (50, 5000, 2, NULL, 1, NULL),
  -- #0051 Dugtrio - Evolution
  (51, 5100, 2, NULL, 7, NULL),
  -- #0052 Meowth - External Trade
  (52, 5200, 2, NULL, 12, 'Unavailable through normal Yellow gameplay; available only by trading from a compatible external game.'),
  -- #0053 Persian - External Trade
  (53, 5300, 2, NULL, 12, 'Unavailable through normal Yellow gameplay; available only by trading from a compatible external game.'),
  -- #0054 Psyduck - Native Encounter
  (54, 5400, 2, NULL, 1, NULL),
  -- #0055 Golduck - Evolution
  (55, 5500, 2, NULL, 7, NULL),
  -- #0056 Mankey - Native Encounter
  (56, 5600, 2, NULL, 1, NULL),
  -- #0057 Primeape - Evolution
  (57, 5700, 2, NULL, 7, NULL),
  -- #0058 Growlithe - Native Encounter
  (58, 5800, 2, NULL, 1, NULL),
  -- #0059 Arcanine - Evolution
  (59, 5900, 2, NULL, 7, NULL),
  -- #0060 Poliwag - Native Encounter
  (60, 6000, 2, NULL, 1, NULL),
  -- #0061 Poliwhirl - Evolution
  (61, 6100, 2, NULL, 7, NULL),
  -- #0062 Poliwrath - Evolution
  (62, 6200, 2, NULL, 7, NULL),
  -- #0063 Abra - Native Encounter
  (63, 6300, 2, NULL, 1, NULL),
  -- #0064 Kadabra - Evolution
  (64, 6400, 2, NULL, 7, NULL),
  -- #0065 Alakazam - Evolution
  (65, 6500, 2, NULL, 7, 'Requires external player trade evolution in Generation I.'),
  -- #0066 Machop - Native Encounter
  (66, 6600, 2, NULL, 1, NULL),
  -- #0067 Machoke - Evolution
  (67, 6700, 2, NULL, 7, NULL),
  -- #0068 Machamp - In-Game Trade
  (68, 6800, 2, NULL, 5, 'Received as Machoke from Yellow''s Underground Path in-game trade; it evolves into Machamp during the trade.'),
  -- #0069 Bellsprout - Native Encounter
  (69, 6900, 2, NULL, 1, NULL),
  -- #0070 Weepinbell - Evolution
  (70, 7000, 2, NULL, 7, NULL),
  -- #0071 Victreebel - Evolution
  (71, 7100, 2, NULL, 7, NULL),
  -- #0072 Tentacool - Native Encounter
  (72, 7200, 2, NULL, 1, NULL),
  -- #0073 Tentacruel - Evolution
  (73, 7300, 2, NULL, 7, NULL),
  -- #0074 Geodude - Native Encounter
  (74, 7400, 2, NULL, 1, NULL),
  -- #0075 Graveler - Evolution
  (75, 7500, 2, NULL, 7, NULL),
  -- #0076 Golem - Evolution
  (76, 7600, 2, NULL, 7, 'Requires external player trade evolution in Generation I.'),
  -- #0077 Ponyta - Native Encounter
  (77, 7700, 2, NULL, 1, NULL),
  -- #0078 Rapidash - Evolution
  (78, 7800, 2, NULL, 7, NULL),
  -- #0079 Slowpoke - Native Encounter
  (79, 7900, 2, NULL, 1, NULL),
  -- #0080 Slowbro - Evolution
  (80, 8000, 2, NULL, 7, NULL),
  -- #0081 Magnemite - Native Encounter
  (81, 8100, 2, NULL, 1, NULL),
  -- #0082 Magneton - Evolution
  (82, 8200, 2, NULL, 7, NULL),
  -- #0083 Farfetch'd - Native Encounter
  (83, 8300, 2, NULL, 1, NULL),
  -- #0084 Doduo - Native Encounter
  (84, 8400, 2, NULL, 1, NULL),
  -- #0085 Dodrio - Evolution
  (85, 8500, 2, NULL, 7, NULL),
  -- #0086 Seel - Native Encounter
  (86, 8600, 2, NULL, 1, NULL),
  -- #0087 Dewgong - Evolution
  (87, 8700, 2, NULL, 7, NULL),
  -- #0088 Grimer - Native Encounter
  (88, 8800, 2, NULL, 1, NULL),
  -- #0089 Muk - Evolution
  (89, 8900, 2, NULL, 7, NULL),
  -- #0090 Shellder - Native Encounter
  (90, 9000, 2, NULL, 1, NULL),
  -- #0091 Cloyster - Evolution
  (91, 9100, 2, NULL, 7, NULL),
  -- #0092 Gastly - Native Encounter
  (92, 9200, 2, NULL, 1, NULL),
  -- #0093 Haunter - Evolution
  (93, 9300, 2, NULL, 7, NULL),
  -- #0094 Gengar - Evolution
  (94, 9400, 2, NULL, 7, 'Requires external player trade evolution in Generation I.'),
  -- #0095 Onix - Native Encounter
  (95, 9500, 2, NULL, 1, NULL),
  -- #0096 Drowzee - Native Encounter
  (96, 9600, 2, NULL, 1, NULL),
  -- #0097 Hypno - Evolution
  (97, 9700, 2, NULL, 7, NULL),
  -- #0098 Krabby - Native Encounter
  (98, 9800, 2, NULL, 1, NULL),
  -- #0099 Kingler - Evolution
  (99, 9900, 2, NULL, 7, NULL),
  -- #0100 Voltorb - Native Encounter
  (100, 10000, 2, NULL, 1, NULL),
  -- #0101 Electrode - Evolution
  (101, 10100, 2, NULL, 7, NULL),
  -- #0102 Exeggcute - Native Encounter
  (102, 10200, 2, NULL, 1, NULL),
  -- #0103 Exeggutor - Evolution
  (103, 10300, 2, NULL, 7, NULL),
  -- #0104 Cubone - Native Encounter
  (104, 10400, 2, NULL, 1, NULL),
  -- #0105 Marowak - Evolution
  (105, 10500, 2, NULL, 7, NULL),
  -- #0106 Hitmonlee - Gift
  (106, 10600, 2, NULL, 4, 'One of two mutually exclusive Fighting Dojo gift choices in a single save file.'),
  -- #0107 Hitmonchan - Gift
  (107, 10700, 2, NULL, 4, 'One of two mutually exclusive Fighting Dojo gift choices in a single save file.'),
  -- #0108 Lickitung - Native Encounter
  (108, 10800, 2, NULL, 1, NULL),
  -- #0109 Koffing - External Trade
  (109, 10900, 2, NULL, 12, 'Unavailable through normal Yellow gameplay; available only by trading from a compatible external game.'),
  -- #0110 Weezing - External Trade
  (110, 11000, 2, NULL, 12, 'Unavailable through normal Yellow gameplay; available only by trading from a compatible external game.'),
  -- #0111 Rhyhorn - Native Encounter
  (111, 11100, 2, NULL, 1, NULL),
  -- #0112 Rhydon - Evolution
  (112, 11200, 2, NULL, 7, NULL),
  -- #0113 Chansey - Native Encounter
  (113, 11300, 2, NULL, 1, NULL),
  -- #0114 Tangela - Native Encounter
  (114, 11400, 2, NULL, 1, NULL),
  -- #0115 Kangaskhan - Native Encounter
  (115, 11500, 2, NULL, 1, NULL),
  -- #0116 Horsea - Native Encounter
  (116, 11600, 2, NULL, 1, NULL),
  -- #0117 Seadra - Evolution
  (117, 11700, 2, NULL, 7, NULL),
  -- #0118 Goldeen - Native Encounter
  (118, 11800, 2, NULL, 1, NULL),
  -- #0119 Seaking - Evolution
  (119, 11900, 2, NULL, 7, NULL),
  -- #0120 Staryu - Native Encounter
  (120, 12000, 2, NULL, 1, NULL),
  -- #0121 Starmie - Evolution
  (121, 12100, 2, NULL, 7, NULL),
  -- #0122 Mr. Mime - In-Game Trade
  (122, 12200, 2, NULL, 5, 'Obtained through the Route 2 in-game trade.'),
  -- #0123 Scyther - Native Encounter
  (123, 12300, 2, NULL, 1, NULL),
  -- #0124 Jynx - External Trade
  (124, 12400, 2, NULL, 12, 'Unavailable through normal Yellow gameplay; available only by trading from a compatible external game.'),
  -- #0125 Electabuzz - External Trade
  (125, 12500, 2, NULL, 12, 'Unavailable through normal Yellow gameplay; available only by trading from a compatible external game.'),
  -- #0126 Magmar - External Trade
  (126, 12600, 2, NULL, 12, 'Unavailable through normal Yellow gameplay; available only by trading from a compatible external game.'),
  -- #0127 Pinsir - Native Encounter
  (127, 12700, 2, NULL, 1, NULL),
  -- #0128 Tauros - Native Encounter
  (128, 12800, 2, NULL, 1, NULL),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 2, NULL, 1, NULL),
  -- #0130 Gyarados - Evolution
  (130, 13000, 2, NULL, 7, NULL),
  -- #0131 Lapras - Gift
  (131, 13100, 2, NULL, 4, NULL),
  -- #0132 Ditto - Native Encounter
  (132, 13200, 2, NULL, 1, NULL),
  -- #0133 Eevee - Gift
  (133, 13300, 2, NULL, 4, 'Single Celadon Mansion gift; Eeveelution choice is mutually exclusive in one save file without external trades.'),
  -- #0134 Vaporeon - Evolution
  (134, 13400, 2, NULL, 7, 'Evolves from the single Eevee gift, making Eeveelutions mutually exclusive in one save file without external trades.'),
  -- #0135 Jolteon - Evolution
  (135, 13500, 2, NULL, 7, 'Evolves from the single Eevee gift, making Eeveelutions mutually exclusive in one save file without external trades.'),
  -- #0136 Flareon - Evolution
  (136, 13600, 2, NULL, 7, 'Evolves from the single Eevee gift, making Eeveelutions mutually exclusive in one save file without external trades.'),
  -- #0137 Porygon - Gift
  (137, 13700, 2, NULL, 4, 'Obtained as a Rocket Game Corner prize in Yellow.'),
  -- #0138 Omanyte - Fossil Restoration
  (138, 13800, 2, NULL, 6, 'One of two mutually exclusive Mt. Moon Fossil choices in a single save file.'),
  -- #0139 Omastar - Evolution
  (139, 13900, 2, NULL, 7, NULL),
  -- #0140 Kabuto - Fossil Restoration
  (140, 14000, 2, NULL, 6, 'One of two mutually exclusive Mt. Moon Fossil choices in a single save file.'),
  -- #0141 Kabutops - Evolution
  (141, 14100, 2, NULL, 7, NULL),
  -- #0142 Aerodactyl - Fossil Restoration
  (142, 14200, 2, NULL, 6, NULL),
  -- #0143 Snorlax - Static Encounter
  (143, 14300, 2, NULL, 2, NULL),
  -- #0144 Articuno - Static Encounter
  (144, 14400, 2, NULL, 2, NULL),
  -- #0145 Zapdos - Static Encounter
  (145, 14500, 2, NULL, 2, NULL),
  -- #0146 Moltres - Static Encounter
  (146, 14600, 2, NULL, 2, NULL),
  -- #0147 Dratini - Native Encounter
  (147, 14700, 2, NULL, 1, NULL),
  -- #0148 Dragonair - Evolution
  (148, 14800, 2, NULL, 7, NULL),
  -- #0149 Dragonite - Evolution
  (149, 14900, 2, NULL, 7, NULL),
  -- #0150 Mewtwo - Static Encounter
  (150, 15000, 2, NULL, 2, NULL),
  -- #0151 Mew - Event
  (151, 15100, 2, NULL, 11, 'Event-exclusive in Generation I; not normally obtainable during regular Yellow gameplay.');
