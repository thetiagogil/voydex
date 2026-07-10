-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon in Pokémon Brilliant Diamond and Shining Pearl.
-- Cross-check: PokemonDB BDSP Pokedex and version exclusives; Bulbapedia in-game event Pokémon; Serebii Ramanas Park and Grand Underground references.
-- Scope note: all BDSP-compatible source-visible default forms, plus Voydex-curated persistent/selectable forms.
-- Form policy note: Unown letters, Shellos/Gastrodon seas, Castform weather, Cherrim Sunshine, plus cosmetic or battle-state forms are excluded by current Voydex form policy.
-- Method note: exact location tables are out of scope; ordinary surface, Grand Underground, Poke Radar, swarm, Trophy Garden, and Great Marsh sources are represented as primary availability methods.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Brilliant Diamond / Shining Pearl
-- Table: reference.pokemon_availability
-- Scope: 579 rows; all 493 BDSP-compatible species are represented, with transfer-only, event-only, save-data, Ramanas Park, version-exclusive, and curated form rows separated.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0001 Bulbasaur - Native Encounter
  (1, 100, 21, NULL, 1, 'Normally available in BDSP through wild, Grand Underground, or additional in-game source; may require National Dex or postgame access.'),
  -- #0002 Ivysaur - Evolution
  (2, 200, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0003 Venusaur - Evolution
  (3, 300, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0004 Charmander - Native Encounter
  (4, 400, 21, NULL, 1, 'Normally available in BDSP through wild, Grand Underground, or additional in-game source; may require National Dex or postgame access.'),
  -- #0005 Charmeleon - Evolution
  (5, 500, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0006 Charizard - Evolution
  (6, 600, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0007 Squirtle - Native Encounter
  (7, 700, 21, NULL, 1, 'Normally available in BDSP through wild, Grand Underground, or additional in-game source; may require National Dex or postgame access.'),
  -- #0008 Wartortle - Evolution
  (8, 800, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0009 Blastoise - Evolution
  (9, 900, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0010 Caterpie - Raid or Special Encounter
  (10, 1000, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0011 Metapod - Raid or Special Encounter
  (11, 1100, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0012 Butterfree - Evolution
  (12, 1200, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0013 Weedle - Raid or Special Encounter
  (13, 1300, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0014 Kakuna - Raid or Special Encounter
  (14, 1400, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0015 Beedrill - Evolution
  (15, 1500, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0016 Pidgey - Raid or Special Encounter
  (16, 1600, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0017 Pidgeotto - Evolution
  (17, 1700, 21, NULL, 7, NULL),
  -- #0018 Pidgeot - Evolution
  (18, 1800, 21, NULL, 7, NULL),
  -- #0019 Rattata - Native Encounter
  (19, 1900, 21, NULL, 1, NULL),
  -- #0020 Raticate - Native Encounter
  (20, 2000, 21, NULL, 1, NULL),
  -- #0021 Spearow - Native Encounter
  (21, 2100, 21, NULL, 1, NULL),
  -- #0022 Fearow - Native Encounter
  (22, 2200, 21, NULL, 1, NULL),
  -- #0023 Ekans - Raid or Special Encounter
  (23, 2300, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0024 Arbok - Raid or Special Encounter
  (24, 2400, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0025 Pikachu - Native Encounter
  (25, 2500, 21, NULL, 1, NULL),
  -- #0026 Raichu - Evolution
  (26, 2600, 21, NULL, 7, NULL),
  -- #0027 Sandshrew - Raid or Special Encounter
  (27, 2700, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0028 Sandslash - Raid or Special Encounter
  (28, 2800, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0029 Nidoran F - Native Encounter
  (29, 2900, 21, NULL, 1, NULL),
  -- #0030 Nidorina - Native Encounter
  (30, 3000, 21, NULL, 1, NULL),
  -- #0031 Nidoqueen - Evolution
  (31, 3100, 21, NULL, 7, NULL),
  -- #0032 Nidoran M - Native Encounter
  (32, 3200, 21, NULL, 1, NULL),
  -- #0033 Nidorino - Native Encounter
  (33, 3300, 21, NULL, 1, NULL),
  -- #0034 Nidoking - Evolution
  (34, 3400, 21, NULL, 7, NULL),
  -- #0035 Clefairy - Native Encounter
  (35, 3500, 21, NULL, 1, NULL),
  -- #0036 Clefable - Evolution
  (36, 3600, 21, NULL, 7, NULL),
  -- #0037 Vulpix - Raid or Special Encounter
  (37, 3700, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0038 Ninetales - Evolution
  (38, 3800, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0039 Jigglypuff - Raid or Special Encounter
  (39, 3900, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0040 Wigglytuff - Evolution
  (40, 4000, 21, NULL, 7, NULL),
  -- #0041 Zubat - Native Encounter
  (41, 4100, 21, NULL, 1, NULL),
  -- #0042 Golbat - Native Encounter
  (42, 4200, 21, NULL, 1, NULL),
  -- #0043 Oddish - Native Encounter
  (43, 4300, 21, NULL, 1, NULL),
  -- #0044 Gloom - Native Encounter
  (44, 4400, 21, NULL, 1, NULL),
  -- #0045 Vileplume - Evolution
  (45, 4500, 21, NULL, 7, NULL),
  -- #0046 Paras - Raid or Special Encounter
  (46, 4600, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0047 Parasect - Evolution
  (47, 4700, 21, NULL, 7, NULL),
  -- #0048 Venonat - Native Encounter
  (48, 4800, 21, NULL, 1, NULL),
  -- #0049 Venomoth - Native Encounter
  (49, 4900, 21, NULL, 1, NULL),
  -- #0050 Diglett - Native Encounter
  (50, 5000, 21, NULL, 1, NULL),
  -- #0051 Dugtrio - Native Encounter
  (51, 5100, 21, NULL, 1, NULL),
  -- #0052 Meowth - Raid or Special Encounter
  (52, 5200, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0053 Persian - Evolution
  (53, 5300, 21, NULL, 7, NULL),
  -- #0054 Psyduck - Native Encounter
  (54, 5400, 21, NULL, 1, NULL),
  -- #0055 Golduck - Native Encounter
  (55, 5500, 21, NULL, 1, NULL),
  -- #0056 Mankey - Native Encounter
  (56, 5600, 21, NULL, 1, NULL),
  -- #0057 Primeape - Native Encounter
  (57, 5700, 21, NULL, 1, NULL),
  -- #0058 Growlithe - Raid or Special Encounter
  (58, 5800, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0059 Arcanine - Evolution
  (59, 5900, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0060 Poliwag - Native Encounter
  (60, 6000, 21, NULL, 1, NULL),
  -- #0061 Poliwhirl - Native Encounter
  (61, 6100, 21, NULL, 1, NULL),
  -- #0062 Poliwrath - Evolution
  (62, 6200, 21, NULL, 7, NULL),
  -- #0063 Abra - Native Encounter
  (63, 6300, 21, NULL, 1, NULL),
  -- #0064 Kadabra - Native Encounter
  (64, 6400, 21, NULL, 1, NULL),
  -- #0065 Alakazam - Evolution
  (65, 6500, 21, NULL, 7, 'Trade evolution from an available source Pokémon in Brilliant Brilliant Diamond/Shining Shining Pearl.'),
  -- #0066 Machop - Native Encounter
  (66, 6600, 21, NULL, 1, NULL),
  -- #0067 Machoke - Native Encounter
  (67, 6700, 21, NULL, 1, NULL),
  -- #0068 Machamp - Evolution
  (68, 6800, 21, NULL, 7, 'Trade evolution from an available source Pokémon in Brilliant Brilliant Diamond/Shining Shining Pearl.'),
  -- #0069 Bellsprout - Native Encounter
  (69, 6900, 21, NULL, 1, NULL),
  -- #0070 Weepinbell - Native Encounter
  (70, 7000, 21, NULL, 1, NULL),
  -- #0071 Victreebel - Evolution
  (71, 7100, 21, NULL, 7, NULL),
  -- #0072 Tentacool - Native Encounter
  (72, 7200, 21, NULL, 1, NULL),
  -- #0073 Tentacruel - Native Encounter
  (73, 7300, 21, NULL, 1, NULL),
  -- #0074 Geodude - Native Encounter
  (74, 7400, 21, NULL, 1, NULL),
  -- #0075 Graveler - Native Encounter
  (75, 7500, 21, NULL, 1, NULL),
  -- #0076 Golem - Evolution
  (76, 7600, 21, NULL, 7, 'Trade evolution from an available source Pokémon in Brilliant Brilliant Diamond/Shining Shining Pearl.'),
  -- #0077 Ponyta - Native Encounter
  (77, 7700, 21, NULL, 1, NULL),
  -- #0078 Rapidash - Evolution
  (78, 7800, 21, NULL, 7, NULL),
  -- #0079 Slowpoke - Brilliant Diamond - External Trade
  (79, 7900, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0079 Slowpoke - Shining Pearl - Native Encounter
  (79, 7900, 21, 34, 1, NULL),
  -- #0080 Slowbro - Brilliant Diamond - External Trade
  (80, 8000, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0080 Slowbro - Shining Pearl - Evolution
  (80, 8000, 21, 34, 7, NULL),
  -- #0081 Magnemite - Raid or Special Encounter
  (81, 8100, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0082 Magneton - Evolution
  (82, 8200, 21, NULL, 7, NULL),
  -- #0083 Farfetch'd - Raid or Special Encounter
  (83, 8300, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0084 Doduo - Raid or Special Encounter
  (84, 8400, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0085 Dodrio - Evolution
  (85, 8500, 21, NULL, 7, NULL),
  -- #0086 Seel - Brilliant Diamond - Native Encounter
  (86, 8600, 21, 33, 1, NULL),
  -- #0086 Seel - Shining Pearl - External Trade
  (86, 8600, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0087 Dewgong - Brilliant Diamond - Native Encounter
  (87, 8700, 21, 33, 1, NULL),
  -- #0087 Dewgong - Shining Pearl - External Trade
  (87, 8700, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0088 Grimer - Native Encounter
  (88, 8800, 21, NULL, 1, NULL),
  -- #0089 Muk - Evolution
  (89, 8900, 21, NULL, 7, NULL),
  -- #0090 Shellder - Native Encounter
  (90, 9000, 21, NULL, 1, NULL),
  -- #0091 Cloyster - Evolution
  (91, 9100, 21, NULL, 7, NULL),
  -- #0092 Gastly - Native Encounter
  (92, 9200, 21, NULL, 1, NULL),
  -- #0093 Haunter - Native Encounter
  (93, 9300, 21, NULL, 1, NULL),
  -- #0094 Gengar - Raid or Special Encounter
  (94, 9400, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0095 Onix - Native Encounter
  (95, 9500, 21, NULL, 1, NULL),
  -- #0096 Drowzee - Raid or Special Encounter
  (96, 9600, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0097 Hypno - Evolution
  (97, 9700, 21, NULL, 7, NULL),
  -- #0098 Krabby - Raid or Special Encounter
  (98, 9800, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0099 Kingler - Evolution
  (99, 9900, 21, NULL, 7, NULL),
  -- #0100 Voltorb - Raid or Special Encounter
  (100, 10000, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0101 Electrode - Evolution
  (101, 10100, 21, NULL, 7, NULL),
  -- #0102 Exeggcute - Raid or Special Encounter
  (102, 10200, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0103 Exeggutor - Evolution
  (103, 10300, 21, NULL, 7, NULL),
  -- #0104 Cubone - Raid or Special Encounter
  (104, 10400, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0105 Marowak - Evolution
  (105, 10500, 21, NULL, 7, NULL),
  -- #0106 Hitmonlee - Evolution
  (106, 10600, 21, NULL, 7, NULL),
  -- #0107 Hitmonchan - Evolution
  (107, 10700, 21, NULL, 7, NULL),
  -- #0108 Lickitung - Raid or Special Encounter
  (108, 10800, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0109 Koffing - Breeding
  (109, 10900, 21, NULL, 8, NULL),
  -- #0110 Weezing - Native Encounter
  (110, 11000, 21, NULL, 1, NULL),
  -- #0111 Rhyhorn - Native Encounter
  (111, 11100, 21, NULL, 1, NULL),
  -- #0112 Rhydon - Native Encounter
  (112, 11200, 21, NULL, 1, NULL),
  -- #0113 Chansey - Native Encounter
  (113, 11300, 21, NULL, 1, NULL),
  -- #0114 Tangela - Native Encounter
  (114, 11400, 21, NULL, 1, 'Normally available in BDSP through wild, Grand Underground, or additional in-game source; may require National Dex or postgame access.'),
  -- #0115 Kangaskhan - Raid or Special Encounter
  (115, 11500, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0116 Horsea - Native Encounter
  (116, 11600, 21, NULL, 1, NULL),
  -- #0117 Seadra - Native Encounter
  (117, 11700, 21, NULL, 1, NULL),
  -- #0118 Goldeen - Native Encounter
  (118, 11800, 21, NULL, 1, NULL),
  -- #0119 Seaking - Native Encounter
  (119, 11900, 21, NULL, 1, NULL),
  -- #0120 Staryu - Native Encounter
  (120, 12000, 21, NULL, 1, NULL),
  -- #0121 Starmie - Evolution
  (121, 12100, 21, NULL, 7, NULL),
  -- #0122 Mr. Mime - Brilliant Diamond - Native Encounter
  (122, 12200, 21, 33, 1, NULL),
  -- #0122 Mr. Mime - Shining Pearl - Evolution
  (122, 12200, 21, 34, 7, NULL),
  -- #0123 Scyther - Brilliant Diamond - Native Encounter
  (123, 12300, 21, 33, 1, NULL),
  -- #0123 Scyther - Shining Pearl - External Trade
  (123, 12300, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0124 Jynx - Evolution
  (124, 12400, 21, NULL, 7, NULL),
  -- #0125 Electabuzz - Evolution
  (125, 12500, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0126 Magmar - Evolution
  (126, 12600, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0127 Pinsir - Brilliant Diamond - External Trade
  (127, 12700, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0127 Pinsir - Shining Pearl - Native Encounter
  (127, 12700, 21, 34, 1, NULL),
  -- #0128 Tauros - Native Encounter
  (128, 12800, 21, NULL, 1, NULL),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 21, NULL, 1, NULL),
  -- #0130 Gyarados - Native Encounter
  (130, 13000, 21, NULL, 1, NULL),
  -- #0131 Lapras - Native Encounter
  (131, 13100, 21, NULL, 1, NULL),
  -- #0132 Ditto - Native Encounter
  (132, 13200, 21, NULL, 1, NULL),
  -- #0133 Eevee - Gift
  (133, 13300, 21, NULL, 4, 'Bebe gift in Hearthome City after National Dex.'),
  -- #0134 Vaporeon - Evolution
  (134, 13400, 21, NULL, 7, NULL),
  -- #0135 Jolteon - Evolution
  (135, 13500, 21, NULL, 7, NULL),
  -- #0136 Flareon - Evolution
  (136, 13600, 21, NULL, 7, NULL),
  -- #0137 Porygon - Raid or Special Encounter
  (137, 13700, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0138 Omanyte - Fossil Restoration
  (138, 13800, 21, NULL, 6, 'Fossil restored from Underground fossil item.'),
  -- #0139 Omastar - Evolution
  (139, 13900, 21, NULL, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0140 Kabuto - Fossil Restoration
  (140, 14000, 21, NULL, 6, 'Fossil restored from Underground fossil item.'),
  -- #0141 Kabutops - Evolution
  (141, 14100, 21, NULL, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0142 Aerodactyl - Fossil Restoration
  (142, 14200, 21, NULL, 6, 'Fossil restored from Underground fossil item.'),
  -- #0143 Snorlax - Evolution
  (143, 14300, 21, NULL, 7, NULL),
  -- #0144 Articuno - Shining Pearl - Static Encounter
  (144, 14400, 21, 34, 2, 'Ramanas Park static encounter in Shining Pearl; version-exclusive source according to BDSP version-exclusive lists.'),
  -- #0144 Articuno - Brilliant Diamond - External Trade
  (144, 14400, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0145 Zapdos - Shining Pearl - Static Encounter
  (145, 14500, 21, 34, 2, 'Ramanas Park static encounter in Shining Pearl; version-exclusive source according to BDSP version-exclusive lists.'),
  -- #0145 Zapdos - Brilliant Diamond - External Trade
  (145, 14500, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0146 Moltres - Shining Pearl - Static Encounter
  (146, 14600, 21, 34, 2, 'Ramanas Park static encounter in Shining Pearl; version-exclusive source according to BDSP version-exclusive lists.'),
  -- #0146 Moltres - Brilliant Diamond - External Trade
  (146, 14600, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0147 Dratini - Native Encounter
  (147, 14700, 21, NULL, 1, NULL),
  -- #0148 Dragonair - Native Encounter
  (148, 14800, 21, NULL, 1, NULL),
  -- #0149 Dragonite - Evolution
  (149, 14900, 21, NULL, 7, NULL),
  -- #0150 Mewtwo - Static Encounter
  (150, 15000, 21, NULL, 2, 'Ramanas Park static encounter after National Dex using the corresponding Slate.'),
  -- #0151 Mew - Gift
  (151, 15100, 21, NULL, 4, 'Floaroma Town gift if the Nintendo Switch profile has Pokémon Let''s Go, Pikachu! or Let''s Go, Eevee! save data.'),
  -- #0152 Chikorita - Native Encounter
  (152, 15200, 21, NULL, 1, 'Normally available in BDSP through wild, Grand Underground, or additional in-game source; may require National Dex or postgame access.'),
  -- #0153 Bayleef - Evolution
  (153, 15300, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0154 Meganium - Evolution
  (154, 15400, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0155 Cyndaquil - Native Encounter
  (155, 15500, 21, NULL, 1, 'Normally available in BDSP through wild, Grand Underground, or additional in-game source; may require National Dex or postgame access.'),
  -- #0156 Quilava - Evolution
  (156, 15600, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0157 Typhlosion - Evolution
  (157, 15700, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0158 Totodile - Native Encounter
  (158, 15800, 21, NULL, 1, 'Normally available in BDSP through wild, Grand Underground, or additional in-game source; may require National Dex or postgame access.'),
  -- #0159 Croconaw - Evolution
  (159, 15900, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0160 Feraligatr - Evolution
  (160, 16000, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0161 Sentret - Native Encounter
  (161, 16100, 21, NULL, 1, NULL),
  -- #0162 Furret - Evolution
  (162, 16200, 21, NULL, 7, NULL),
  -- #0163 Hoothoot - Native Encounter
  (163, 16300, 21, NULL, 1, NULL),
  -- #0164 Noctowl - Native Encounter
  (164, 16400, 21, NULL, 1, NULL),
  -- #0165 Ledyba - Breeding
  (165, 16500, 21, NULL, 8, NULL),
  -- #0166 Ledian - Native Encounter
  (166, 16600, 21, NULL, 1, NULL),
  -- #0167 Spinarak - Breeding
  (167, 16700, 21, NULL, 8, NULL),
  -- #0168 Ariados - Native Encounter
  (168, 16800, 21, NULL, 1, NULL),
  -- #0169 Crobat - Evolution
  (169, 16900, 21, NULL, 7, NULL),
  -- #0170 Chinchou - Native Encounter
  (170, 17000, 21, NULL, 1, NULL),
  -- #0171 Lanturn - Native Encounter
  (171, 17100, 21, NULL, 1, NULL),
  -- #0172 Pichu - Native Encounter
  (172, 17200, 21, NULL, 1, NULL),
  -- #0173 Cleffa - Native Encounter
  (173, 17300, 21, NULL, 1, NULL),
  -- #0174 Igglybuff - Raid or Special Encounter
  (174, 17400, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0175 Togepi - Native Encounter
  (175, 17500, 21, NULL, 1, NULL),
  -- #0176 Togetic - Evolution
  (176, 17600, 21, NULL, 7, NULL),
  -- #0177 Natu - Raid or Special Encounter
  (177, 17700, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0178 Xatu - Evolution
  (178, 17800, 21, NULL, 7, NULL),
  -- #0179 Mareep - Native Encounter
  (179, 17900, 21, NULL, 1, NULL),
  -- #0180 Flaaffy - Native Encounter
  (180, 18000, 21, NULL, 1, NULL),
  -- #0181 Ampharos - Evolution
  (181, 18100, 21, NULL, 7, NULL),
  -- #0182 Bellossom - Evolution
  (182, 18200, 21, NULL, 7, NULL),
  -- #0183 Marill - Native Encounter
  (183, 18300, 21, NULL, 1, NULL),
  -- #0184 Azumarill - Evolution
  (184, 18400, 21, NULL, 7, NULL),
  -- #0185 Sudowoodo - Brilliant Diamond - Evolution
  (185, 18500, 21, 33, 7, NULL),
  -- #0185 Sudowoodo - Shining Pearl - Native Encounter
  (185, 18500, 21, 34, 1, NULL),
  -- #0186 Politoed - Evolution
  (186, 18600, 21, NULL, 7, 'Trade evolution from an available source Pokémon in Brilliant Brilliant Diamond/Shining Shining Pearl.'),
  -- #0187 Hoppip - Native Encounter
  (187, 18700, 21, NULL, 1, NULL),
  -- #0188 Skiploom - Native Encounter
  (188, 18800, 21, NULL, 1, NULL),
  -- #0189 Jumpluff - Evolution
  (189, 18900, 21, NULL, 7, NULL),
  -- #0190 Aipom - Native Encounter
  (190, 19000, 21, NULL, 1, NULL),
  -- #0191 Sunkern - Native Encounter
  (191, 19100, 21, NULL, 1, NULL),
  -- #0192 Sunflora - Evolution
  (192, 19200, 21, NULL, 7, NULL),
  -- #0193 Yanma - Raid or Special Encounter
  (193, 19300, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0194 Wooper - Native Encounter
  (194, 19400, 21, NULL, 1, NULL),
  -- #0195 Quagsire - Native Encounter
  (195, 19500, 21, NULL, 1, NULL),
  -- #0196 Espeon - Evolution
  (196, 19600, 21, NULL, 7, NULL),
  -- #0197 Umbreon - Evolution
  (197, 19700, 21, NULL, 7, NULL),
  -- #0198 Murkrow - Brilliant Diamond - Native Encounter
  (198, 19800, 21, 33, 1, NULL),
  -- #0198 Murkrow - Shining Pearl - External Trade
  (198, 19800, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0199 Slowking - Brilliant Diamond - External Trade
  (199, 19900, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0199 Slowking - Shining Pearl - Evolution
  (199, 19900, 21, 34, 7, 'Trade evolution from an available source Pokémon in Brilliant Brilliant Diamond/Shining Shining Pearl.'),
  -- #0200 Misdreavus - Brilliant Diamond - External Trade
  (200, 20000, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0200 Misdreavus - Shining Pearl - Native Encounter
  (200, 20000, 21, 34, 1, NULL),
  -- #0201 Unown - Native Encounter
  (201, 20100, 21, NULL, 1, NULL),
  -- #0202 Wobbuffet - Native Encounter
  (202, 20200, 21, NULL, 1, NULL),
  -- #0203 Girafarig - Native Encounter
  (203, 20300, 21, NULL, 1, NULL),
  -- #0204 Pineco - Raid or Special Encounter
  (204, 20400, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0205 Forretress - Evolution
  (205, 20500, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0206 Dunsparce - Raid or Special Encounter
  (206, 20600, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0207 Gligar - Raid or Special Encounter
  (207, 20700, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0208 Steelix - Native Encounter
  (208, 20800, 21, NULL, 1, NULL),
  -- #0209 Snubbull - Raid or Special Encounter
  (209, 20900, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0210 Granbull - Evolution
  (210, 21000, 21, NULL, 7, NULL),
  -- #0211 Qwilfish - Native Encounter
  (211, 21100, 21, NULL, 1, NULL),
  -- #0212 Scizor - Brilliant Diamond - Evolution
  (212, 21200, 21, 33, 7, 'Trade evolution from an available source Pokémon in Brilliant Brilliant Diamond/Shining Shining Pearl.'),
  -- #0212 Scizor - Shining Pearl - External Trade
  (212, 21200, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0213 Shuckle - Raid or Special Encounter
  (213, 21300, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0214 Heracross - Native Encounter
  (214, 21400, 21, NULL, 1, NULL),
  -- #0215 Sneasel - Native Encounter
  (215, 21500, 21, NULL, 1, NULL),
  -- #0216 Teddiursa - Raid or Special Encounter
  (216, 21600, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0217 Ursaring - Raid or Special Encounter
  (217, 21700, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0218 Slugma - Native Encounter
  (218, 21800, 21, NULL, 1, NULL),
  -- #0219 Magcargo - Native Encounter
  (219, 21900, 21, NULL, 1, NULL),
  -- #0220 Swinub - Raid or Special Encounter
  (220, 22000, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0221 Piloswine - Evolution
  (221, 22100, 21, NULL, 7, NULL),
  -- #0222 Corsola - Raid or Special Encounter
  (222, 22200, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0223 Remoraid - Native Encounter
  (223, 22300, 21, NULL, 1, NULL),
  -- #0224 Octillery - Native Encounter
  (224, 22400, 21, NULL, 1, NULL),
  -- #0225 Delibird - Raid or Special Encounter
  (225, 22500, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0226 Mantine - Evolution
  (226, 22600, 21, NULL, 7, NULL),
  -- #0227 Skarmory - Native Encounter
  (227, 22700, 21, NULL, 1, NULL),
  -- #0228 Houndour - Brilliant Diamond - External Trade
  (228, 22800, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0228 Houndour - Shining Pearl - Breeding
  (228, 22800, 21, 34, 8, NULL),
  -- #0229 Houndoom - Brilliant Diamond - External Trade
  (229, 22900, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0229 Houndoom - Shining Pearl - Native Encounter
  (229, 22900, 21, 34, 1, NULL),
  -- #0230 Kingdra - Evolution
  (230, 23000, 21, NULL, 7, 'Trade evolution from an available source Pokémon in Brilliant Brilliant Diamond/Shining Shining Pearl.'),
  -- #0231 Phanpy - Raid or Special Encounter
  (231, 23100, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0232 Donphan - Evolution
  (232, 23200, 21, NULL, 7, NULL),
  -- #0233 Porygon2 - Evolution
  (233, 23300, 21, NULL, 7, 'Trade evolution from an available source Pokémon in Brilliant Brilliant Diamond/Shining Shining Pearl.'),
  -- #0234 Stantler - Brilliant Diamond - External Trade
  (234, 23400, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0234 Stantler - Shining Pearl - Native Encounter
  (234, 23400, 21, 34, 1, NULL),
  -- #0235 Smeargle - Native Encounter
  (235, 23500, 21, NULL, 1, NULL),
  -- #0236 Tyrogue - Native Encounter
  (236, 23600, 21, NULL, 1, NULL),
  -- #0237 Hitmontop - Evolution
  (237, 23700, 21, NULL, 7, NULL),
  -- #0238 Smoochum - Raid or Special Encounter
  (238, 23800, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0239 Elekid - Raid or Special Encounter
  (239, 23900, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0240 Magby - Raid or Special Encounter
  (240, 24000, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0241 Miltank - Native Encounter
  (241, 24100, 21, NULL, 1, NULL),
  -- #0242 Blissey - Evolution
  (242, 24200, 21, NULL, 7, NULL),
  -- #0243 Raikou - Brilliant Diamond - Static Encounter
  (243, 24300, 21, 33, 2, 'Ramanas Park static encounter in Brilliant Diamond; version-exclusive source according to BDSP version-exclusive lists.'),
  -- #0243 Raikou - Shining Pearl - External Trade
  (243, 24300, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0244 Entei - Brilliant Diamond - Static Encounter
  (244, 24400, 21, 33, 2, 'Ramanas Park static encounter in Brilliant Diamond; version-exclusive source according to BDSP version-exclusive lists.'),
  -- #0244 Entei - Shining Pearl - External Trade
  (244, 24400, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0245 Suicune - Brilliant Diamond - Static Encounter
  (245, 24500, 21, 33, 2, 'Ramanas Park static encounter in Brilliant Diamond; version-exclusive source according to BDSP version-exclusive lists.'),
  -- #0245 Suicune - Shining Pearl - External Trade
  (245, 24500, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0246 Larvitar - Brilliant Diamond - Native Encounter
  (246, 24600, 21, 33, 1, NULL),
  -- #0246 Larvitar - Shining Pearl - External Trade
  (246, 24600, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0247 Pupitar - Brilliant Diamond - Evolution
  (247, 24700, 21, 33, 7, NULL),
  -- #0247 Pupitar - Shining Pearl - External Trade
  (247, 24700, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0248 Tyranitar - Brilliant Diamond - Evolution
  (248, 24800, 21, 33, 7, NULL),
  -- #0248 Tyranitar - Shining Pearl - External Trade
  (248, 24800, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0249 Lugia - Shining Pearl - Static Encounter
  (249, 24900, 21, 34, 2, 'Ramanas Park static encounter in Shining Pearl; version-exclusive source according to BDSP version-exclusive lists.'),
  -- #0249 Lugia - Brilliant Diamond - External Trade
  (249, 24900, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0250 Ho-Oh - Brilliant Diamond - Static Encounter
  (250, 25000, 21, 33, 2, 'Ramanas Park static encounter in Brilliant Diamond; version-exclusive source according to BDSP version-exclusive lists.'),
  -- #0250 Ho-Oh - Shining Pearl - External Trade
  (250, 25000, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0251 Celebi - Transfer Only
  (251, 25100, 21, NULL, 13, 'Transfer only in BDSP; Celebi is compatible but not normally obtainable in Brilliant Diamond/Shining Pearl.'),
  -- #0252 Treecko - Native Encounter
  (252, 25200, 21, NULL, 1, 'Normally available in BDSP through wild, Grand Underground, or additional in-game source; may require National Dex or postgame access.'),
  -- #0253 Grovyle - Evolution
  (253, 25300, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0254 Sceptile - Evolution
  (254, 25400, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0255 Torchic - Native Encounter
  (255, 25500, 21, NULL, 1, 'Normally available in BDSP through wild, Grand Underground, or additional in-game source; may require National Dex or postgame access.'),
  -- #0256 Combusken - Evolution
  (256, 25600, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0257 Blaziken - Evolution
  (257, 25700, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0258 Mudkip - Native Encounter
  (258, 25800, 21, NULL, 1, 'Normally available in BDSP through wild, Grand Underground, or additional in-game source; may require National Dex or postgame access.'),
  -- #0259 Marshtomp - Evolution
  (259, 25900, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0260 Swampert - Evolution
  (260, 26000, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0261 Poochyena - Brilliant Diamond - Breeding
  (261, 26100, 21, 33, 8, NULL),
  -- #0261 Poochyena - Shining Pearl - External Trade
  (261, 26100, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0262 Mightyena - Brilliant Diamond - Native Encounter
  (262, 26200, 21, 33, 1, NULL),
  -- #0262 Mightyena - Shining Pearl - External Trade
  (262, 26200, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0263 Zigzagoon - Raid or Special Encounter
  (263, 26300, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0264 Linoone - Evolution
  (264, 26400, 21, NULL, 7, NULL),
  -- #0265 Wurmple - Native Encounter
  (265, 26500, 21, NULL, 1, NULL),
  -- #0266 Silcoon - Brilliant Diamond - Native Encounter
  (266, 26600, 21, 33, 1, NULL),
  -- #0266 Silcoon - Shining Pearl - Evolution
  (266, 26600, 21, 34, 7, NULL),
  -- #0267 Beautifly - Native Encounter
  (267, 26700, 21, NULL, 1, NULL),
  -- #0268 Cascoon - Brilliant Diamond - Evolution
  (268, 26800, 21, 33, 7, NULL),
  -- #0268 Cascoon - Shining Pearl - Native Encounter
  (268, 26800, 21, 34, 1, NULL),
  -- #0269 Dustox - Brilliant Diamond - Evolution
  (269, 26900, 21, 33, 7, NULL),
  -- #0269 Dustox - Shining Pearl - Native Encounter
  (269, 26900, 21, 34, 1, NULL),
  -- #0270 Lotad - Raid or Special Encounter
  (270, 27000, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0271 Lombre - Raid or Special Encounter
  (271, 27100, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0272 Ludicolo - Evolution
  (272, 27200, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0273 Seedot - Raid or Special Encounter
  (273, 27300, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0274 Nuzleaf - Raid or Special Encounter
  (274, 27400, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0275 Shiftry - Evolution
  (275, 27500, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0276 Taillow - Breeding
  (276, 27600, 21, NULL, 8, NULL),
  -- #0277 Swellow - Native Encounter
  (277, 27700, 21, NULL, 1, NULL),
  -- #0278 Wingull - Native Encounter
  (278, 27800, 21, NULL, 1, NULL),
  -- #0279 Pelipper - Native Encounter
  (279, 27900, 21, NULL, 1, NULL),
  -- #0280 Ralts - Native Encounter
  (280, 28000, 21, NULL, 1, NULL),
  -- #0281 Kirlia - Native Encounter
  (281, 28100, 21, NULL, 1, NULL),
  -- #0282 Gardevoir - Evolution
  (282, 28200, 21, NULL, 7, NULL),
  -- #0283 Surskit - Raid or Special Encounter
  (283, 28300, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0284 Masquerain - Evolution
  (284, 28400, 21, NULL, 7, NULL),
  -- #0285 Shroomish - Raid or Special Encounter
  (285, 28500, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0286 Breloom - Evolution
  (286, 28600, 21, NULL, 7, NULL),
  -- #0287 Slakoth - Raid or Special Encounter
  (287, 28700, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0288 Vigoroth - Evolution
  (288, 28800, 21, NULL, 7, NULL),
  -- #0289 Slaking - Evolution
  (289, 28900, 21, NULL, 7, NULL),
  -- #0290 Nincada - Native Encounter
  (290, 29000, 21, NULL, 1, NULL),
  -- #0291 Ninjask - Evolution
  (291, 29100, 21, NULL, 7, NULL),
  -- #0292 Shedinja - Evolution
  (292, 29200, 21, NULL, 7, NULL),
  -- #0293 Whismur - Breeding
  (293, 29300, 21, NULL, 8, NULL),
  -- #0294 Loudred - Native Encounter
  (294, 29400, 21, NULL, 1, NULL),
  -- #0295 Exploud - Evolution
  (295, 29500, 21, NULL, 7, NULL),
  -- #0296 Makuhita - Raid or Special Encounter
  (296, 29600, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0297 Hariyama - Evolution
  (297, 29700, 21, NULL, 7, NULL),
  -- #0298 Azurill - Native Encounter
  (298, 29800, 21, NULL, 1, NULL),
  -- #0299 Nosepass - Raid or Special Encounter
  (299, 29900, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0300 Skitty - Raid or Special Encounter
  (300, 30000, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0301 Delcatty - Evolution
  (301, 30100, 21, NULL, 7, NULL),
  -- #0302 Sableye - Raid or Special Encounter
  (302, 30200, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0303 Mawile - Raid or Special Encounter
  (303, 30300, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0304 Aron - Brilliant Diamond - Native Encounter
  (304, 30400, 21, 33, 1, NULL),
  -- #0304 Aron - Shining Pearl - External Trade
  (304, 30400, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0305 Lairon - Brilliant Diamond - Evolution
  (305, 30500, 21, 33, 7, NULL),
  -- #0305 Lairon - Shining Pearl - External Trade
  (305, 30500, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0306 Aggron - Brilliant Diamond - Evolution
  (306, 30600, 21, 33, 7, NULL),
  -- #0306 Aggron - Shining Pearl - External Trade
  (306, 30600, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0307 Meditite - Native Encounter
  (307, 30700, 21, NULL, 1, NULL),
  -- #0308 Medicham - Native Encounter
  (308, 30800, 21, NULL, 1, NULL),
  -- #0309 Electrike - Raid or Special Encounter
  (309, 30900, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0310 Manectric - Evolution
  (310, 31000, 21, NULL, 7, NULL),
  -- #0311 Plusle - Raid or Special Encounter
  (311, 31100, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0312 Minun - Raid or Special Encounter
  (312, 31200, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0313 Volbeat - Native Encounter
  (313, 31300, 21, NULL, 1, NULL),
  -- #0314 Illumise - Native Encounter
  (314, 31400, 21, NULL, 1, NULL),
  -- #0315 Roselia - Native Encounter
  (315, 31500, 21, NULL, 1, NULL),
  -- #0316 Gulpin - Raid or Special Encounter
  (316, 31600, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0317 Swalot - Evolution
  (317, 31700, 21, NULL, 7, NULL),
  -- #0318 Carvanha - Native Encounter
  (318, 31800, 21, NULL, 1, NULL),
  -- #0319 Sharpedo - Native Encounter
  (319, 31900, 21, NULL, 1, NULL),
  -- #0320 Wailmer - Native Encounter
  (320, 32000, 21, NULL, 1, NULL),
  -- #0321 Wailord - Native Encounter
  (321, 32100, 21, NULL, 1, NULL),
  -- #0322 Numel - Native Encounter
  (322, 32200, 21, NULL, 1, NULL),
  -- #0323 Camerupt - Native Encounter
  (323, 32300, 21, NULL, 1, NULL),
  -- #0324 Torkoal - Native Encounter
  (324, 32400, 21, NULL, 1, NULL),
  -- #0325 Spoink - Raid or Special Encounter
  (325, 32500, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0326 Grumpig - Evolution
  (326, 32600, 21, NULL, 7, NULL),
  -- #0327 Spinda - Raid or Special Encounter
  (327, 32700, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0328 Trapinch - Native Encounter
  (328, 32800, 21, NULL, 1, NULL),
  -- #0329 Vibrava - Native Encounter
  (329, 32900, 21, NULL, 1, NULL),
  -- #0330 Flygon - Evolution
  (330, 33000, 21, NULL, 7, NULL),
  -- #0331 Cacnea - Native Encounter
  (331, 33100, 21, NULL, 1, NULL),
  -- #0332 Cacturne - Native Encounter
  (332, 33200, 21, NULL, 1, NULL),
  -- #0333 Swablu - Native Encounter
  (333, 33300, 21, NULL, 1, NULL),
  -- #0334 Altaria - Evolution
  (334, 33400, 21, NULL, 7, NULL),
  -- #0335 Zangoose - Raid or Special Encounter
  (335, 33500, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0336 Seviper - Raid or Special Encounter
  (336, 33600, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0337 Lunatone - Raid or Special Encounter
  (337, 33700, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0338 Solrock - Raid or Special Encounter
  (338, 33800, 21, NULL, 10, 'Special BDSP availability through Grand Underground, swarm, Poke Radar, Trophy Garden, Great Marsh, or a National Dex/postgame source.'),
  -- #0339 Barboach - Native Encounter
  (339, 33900, 21, NULL, 1, NULL),
  -- #0340 Whiscash - Native Encounter
  (340, 34000, 21, NULL, 1, NULL),
  -- #0341 Corphish - Native Encounter
  (341, 34100, 21, NULL, 1, NULL),
  -- #0342 Crawdaunt - Native Encounter
  (342, 34200, 21, NULL, 1, NULL),
  -- #0343 Baltoy - Native Encounter
  (343, 34300, 21, NULL, 1, NULL),
  -- #0344 Claydol - Evolution
  (344, 34400, 21, NULL, 7, NULL),
  -- #0345 Lileep - Fossil Restoration
  (345, 34500, 21, NULL, 6, 'Fossil restored from Underground fossil item.'),
  -- #0346 Cradily - Evolution
  (346, 34600, 21, NULL, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0347 Anorith - Fossil Restoration
  (347, 34700, 21, NULL, 6, 'Fossil restored from Underground fossil item.'),
  -- #0348 Armaldo - Evolution
  (348, 34800, 21, NULL, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0349 Feebas - Native Encounter
  (349, 34900, 21, NULL, 1, NULL),
  -- #0350 Milotic - Evolution
  (350, 35000, 21, NULL, 7, NULL),
  -- #0351 Castform - Raid or Special Encounter
  (351, 35100, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0352 Kecleon - Brilliant Diamond - Native Encounter
  (352, 35200, 21, 33, 1, NULL),
  -- #0352 Kecleon - Shining Pearl - External Trade
  (352, 35200, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0353 Shuppet - Breeding
  (353, 35300, 21, NULL, 8, NULL),
  -- #0354 Banette - Native Encounter
  (354, 35400, 21, NULL, 1, NULL),
  -- #0355 Duskull - Native Encounter
  (355, 35500, 21, NULL, 1, NULL),
  -- #0356 Dusclops - Native Encounter
  (356, 35600, 21, NULL, 1, NULL),
  -- #0357 Tropius - Native Encounter
  (357, 35700, 21, NULL, 1, 'Normally available in BDSP through wild, Grand Underground, or additional in-game source; may require National Dex or postgame access.'),
  -- #0358 Chimecho - Native Encounter
  (358, 35800, 21, NULL, 1, NULL),
  -- #0359 Absol - Raid or Special Encounter
  (359, 35900, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0360 Wynaut - Breeding
  (360, 36000, 21, NULL, 8, NULL),
  -- #0361 Snorunt - Native Encounter
  (361, 36100, 21, NULL, 1, NULL),
  -- #0362 Glalie - Evolution
  (362, 36200, 21, NULL, 7, NULL),
  -- #0363 Spheal - Brilliant Diamond - External Trade
  (363, 36300, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0363 Spheal - Shining Pearl - Native Encounter
  (363, 36300, 21, 34, 1, NULL),
  -- #0364 Sealeo - Brilliant Diamond - External Trade
  (364, 36400, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0364 Sealeo - Shining Pearl - Native Encounter
  (364, 36400, 21, 34, 1, NULL),
  -- #0365 Walrein - Brilliant Diamond - External Trade
  (365, 36500, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0365 Walrein - Shining Pearl - Evolution
  (365, 36500, 21, 34, 7, NULL),
  -- #0366 Clamperl - Native Encounter
  (366, 36600, 21, NULL, 1, NULL),
  -- #0367 Huntail - Evolution
  (367, 36700, 21, NULL, 7, 'Trade evolution from an available source Pokémon in Brilliant Brilliant Diamond/Shining Shining Pearl.'),
  -- #0368 Gorebyss - Evolution
  (368, 36800, 21, NULL, 7, 'Trade evolution from an available source Pokémon in Brilliant Brilliant Diamond/Shining Shining Pearl.'),
  -- #0369 Relicanth - Native Encounter
  (369, 36900, 21, NULL, 1, NULL),
  -- #0370 Luvdisc - Native Encounter
  (370, 37000, 21, NULL, 1, NULL),
  -- #0371 Bagon - Brilliant Diamond - External Trade
  (371, 37100, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0371 Bagon - Shining Pearl - Native Encounter
  (371, 37100, 21, 34, 1, NULL),
  -- #0372 Shelgon - Brilliant Diamond - External Trade
  (372, 37200, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0372 Shelgon - Shining Pearl - Evolution
  (372, 37200, 21, 34, 7, NULL),
  -- #0373 Salamence - Brilliant Diamond - External Trade
  (373, 37300, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0373 Salamence - Shining Pearl - Evolution
  (373, 37300, 21, 34, 7, NULL),
  -- #0374 Beldum - Raid or Special Encounter
  (374, 37400, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0375 Metang - Evolution
  (375, 37500, 21, NULL, 7, NULL),
  -- #0376 Metagross - Evolution
  (376, 37600, 21, NULL, 7, NULL),
  -- #0377 Regirock - Static Encounter
  (377, 37700, 21, NULL, 2, 'Ramanas Park static encounter after National Dex using the corresponding Slate.'),
  -- #0378 Regice - Static Encounter
  (378, 37800, 21, NULL, 2, 'Ramanas Park static encounter after National Dex using the corresponding Slate.'),
  -- #0379 Registeel - Static Encounter
  (379, 37900, 21, NULL, 2, 'Ramanas Park static encounter after National Dex using the corresponding Slate.'),
  -- #0380 Latias - Static Encounter
  (380, 38000, 21, NULL, 2, 'Ramanas Park static encounter after National Dex using the corresponding Slate.'),
  -- #0381 Latios - Static Encounter
  (381, 38100, 21, NULL, 2, 'Ramanas Park static encounter after National Dex using the corresponding Slate.'),
  -- #0382 Kyogre - Static Encounter
  (382, 38200, 21, NULL, 2, 'Ramanas Park static encounter after National Dex using the corresponding Slate.'),
  -- #0383 Groudon - Static Encounter
  (383, 38300, 21, NULL, 2, 'Ramanas Park static encounter after National Dex using the corresponding Slate.'),
  -- #0384 Rayquaza - Static Encounter
  (384, 38400, 21, NULL, 2, 'Ramanas Park static encounter after National Dex using the corresponding Slate.'),
  -- #0385 Jirachi - Gift
  (385, 38500, 21, NULL, 4, 'Floaroma Town gift if the Nintendo Switch profile has Pokémon Sword or Pokémon Shield save data.'),
  -- #0386 Deoxys - Transfer Only
  (386, 38600, 21, NULL, 13, 'Transfer only in BDSP; Deoxys is compatible but not normally obtainable in Brilliant Diamond/Shining Pearl.'),
  -- #0386 Deoxys (Attack) - Transfer Only
  (386, 38601, 21, NULL, 13, 'Transfer only in BDSP; Deoxys can be changed to this form with the Veilstone meteorites after transfer.'),
  -- #0386 Deoxys (Defense) - Transfer Only
  (386, 38602, 21, NULL, 13, 'Transfer only in BDSP; Deoxys can be changed to this form with the Veilstone meteorites after transfer.'),
  -- #0386 Deoxys (Speed) - Transfer Only
  (386, 38603, 21, NULL, 13, 'Transfer only in BDSP; Deoxys can be changed to this form with the Veilstone meteorites after transfer.'),
  -- #0387 Turtwig - Starter
  (387, 38700, 21, NULL, 3, NULL),
  -- #0388 Grotle - Evolution
  (388, 38800, 21, NULL, 7, NULL),
  -- #0389 Torterra - Evolution
  (389, 38900, 21, NULL, 7, NULL),
  -- #0390 Chimchar - Starter
  (390, 39000, 21, NULL, 3, NULL),
  -- #0391 Monferno - Evolution
  (391, 39100, 21, NULL, 7, NULL),
  -- #0392 Infernape - Evolution
  (392, 39200, 21, NULL, 7, NULL),
  -- #0393 Piplup - Starter
  (393, 39300, 21, NULL, 3, NULL),
  -- #0394 Prinplup - Evolution
  (394, 39400, 21, NULL, 7, NULL),
  -- #0395 Empoleon - Evolution
  (395, 39500, 21, NULL, 7, NULL),
  -- #0396 Starly - Native Encounter
  (396, 39600, 21, NULL, 1, NULL),
  -- #0397 Staravia - Native Encounter
  (397, 39700, 21, NULL, 1, NULL),
  -- #0398 Staraptor - Evolution
  (398, 39800, 21, NULL, 7, NULL),
  -- #0399 Bidoof - Native Encounter
  (399, 39900, 21, NULL, 1, NULL),
  -- #0400 Bibarel - Native Encounter
  (400, 40000, 21, NULL, 1, NULL),
  -- #0401 Kricketot - Native Encounter
  (401, 40100, 21, NULL, 1, NULL),
  -- #0402 Kricketune - Native Encounter
  (402, 40200, 21, NULL, 1, NULL),
  -- #0403 Shinx - Native Encounter
  (403, 40300, 21, NULL, 1, NULL),
  -- #0404 Luxio - Native Encounter
  (404, 40400, 21, NULL, 1, NULL),
  -- #0405 Luxray - Evolution
  (405, 40500, 21, NULL, 7, NULL),
  -- #0406 Budew - Native Encounter
  (406, 40600, 21, NULL, 1, NULL),
  -- #0407 Roserade - Evolution
  (407, 40700, 21, NULL, 7, NULL),
  -- #0408 Cranidos - Brilliant Diamond - Fossil Restoration
  (408, 40800, 21, 33, 6, 'Fossil restored from Underground fossil item.'),
  -- #0408 Cranidos - Shining Pearl - External Trade
  (408, 40800, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0409 Rampardos - Brilliant Diamond - Evolution
  (409, 40900, 21, 33, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0409 Rampardos - Shining Pearl - External Trade
  (409, 40900, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0410 Shieldon - Brilliant Diamond - External Trade
  (410, 41000, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0410 Shieldon - Shining Pearl - Fossil Restoration
  (410, 41000, 21, 34, 6, 'Fossil restored from Underground fossil item.'),
  -- #0411 Bastiodon - Brilliant Diamond - External Trade
  (411, 41100, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0411 Bastiodon - Shining Pearl - Evolution
  (411, 41100, 21, 34, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0412 Burmy - Native Encounter
  (412, 41200, 21, NULL, 1, NULL),
  -- #0412 Burmy (Sandy Cloak) - Native Encounter
  (412, 41201, 21, NULL, 1, 'Burmy cloak form can be changed through battles in matching terrain; all cloaks are persistent team-selectable forms.'),
  -- #0412 Burmy (Trash Cloak) - Native Encounter
  (412, 41202, 21, NULL, 1, 'Burmy cloak form can be changed through battles in matching terrain; all cloaks are persistent team-selectable forms.'),
  -- #0413 Wormadam - Evolution
  (413, 41300, 21, NULL, 7, NULL),
  -- #0413 Wormadam (Sandy Cloak) - Evolution
  (413, 41301, 21, NULL, 7, 'Evolve a female Burmy with the matching cloak.'),
  -- #0413 Wormadam (Trash Cloak) - Evolution
  (413, 41302, 21, NULL, 7, 'Evolve a female Burmy with the matching cloak.'),
  -- #0414 Mothim - Evolution
  (414, 41400, 21, NULL, 7, NULL),
  -- #0415 Combee - Native Encounter
  (415, 41500, 21, NULL, 1, NULL),
  -- #0416 Vespiquen - Evolution
  (416, 41600, 21, NULL, 7, NULL),
  -- #0417 Pachirisu - Native Encounter
  (417, 41700, 21, NULL, 1, NULL),
  -- #0418 Buizel - Native Encounter
  (418, 41800, 21, NULL, 1, NULL),
  -- #0419 Floatzel - Native Encounter
  (419, 41900, 21, NULL, 1, NULL),
  -- #0420 Cherubi - Native Encounter
  (420, 42000, 21, NULL, 1, NULL),
  -- #0421 Cherrim - Evolution
  (421, 42100, 21, NULL, 7, NULL),
  -- #0422 Shellos - Native Encounter
  (422, 42200, 21, NULL, 1, NULL),
  -- #0423 Gastrodon - Native Encounter
  (423, 42300, 21, NULL, 1, NULL),
  -- #0424 Ambipom - Evolution
  (424, 42400, 21, NULL, 7, NULL),
  -- #0425 Drifloon - Static Encounter
  (425, 42500, 21, NULL, 2, 'Friday Valley Windworks static encounter.'),
  -- #0426 Drifblim - Evolution
  (426, 42600, 21, NULL, 7, NULL),
  -- #0427 Buneary - Native Encounter
  (427, 42700, 21, NULL, 1, NULL),
  -- #0428 Lopunny - Evolution
  (428, 42800, 21, NULL, 7, NULL),
  -- #0429 Mismagius - Brilliant Diamond - External Trade
  (429, 42900, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0429 Mismagius - Shining Pearl - Evolution
  (429, 42900, 21, 34, 7, NULL),
  -- #0430 Honchkrow - Brilliant Diamond - Evolution
  (430, 43000, 21, 33, 7, NULL),
  -- #0430 Honchkrow - Shining Pearl - External Trade
  (430, 43000, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0431 Glameow - Brilliant Diamond - External Trade
  (431, 43100, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0431 Glameow - Shining Pearl - Native Encounter
  (431, 43100, 21, 34, 1, NULL),
  -- #0432 Purugly - Brilliant Diamond - External Trade
  (432, 43200, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0432 Purugly - Shining Pearl - Native Encounter
  (432, 43200, 21, 34, 1, NULL),
  -- #0433 Chingling - Native Encounter
  (433, 43300, 21, NULL, 1, NULL),
  -- #0434 Stunky - Brilliant Diamond - Native Encounter
  (434, 43400, 21, 33, 1, NULL),
  -- #0434 Stunky - Shining Pearl - External Trade
  (434, 43400, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0435 Skuntank - Brilliant Diamond - Native Encounter
  (435, 43500, 21, 33, 1, NULL),
  -- #0435 Skuntank - Shining Pearl - External Trade
  (435, 43500, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0436 Bronzor - Native Encounter
  (436, 43600, 21, NULL, 1, NULL),
  -- #0437 Bronzong - Native Encounter
  (437, 43700, 21, NULL, 1, NULL),
  -- #0438 Bonsly - Brilliant Diamond - Raid or Special Encounter
  (438, 43800, 21, 33, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0438 Bonsly - Shining Pearl - Native Encounter
  (438, 43800, 21, 34, 1, NULL),
  -- #0439 Mime Jr. - Brilliant Diamond - Native Encounter
  (439, 43900, 21, 33, 1, NULL),
  -- #0439 Mime Jr. - Shining Pearl - Raid or Special Encounter
  (439, 43900, 21, 34, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0440 Happiny - Gift
  (440, 44000, 21, NULL, 4, 'Hearthome City Egg gift.'),
  -- #0441 Chatot - Native Encounter
  (441, 44100, 21, NULL, 1, NULL),
  -- #0442 Spiritomb - Static Encounter
  (442, 44200, 21, NULL, 2, 'Hallowed Tower static encounter requiring Underground player communication.'),
  -- #0443 Gible - Native Encounter
  (443, 44300, 21, NULL, 1, NULL),
  -- #0444 Gabite - Evolution
  (444, 44400, 21, NULL, 7, NULL),
  -- #0445 Garchomp - Evolution
  (445, 44500, 21, NULL, 7, NULL),
  -- #0446 Munchlax - Native Encounter
  (446, 44600, 21, NULL, 1, NULL),
  -- #0447 Riolu - Gift
  (447, 44700, 21, NULL, 4, 'Iron Island Egg gift from Riley.'),
  -- #0448 Lucario - Evolution
  (448, 44800, 21, NULL, 7, NULL),
  -- #0449 Hippopotas - Native Encounter
  (449, 44900, 21, NULL, 1, NULL),
  -- #0450 Hippowdon - Native Encounter
  (450, 45000, 21, NULL, 1, NULL),
  -- #0451 Skorupi - Raid or Special Encounter
  (451, 45100, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0452 Drapion - Raid or Special Encounter
  (452, 45200, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0453 Croagunk - Raid or Special Encounter
  (453, 45300, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0454 Toxicroak - Raid or Special Encounter
  (454, 45400, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0455 Carnivine - Raid or Special Encounter
  (455, 45500, 21, NULL, 10, 'Special availability such as swarm, Trophy Garden, Great Marsh, Poke Radar, or daily/conditional source.'),
  -- #0456 Finneon - Native Encounter
  (456, 45600, 21, NULL, 1, NULL),
  -- #0457 Lumineon - Native Encounter
  (457, 45700, 21, NULL, 1, NULL),
  -- #0458 Mantyke - Native Encounter
  (458, 45800, 21, NULL, 1, NULL),
  -- #0459 Snover - Native Encounter
  (459, 45900, 21, NULL, 1, NULL),
  -- #0460 Abomasnow - Native Encounter
  (460, 46000, 21, NULL, 1, NULL),
  -- #0461 Weavile - Evolution
  (461, 46100, 21, NULL, 7, NULL),
  -- #0462 Magnezone - Evolution
  (462, 46200, 21, NULL, 7, NULL),
  -- #0463 Lickilicky - Evolution
  (463, 46300, 21, NULL, 7, NULL),
  -- #0464 Rhyperior - Evolution
  (464, 46400, 21, NULL, 7, 'Trade evolution from an available source Pokémon in Brilliant Brilliant Diamond/Shining Shining Pearl.'),
  -- #0465 Tangrowth - Evolution
  (465, 46500, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0466 Electivire - Evolution
  (466, 46600, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0467 Magmortar - Evolution
  (467, 46700, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0468 Togekiss - Evolution
  (468, 46800, 21, NULL, 7, NULL),
  -- #0469 Yanmega - Evolution
  (469, 46900, 21, NULL, 7, NULL),
  -- #0470 Leafeon - Evolution
  (470, 47000, 21, NULL, 7, NULL),
  -- #0471 Glaceon - Evolution
  (471, 47100, 21, NULL, 7, NULL),
  -- #0472 Gliscor - Evolution
  (472, 47200, 21, NULL, 7, 'Evolves from an available BDSP source Pokémon; may require National Dex, item, trade, friendship, move, or location conditions.'),
  -- #0473 Mamoswine - Evolution
  (473, 47300, 21, NULL, 7, NULL),
  -- #0474 Porygon-Z - Evolution
  (474, 47400, 21, NULL, 7, 'Trade evolution from an available source Pokémon in Brilliant Brilliant Diamond/Shining Shining Pearl.'),
  -- #0475 Gallade - Evolution
  (475, 47500, 21, NULL, 7, NULL),
  -- #0476 Probopass - Evolution
  (476, 47600, 21, NULL, 7, NULL),
  -- #0477 Dusknoir - Evolution
  (477, 47700, 21, NULL, 7, 'Trade evolution from an available source Pokémon in Brilliant Brilliant Diamond/Shining Shining Pearl.'),
  -- #0478 Froslass - Evolution
  (478, 47800, 21, NULL, 7, NULL),
  -- #0479 Rotom - Static Encounter
  (479, 47900, 21, NULL, 2, 'Old Chateau static encounter after National Dex at night; alternate Rotom appliance forms are seeded as curated form rows below.'),
  -- #0480 Uxie - Static Encounter
  (480, 48000, 21, NULL, 2, 'Lake Acuity static encounter.'),
  -- #0481 Mesprit - Roaming Encounter
  (481, 48100, 21, NULL, 9, 'Roaming encounter after the Lake Verity story event.'),
  -- #0482 Azelf - Static Encounter
  (482, 48200, 21, NULL, 2, 'Lake Valor static encounter.'),
  -- #0483 Dialga - Brilliant Diamond - Static Encounter
  (483, 48300, 21, 33, 2, 'Spear Pillar static encounter in Brilliant Diamond.'),
  -- #0483 Dialga - Shining Pearl - External Trade
  (483, 48300, 21, 34, 12, 'Version source is Brilliant Diamond; available in Shining Pearl by trading from Brilliant Diamond or through compatible HOME transfer.'),
  -- #0484 Palkia - Brilliant Diamond - External Trade
  (484, 48400, 21, 33, 12, 'Version source is Shining Pearl; available in Brilliant Diamond by trading from Shining Pearl or through compatible HOME transfer.'),
  -- #0484 Palkia - Shining Pearl - Static Encounter
  (484, 48400, 21, 34, 2, 'Spear Pillar static encounter in Shining Pearl.'),
  -- #0485 Heatran - Static Encounter
  (485, 48500, 21, NULL, 2, 'Stark Mountain static encounter after National Dex.'),
  -- #0486 Regigigas - Static Encounter
  (486, 48600, 21, NULL, 2, 'Snowpoint Temple static encounter requiring Regirock, Regice, and Registeel in the party.'),
  -- #0487 Giratina - Static Encounter
  (487, 48700, 21, NULL, 2, 'Turnback Cave static encounter after National Dex; Origin Form is seeded as a curated form row below.'),
  -- #0488 Cresselia - Roaming Encounter
  (488, 48800, 21, NULL, 9, 'Roaming encounter after the Fullmoon Island event.'),
  -- #0489 Phione - Event
  (489, 48900, 21, NULL, 11, 'Event-only source classification in BDSP; Phione is obtained by breeding Manaphy when an event or transferred Manaphy is available.'),
  -- #0490 Manaphy - Event
  (490, 49000, 21, NULL, 11, 'Event-only in BDSP through the official limited-time Mystery Gift Manaphy Egg distribution or compatible transfer source.'),
  -- #0491 Darkrai - Event
  (491, 49100, 21, NULL, 11, 'Event-only in BDSP through the official Member Card distribution unlocking the Newmoon Island Darkrai encounter, or compatible transfer source.'),
  -- #0492 Shaymin - Event
  (492, 49200, 21, NULL, 11, 'Event-only in BDSP through the official Oak''s Letter distribution unlocking the Flower Paradise Shaymin encounter, or compatible transfer source.'),
  -- #0493 Arceus - Static Encounter
  (493, 49300, 21, NULL, 2, 'Spear Pillar static encounter unlocked by the Azure Flute with compatible Pokémon Legends: Arceus save data and BDSP version 1.3.0 or later.'),
  -- #0479 Rotom (Heat) - Static Encounter
  (479, 47901, 21, NULL, 2, 'Requires the BDSP Rotom appliance form-change mechanics after the Old Chateau Rotom encounter.'),
  -- #0479 Rotom (Wash) - Static Encounter
  (479, 47902, 21, NULL, 2, 'Requires the BDSP Rotom appliance form-change mechanics after the Old Chateau Rotom encounter.'),
  -- #0479 Rotom (Frost) - Static Encounter
  (479, 47903, 21, NULL, 2, 'Requires the BDSP Rotom appliance form-change mechanics after the Old Chateau Rotom encounter.'),
  -- #0479 Rotom (Fan) - Static Encounter
  (479, 47904, 21, NULL, 2, 'Requires the BDSP Rotom appliance form-change mechanics after the Old Chateau Rotom encounter.'),
  -- #0479 Rotom (Mow) - Static Encounter
  (479, 47905, 21, NULL, 2, 'Requires the BDSP Rotom appliance form-change mechanics after the Old Chateau Rotom encounter.'),
  -- #0487 Giratina (Origin) - Static Encounter
  (487, 48701, 21, NULL, 2, 'Origin Form is available by using the Griseous Orb obtained through BDSP Giratina/Ramanas Park postgame form mechanics.'),
  -- #0492 Shaymin (Sky) - Event
  (492, 49201, 21, NULL, 11, 'Event-only Shaymin Sky Form; requires an event/transfer Shaymin and Gracidea-enabled form change.'),
  -- #0493 Arceus (Fighting) - Static Encounter
  (493, 49301, 21, NULL, 2, 'Arceus type form available through the Azure Flute Arceus encounter and the corresponding Plate held-item form mechanic in BDSP.'),
  -- #0493 Arceus (Flying) - Static Encounter
  (493, 49302, 21, NULL, 2, 'Arceus type form available through the Azure Flute Arceus encounter and the corresponding Plate held-item form mechanic in BDSP.'),
  -- #0493 Arceus (Poison) - Static Encounter
  (493, 49303, 21, NULL, 2, 'Arceus type form available through the Azure Flute Arceus encounter and the corresponding Plate held-item form mechanic in BDSP.'),
  -- #0493 Arceus (Ground) - Static Encounter
  (493, 49304, 21, NULL, 2, 'Arceus type form available through the Azure Flute Arceus encounter and the corresponding Plate held-item form mechanic in BDSP.'),
  -- #0493 Arceus (Rock) - Static Encounter
  (493, 49305, 21, NULL, 2, 'Arceus type form available through the Azure Flute Arceus encounter and the corresponding Plate held-item form mechanic in BDSP.'),
  -- #0493 Arceus (Bug) - Static Encounter
  (493, 49306, 21, NULL, 2, 'Arceus type form available through the Azure Flute Arceus encounter and the corresponding Plate held-item form mechanic in BDSP.'),
  -- #0493 Arceus (Ghost) - Static Encounter
  (493, 49307, 21, NULL, 2, 'Arceus type form available through the Azure Flute Arceus encounter and the corresponding Plate held-item form mechanic in BDSP.'),
  -- #0493 Arceus (Steel) - Static Encounter
  (493, 49308, 21, NULL, 2, 'Arceus type form available through the Azure Flute Arceus encounter and the corresponding Plate held-item form mechanic in BDSP.'),
  -- #0493 Arceus (Fire) - Static Encounter
  (493, 49309, 21, NULL, 2, 'Arceus type form available through the Azure Flute Arceus encounter and the corresponding Plate held-item form mechanic in BDSP.'),
  -- #0493 Arceus (Water) - Static Encounter
  (493, 49310, 21, NULL, 2, 'Arceus type form available through the Azure Flute Arceus encounter and the corresponding Plate held-item form mechanic in BDSP.'),
  -- #0493 Arceus (Grass) - Static Encounter
  (493, 49311, 21, NULL, 2, 'Arceus type form available through the Azure Flute Arceus encounter and the corresponding Plate held-item form mechanic in BDSP.'),
  -- #0493 Arceus (Electric) - Static Encounter
  (493, 49312, 21, NULL, 2, 'Arceus type form available through the Azure Flute Arceus encounter and the corresponding Plate held-item form mechanic in BDSP.'),
  -- #0493 Arceus (Psychic) - Static Encounter
  (493, 49313, 21, NULL, 2, 'Arceus type form available through the Azure Flute Arceus encounter and the corresponding Plate held-item form mechanic in BDSP.'),
  -- #0493 Arceus (Ice) - Static Encounter
  (493, 49314, 21, NULL, 2, 'Arceus type form available through the Azure Flute Arceus encounter and the corresponding Plate held-item form mechanic in BDSP.'),
  -- #0493 Arceus (Dragon) - Static Encounter
  (493, 49315, 21, NULL, 2, 'Arceus type form available through the Azure Flute Arceus encounter and the corresponding Plate held-item form mechanic in BDSP.'),
  -- #0493 Arceus (Dark) - Static Encounter
  (493, 49316, 21, NULL, 2, 'Arceus type form available through the Azure Flute Arceus encounter and the corresponding Plate held-item form mechanic in BDSP.'),
  -- #0493 Arceus (Fairy) - Static Encounter
  (493, 49317, 21, NULL, 2, 'Arceus Fairy form is source-visible in BDSP and available through the Azure Flute Arceus encounter plus Pixie Plate held-item form mechanic.');
