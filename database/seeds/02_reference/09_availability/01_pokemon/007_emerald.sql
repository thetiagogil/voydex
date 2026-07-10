-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Emerald missing Pokémon, Hoenn Safari Zone, record mixing, legendary encounter, and event location pages.
-- Cross-check: PokemonDB Emerald Pokedex/species locations, Serebii Emerald Pokedex/location pages, and legacy Voydex Emerald availability seeds.
-- Scope note: primary availability method per obtainable form; external-trade rows preserve compatible-game usability for planning.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Emerald
-- Table: reference.pokemon_availability
-- Scope: 388 rows; all Generation III-compatible species are represented, including Emerald-only Eon and Deoxys form caveats.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0001 Bulbasaur - External Trade
  (1, 100, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0002 Ivysaur - External Trade
  (2, 200, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0003 Venusaur - External Trade
  (3, 300, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0004 Charmander - External Trade
  (4, 400, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0005 Charmeleon - External Trade
  (5, 500, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0006 Charizard - External Trade
  (6, 600, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0007 Squirtle - External Trade
  (7, 700, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0008 Wartortle - External Trade
  (8, 800, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0009 Blastoise - External Trade
  (9, 900, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0010 Caterpie - External Trade
  (10, 1000, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0011 Metapod - External Trade
  (11, 1100, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0012 Butterfree - External Trade
  (12, 1200, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0013 Weedle - External Trade
  (13, 1300, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0014 Kakuna - External Trade
  (14, 1400, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0015 Beedrill - External Trade
  (15, 1500, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0016 Pidgey - External Trade
  (16, 1600, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0017 Pidgeotto - External Trade
  (17, 1700, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0018 Pidgeot - External Trade
  (18, 1800, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0019 Rattata - External Trade
  (19, 1900, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0020 Raticate - External Trade
  (20, 2000, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0021 Spearow - External Trade
  (21, 2100, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0022 Fearow - External Trade
  (22, 2200, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0023 Ekans - External Trade
  (23, 2300, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0024 Arbok - External Trade
  (24, 2400, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0025 Pikachu - Native Encounter
  (25, 2500, 7, NULL, 1, NULL),
  -- #0026 Raichu - Evolution
  (26, 2600, 7, NULL, 7, NULL),
  -- #0027 Sandshrew - Native Encounter
  (27, 2700, 7, NULL, 1, NULL),
  -- #0028 Sandslash - Evolution
  (28, 2800, 7, NULL, 7, NULL),
  -- #0029 Nidoran F - External Trade
  (29, 2900, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0030 Nidorina - External Trade
  (30, 3000, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0031 Nidoqueen - External Trade
  (31, 3100, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0032 Nidoran M - External Trade
  (32, 3200, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0033 Nidorino - External Trade
  (33, 3300, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0034 Nidoking - External Trade
  (34, 3400, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0035 Clefairy - External Trade
  (35, 3500, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0036 Clefable - External Trade
  (36, 3600, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0037 Vulpix - Native Encounter
  (37, 3700, 7, NULL, 1, NULL),
  -- #0038 Ninetales - Evolution
  (38, 3800, 7, NULL, 7, NULL),
  -- #0039 Jigglypuff - Native Encounter
  (39, 3900, 7, NULL, 1, NULL),
  -- #0040 Wigglytuff - Evolution
  (40, 4000, 7, NULL, 7, NULL),
  -- #0041 Zubat - Native Encounter
  (41, 4100, 7, NULL, 1, NULL),
  -- #0042 Golbat - Evolution
  (42, 4200, 7, NULL, 7, NULL),
  -- #0043 Oddish - Native Encounter
  (43, 4300, 7, NULL, 1, NULL),
  -- #0044 Gloom - Evolution
  (44, 4400, 7, NULL, 7, NULL),
  -- #0045 Vileplume - Evolution
  (45, 4500, 7, NULL, 7, NULL),
  -- #0046 Paras - External Trade
  (46, 4600, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0047 Parasect - External Trade
  (47, 4700, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0048 Venonat - External Trade
  (48, 4800, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0049 Venomoth - External Trade
  (49, 4900, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0050 Diglett - External Trade
  (50, 5000, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0051 Dugtrio - External Trade
  (51, 5100, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0052 Meowth - In-Game Trade
  (52, 5200, 7, NULL, 5, 'Battle Frontier in-game trade: trade Skitty for Meowth.'),
  -- #0053 Persian - Evolution
  (53, 5300, 7, NULL, 7, 'Available by evolving the Battle Frontier in-game trade Meowth.'),
  -- #0054 Psyduck - Native Encounter
  (54, 5400, 7, NULL, 1, NULL),
  -- #0055 Golduck - Evolution
  (55, 5500, 7, NULL, 7, NULL),
  -- #0056 Mankey - External Trade
  (56, 5600, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0057 Primeape - External Trade
  (57, 5700, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0058 Growlithe - External Trade
  (58, 5800, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0059 Arcanine - External Trade
  (59, 5900, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0060 Poliwag - External Trade
  (60, 6000, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0061 Poliwhirl - External Trade
  (61, 6100, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0062 Poliwrath - External Trade
  (62, 6200, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0063 Abra - Native Encounter
  (63, 6300, 7, NULL, 1, NULL),
  -- #0064 Kadabra - Evolution
  (64, 6400, 7, NULL, 7, NULL),
  -- #0065 Alakazam - Evolution
  (65, 6500, 7, NULL, 7, NULL),
  -- #0066 Machop - Native Encounter
  (66, 6600, 7, NULL, 1, NULL),
  -- #0067 Machoke - Evolution
  (67, 6700, 7, NULL, 7, NULL),
  -- #0068 Machamp - Evolution
  (68, 6800, 7, NULL, 7, NULL),
  -- #0069 Bellsprout - External Trade
  (69, 6900, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0070 Weepinbell - External Trade
  (70, 7000, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0071 Victreebel - External Trade
  (71, 7100, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0072 Tentacool - Native Encounter
  (72, 7200, 7, NULL, 1, NULL),
  -- #0073 Tentacruel - Evolution
  (73, 7300, 7, NULL, 7, NULL),
  -- #0074 Geodude - Native Encounter
  (74, 7400, 7, NULL, 1, NULL),
  -- #0075 Graveler - Evolution
  (75, 7500, 7, NULL, 7, NULL),
  -- #0076 Golem - Evolution
  (76, 7600, 7, NULL, 7, NULL),
  -- #0077 Ponyta - External Trade
  (77, 7700, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0078 Rapidash - External Trade
  (78, 7800, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0079 Slowpoke - External Trade
  (79, 7900, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0080 Slowbro - External Trade
  (80, 8000, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0081 Magnemite - Native Encounter
  (81, 8100, 7, NULL, 1, NULL),
  -- #0082 Magneton - Evolution
  (82, 8200, 7, NULL, 7, NULL),
  -- #0083 Farfetch'd - External Trade
  (83, 8300, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0084 Doduo - Native Encounter
  (84, 8400, 7, NULL, 1, NULL),
  -- #0085 Dodrio - Evolution
  (85, 8500, 7, NULL, 7, NULL),
  -- #0086 Seel - External Trade
  (86, 8600, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0087 Dewgong - External Trade
  (87, 8700, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0088 Grimer - Native Encounter
  (88, 8800, 7, NULL, 1, NULL),
  -- #0089 Muk - Evolution
  (89, 8900, 7, NULL, 7, NULL),
  -- #0090 Shellder - External Trade
  (90, 9000, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0091 Cloyster - External Trade
  (91, 9100, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0092 Gastly - External Trade
  (92, 9200, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0093 Haunter - External Trade
  (93, 9300, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0094 Gengar - External Trade
  (94, 9400, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0095 Onix - External Trade
  (95, 9500, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0096 Drowzee - External Trade
  (96, 9600, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0097 Hypno - External Trade
  (97, 9700, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0098 Krabby - External Trade
  (98, 9800, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0099 Kingler - External Trade
  (99, 9900, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0100 Voltorb - Native Encounter
  (100, 10000, 7, NULL, 1, NULL),
  -- #0101 Electrode - Evolution
  (101, 10100, 7, NULL, 7, NULL),
  -- #0102 Exeggcute - External Trade
  (102, 10200, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0103 Exeggutor - External Trade
  (103, 10300, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0104 Cubone - External Trade
  (104, 10400, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0105 Marowak - External Trade
  (105, 10500, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0106 Hitmonlee - External Trade
  (106, 10600, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0107 Hitmonchan - External Trade
  (107, 10700, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0108 Lickitung - External Trade
  (108, 10800, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0109 Koffing - Native Encounter
  (109, 10900, 7, NULL, 1, NULL),
  -- #0110 Weezing - Evolution
  (110, 11000, 7, NULL, 7, NULL),
  -- #0111 Rhyhorn - Native Encounter
  (111, 11100, 7, NULL, 1, NULL),
  -- #0112 Rhydon - Evolution
  (112, 11200, 7, NULL, 7, NULL),
  -- #0113 Chansey - External Trade
  (113, 11300, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0114 Tangela - External Trade
  (114, 11400, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0115 Kangaskhan - External Trade
  (115, 11500, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0116 Horsea - Native Encounter
  (116, 11600, 7, NULL, 1, NULL),
  -- #0117 Seadra - Evolution
  (117, 11700, 7, NULL, 7, NULL),
  -- #0118 Goldeen - Native Encounter
  (118, 11800, 7, NULL, 1, NULL),
  -- #0119 Seaking - Evolution
  (119, 11900, 7, NULL, 7, NULL),
  -- #0120 Staryu - Native Encounter
  (120, 12000, 7, NULL, 1, NULL),
  -- #0121 Starmie - Evolution
  (121, 12100, 7, NULL, 7, NULL),
  -- #0122 Mr. Mime - External Trade
  (122, 12200, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0123 Scyther - External Trade
  (123, 12300, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0124 Jynx - External Trade
  (124, 12400, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0125 Electabuzz - External Trade
  (125, 12500, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0126 Magmar - External Trade
  (126, 12600, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0127 Pinsir - Native Encounter
  (127, 12700, 7, NULL, 1, NULL),
  -- #0128 Tauros - External Trade
  (128, 12800, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 7, NULL, 1, NULL),
  -- #0130 Gyarados - Evolution
  (130, 13000, 7, NULL, 7, NULL),
  -- #0131 Lapras - External Trade
  (131, 13100, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0132 Ditto - External Trade
  (132, 13200, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0133 Eevee - External Trade
  (133, 13300, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0134 Vaporeon - External Trade
  (134, 13400, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0135 Jolteon - External Trade
  (135, 13500, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0136 Flareon - External Trade
  (136, 13600, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0137 Porygon - External Trade
  (137, 13700, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0138 Omanyte - External Trade
  (138, 13800, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0139 Omastar - External Trade
  (139, 13900, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0140 Kabuto - External Trade
  (140, 14000, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0141 Kabutops - External Trade
  (141, 14100, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0142 Aerodactyl - External Trade
  (142, 14200, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0143 Snorlax - External Trade
  (143, 14300, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0144 Articuno - External Trade
  (144, 14400, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0145 Zapdos - External Trade
  (145, 14500, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0146 Moltres - External Trade
  (146, 14600, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0147 Dratini - External Trade
  (147, 14700, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0148 Dragonair - External Trade
  (148, 14800, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0149 Dragonite - External Trade
  (149, 14900, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0150 Mewtwo - External Trade
  (150, 15000, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0151 Mew - Event
  (151, 15100, 7, NULL, 11, 'Old Sea Map event-unlocked Faraway Island encounter in Emerald; original distribution was limited by region.'),
  -- #0152 Chikorita - Gift
  (152, 15200, 7, NULL, 4, 'One Johto first partner gift choice after completing the Hoenn Pokedex; only one of the three lines per save without trading.'),
  -- #0153 Bayleef - Evolution
  (153, 15300, 7, NULL, 7, NULL),
  -- #0154 Meganium - Evolution
  (154, 15400, 7, NULL, 7, NULL),
  -- #0155 Cyndaquil - Gift
  (155, 15500, 7, NULL, 4, 'One Johto first partner gift choice after completing the Hoenn Pokedex; only one of the three lines per save without trading.'),
  -- #0156 Quilava - Evolution
  (156, 15600, 7, NULL, 7, NULL),
  -- #0157 Typhlosion - Evolution
  (157, 15700, 7, NULL, 7, NULL),
  -- #0158 Totodile - Gift
  (158, 15800, 7, NULL, 4, 'One Johto first partner gift choice after completing the Hoenn Pokedex; only one of the three lines per save without trading.'),
  -- #0159 Croconaw - Evolution
  (159, 15900, 7, NULL, 7, NULL),
  -- #0160 Feraligatr - Evolution
  (160, 16000, 7, NULL, 7, NULL),
  -- #0161 Sentret - External Trade
  (161, 16100, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0162 Furret - External Trade
  (162, 16200, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0163 Hoothoot - Native Encounter
  (163, 16300, 7, NULL, 1, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0164 Noctowl - Evolution
  (164, 16400, 7, NULL, 7, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0165 Ledyba - Native Encounter
  (165, 16500, 7, NULL, 1, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0166 Ledian - Evolution
  (166, 16600, 7, NULL, 7, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0167 Spinarak - Native Encounter
  (167, 16700, 7, NULL, 1, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0168 Ariados - Evolution
  (168, 16800, 7, NULL, 7, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0169 Crobat - Evolution
  (169, 16900, 7, NULL, 7, NULL),
  -- #0170 Chinchou - Native Encounter
  (170, 17000, 7, NULL, 1, NULL),
  -- #0171 Lanturn - Evolution
  (171, 17100, 7, NULL, 7, NULL),
  -- #0172 Pichu - Breeding
  (172, 17200, 7, NULL, 8, NULL),
  -- #0173 Cleffa - External Trade
  (173, 17300, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0174 Igglybuff - Breeding
  (174, 17400, 7, NULL, 8, NULL),
  -- #0175 Togepi - External Trade
  (175, 17500, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0176 Togetic - External Trade
  (176, 17600, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0177 Natu - Native Encounter
  (177, 17700, 7, NULL, 1, NULL),
  -- #0178 Xatu - Evolution
  (178, 17800, 7, NULL, 7, NULL),
  -- #0179 Mareep - Native Encounter
  (179, 17900, 7, NULL, 1, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0180 Flaaffy - Evolution
  (180, 18000, 7, NULL, 7, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0181 Ampharos - Evolution
  (181, 18100, 7, NULL, 7, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0182 Bellossom - Evolution
  (182, 18200, 7, NULL, 7, NULL),
  -- #0183 Marill - Native Encounter
  (183, 18300, 7, NULL, 1, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0184 Azumarill - Evolution
  (184, 18400, 7, NULL, 7, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0185 Sudowoodo - Static Encounter
  (185, 18500, 7, NULL, 2, 'Battle Frontier static encounter; water the strange tree with the Wailmer Pail.'),
  -- #0186 Politoed - External Trade
  (186, 18600, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0187 Hoppip - External Trade
  (187, 18700, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0188 Skiploom - External Trade
  (188, 18800, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0189 Jumpluff - External Trade
  (189, 18900, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0190 Aipom - Native Encounter
  (190, 19000, 7, NULL, 1, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0191 Sunkern - Native Encounter
  (191, 19100, 7, NULL, 1, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0192 Sunflora - Evolution
  (192, 19200, 7, NULL, 7, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0193 Yanma - External Trade
  (193, 19300, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0194 Wooper - Native Encounter
  (194, 19400, 7, NULL, 1, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0195 Quagsire - Evolution
  (195, 19500, 7, NULL, 7, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0196 Espeon - External Trade
  (196, 19600, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0197 Umbreon - External Trade
  (197, 19700, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0198 Murkrow - External Trade
  (198, 19800, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0199 Slowking - External Trade
  (199, 19900, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0200 Misdreavus - External Trade
  (200, 20000, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0201 Unown - External Trade
  (201, 20100, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0202 Wobbuffet - Native Encounter
  (202, 20200, 7, NULL, 1, NULL),
  -- #0203 Girafarig - Native Encounter
  (203, 20300, 7, NULL, 1, NULL),
  -- #0204 Pineco - Native Encounter
  (204, 20400, 7, NULL, 1, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0205 Forretress - Evolution
  (205, 20500, 7, NULL, 7, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0206 Dunsparce - External Trade
  (206, 20600, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0207 Gligar - Native Encounter
  (207, 20700, 7, NULL, 1, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0208 Steelix - External Trade
  (208, 20800, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0209 Snubbull - Native Encounter
  (209, 20900, 7, NULL, 1, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0210 Granbull - Evolution
  (210, 21000, 7, NULL, 7, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0211 Qwilfish - External Trade
  (211, 21100, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0212 Scizor - External Trade
  (212, 21200, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0213 Shuckle - Native Encounter
  (213, 21300, 7, NULL, 1, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0214 Heracross - Native Encounter
  (214, 21400, 7, NULL, 1, NULL),
  -- #0215 Sneasel - External Trade
  (215, 21500, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0216 Teddiursa - Native Encounter
  (216, 21600, 7, NULL, 1, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0217 Ursaring - Evolution
  (217, 21700, 7, NULL, 7, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0218 Slugma - Native Encounter
  (218, 21800, 7, NULL, 1, NULL),
  -- #0219 Magcargo - Evolution
  (219, 21900, 7, NULL, 7, NULL),
  -- #0220 Swinub - External Trade
  (220, 22000, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0221 Piloswine - External Trade
  (221, 22100, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0222 Corsola - Native Encounter
  (222, 22200, 7, NULL, 1, NULL),
  -- #0223 Remoraid - Native Encounter
  (223, 22300, 7, NULL, 1, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0224 Octillery - Evolution
  (224, 22400, 7, NULL, 7, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0225 Delibird - External Trade
  (225, 22500, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0226 Mantine - External Trade
  (226, 22600, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0227 Skarmory - Native Encounter
  (227, 22700, 7, NULL, 1, NULL),
  -- #0228 Houndour - Native Encounter
  (228, 22800, 7, NULL, 1, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0229 Houndoom - Evolution
  (229, 22900, 7, NULL, 7, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0230 Kingdra - Evolution
  (230, 23000, 7, NULL, 7, NULL),
  -- #0231 Phanpy - Native Encounter
  (231, 23100, 7, NULL, 1, NULL),
  -- #0232 Donphan - Evolution
  (232, 23200, 7, NULL, 7, NULL),
  -- #0233 Porygon2 - External Trade
  (233, 23300, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0234 Stantler - Native Encounter
  (234, 23400, 7, NULL, 1, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0235 Smeargle - Native Encounter
  (235, 23500, 7, NULL, 1, 'Artisan Cave wild encounter in Emerald.'),
  -- #0236 Tyrogue - External Trade
  (236, 23600, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0237 Hitmontop - External Trade
  (237, 23700, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0238 Smoochum - External Trade
  (238, 23800, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0239 Elekid - External Trade
  (239, 23900, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0240 Magby - External Trade
  (240, 24000, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0241 Miltank - Native Encounter
  (241, 24100, 7, NULL, 1, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0242 Blissey - External Trade
  (242, 24200, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0243 Raikou - External Trade
  (243, 24300, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0244 Entei - External Trade
  (244, 24400, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0245 Suicune - External Trade
  (245, 24500, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0246 Larvitar - External Trade
  (246, 24600, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0247 Pupitar - External Trade
  (247, 24700, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0248 Tyranitar - External Trade
  (248, 24800, 7, NULL, 12, 'Not obtainable through normal Emerald gameplay; must be traded from a compatible Generation III core-series or Orre game.'),
  -- #0249 Lugia - Event
  (249, 24900, 7, NULL, 11, 'MysticTicket event-unlocked Navel Rock encounter in Emerald.'),
  -- #0250 Ho-Oh - Event
  (250, 25000, 7, NULL, 11, 'MysticTicket event-unlocked Navel Rock encounter in Emerald.'),
  -- #0251 Celebi - Event
  (251, 25100, 7, NULL, 11, 'Event/distribution-only in Generation III; not obtainable through normal Emerald gameplay.'),
  -- #0252 Treecko - Starter
  (252, 25200, 7, NULL, 3, NULL),
  -- #0253 Grovyle - Evolution
  (253, 25300, 7, NULL, 7, NULL),
  -- #0254 Sceptile - Evolution
  (254, 25400, 7, NULL, 7, NULL),
  -- #0255 Torchic - Starter
  (255, 25500, 7, NULL, 3, NULL),
  -- #0256 Combusken - Evolution
  (256, 25600, 7, NULL, 7, NULL),
  -- #0257 Blaziken - Evolution
  (257, 25700, 7, NULL, 7, NULL),
  -- #0258 Mudkip - Starter
  (258, 25800, 7, NULL, 3, NULL),
  -- #0259 Marshtomp - Evolution
  (259, 25900, 7, NULL, 7, NULL),
  -- #0260 Swampert - Evolution
  (260, 26000, 7, NULL, 7, NULL),
  -- #0261 Poochyena - Native Encounter
  (261, 26100, 7, NULL, 1, NULL),
  -- #0262 Mightyena - Evolution
  (262, 26200, 7, NULL, 7, NULL),
  -- #0263 Zigzagoon - Native Encounter
  (263, 26300, 7, NULL, 1, NULL),
  -- #0264 Linoone - Evolution
  (264, 26400, 7, NULL, 7, NULL),
  -- #0265 Wurmple - Native Encounter
  (265, 26500, 7, NULL, 1, NULL),
  -- #0266 Silcoon - Evolution
  (266, 26600, 7, NULL, 7, NULL),
  -- #0267 Beautifly - Evolution
  (267, 26700, 7, NULL, 7, NULL),
  -- #0268 Cascoon - Evolution
  (268, 26800, 7, NULL, 7, NULL),
  -- #0269 Dustox - Evolution
  (269, 26900, 7, NULL, 7, NULL),
  -- #0270 Lotad - Native Encounter
  (270, 27000, 7, NULL, 1, NULL),
  -- #0271 Lombre - Evolution
  (271, 27100, 7, NULL, 7, NULL),
  -- #0272 Ludicolo - Evolution
  (272, 27200, 7, NULL, 7, NULL),
  -- #0273 Seedot - Native Encounter
  (273, 27300, 7, NULL, 1, NULL),
  -- #0274 Nuzleaf - Evolution
  (274, 27400, 7, NULL, 7, NULL),
  -- #0275 Shiftry - Evolution
  (275, 27500, 7, NULL, 7, NULL),
  -- #0276 Taillow - Native Encounter
  (276, 27600, 7, NULL, 1, NULL),
  -- #0277 Swellow - Evolution
  (277, 27700, 7, NULL, 7, NULL),
  -- #0278 Wingull - Native Encounter
  (278, 27800, 7, NULL, 1, NULL),
  -- #0279 Pelipper - Evolution
  (279, 27900, 7, NULL, 7, NULL),
  -- #0280 Ralts - Native Encounter
  (280, 28000, 7, NULL, 1, NULL),
  -- #0281 Kirlia - Evolution
  (281, 28100, 7, NULL, 7, NULL),
  -- #0282 Gardevoir - Evolution
  (282, 28200, 7, NULL, 7, NULL),
  -- #0283 Surskit - Raid or Special Encounter
  (283, 28300, 7, NULL, 10, 'Wild Surskit can appear only through a mass outbreak transferred by record mixing from Ruby/Sapphire; otherwise it requires another game.'),
  -- #0284 Masquerain - Evolution
  (284, 28400, 7, NULL, 7, 'Requires Surskit obtained through record-mixed outbreak or external trade, then evolution.'),
  -- #0285 Shroomish - Native Encounter
  (285, 28500, 7, NULL, 1, NULL),
  -- #0286 Breloom - Evolution
  (286, 28600, 7, NULL, 7, NULL),
  -- #0287 Slakoth - Native Encounter
  (287, 28700, 7, NULL, 1, NULL),
  -- #0288 Vigoroth - Evolution
  (288, 28800, 7, NULL, 7, NULL),
  -- #0289 Slaking - Evolution
  (289, 28900, 7, NULL, 7, NULL),
  -- #0290 Nincada - Native Encounter
  (290, 29000, 7, NULL, 1, NULL),
  -- #0291 Ninjask - Evolution
  (291, 29100, 7, NULL, 7, NULL),
  -- #0292 Shedinja - Evolution
  (292, 29200, 7, NULL, 7, NULL),
  -- #0293 Whismur - Native Encounter
  (293, 29300, 7, NULL, 1, NULL),
  -- #0294 Loudred - Evolution
  (294, 29400, 7, NULL, 7, NULL),
  -- #0295 Exploud - Evolution
  (295, 29500, 7, NULL, 7, NULL),
  -- #0296 Makuhita - Native Encounter
  (296, 29600, 7, NULL, 1, NULL),
  -- #0297 Hariyama - Evolution
  (297, 29700, 7, NULL, 7, NULL),
  -- #0298 Azurill - Breeding
  (298, 29800, 7, NULL, 8, 'Post-National Dex Hoenn Safari Zone expansion availability in Emerald.'),
  -- #0299 Nosepass - Native Encounter
  (299, 29900, 7, NULL, 1, NULL),
  -- #0300 Skitty - Native Encounter
  (300, 30000, 7, NULL, 1, NULL),
  -- #0301 Delcatty - Evolution
  (301, 30100, 7, NULL, 7, NULL),
  -- #0302 Sableye - Native Encounter
  (302, 30200, 7, NULL, 1, NULL),
  -- #0303 Mawile - Native Encounter
  (303, 30300, 7, NULL, 1, NULL),
  -- #0304 Aron - Native Encounter
  (304, 30400, 7, NULL, 1, NULL),
  -- #0305 Lairon - Evolution
  (305, 30500, 7, NULL, 7, NULL),
  -- #0306 Aggron - Evolution
  (306, 30600, 7, NULL, 7, NULL),
  -- #0307 Meditite - External Trade
  (307, 30700, 7, NULL, 12, 'Listed as missing from Emerald by source; must be obtained from another compatible Generation III game.'),
  -- #0308 Medicham - External Trade
  (308, 30800, 7, NULL, 12, 'Listed as missing from Emerald by source; must be obtained from another compatible Generation III game.'),
  -- #0309 Electrike - Native Encounter
  (309, 30900, 7, NULL, 1, NULL),
  -- #0310 Manectric - Evolution
  (310, 31000, 7, NULL, 7, NULL),
  -- #0311 Plusle - Native Encounter
  (311, 31100, 7, NULL, 1, NULL),
  -- #0312 Minun - Native Encounter
  (312, 31200, 7, NULL, 1, NULL),
  -- #0313 Volbeat - Native Encounter
  (313, 31300, 7, NULL, 1, NULL),
  -- #0314 Illumise - Native Encounter
  (314, 31400, 7, NULL, 1, NULL),
  -- #0315 Roselia - External Trade
  (315, 31500, 7, NULL, 12, 'Listed as missing from Emerald by source; must be obtained from another compatible Generation III game.'),
  -- #0316 Gulpin - Native Encounter
  (316, 31600, 7, NULL, 1, NULL),
  -- #0317 Swalot - Evolution
  (317, 31700, 7, NULL, 7, NULL),
  -- #0318 Carvanha - Native Encounter
  (318, 31800, 7, NULL, 1, NULL),
  -- #0319 Sharpedo - Evolution
  (319, 31900, 7, NULL, 7, NULL),
  -- #0320 Wailmer - Native Encounter
  (320, 32000, 7, NULL, 1, NULL),
  -- #0321 Wailord - Evolution
  (321, 32100, 7, NULL, 7, NULL),
  -- #0322 Numel - Native Encounter
  (322, 32200, 7, NULL, 1, NULL),
  -- #0323 Camerupt - Evolution
  (323, 32300, 7, NULL, 7, NULL),
  -- #0324 Torkoal - Native Encounter
  (324, 32400, 7, NULL, 1, NULL),
  -- #0325 Spoink - Native Encounter
  (325, 32500, 7, NULL, 1, NULL),
  -- #0326 Grumpig - Evolution
  (326, 32600, 7, NULL, 7, NULL),
  -- #0327 Spinda - Native Encounter
  (327, 32700, 7, NULL, 1, NULL),
  -- #0328 Trapinch - Native Encounter
  (328, 32800, 7, NULL, 1, NULL),
  -- #0329 Vibrava - Evolution
  (329, 32900, 7, NULL, 7, NULL),
  -- #0330 Flygon - Evolution
  (330, 33000, 7, NULL, 7, NULL),
  -- #0331 Cacnea - Native Encounter
  (331, 33100, 7, NULL, 1, NULL),
  -- #0332 Cacturne - Evolution
  (332, 33200, 7, NULL, 7, NULL),
  -- #0333 Swablu - Native Encounter
  (333, 33300, 7, NULL, 1, NULL),
  -- #0334 Altaria - Evolution
  (334, 33400, 7, NULL, 7, NULL),
  -- #0335 Zangoose - External Trade
  (335, 33500, 7, NULL, 12, 'Listed as missing from Emerald by source; must be obtained from another compatible Generation III game.'),
  -- #0336 Seviper - Native Encounter
  (336, 33600, 7, NULL, 1, NULL),
  -- #0337 Lunatone - External Trade
  (337, 33700, 7, NULL, 12, 'Listed as missing from Emerald by source; must be obtained from another compatible Generation III game.'),
  -- #0338 Solrock - Native Encounter
  (338, 33800, 7, NULL, 1, NULL),
  -- #0339 Barboach - Native Encounter
  (339, 33900, 7, NULL, 1, NULL),
  -- #0340 Whiscash - Evolution
  (340, 34000, 7, NULL, 7, NULL),
  -- #0341 Corphish - Native Encounter
  (341, 34100, 7, NULL, 1, NULL),
  -- #0342 Crawdaunt - Evolution
  (342, 34200, 7, NULL, 7, NULL),
  -- #0343 Baltoy - Native Encounter
  (343, 34300, 7, NULL, 1, NULL),
  -- #0344 Claydol - Evolution
  (344, 34400, 7, NULL, 7, NULL),
  -- #0345 Lileep - Fossil Restoration
  (345, 34500, 7, NULL, 6, 'One Hoenn fossil is chosen before postgame; the second Hoenn fossil can be recovered in Desert Underpass after entering the Hall of Fame.'),
  -- #0346 Cradily - Evolution
  (346, 34600, 7, NULL, 7, NULL),
  -- #0347 Anorith - Fossil Restoration
  (347, 34700, 7, NULL, 6, 'One Hoenn fossil is chosen before postgame; the second Hoenn fossil can be recovered in Desert Underpass after entering the Hall of Fame.'),
  -- #0348 Armaldo - Evolution
  (348, 34800, 7, NULL, 7, NULL),
  -- #0349 Feebas - Native Encounter
  (349, 34900, 7, NULL, 1, NULL),
  -- #0350 Milotic - Evolution
  (350, 35000, 7, NULL, 7, NULL),
  -- #0351 Castform - Gift
  (351, 35100, 7, NULL, 4, NULL),
  -- #0352 Kecleon - Static Encounter
  (352, 35200, 7, NULL, 2, NULL),
  -- #0353 Shuppet - Native Encounter
  (353, 35300, 7, NULL, 1, NULL),
  -- #0354 Banette - Evolution
  (354, 35400, 7, NULL, 7, NULL),
  -- #0355 Duskull - Native Encounter
  (355, 35500, 7, NULL, 1, NULL),
  -- #0356 Dusclops - Evolution
  (356, 35600, 7, NULL, 7, NULL),
  -- #0357 Tropius - Native Encounter
  (357, 35700, 7, NULL, 1, NULL),
  -- #0358 Chimecho - Native Encounter
  (358, 35800, 7, NULL, 1, NULL),
  -- #0359 Absol - Native Encounter
  (359, 35900, 7, NULL, 1, NULL),
  -- #0360 Wynaut - Gift
  (360, 36000, 7, NULL, 4, NULL),
  -- #0361 Snorunt - Native Encounter
  (361, 36100, 7, NULL, 1, NULL),
  -- #0362 Glalie - Evolution
  (362, 36200, 7, NULL, 7, NULL),
  -- #0363 Spheal - Native Encounter
  (363, 36300, 7, NULL, 1, NULL),
  -- #0364 Sealeo - Evolution
  (364, 36400, 7, NULL, 7, NULL),
  -- #0365 Walrein - Evolution
  (365, 36500, 7, NULL, 7, NULL),
  -- #0366 Clamperl - Native Encounter
  (366, 36600, 7, NULL, 1, NULL),
  -- #0367 Huntail - Evolution
  (367, 36700, 7, NULL, 7, NULL),
  -- #0368 Gorebyss - Evolution
  (368, 36800, 7, NULL, 7, NULL),
  -- #0369 Relicanth - Native Encounter
  (369, 36900, 7, NULL, 1, NULL),
  -- #0370 Luvdisc - Native Encounter
  (370, 37000, 7, NULL, 1, NULL),
  -- #0371 Bagon - Native Encounter
  (371, 37100, 7, NULL, 1, NULL),
  -- #0372 Shelgon - Evolution
  (372, 37200, 7, NULL, 7, NULL),
  -- #0373 Salamence - Evolution
  (373, 37300, 7, NULL, 7, NULL),
  -- #0374 Beldum - Gift
  (374, 37400, 7, NULL, 4, NULL),
  -- #0375 Metang - Evolution
  (375, 37500, 7, NULL, 7, NULL),
  -- #0376 Metagross - Evolution
  (376, 37600, 7, NULL, 7, NULL),
  -- #0377 Regirock - Static Encounter
  (377, 37700, 7, NULL, 2, NULL),
  -- #0378 Regice - Static Encounter
  (378, 37800, 7, NULL, 2, NULL),
  -- #0379 Registeel - Static Encounter
  (379, 37900, 7, NULL, 2, NULL),
  -- #0380 Latias - Roaming Encounter
  (380, 38000, 7, NULL, 9, 'One of Latias/Latios roams after entering the Hall of Fame based on the player''s TV color choice.'),
  -- #0380 Latias - Event
  (380, 38000, 7, NULL, 11, 'Eon Ticket Southern Island event encounter for the Eon Pokémon not selected as the roaming encounter.'),
  -- #0381 Latios - Roaming Encounter
  (381, 38100, 7, NULL, 9, 'One of Latias/Latios roams after entering the Hall of Fame based on the player''s TV color choice.'),
  -- #0381 Latios - Event
  (381, 38100, 7, NULL, 11, 'Eon Ticket Southern Island event encounter for the Eon Pokémon not selected as the roaming encounter.'),
  -- #0382 Kyogre - Static Encounter
  (382, 38200, 7, NULL, 2, NULL),
  -- #0383 Groudon - Static Encounter
  (383, 38300, 7, NULL, 2, NULL),
  -- #0384 Rayquaza - Static Encounter
  (384, 38400, 7, NULL, 2, NULL),
  -- #0385 Jirachi - Event
  (385, 38500, 7, NULL, 11, 'Event/distribution-only in Generation III; not obtainable through normal Emerald gameplay.'),
  -- #0386 Deoxys (Speed) - Event
  (386, 38603, 7, NULL, 11, 'AuroraTicket event-unlocked Birth Island encounter; Deoxys is Speed Forme in Emerald.');
