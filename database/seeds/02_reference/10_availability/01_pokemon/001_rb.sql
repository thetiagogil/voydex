-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon availability, gift Pokémon, in-game trade, and species location pages.
-- Cross-check: PokemonDB Red / Blue exclusives, Red / Blue Pokedex, and legacy Voydex Red / Blue availability seeds.
-- Scope note: primary availability method per obtainable form; external-trade rows preserve opposite-version usability for planning.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Red / Blue
-- Table: reference.pokemon_availability
-- Scope: 129 version-group-wide rows, 22 Red-specific rows, and 22 Blue-specific rows.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0001 Bulbasaur - Starter
  (1, 100, 1, NULL, 3, NULL),
  -- #0002 Ivysaur - Evolution
  (2, 200, 1, NULL, 7, NULL),
  -- #0003 Venusaur - Evolution
  (3, 300, 1, NULL, 7, NULL),
  -- #0004 Charmander - Starter
  (4, 400, 1, NULL, 3, NULL),
  -- #0005 Charmeleon - Evolution
  (5, 500, 1, NULL, 7, NULL),
  -- #0006 Charizard - Evolution
  (6, 600, 1, NULL, 7, NULL),
  -- #0007 Squirtle - Starter
  (7, 700, 1, NULL, 3, NULL),
  -- #0008 Wartortle - Evolution
  (8, 800, 1, NULL, 7, NULL),
  -- #0009 Blastoise - Evolution
  (9, 900, 1, NULL, 7, NULL),
  -- #0010 Caterpie - Native Encounter
  (10, 1000, 1, NULL, 1, NULL),
  -- #0011 Metapod - Evolution
  (11, 1100, 1, NULL, 7, NULL),
  -- #0012 Butterfree - Evolution
  (12, 1200, 1, NULL, 7, NULL),
  -- #0013 Weedle - Native Encounter
  (13, 1300, 1, NULL, 1, NULL),
  -- #0014 Kakuna - Evolution
  (14, 1400, 1, NULL, 7, NULL),
  -- #0015 Beedrill - Evolution
  (15, 1500, 1, NULL, 7, NULL),
  -- #0016 Pidgey - Native Encounter
  (16, 1600, 1, NULL, 1, NULL),
  -- #0017 Pidgeotto - Evolution
  (17, 1700, 1, NULL, 7, NULL),
  -- #0018 Pidgeot - Evolution
  (18, 1800, 1, NULL, 7, NULL),
  -- #0019 Rattata - Native Encounter
  (19, 1900, 1, NULL, 1, NULL),
  -- #0020 Raticate - Evolution
  (20, 2000, 1, NULL, 7, NULL),
  -- #0021 Spearow - Native Encounter
  (21, 2100, 1, NULL, 1, NULL),
  -- #0022 Fearow - Evolution
  (22, 2200, 1, NULL, 7, NULL),
  -- #0023 Ekans - Red - Native Encounter
  (23, 2300, 1, 1, 1, NULL),
  -- #0023 Ekans - Blue - External Trade
  (23, 2300, 1, 2, 12, 'Version exclusive to Red; available in Blue only by trading from a compatible external game.'),
  -- #0024 Arbok - Red - Evolution
  (24, 2400, 1, 1, 7, NULL),
  -- #0024 Arbok - Blue - External Trade
  (24, 2400, 1, 2, 12, 'Version exclusive to Red; available in Blue only by trading from a compatible external game.'),
  -- #0025 Pikachu - Native Encounter
  (25, 2500, 1, NULL, 1, NULL),
  -- #0026 Raichu - Native Encounter
  (26, 2600, 1, NULL, 1, NULL),
  -- #0027 Sandshrew - Red - External Trade
  (27, 2700, 1, 1, 12, 'Version exclusive to Blue; available in Red only by trading from a compatible external game.'),
  -- #0027 Sandshrew - Blue - Native Encounter
  (27, 2700, 1, 2, 1, NULL),
  -- #0028 Sandslash - Red - External Trade
  (28, 2800, 1, 1, 12, 'Version exclusive to Blue; available in Red only by trading from a compatible external game.'),
  -- #0028 Sandslash - Blue - Evolution
  (28, 2800, 1, 2, 7, NULL),
  -- #0029 Nidoran F - Native Encounter
  (29, 2900, 1, NULL, 1, NULL),
  -- #0030 Nidorina - Evolution
  (30, 3000, 1, NULL, 7, NULL),
  -- #0031 Nidoqueen - Evolution
  (31, 3100, 1, NULL, 7, NULL),
  -- #0032 Nidoran M - Native Encounter
  (32, 3200, 1, NULL, 1, NULL),
  -- #0033 Nidorino - Evolution
  (33, 3300, 1, NULL, 7, NULL),
  -- #0034 Nidoking - Evolution
  (34, 3400, 1, NULL, 7, NULL),
  -- #0035 Clefairy - Native Encounter
  (35, 3500, 1, NULL, 1, NULL),
  -- #0036 Clefable - Evolution
  (36, 3600, 1, NULL, 7, NULL),
  -- #0037 Vulpix - Red - External Trade
  (37, 3700, 1, 1, 12, 'Version exclusive to Blue; available in Red only by trading from a compatible external game.'),
  -- #0037 Vulpix - Blue - Native Encounter
  (37, 3700, 1, 2, 1, NULL),
  -- #0038 Ninetales - Red - External Trade
  (38, 3800, 1, 1, 12, 'Version exclusive to Blue; available in Red only by trading from a compatible external game.'),
  -- #0038 Ninetales - Blue - Evolution
  (38, 3800, 1, 2, 7, NULL),
  -- #0039 Jigglypuff - Native Encounter
  (39, 3900, 1, NULL, 1, NULL),
  -- #0040 Wigglytuff - Evolution
  (40, 4000, 1, NULL, 7, NULL),
  -- #0041 Zubat - Native Encounter
  (41, 4100, 1, NULL, 1, NULL),
  -- #0042 Golbat - Evolution
  (42, 4200, 1, NULL, 7, NULL),
  -- #0043 Oddish - Red - Native Encounter
  (43, 4300, 1, 1, 1, NULL),
  -- #0043 Oddish - Blue - External Trade
  (43, 4300, 1, 2, 12, 'Version exclusive to Red; available in Blue only by trading from a compatible external game.'),
  -- #0044 Gloom - Red - Evolution
  (44, 4400, 1, 1, 7, NULL),
  -- #0044 Gloom - Blue - External Trade
  (44, 4400, 1, 2, 12, 'Version exclusive to Red; available in Blue only by trading from a compatible external game.'),
  -- #0045 Vileplume - Red - Evolution
  (45, 4500, 1, 1, 7, NULL),
  -- #0045 Vileplume - Blue - External Trade
  (45, 4500, 1, 2, 12, 'Version exclusive to Red; available in Blue only by trading from a compatible external game.'),
  -- #0046 Paras - Native Encounter
  (46, 4600, 1, NULL, 1, NULL),
  -- #0047 Parasect - Evolution
  (47, 4700, 1, NULL, 7, NULL),
  -- #0048 Venonat - Native Encounter
  (48, 4800, 1, NULL, 1, NULL),
  -- #0049 Venomoth - Evolution
  (49, 4900, 1, NULL, 7, NULL),
  -- #0050 Diglett - Native Encounter
  (50, 5000, 1, NULL, 1, NULL),
  -- #0051 Dugtrio - Evolution
  (51, 5100, 1, NULL, 7, NULL),
  -- #0052 Meowth - Red - External Trade
  (52, 5200, 1, 1, 12, 'Version exclusive to Blue; available in Red only by trading from a compatible external game.'),
  -- #0052 Meowth - Blue - Native Encounter
  (52, 5200, 1, 2, 1, NULL),
  -- #0053 Persian - Red - External Trade
  (53, 5300, 1, 1, 12, 'Version exclusive to Blue; available in Red only by trading from a compatible external game.'),
  -- #0053 Persian - Blue - Evolution
  (53, 5300, 1, 2, 7, NULL),
  -- #0054 Psyduck - Native Encounter
  (54, 5400, 1, NULL, 1, NULL),
  -- #0055 Golduck - Evolution
  (55, 5500, 1, NULL, 7, NULL),
  -- #0056 Mankey - Red - Native Encounter
  (56, 5600, 1, 1, 1, NULL),
  -- #0056 Mankey - Blue - External Trade
  (56, 5600, 1, 2, 12, 'Version exclusive to Red; available in Blue only by trading from a compatible external game.'),
  -- #0057 Primeape - Red - Evolution
  (57, 5700, 1, 1, 7, NULL),
  -- #0057 Primeape - Blue - External Trade
  (57, 5700, 1, 2, 12, 'Version exclusive to Red; available in Blue only by trading from a compatible external game.'),
  -- #0058 Growlithe - Red - Native Encounter
  (58, 5800, 1, 1, 1, NULL),
  -- #0058 Growlithe - Blue - External Trade
  (58, 5800, 1, 2, 12, 'Version exclusive to Red; available in Blue only by trading from a compatible external game.'),
  -- #0059 Arcanine - Red - Evolution
  (59, 5900, 1, 1, 7, NULL),
  -- #0059 Arcanine - Blue - External Trade
  (59, 5900, 1, 2, 12, 'Version exclusive to Red; available in Blue only by trading from a compatible external game.'),
  -- #0060 Poliwag - Native Encounter
  (60, 6000, 1, NULL, 1, NULL),
  -- #0061 Poliwhirl - Evolution
  (61, 6100, 1, NULL, 7, NULL),
  -- #0062 Poliwrath - Evolution
  (62, 6200, 1, NULL, 7, NULL),
  -- #0063 Abra - Native Encounter
  (63, 6300, 1, NULL, 1, NULL),
  -- #0064 Kadabra - Evolution
  (64, 6400, 1, NULL, 7, NULL),
  -- #0065 Alakazam - Evolution
  (65, 6500, 1, NULL, 7, 'Requires external player trade evolution in Generation I.'),
  -- #0066 Machop - Native Encounter
  (66, 6600, 1, NULL, 1, NULL),
  -- #0067 Machoke - Evolution
  (67, 6700, 1, NULL, 7, NULL),
  -- #0068 Machamp - Evolution
  (68, 6800, 1, NULL, 7, 'Requires external player trade evolution in Generation I.'),
  -- #0069 Bellsprout - Red - External Trade
  (69, 6900, 1, 1, 12, 'Version exclusive to Blue; available in Red only by trading from a compatible external game.'),
  -- #0069 Bellsprout - Blue - Native Encounter
  (69, 6900, 1, 2, 1, NULL),
  -- #0070 Weepinbell - Red - External Trade
  (70, 7000, 1, 1, 12, 'Version exclusive to Blue; available in Red only by trading from a compatible external game.'),
  -- #0070 Weepinbell - Blue - Evolution
  (70, 7000, 1, 2, 7, NULL),
  -- #0071 Victreebel - Red - External Trade
  (71, 7100, 1, 1, 12, 'Version exclusive to Blue; available in Red only by trading from a compatible external game.'),
  -- #0071 Victreebel - Blue - Evolution
  (71, 7100, 1, 2, 7, NULL),
  -- #0072 Tentacool - Native Encounter
  (72, 7200, 1, NULL, 1, NULL),
  -- #0073 Tentacruel - Evolution
  (73, 7300, 1, NULL, 7, NULL),
  -- #0074 Geodude - Native Encounter
  (74, 7400, 1, NULL, 1, NULL),
  -- #0075 Graveler - Evolution
  (75, 7500, 1, NULL, 7, NULL),
  -- #0076 Golem - Evolution
  (76, 7600, 1, NULL, 7, 'Requires external player trade evolution in Generation I.'),
  -- #0077 Ponyta - Native Encounter
  (77, 7700, 1, NULL, 1, NULL),
  -- #0078 Rapidash - Evolution
  (78, 7800, 1, NULL, 7, NULL),
  -- #0079 Slowpoke - Native Encounter
  (79, 7900, 1, NULL, 1, NULL),
  -- #0080 Slowbro - Evolution
  (80, 8000, 1, NULL, 7, NULL),
  -- #0081 Magnemite - Native Encounter
  (81, 8100, 1, NULL, 1, NULL),
  -- #0082 Magneton - Evolution
  (82, 8200, 1, NULL, 7, NULL),
  -- #0083 Farfetch'd - In-Game Trade
  (83, 8300, 1, NULL, 5, NULL),
  -- #0084 Doduo - Native Encounter
  (84, 8400, 1, NULL, 1, NULL),
  -- #0085 Dodrio - Evolution
  (85, 8500, 1, NULL, 7, NULL),
  -- #0086 Seel - Native Encounter
  (86, 8600, 1, NULL, 1, NULL),
  -- #0087 Dewgong - Evolution
  (87, 8700, 1, NULL, 7, NULL),
  -- #0088 Grimer - Native Encounter
  (88, 8800, 1, NULL, 1, NULL),
  -- #0089 Muk - Evolution
  (89, 8900, 1, NULL, 7, NULL),
  -- #0090 Shellder - Native Encounter
  (90, 9000, 1, NULL, 1, NULL),
  -- #0091 Cloyster - Evolution
  (91, 9100, 1, NULL, 7, NULL),
  -- #0092 Gastly - Native Encounter
  (92, 9200, 1, NULL, 1, NULL),
  -- #0093 Haunter - Evolution
  (93, 9300, 1, NULL, 7, NULL),
  -- #0094 Gengar - Evolution
  (94, 9400, 1, NULL, 7, 'Requires external player trade evolution in Generation I.'),
  -- #0095 Onix - Native Encounter
  (95, 9500, 1, NULL, 1, NULL),
  -- #0096 Drowzee - Native Encounter
  (96, 9600, 1, NULL, 1, NULL),
  -- #0097 Hypno - Evolution
  (97, 9700, 1, NULL, 7, NULL),
  -- #0098 Krabby - Native Encounter
  (98, 9800, 1, NULL, 1, NULL),
  -- #0099 Kingler - Evolution
  (99, 9900, 1, NULL, 7, NULL),
  -- #0100 Voltorb - Native Encounter
  (100, 10000, 1, NULL, 1, NULL),
  -- #0101 Electrode - Evolution
  (101, 10100, 1, NULL, 7, NULL),
  -- #0102 Exeggcute - Native Encounter
  (102, 10200, 1, NULL, 1, NULL),
  -- #0103 Exeggutor - Evolution
  (103, 10300, 1, NULL, 7, NULL),
  -- #0104 Cubone - Native Encounter
  (104, 10400, 1, NULL, 1, NULL),
  -- #0105 Marowak - Evolution
  (105, 10500, 1, NULL, 7, NULL),
  -- #0106 Hitmonlee - Gift
  (106, 10600, 1, NULL, 4, 'One of two mutually exclusive Fighting Dojo gift choices in a single save file.'),
  -- #0107 Hitmonchan - Gift
  (107, 10700, 1, NULL, 4, 'One of two mutually exclusive Fighting Dojo gift choices in a single save file.'),
  -- #0108 Lickitung - In-Game Trade
  (108, 10800, 1, NULL, 5, NULL),
  -- #0109 Koffing - Native Encounter
  (109, 10900, 1, NULL, 1, NULL),
  -- #0110 Weezing - Evolution
  (110, 11000, 1, NULL, 7, NULL),
  -- #0111 Rhyhorn - Native Encounter
  (111, 11100, 1, NULL, 1, NULL),
  -- #0112 Rhydon - Evolution
  (112, 11200, 1, NULL, 7, NULL),
  -- #0113 Chansey - Native Encounter
  (113, 11300, 1, NULL, 1, NULL),
  -- #0114 Tangela - In-Game Trade
  (114, 11400, 1, NULL, 5, NULL),
  -- #0115 Kangaskhan - Native Encounter
  (115, 11500, 1, NULL, 1, NULL),
  -- #0116 Horsea - Native Encounter
  (116, 11600, 1, NULL, 1, NULL),
  -- #0117 Seadra - Evolution
  (117, 11700, 1, NULL, 7, NULL),
  -- #0118 Goldeen - Native Encounter
  (118, 11800, 1, NULL, 1, NULL),
  -- #0119 Seaking - Evolution
  (119, 11900, 1, NULL, 7, NULL),
  -- #0120 Staryu - Native Encounter
  (120, 12000, 1, NULL, 1, NULL),
  -- #0121 Starmie - Evolution
  (121, 12100, 1, NULL, 7, NULL),
  -- #0122 Mr. Mime - Gift
  (122, 12200, 1, NULL, 4, NULL),
  -- #0123 Scyther - Red - Native Encounter
  (123, 12300, 1, 1, 1, NULL),
  -- #0123 Scyther - Blue - External Trade
  (123, 12300, 1, 2, 12, 'Version exclusive to Red; available in Blue only by trading from a compatible external game.'),
  -- #0124 Jynx - Gift
  (124, 12400, 1, NULL, 4, NULL),
  -- #0125 Electabuzz - Red - Native Encounter
  (125, 12500, 1, 1, 1, NULL),
  -- #0125 Electabuzz - Blue - External Trade
  (125, 12500, 1, 2, 12, 'Version exclusive to Red; available in Blue only by trading from a compatible external game.'),
  -- #0126 Magmar - Red - External Trade
  (126, 12600, 1, 1, 12, 'Version exclusive to Blue; available in Red only by trading from a compatible external game.'),
  -- #0126 Magmar - Blue - Native Encounter
  (126, 12600, 1, 2, 1, NULL),
  -- #0127 Pinsir - Red - External Trade
  (127, 12700, 1, 1, 12, 'Version exclusive to Blue; available in Red only by trading from a compatible external game.'),
  -- #0127 Pinsir - Blue - Native Encounter
  (127, 12700, 1, 2, 1, NULL),
  -- #0128 Tauros - Native Encounter
  (128, 12800, 1, NULL, 1, NULL),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 1, NULL, 1, NULL),
  -- #0130 Gyarados - Evolution
  (130, 13000, 1, NULL, 7, NULL),
  -- #0131 Lapras - Gift
  (131, 13100, 1, NULL, 4, NULL),
  -- #0132 Ditto - Native Encounter
  (132, 13200, 1, NULL, 1, NULL),
  -- #0133 Eevee - Gift
  (133, 13300, 1, NULL, 4, NULL),
  -- #0134 Vaporeon - Evolution
  (134, 13400, 1, NULL, 7, 'Evolves from the single Eevee gift, making Eeveelutions mutually exclusive in one save file without external trades.'),
  -- #0135 Jolteon - Evolution
  (135, 13500, 1, NULL, 7, 'Evolves from the single Eevee gift, making Eeveelutions mutually exclusive in one save file without external trades.'),
  -- #0136 Flareon - Evolution
  (136, 13600, 1, NULL, 7, 'Evolves from the single Eevee gift, making Eeveelutions mutually exclusive in one save file without external trades.'),
  -- #0137 Porygon - Gift
  (137, 13700, 1, NULL, 4, 'Obtained as a Rocket Game Corner prize in Red/Blue.'),
  -- #0138 Omanyte - Fossil Restoration
  (138, 13800, 1, NULL, 6, 'One of two mutually exclusive Mt. Moon Fossil choices in a single save file.'),
  -- #0139 Omastar - Evolution
  (139, 13900, 1, NULL, 7, NULL),
  -- #0140 Kabuto - Fossil Restoration
  (140, 14000, 1, NULL, 6, 'One of two mutually exclusive Mt. Moon Fossil choices in a single save file.'),
  -- #0141 Kabutops - Evolution
  (141, 14100, 1, NULL, 7, NULL),
  -- #0142 Aerodactyl - Fossil Restoration
  (142, 14200, 1, NULL, 6, NULL),
  -- #0143 Snorlax - Static Encounter
  (143, 14300, 1, NULL, 2, NULL),
  -- #0144 Articuno - Static Encounter
  (144, 14400, 1, NULL, 2, NULL),
  -- #0145 Zapdos - Static Encounter
  (145, 14500, 1, NULL, 2, NULL),
  -- #0146 Moltres - Static Encounter
  (146, 14600, 1, NULL, 2, NULL),
  -- #0147 Dratini - Native Encounter
  (147, 14700, 1, NULL, 1, NULL),
  -- #0148 Dragonair - Evolution
  (148, 14800, 1, NULL, 7, NULL),
  -- #0149 Dragonite - Evolution
  (149, 14900, 1, NULL, 7, NULL),
  -- #0150 Mewtwo - Static Encounter
  (150, 15000, 1, NULL, 2, NULL),
  -- #0151 Mew - Event
  (151, 15100, 1, NULL, 11, 'Event-exclusive in Generation I; not normally obtainable during regular Red/Blue gameplay.');
