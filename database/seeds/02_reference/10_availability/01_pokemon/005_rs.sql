-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon availability, Ruby/Sapphire Pokedex, legendary encounter, Eon Ticket, and species location pages.
-- Cross-check: PokemonDB Ruby / Sapphire version exclusives, PokemonDB Ruby / Sapphire Pokedex, and legacy Voydex Ruby / Sapphire availability seeds.
-- Scope note: primary availability method per obtainable form; external-trade rows preserve compatible-game usability for planning.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Ruby / Sapphire
-- Table: reference.pokemon_availability
-- Scope: 370 version-group-wide rows and 32 game-specific rows.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0001 Bulbasaur - External Trade
  (1, 100, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0002 Ivysaur - External Trade
  (2, 200, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0003 Venusaur - External Trade
  (3, 300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0004 Charmander - External Trade
  (4, 400, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0005 Charmeleon - External Trade
  (5, 500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0006 Charizard - External Trade
  (6, 600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0007 Squirtle - External Trade
  (7, 700, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0008 Wartortle - External Trade
  (8, 800, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0009 Blastoise - External Trade
  (9, 900, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0010 Caterpie - External Trade
  (10, 1000, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0011 Metapod - External Trade
  (11, 1100, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0012 Butterfree - External Trade
  (12, 1200, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0013 Weedle - External Trade
  (13, 1300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0014 Kakuna - External Trade
  (14, 1400, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0015 Beedrill - External Trade
  (15, 1500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0016 Pidgey - External Trade
  (16, 1600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0017 Pidgeotto - External Trade
  (17, 1700, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0018 Pidgeot - External Trade
  (18, 1800, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0019 Rattata - External Trade
  (19, 1900, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0020 Raticate - External Trade
  (20, 2000, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0021 Spearow - External Trade
  (21, 2100, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0022 Fearow - External Trade
  (22, 2200, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0023 Ekans - External Trade
  (23, 2300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0024 Arbok - External Trade
  (24, 2400, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0025 Pikachu - Native Encounter
  (25, 2500, 5, NULL, 1, NULL),
  -- #0026 Raichu - Evolution
  (26, 2600, 5, NULL, 7, NULL),
  -- #0027 Sandshrew - Native Encounter
  (27, 2700, 5, NULL, 1, NULL),
  -- #0028 Sandslash - Evolution
  (28, 2800, 5, NULL, 7, NULL),
  -- #0029 Nidoran F - External Trade
  (29, 2900, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0030 Nidorina - External Trade
  (30, 3000, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0031 Nidoqueen - External Trade
  (31, 3100, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0032 Nidoran M - External Trade
  (32, 3200, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0033 Nidorino - External Trade
  (33, 3300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0034 Nidoking - External Trade
  (34, 3400, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0035 Clefairy - External Trade
  (35, 3500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0036 Clefable - External Trade
  (36, 3600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0037 Vulpix - Native Encounter
  (37, 3700, 5, NULL, 1, NULL),
  -- #0038 Ninetales - Evolution
  (38, 3800, 5, NULL, 7, NULL),
  -- #0039 Jigglypuff - Native Encounter
  (39, 3900, 5, NULL, 1, NULL),
  -- #0040 Wigglytuff - Evolution
  (40, 4000, 5, NULL, 7, NULL),
  -- #0041 Zubat - Native Encounter
  (41, 4100, 5, NULL, 1, NULL),
  -- #0042 Golbat - Evolution
  (42, 4200, 5, NULL, 7, NULL),
  -- #0043 Oddish - Native Encounter
  (43, 4300, 5, NULL, 1, NULL),
  -- #0044 Gloom - Evolution
  (44, 4400, 5, NULL, 7, NULL),
  -- #0045 Vileplume - Evolution
  (45, 4500, 5, NULL, 7, NULL),
  -- #0046 Paras - External Trade
  (46, 4600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0047 Parasect - External Trade
  (47, 4700, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0048 Venonat - External Trade
  (48, 4800, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0049 Venomoth - External Trade
  (49, 4900, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0050 Diglett - External Trade
  (50, 5000, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0051 Dugtrio - External Trade
  (51, 5100, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0052 Meowth - External Trade
  (52, 5200, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0053 Persian - External Trade
  (53, 5300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0054 Psyduck - Native Encounter
  (54, 5400, 5, NULL, 1, NULL),
  -- #0055 Golduck - Evolution
  (55, 5500, 5, NULL, 7, NULL),
  -- #0056 Mankey - External Trade
  (56, 5600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0057 Primeape - External Trade
  (57, 5700, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0058 Growlithe - External Trade
  (58, 5800, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0059 Arcanine - External Trade
  (59, 5900, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0060 Poliwag - External Trade
  (60, 6000, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0061 Poliwhirl - External Trade
  (61, 6100, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0062 Poliwrath - External Trade
  (62, 6200, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0063 Abra - Native Encounter
  (63, 6300, 5, NULL, 1, NULL),
  -- #0064 Kadabra - Evolution
  (64, 6400, 5, NULL, 7, NULL),
  -- #0065 Alakazam - Evolution
  (65, 6500, 5, NULL, 7, 'Requires a link trade evolution in Generation III; not obtainable by single-cartridge play alone.'),
  -- #0066 Machop - Native Encounter
  (66, 6600, 5, NULL, 1, NULL),
  -- #0067 Machoke - Evolution
  (67, 6700, 5, NULL, 7, NULL),
  -- #0068 Machamp - Evolution
  (68, 6800, 5, NULL, 7, 'Requires a link trade evolution in Generation III; not obtainable by single-cartridge play alone.'),
  -- #0069 Bellsprout - External Trade
  (69, 6900, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0070 Weepinbell - External Trade
  (70, 7000, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0071 Victreebel - External Trade
  (71, 7100, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0072 Tentacool - Native Encounter
  (72, 7200, 5, NULL, 1, NULL),
  -- #0073 Tentacruel - Evolution
  (73, 7300, 5, NULL, 7, NULL),
  -- #0074 Geodude - Native Encounter
  (74, 7400, 5, NULL, 1, NULL),
  -- #0075 Graveler - Evolution
  (75, 7500, 5, NULL, 7, NULL),
  -- #0076 Golem - Evolution
  (76, 7600, 5, NULL, 7, 'Requires a link trade evolution in Generation III; not obtainable by single-cartridge play alone.'),
  -- #0077 Ponyta - External Trade
  (77, 7700, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0078 Rapidash - External Trade
  (78, 7800, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0079 Slowpoke - External Trade
  (79, 7900, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0080 Slowbro - External Trade
  (80, 8000, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0081 Magnemite - Native Encounter
  (81, 8100, 5, NULL, 1, NULL),
  -- #0082 Magneton - Evolution
  (82, 8200, 5, NULL, 7, NULL),
  -- #0083 Farfetch'd - External Trade
  (83, 8300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0084 Doduo - Native Encounter
  (84, 8400, 5, NULL, 1, NULL),
  -- #0085 Dodrio - Evolution
  (85, 8500, 5, NULL, 7, NULL),
  -- #0086 Seel - External Trade
  (86, 8600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0087 Dewgong - External Trade
  (87, 8700, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0088 Grimer - Native Encounter
  (88, 8800, 5, NULL, 1, NULL),
  -- #0089 Muk - Evolution
  (89, 8900, 5, NULL, 7, NULL),
  -- #0090 Shellder - External Trade
  (90, 9000, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0091 Cloyster - External Trade
  (91, 9100, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0092 Gastly - External Trade
  (92, 9200, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0093 Haunter - External Trade
  (93, 9300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0094 Gengar - External Trade
  (94, 9400, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0095 Onix - External Trade
  (95, 9500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0096 Drowzee - External Trade
  (96, 9600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0097 Hypno - External Trade
  (97, 9700, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0098 Krabby - External Trade
  (98, 9800, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0099 Kingler - External Trade
  (99, 9900, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0100 Voltorb - Native Encounter
  (100, 10000, 5, NULL, 1, NULL),
  -- #0101 Electrode - Evolution
  (101, 10100, 5, NULL, 7, NULL),
  -- #0102 Exeggcute - External Trade
  (102, 10200, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0103 Exeggutor - External Trade
  (103, 10300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0104 Cubone - External Trade
  (104, 10400, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0105 Marowak - External Trade
  (105, 10500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0106 Hitmonlee - External Trade
  (106, 10600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0107 Hitmonchan - External Trade
  (107, 10700, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0108 Lickitung - External Trade
  (108, 10800, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0109 Koffing - Native Encounter
  (109, 10900, 5, NULL, 1, NULL),
  -- #0110 Weezing - Evolution
  (110, 11000, 5, NULL, 7, NULL),
  -- #0111 Rhyhorn - Native Encounter
  (111, 11100, 5, NULL, 1, NULL),
  -- #0112 Rhydon - Evolution
  (112, 11200, 5, NULL, 7, NULL),
  -- #0113 Chansey - External Trade
  (113, 11300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0114 Tangela - External Trade
  (114, 11400, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0115 Kangaskhan - External Trade
  (115, 11500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0116 Horsea - Native Encounter
  (116, 11600, 5, NULL, 1, NULL),
  -- #0117 Seadra - Evolution
  (117, 11700, 5, NULL, 7, NULL),
  -- #0118 Goldeen - Native Encounter
  (118, 11800, 5, NULL, 1, NULL),
  -- #0119 Seaking - Evolution
  (119, 11900, 5, NULL, 7, NULL),
  -- #0120 Staryu - Native Encounter
  (120, 12000, 5, NULL, 1, NULL),
  -- #0121 Starmie - Evolution
  (121, 12100, 5, NULL, 7, NULL),
  -- #0122 Mr. Mime - External Trade
  (122, 12200, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0123 Scyther - External Trade
  (123, 12300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0124 Jynx - External Trade
  (124, 12400, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0125 Electabuzz - External Trade
  (125, 12500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0126 Magmar - External Trade
  (126, 12600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0127 Pinsir - Native Encounter
  (127, 12700, 5, NULL, 1, NULL),
  -- #0128 Tauros - External Trade
  (128, 12800, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 5, NULL, 1, NULL),
  -- #0130 Gyarados - Evolution
  (130, 13000, 5, NULL, 7, NULL),
  -- #0131 Lapras - External Trade
  (131, 13100, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0132 Ditto - External Trade
  (132, 13200, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0133 Eevee - External Trade
  (133, 13300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0134 Vaporeon - External Trade
  (134, 13400, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0135 Jolteon - External Trade
  (135, 13500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0136 Flareon - External Trade
  (136, 13600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0137 Porygon - External Trade
  (137, 13700, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0138 Omanyte - External Trade
  (138, 13800, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0139 Omastar - External Trade
  (139, 13900, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0140 Kabuto - External Trade
  (140, 14000, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0141 Kabutops - External Trade
  (141, 14100, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0142 Aerodactyl - External Trade
  (142, 14200, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0143 Snorlax - External Trade
  (143, 14300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0144 Articuno - External Trade
  (144, 14400, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0145 Zapdos - External Trade
  (145, 14500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0146 Moltres - External Trade
  (146, 14600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0147 Dratini - External Trade
  (147, 14700, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0148 Dragonair - External Trade
  (148, 14800, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0149 Dragonite - External Trade
  (149, 14900, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0150 Mewtwo - External Trade
  (150, 15000, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0151 Mew - Event
  (151, 15100, 5, NULL, 11, 'Event/distribution-only in Generation III; not obtainable through normal Ruby/Sapphire gameplay.'),
  -- #0152 Chikorita - External Trade
  (152, 15200, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0153 Bayleef - External Trade
  (153, 15300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0154 Meganium - External Trade
  (154, 15400, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0155 Cyndaquil - External Trade
  (155, 15500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0156 Quilava - External Trade
  (156, 15600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0157 Typhlosion - External Trade
  (157, 15700, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0158 Totodile - External Trade
  (158, 15800, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0159 Croconaw - External Trade
  (159, 15900, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0160 Feraligatr - External Trade
  (160, 16000, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0161 Sentret - External Trade
  (161, 16100, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0162 Furret - External Trade
  (162, 16200, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0163 Hoothoot - External Trade
  (163, 16300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0164 Noctowl - External Trade
  (164, 16400, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0165 Ledyba - External Trade
  (165, 16500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0166 Ledian - External Trade
  (166, 16600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0167 Spinarak - External Trade
  (167, 16700, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0168 Ariados - External Trade
  (168, 16800, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0169 Crobat - Evolution
  (169, 16900, 5, NULL, 7, NULL),
  -- #0170 Chinchou - Native Encounter
  (170, 17000, 5, NULL, 1, NULL),
  -- #0171 Lanturn - Evolution
  (171, 17100, 5, NULL, 7, NULL),
  -- #0172 Pichu - Breeding
  (172, 17200, 5, NULL, 8, NULL),
  -- #0173 Cleffa - External Trade
  (173, 17300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0174 Igglybuff - Breeding
  (174, 17400, 5, NULL, 8, NULL),
  -- #0175 Togepi - External Trade
  (175, 17500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0176 Togetic - External Trade
  (176, 17600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0177 Natu - Native Encounter
  (177, 17700, 5, NULL, 1, NULL),
  -- #0178 Xatu - Evolution
  (178, 17800, 5, NULL, 7, NULL),
  -- #0179 Mareep - External Trade
  (179, 17900, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0180 Flaaffy - External Trade
  (180, 18000, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0181 Ampharos - External Trade
  (181, 18100, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0182 Bellossom - Evolution
  (182, 18200, 5, NULL, 7, NULL),
  -- #0183 Marill - Native Encounter
  (183, 18300, 5, NULL, 1, NULL),
  -- #0184 Azumarill - Evolution
  (184, 18400, 5, NULL, 7, NULL),
  -- #0185 Sudowoodo - External Trade
  (185, 18500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0186 Politoed - External Trade
  (186, 18600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0187 Hoppip - External Trade
  (187, 18700, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0188 Skiploom - External Trade
  (188, 18800, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0189 Jumpluff - External Trade
  (189, 18900, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0190 Aipom - External Trade
  (190, 19000, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0191 Sunkern - External Trade
  (191, 19100, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0192 Sunflora - External Trade
  (192, 19200, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0193 Yanma - External Trade
  (193, 19300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0194 Wooper - External Trade
  (194, 19400, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0195 Quagsire - External Trade
  (195, 19500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0196 Espeon - External Trade
  (196, 19600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0197 Umbreon - External Trade
  (197, 19700, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0198 Murkrow - External Trade
  (198, 19800, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0199 Slowking - External Trade
  (199, 19900, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0200 Misdreavus - External Trade
  (200, 20000, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0201 Unown - External Trade
  (201, 20100, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0202 Wobbuffet - Native Encounter
  (202, 20200, 5, NULL, 1, NULL),
  -- #0203 Girafarig - Native Encounter
  (203, 20300, 5, NULL, 1, NULL),
  -- #0204 Pineco - External Trade
  (204, 20400, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0205 Forretress - External Trade
  (205, 20500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0206 Dunsparce - External Trade
  (206, 20600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0207 Gligar - External Trade
  (207, 20700, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0208 Steelix - External Trade
  (208, 20800, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0209 Snubbull - External Trade
  (209, 20900, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0210 Granbull - External Trade
  (210, 21000, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0211 Qwilfish - External Trade
  (211, 21100, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0212 Scizor - External Trade
  (212, 21200, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0213 Shuckle - External Trade
  (213, 21300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0214 Heracross - Native Encounter
  (214, 21400, 5, NULL, 1, NULL),
  -- #0215 Sneasel - External Trade
  (215, 21500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0216 Teddiursa - External Trade
  (216, 21600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0217 Ursaring - External Trade
  (217, 21700, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0218 Slugma - Native Encounter
  (218, 21800, 5, NULL, 1, NULL),
  -- #0219 Magcargo - Evolution
  (219, 21900, 5, NULL, 7, NULL),
  -- #0220 Swinub - External Trade
  (220, 22000, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0221 Piloswine - External Trade
  (221, 22100, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0222 Corsola - Native Encounter
  (222, 22200, 5, NULL, 1, NULL),
  -- #0223 Remoraid - External Trade
  (223, 22300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0224 Octillery - External Trade
  (224, 22400, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0225 Delibird - External Trade
  (225, 22500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0226 Mantine - External Trade
  (226, 22600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0227 Skarmory - Native Encounter
  (227, 22700, 5, NULL, 1, NULL),
  -- #0228 Houndour - External Trade
  (228, 22800, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0229 Houndoom - External Trade
  (229, 22900, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0230 Kingdra - Evolution
  (230, 23000, 5, NULL, 7, 'Requires a link trade evolution in Generation III; not obtainable by single-cartridge play alone.'),
  -- #0231 Phanpy - Native Encounter
  (231, 23100, 5, NULL, 1, NULL),
  -- #0232 Donphan - Evolution
  (232, 23200, 5, NULL, 7, NULL),
  -- #0233 Porygon2 - External Trade
  (233, 23300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0234 Stantler - External Trade
  (234, 23400, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0235 Smeargle - External Trade
  (235, 23500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0236 Tyrogue - External Trade
  (236, 23600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0237 Hitmontop - External Trade
  (237, 23700, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0238 Smoochum - External Trade
  (238, 23800, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0239 Elekid - External Trade
  (239, 23900, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0240 Magby - External Trade
  (240, 24000, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0241 Miltank - External Trade
  (241, 24100, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0242 Blissey - External Trade
  (242, 24200, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0243 Raikou - External Trade
  (243, 24300, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0244 Entei - External Trade
  (244, 24400, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0245 Suicune - External Trade
  (245, 24500, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0246 Larvitar - External Trade
  (246, 24600, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0247 Pupitar - External Trade
  (247, 24700, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0248 Tyranitar - External Trade
  (248, 24800, 5, NULL, 12, 'Not obtainable through normal Ruby/Sapphire gameplay; must be traded from a compatible Generation III core-series game.'),
  -- #0249 Lugia - Event
  (249, 24900, 5, NULL, 11, 'Event/distribution-only in Generation III; not obtainable through normal Ruby/Sapphire gameplay.'),
  -- #0250 Ho-Oh - Event
  (250, 25000, 5, NULL, 11, 'Event/distribution-only in Generation III; not obtainable through normal Ruby/Sapphire gameplay.'),
  -- #0251 Celebi - Event
  (251, 25100, 5, NULL, 11, 'Event/distribution-only in Generation III; not obtainable through normal Ruby/Sapphire gameplay.'),
  -- #0252 Treecko - Starter
  (252, 25200, 5, NULL, 3, 'One of three mutually exclusive first partner choices in a single save file.'),
  -- #0253 Grovyle - Evolution
  (253, 25300, 5, NULL, 7, NULL),
  -- #0254 Sceptile - Evolution
  (254, 25400, 5, NULL, 7, NULL),
  -- #0255 Torchic - Starter
  (255, 25500, 5, NULL, 3, 'One of three mutually exclusive first partner choices in a single save file.'),
  -- #0256 Combusken - Evolution
  (256, 25600, 5, NULL, 7, NULL),
  -- #0257 Blaziken - Evolution
  (257, 25700, 5, NULL, 7, NULL),
  -- #0258 Mudkip - Starter
  (258, 25800, 5, NULL, 3, 'One of three mutually exclusive first partner choices in a single save file.'),
  -- #0259 Marshtomp - Evolution
  (259, 25900, 5, NULL, 7, NULL),
  -- #0260 Swampert - Evolution
  (260, 26000, 5, NULL, 7, NULL),
  -- #0261 Poochyena - Native Encounter
  (261, 26100, 5, NULL, 1, NULL),
  -- #0262 Mightyena - Evolution
  (262, 26200, 5, NULL, 7, NULL),
  -- #0263 Zigzagoon - Native Encounter
  (263, 26300, 5, NULL, 1, NULL),
  -- #0264 Linoone - Evolution
  (264, 26400, 5, NULL, 7, NULL),
  -- #0265 Wurmple - Native Encounter
  (265, 26500, 5, NULL, 1, NULL),
  -- #0266 Silcoon - Evolution
  (266, 26600, 5, NULL, 7, NULL),
  -- #0267 Beautifly - Evolution
  (267, 26700, 5, NULL, 7, NULL),
  -- #0268 Cascoon - Evolution
  (268, 26800, 5, NULL, 7, NULL),
  -- #0269 Dustox - Evolution
  (269, 26900, 5, NULL, 7, NULL),
  -- #0270 Lotad - Ruby - External Trade
  (270, 27000, 5, 7, 12, 'Version exclusive to Sapphire; available in Ruby only by trading from a compatible external game.'),
  -- #0270 Lotad - Sapphire - Native Encounter
  (270, 27000, 5, 8, 1, NULL),
  -- #0271 Lombre - Ruby - External Trade
  (271, 27100, 5, 7, 12, 'Version exclusive to Sapphire; available in Ruby only by trading from a compatible external game.'),
  -- #0271 Lombre - Sapphire - Evolution
  (271, 27100, 5, 8, 7, NULL),
  -- #0272 Ludicolo - Ruby - External Trade
  (272, 27200, 5, 7, 12, 'Version exclusive to Sapphire; available in Ruby only by trading from a compatible external game.'),
  -- #0272 Ludicolo - Sapphire - Evolution
  (272, 27200, 5, 8, 7, NULL),
  -- #0273 Seedot - Ruby - Native Encounter
  (273, 27300, 5, 7, 1, NULL),
  -- #0273 Seedot - Sapphire - External Trade
  (273, 27300, 5, 8, 12, 'Version exclusive to Ruby; available in Sapphire only by trading from a compatible external game.'),
  -- #0274 Nuzleaf - Ruby - Evolution
  (274, 27400, 5, 7, 7, NULL),
  -- #0274 Nuzleaf - Sapphire - External Trade
  (274, 27400, 5, 8, 12, 'Version exclusive to Ruby; available in Sapphire only by trading from a compatible external game.'),
  -- #0275 Shiftry - Ruby - Evolution
  (275, 27500, 5, 7, 7, NULL),
  -- #0275 Shiftry - Sapphire - External Trade
  (275, 27500, 5, 8, 12, 'Version exclusive to Ruby; available in Sapphire only by trading from a compatible external game.'),
  -- #0276 Taillow - Native Encounter
  (276, 27600, 5, NULL, 1, NULL),
  -- #0277 Swellow - Evolution
  (277, 27700, 5, NULL, 7, NULL),
  -- #0278 Wingull - Native Encounter
  (278, 27800, 5, NULL, 1, NULL),
  -- #0279 Pelipper - Evolution
  (279, 27900, 5, NULL, 7, NULL),
  -- #0280 Ralts - Native Encounter
  (280, 28000, 5, NULL, 1, NULL),
  -- #0281 Kirlia - Evolution
  (281, 28100, 5, NULL, 7, NULL),
  -- #0282 Gardevoir - Evolution
  (282, 28200, 5, NULL, 7, NULL),
  -- #0283 Surskit - Native Encounter
  (283, 28300, 5, NULL, 1, NULL),
  -- #0284 Masquerain - Evolution
  (284, 28400, 5, NULL, 7, NULL),
  -- #0285 Shroomish - Native Encounter
  (285, 28500, 5, NULL, 1, NULL),
  -- #0286 Breloom - Evolution
  (286, 28600, 5, NULL, 7, NULL),
  -- #0287 Slakoth - Native Encounter
  (287, 28700, 5, NULL, 1, NULL),
  -- #0288 Vigoroth - Evolution
  (288, 28800, 5, NULL, 7, NULL),
  -- #0289 Slaking - Evolution
  (289, 28900, 5, NULL, 7, NULL),
  -- #0290 Nincada - Native Encounter
  (290, 29000, 5, NULL, 1, NULL),
  -- #0291 Ninjask - Evolution
  (291, 29100, 5, NULL, 7, NULL),
  -- #0292 Shedinja - Evolution
  (292, 29200, 5, NULL, 7, NULL),
  -- #0293 Whismur - Native Encounter
  (293, 29300, 5, NULL, 1, NULL),
  -- #0294 Loudred - Evolution
  (294, 29400, 5, NULL, 7, NULL),
  -- #0295 Exploud - Evolution
  (295, 29500, 5, NULL, 7, NULL),
  -- #0296 Makuhita - Native Encounter
  (296, 29600, 5, NULL, 1, NULL),
  -- #0297 Hariyama - Evolution
  (297, 29700, 5, NULL, 7, NULL),
  -- #0298 Azurill - Breeding
  (298, 29800, 5, NULL, 8, 'Breed Marill or Azumarill while holding Sea Incense.'),
  -- #0299 Nosepass - Native Encounter
  (299, 29900, 5, NULL, 1, NULL),
  -- #0300 Skitty - Native Encounter
  (300, 30000, 5, NULL, 1, NULL),
  -- #0301 Delcatty - Evolution
  (301, 30100, 5, NULL, 7, NULL),
  -- #0302 Sableye - Ruby - External Trade
  (302, 30200, 5, 7, 12, 'Version exclusive to Sapphire; available in Ruby only by trading from a compatible external game.'),
  -- #0302 Sableye - Sapphire - Native Encounter
  (302, 30200, 5, 8, 1, NULL),
  -- #0303 Mawile - Ruby - Native Encounter
  (303, 30300, 5, 7, 1, NULL),
  -- #0303 Mawile - Sapphire - External Trade
  (303, 30300, 5, 8, 12, 'Version exclusive to Ruby; available in Sapphire only by trading from a compatible external game.'),
  -- #0304 Aron - Native Encounter
  (304, 30400, 5, NULL, 1, NULL),
  -- #0305 Lairon - Evolution
  (305, 30500, 5, NULL, 7, NULL),
  -- #0306 Aggron - Evolution
  (306, 30600, 5, NULL, 7, NULL),
  -- #0307 Meditite - Native Encounter
  (307, 30700, 5, NULL, 1, NULL),
  -- #0308 Medicham - Evolution
  (308, 30800, 5, NULL, 7, NULL),
  -- #0309 Electrike - Native Encounter
  (309, 30900, 5, NULL, 1, NULL),
  -- #0310 Manectric - Evolution
  (310, 31000, 5, NULL, 7, NULL),
  -- #0311 Plusle - Native Encounter
  (311, 31100, 5, NULL, 1, NULL),
  -- #0312 Minun - Native Encounter
  (312, 31200, 5, NULL, 1, NULL),
  -- #0313 Volbeat - Native Encounter
  (313, 31300, 5, NULL, 1, NULL),
  -- #0314 Illumise - Native Encounter
  (314, 31400, 5, NULL, 1, NULL),
  -- #0315 Roselia - Native Encounter
  (315, 31500, 5, NULL, 1, NULL),
  -- #0316 Gulpin - Native Encounter
  (316, 31600, 5, NULL, 1, NULL),
  -- #0317 Swalot - Evolution
  (317, 31700, 5, NULL, 7, NULL),
  -- #0318 Carvanha - Native Encounter
  (318, 31800, 5, NULL, 1, NULL),
  -- #0319 Sharpedo - Evolution
  (319, 31900, 5, NULL, 7, NULL),
  -- #0320 Wailmer - Native Encounter
  (320, 32000, 5, NULL, 1, NULL),
  -- #0321 Wailord - Evolution
  (321, 32100, 5, NULL, 7, NULL),
  -- #0322 Numel - Native Encounter
  (322, 32200, 5, NULL, 1, NULL),
  -- #0323 Camerupt - Evolution
  (323, 32300, 5, NULL, 7, NULL),
  -- #0324 Torkoal - Native Encounter
  (324, 32400, 5, NULL, 1, NULL),
  -- #0325 Spoink - Native Encounter
  (325, 32500, 5, NULL, 1, NULL),
  -- #0326 Grumpig - Evolution
  (326, 32600, 5, NULL, 7, NULL),
  -- #0327 Spinda - Native Encounter
  (327, 32700, 5, NULL, 1, NULL),
  -- #0328 Trapinch - Native Encounter
  (328, 32800, 5, NULL, 1, NULL),
  -- #0329 Vibrava - Evolution
  (329, 32900, 5, NULL, 7, NULL),
  -- #0330 Flygon - Evolution
  (330, 33000, 5, NULL, 7, NULL),
  -- #0331 Cacnea - Native Encounter
  (331, 33100, 5, NULL, 1, NULL),
  -- #0332 Cacturne - Evolution
  (332, 33200, 5, NULL, 7, NULL),
  -- #0333 Swablu - Native Encounter
  (333, 33300, 5, NULL, 1, NULL),
  -- #0334 Altaria - Evolution
  (334, 33400, 5, NULL, 7, NULL),
  -- #0335 Zangoose - Ruby - Native Encounter
  (335, 33500, 5, 7, 1, NULL),
  -- #0335 Zangoose - Sapphire - External Trade
  (335, 33500, 5, 8, 12, 'Version exclusive to Ruby; available in Sapphire only by trading from a compatible external game.'),
  -- #0336 Seviper - Ruby - External Trade
  (336, 33600, 5, 7, 12, 'Version exclusive to Sapphire; available in Ruby only by trading from a compatible external game.'),
  -- #0336 Seviper - Sapphire - Native Encounter
  (336, 33600, 5, 8, 1, NULL),
  -- #0337 Lunatone - Ruby - External Trade
  (337, 33700, 5, 7, 12, 'Version exclusive to Sapphire; available in Ruby only by trading from a compatible external game.'),
  -- #0337 Lunatone - Sapphire - Native Encounter
  (337, 33700, 5, 8, 1, NULL),
  -- #0338 Solrock - Ruby - Native Encounter
  (338, 33800, 5, 7, 1, NULL),
  -- #0338 Solrock - Sapphire - External Trade
  (338, 33800, 5, 8, 12, 'Version exclusive to Ruby; available in Sapphire only by trading from a compatible external game.'),
  -- #0339 Barboach - Native Encounter
  (339, 33900, 5, NULL, 1, NULL),
  -- #0340 Whiscash - Evolution
  (340, 34000, 5, NULL, 7, NULL),
  -- #0341 Corphish - Native Encounter
  (341, 34100, 5, NULL, 1, NULL),
  -- #0342 Crawdaunt - Evolution
  (342, 34200, 5, NULL, 7, NULL),
  -- #0343 Baltoy - Native Encounter
  (343, 34300, 5, NULL, 1, NULL),
  -- #0344 Claydol - Evolution
  (344, 34400, 5, NULL, 7, NULL),
  -- #0345 Lileep - Fossil Restoration
  (345, 34500, 5, NULL, 6, 'One of two mutually exclusive Route 111 Fossil choices in a single save file.'),
  -- #0346 Cradily - Evolution
  (346, 34600, 5, NULL, 7, NULL),
  -- #0347 Anorith - Fossil Restoration
  (347, 34700, 5, NULL, 6, 'One of two mutually exclusive Route 111 Fossil choices in a single save file.'),
  -- #0348 Armaldo - Evolution
  (348, 34800, 5, NULL, 7, NULL),
  -- #0349 Feebas - Native Encounter
  (349, 34900, 5, NULL, 1, NULL),
  -- #0350 Milotic - Evolution
  (350, 35000, 5, NULL, 7, NULL),
  -- #0351 Castform - Gift
  (351, 35100, 5, NULL, 4, 'Gift from the Weather Institute during the story.'),
  -- #0352 Kecleon - Static Encounter
  (352, 35200, 5, NULL, 2, 'Devon Scope static/invisible encounters; modeled as static for planning clarity.'),
  -- #0353 Shuppet - Native Encounter
  (353, 35300, 5, NULL, 1, NULL),
  -- #0354 Banette - Evolution
  (354, 35400, 5, NULL, 7, NULL),
  -- #0355 Duskull - Native Encounter
  (355, 35500, 5, NULL, 1, NULL),
  -- #0356 Dusclops - Evolution
  (356, 35600, 5, NULL, 7, NULL),
  -- #0357 Tropius - Native Encounter
  (357, 35700, 5, NULL, 1, NULL),
  -- #0358 Chimecho - Native Encounter
  (358, 35800, 5, NULL, 1, NULL),
  -- #0359 Absol - Native Encounter
  (359, 35900, 5, NULL, 1, NULL),
  -- #0360 Wynaut - Gift
  (360, 36000, 5, NULL, 4, 'One-time egg gift from the old woman in Lavaridge Town.'),
  -- #0361 Snorunt - Native Encounter
  (361, 36100, 5, NULL, 1, NULL),
  -- #0362 Glalie - Evolution
  (362, 36200, 5, NULL, 7, NULL),
  -- #0363 Spheal - Native Encounter
  (363, 36300, 5, NULL, 1, NULL),
  -- #0364 Sealeo - Evolution
  (364, 36400, 5, NULL, 7, NULL),
  -- #0365 Walrein - Evolution
  (365, 36500, 5, NULL, 7, NULL),
  -- #0366 Clamperl - Native Encounter
  (366, 36600, 5, NULL, 1, NULL),
  -- #0367 Huntail - Evolution
  (367, 36700, 5, NULL, 7, 'Requires a link trade evolution in Generation III; not obtainable by single-cartridge play alone.'),
  -- #0368 Gorebyss - Evolution
  (368, 36800, 5, NULL, 7, 'Requires a link trade evolution in Generation III; not obtainable by single-cartridge play alone.'),
  -- #0369 Relicanth - Native Encounter
  (369, 36900, 5, NULL, 1, NULL),
  -- #0370 Luvdisc - Native Encounter
  (370, 37000, 5, NULL, 1, NULL),
  -- #0371 Bagon - Native Encounter
  (371, 37100, 5, NULL, 1, NULL),
  -- #0372 Shelgon - Evolution
  (372, 37200, 5, NULL, 7, NULL),
  -- #0373 Salamence - Evolution
  (373, 37300, 5, NULL, 7, NULL),
  -- #0374 Beldum - Gift
  (374, 37400, 5, NULL, 4, 'Postgame gift from Steven in Mossdeep City after entering the Hall of Fame.'),
  -- #0375 Metang - Evolution
  (375, 37500, 5, NULL, 7, NULL),
  -- #0376 Metagross - Evolution
  (376, 37600, 5, NULL, 7, NULL),
  -- #0377 Regirock - Static Encounter
  (377, 37700, 5, NULL, 2, NULL),
  -- #0378 Regice - Static Encounter
  (378, 37800, 5, NULL, 2, NULL),
  -- #0379 Registeel - Static Encounter
  (379, 37900, 5, NULL, 2, NULL),
  -- #0380 Latias - Ruby - Event
  (380, 38000, 5, 7, 11, 'Eon Ticket Southern Island event encounter in Ruby; roaming encounter in Sapphire.'),
  -- #0380 Latias - Sapphire - Roaming Encounter
  (380, 38000, 5, 8, 9, 'Roaming encounter in Sapphire after entering the Hall of Fame; Eon Ticket encounter in Ruby.'),
  -- #0381 Latios - Ruby - Roaming Encounter
  (381, 38100, 5, 7, 9, 'Roaming encounter in Ruby after entering the Hall of Fame; Eon Ticket encounter in Sapphire.'),
  -- #0381 Latios - Sapphire - Event
  (381, 38100, 5, 8, 11, 'Eon Ticket Southern Island event encounter in Sapphire; roaming encounter in Ruby.'),
  -- #0382 Kyogre - Ruby - External Trade
  (382, 38200, 5, 7, 12, 'Version exclusive to Sapphire; available in Ruby only by trading from a compatible external game.'),
  -- #0382 Kyogre - Sapphire - Static Encounter
  (382, 38200, 5, 8, 2, 'Version mascot static encounter in Sapphire; available in Ruby only by trading from a compatible external game.'),
  -- #0383 Groudon - Ruby - Static Encounter
  (383, 38300, 5, 7, 2, 'Version mascot static encounter in Ruby; available in Sapphire only by trading from a compatible external game.'),
  -- #0383 Groudon - Sapphire - External Trade
  (383, 38300, 5, 8, 12, 'Version exclusive to Ruby; available in Sapphire only by trading from a compatible external game.'),
  -- #0384 Rayquaza - Static Encounter
  (384, 38400, 5, NULL, 2, NULL),
  -- #0385 Jirachi - Event
  (385, 38500, 5, NULL, 11, 'Event/distribution-only in Generation III; not obtainable through normal Ruby/Sapphire gameplay.'),
  -- #0386 Deoxys - Event
  (386, 38600, 5, NULL, 11, 'Event/distribution-only in Generation III; not obtainable through normal Ruby/Sapphire gameplay.');
