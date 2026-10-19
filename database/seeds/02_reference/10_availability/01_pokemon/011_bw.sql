-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by availability and Black/White legendary, Dream World, and form behavior notes.
-- Cross-check: PokemonDB Black/White version exclusives, Serebii Black/White version exclusives/item pages, and legacy Voydex availability seeds.
-- Scope note: primary availability method per obtainable form; external-source rows preserve compatible-game usability for planning.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Black / White
-- Table: reference.pokemon_availability
-- Scope: 801 rows; all Generation V-compatible species are represented, with game-specific rows for version sources and curated persistent form rows for Basculin and Genesect Drives.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0001 Bulbasaur - Transfer Only
  (1, 100, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0002 Ivysaur - Transfer Only
  (2, 200, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0003 Venusaur - Transfer Only
  (3, 300, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0004 Charmander - Transfer Only
  (4, 400, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0005 Charmeleon - Transfer Only
  (5, 500, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0006 Charizard - Transfer Only
  (6, 600, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0007 Squirtle - Transfer Only
  (7, 700, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0008 Wartortle - Transfer Only
  (8, 800, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0009 Blastoise - Transfer Only
  (9, 900, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0010 Caterpie - Black - External Trade
  (10, 1000, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0010 Caterpie - White - Breeding
  (10, 1000, 11, 18, 8, NULL),
  -- #0011 Metapod - Black - External Trade
  (11, 1100, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0011 Metapod - White - Native Encounter
  (11, 1100, 11, 18, 1, NULL),
  -- #0012 Butterfree - Black - External Trade
  (12, 1200, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0012 Butterfree - White - Native Encounter
  (12, 1200, 11, 18, 1, NULL),
  -- #0013 Weedle - Black - Breeding
  (13, 1300, 11, 17, 8, NULL),
  -- #0013 Weedle - White - External Trade
  (13, 1300, 11, 18, 12, 'Version source is Black; available in White by trade or compatible external transfer.'),
  -- #0014 Kakuna - Black - Native Encounter
  (14, 1400, 11, 17, 1, NULL),
  -- #0014 Kakuna - White - External Trade
  (14, 1400, 11, 18, 12, 'Version source is Black; available in White by trade or compatible external transfer.'),
  -- #0015 Beedrill - Black - Native Encounter
  (15, 1500, 11, 17, 1, NULL),
  -- #0015 Beedrill - White - External Trade
  (15, 1500, 11, 18, 12, 'Version source is Black; available in White by trade or compatible external transfer.'),
  -- #0016 Pidgey - Black - External Trade
  (16, 1600, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0016 Pidgey - White - Native Encounter
  (16, 1600, 11, 18, 1, NULL),
  -- #0017 Pidgeotto - Black - External Trade
  (17, 1700, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0017 Pidgeotto - White - Evolution
  (17, 1700, 11, 18, 7, NULL),
  -- #0018 Pidgeot - Black - External Trade
  (18, 1800, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0018 Pidgeot - White - Evolution
  (18, 1800, 11, 18, 7, NULL),
  -- #0019 Rattata - Breeding
  (19, 1900, 11, NULL, 8, NULL),
  -- #0020 Raticate - Native Encounter
  (20, 2000, 11, NULL, 1, NULL),
  -- #0021 Spearow - Breeding
  (21, 2100, 11, NULL, 8, NULL),
  -- #0022 Fearow - Native Encounter
  (22, 2200, 11, NULL, 1, NULL),
  -- #0023 Ekans - Transfer Only
  (23, 2300, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0024 Arbok - Evolution
  (24, 2400, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0025 Pikachu - Transfer Only
  (25, 2500, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0026 Raichu - Transfer Only
  (26, 2600, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0027 Sandshrew - Breeding
  (27, 2700, 11, NULL, 8, NULL),
  -- #0028 Sandslash - Native Encounter
  (28, 2800, 11, NULL, 1, NULL),
  -- #0029 Nidoran F - Black - External Trade
  (29, 2900, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0029 Nidoran F - White - Native Encounter
  (29, 2900, 11, 18, 1, NULL),
  -- #0030 Nidorina - Black - External Trade
  (30, 3000, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0030 Nidorina - White - Evolution
  (30, 3000, 11, 18, 7, NULL),
  -- #0031 Nidoqueen - Black - External Trade
  (31, 3100, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0031 Nidoqueen - White - Evolution
  (31, 3100, 11, 18, 7, NULL),
  -- #0032 Nidoran M - Black - External Trade
  (32, 3200, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0032 Nidoran M - White - Native Encounter
  (32, 3200, 11, 18, 1, NULL),
  -- #0033 Nidorino - Black - External Trade
  (33, 3300, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0033 Nidorino - White - Evolution
  (33, 3300, 11, 18, 7, NULL),
  -- #0034 Nidoking - Black - External Trade
  (34, 3400, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0034 Nidoking - White - Evolution
  (34, 3400, 11, 18, 7, NULL),
  -- #0035 Clefairy - Native Encounter
  (35, 3500, 11, NULL, 1, NULL),
  -- #0036 Clefable - Native Encounter
  (36, 3600, 11, NULL, 1, NULL),
  -- #0037 Vulpix - Native Encounter
  (37, 3700, 11, NULL, 1, NULL),
  -- #0038 Ninetales - Native Encounter
  (38, 3800, 11, NULL, 1, NULL),
  -- #0039 Jigglypuff - Native Encounter
  (39, 3900, 11, NULL, 1, NULL),
  -- #0040 Wigglytuff - Native Encounter
  (40, 4000, 11, NULL, 1, NULL),
  -- #0041 Zubat - Breeding
  (41, 4100, 11, NULL, 8, NULL),
  -- #0042 Golbat - Native Encounter
  (42, 4200, 11, NULL, 1, NULL),
  -- #0043 Oddish - Black - External Trade
  (43, 4300, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0043 Oddish - White - Native Encounter
  (43, 4300, 11, 18, 1, NULL),
  -- #0044 Gloom - Black - External Trade
  (44, 4400, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0044 Gloom - White - Evolution
  (44, 4400, 11, 18, 7, NULL),
  -- #0045 Vileplume - Black - External Trade
  (45, 4500, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0045 Vileplume - White - Evolution
  (45, 4500, 11, 18, 7, NULL),
  -- #0046 Paras - Black - External Trade
  (46, 4600, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0046 Paras - White - Raid or Special Encounter
  (46, 4600, 11, 18, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0047 Parasect - Black - External Trade
  (47, 4700, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0047 Parasect - White - Evolution
  (47, 4700, 11, 18, 7, NULL),
  -- #0048 Venonat - Breeding
  (48, 4800, 11, NULL, 8, NULL),
  -- #0049 Venomoth - Native Encounter
  (49, 4900, 11, NULL, 1, NULL),
  -- #0050 Diglett - Transfer Only
  (50, 5000, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0051 Dugtrio - Evolution
  (51, 5100, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0052 Meowth - Transfer Only
  (52, 5200, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0053 Persian - Evolution
  (53, 5300, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0054 Psyduck - Breeding
  (54, 5400, 11, NULL, 8, NULL),
  -- #0055 Golduck - Native Encounter
  (55, 5500, 11, NULL, 1, NULL),
  -- #0056 Mankey - Raid or Special Encounter
  (56, 5600, 11, NULL, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0057 Primeape - Evolution
  (57, 5700, 11, NULL, 7, NULL),
  -- #0058 Growlithe - Transfer Only
  (58, 5800, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0059 Arcanine - Evolution
  (59, 5900, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0060 Poliwag - Native Encounter
  (60, 6000, 11, NULL, 1, NULL),
  -- #0061 Poliwhirl - Native Encounter
  (61, 6100, 11, NULL, 1, NULL),
  -- #0062 Poliwrath - Native Encounter
  (62, 6200, 11, NULL, 1, NULL),
  -- #0063 Abra - Black - External Trade
  (63, 6300, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0063 Abra - White - Native Encounter
  (63, 6300, 11, 18, 1, NULL),
  -- #0064 Kadabra - Black - External Trade
  (64, 6400, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0064 Kadabra - White - Evolution
  (64, 6400, 11, 18, 7, NULL),
  -- #0065 Alakazam - Black - External Trade
  (65, 6500, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0065 Alakazam - White - Evolution
  (65, 6500, 11, 18, 7, 'Trade evolution from an available source Pokémon in Black/White.'),
  -- #0066 Machop - Black - External Trade
  (66, 6600, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0066 Machop - White - Native Encounter
  (66, 6600, 11, 18, 1, NULL),
  -- #0067 Machoke - Black - External Trade
  (67, 6700, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0067 Machoke - White - Evolution
  (67, 6700, 11, 18, 7, NULL),
  -- #0068 Machamp - Black - External Trade
  (68, 6800, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0068 Machamp - White - Evolution
  (68, 6800, 11, 18, 7, 'Trade evolution from an available source Pokémon in Black/White.'),
  -- #0069 Bellsprout - Black - External Trade
  (69, 6900, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0069 Bellsprout - White - Native Encounter
  (69, 6900, 11, 18, 1, NULL),
  -- #0070 Weepinbell - Black - External Trade
  (70, 7000, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0070 Weepinbell - White - Evolution
  (70, 7000, 11, 18, 7, NULL),
  -- #0071 Victreebel - Black - External Trade
  (71, 7100, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0071 Victreebel - White - Evolution
  (71, 7100, 11, 18, 7, NULL),
  -- #0072 Tentacool - Transfer Only
  (72, 7200, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0073 Tentacruel - Evolution
  (73, 7300, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0074 Geodude - Breeding
  (74, 7400, 11, NULL, 8, NULL),
  -- #0075 Graveler - Native Encounter
  (75, 7500, 11, NULL, 1, NULL),
  -- #0076 Golem - Evolution
  (76, 7600, 11, NULL, 7, 'Trade evolution from an available source Pokémon in Black/White.'),
  -- #0077 Ponyta - Breeding
  (77, 7700, 11, NULL, 8, NULL),
  -- #0078 Rapidash - Native Encounter
  (78, 7800, 11, NULL, 1, NULL),
  -- #0079 Slowpoke - Native Encounter
  (79, 7900, 11, NULL, 1, NULL),
  -- #0080 Slowbro - Native Encounter
  (80, 8000, 11, NULL, 1, NULL),
  -- #0081 Magnemite - Black - External Trade
  (81, 8100, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0081 Magnemite - White - Native Encounter
  (81, 8100, 11, 18, 1, NULL),
  -- #0082 Magneton - Black - External Trade
  (82, 8200, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0082 Magneton - White - Evolution
  (82, 8200, 11, 18, 7, NULL),
  -- #0083 Farfetch'd - Raid or Special Encounter
  (83, 8300, 11, NULL, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0084 Doduo - Raid or Special Encounter
  (84, 8400, 11, NULL, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0085 Dodrio - Evolution
  (85, 8500, 11, NULL, 7, NULL),
  -- #0086 Seel - Native Encounter
  (86, 8600, 11, NULL, 1, NULL),
  -- #0087 Dewgong - Native Encounter
  (87, 8700, 11, NULL, 1, NULL),
  -- #0088 Grimer - Transfer Only
  (88, 8800, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0089 Muk - Evolution
  (89, 8900, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0090 Shellder - Native Encounter
  (90, 9000, 11, NULL, 1, NULL),
  -- #0091 Cloyster - Native Encounter
  (91, 9100, 11, NULL, 1, NULL),
  -- #0092 Gastly - Black - External Trade
  (92, 9200, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0092 Gastly - White - Native Encounter
  (92, 9200, 11, 18, 1, NULL),
  -- #0093 Haunter - Black - External Trade
  (93, 9300, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0093 Haunter - White - Evolution
  (93, 9300, 11, 18, 7, NULL),
  -- #0094 Gengar - Black - External Trade
  (94, 9400, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0094 Gengar - White - Evolution
  (94, 9400, 11, 18, 7, 'Trade evolution from an available source Pokémon in Black/White.'),
  -- #0095 Onix - Native Encounter
  (95, 9500, 11, NULL, 1, NULL),
  -- #0096 Drowzee - Transfer Only
  (96, 9600, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0097 Hypno - Evolution
  (97, 9700, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0098 Krabby - Native Encounter
  (98, 9800, 11, NULL, 1, NULL),
  -- #0099 Kingler - Native Encounter
  (99, 9900, 11, NULL, 1, NULL),
  -- #0100 Voltorb - Transfer Only
  (100, 10000, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0101 Electrode - Evolution
  (101, 10100, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0102 Exeggcute - Raid or Special Encounter
  (102, 10200, 11, NULL, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0103 Exeggutor - Evolution
  (103, 10300, 11, NULL, 7, NULL),
  -- #0104 Cubone - Breeding
  (104, 10400, 11, NULL, 8, NULL),
  -- #0105 Marowak - Native Encounter
  (105, 10500, 11, NULL, 1, NULL),
  -- #0106 Hitmonlee - Evolution
  (106, 10600, 11, NULL, 7, NULL),
  -- #0107 Hitmonchan - Evolution
  (107, 10700, 11, NULL, 7, NULL),
  -- #0108 Lickitung - Native Encounter
  (108, 10800, 11, NULL, 1, NULL),
  -- #0109 Koffing - Transfer Only
  (109, 10900, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0110 Weezing - Evolution
  (110, 11000, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0111 Rhyhorn - Black - External Trade
  (111, 11100, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0111 Rhyhorn - White - Native Encounter
  (111, 11100, 11, 18, 1, NULL),
  -- #0112 Rhydon - Black - External Trade
  (112, 11200, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0112 Rhydon - White - Evolution
  (112, 11200, 11, 18, 7, NULL),
  -- #0113 Chansey - Black - External Trade
  (113, 11300, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0113 Chansey - White - Evolution
  (113, 11300, 11, 18, 7, NULL),
  -- #0114 Tangela - Native Encounter
  (114, 11400, 11, NULL, 1, NULL),
  -- #0115 Kangaskhan - Native Encounter
  (115, 11500, 11, NULL, 1, NULL),
  -- #0116 Horsea - Native Encounter
  (116, 11600, 11, NULL, 1, NULL),
  -- #0117 Seadra - Native Encounter
  (117, 11700, 11, NULL, 1, NULL),
  -- #0118 Goldeen - Native Encounter
  (118, 11800, 11, NULL, 1, NULL),
  -- #0119 Seaking - Native Encounter
  (119, 11900, 11, NULL, 1, NULL),
  -- #0120 Staryu - Native Encounter
  (120, 12000, 11, NULL, 1, NULL),
  -- #0121 Starmie - Native Encounter
  (121, 12100, 11, NULL, 1, NULL),
  -- #0122 Mr. Mime - Transfer Only
  (122, 12200, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0123 Scyther - Transfer Only
  (123, 12300, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0124 Jynx - Native Encounter
  (124, 12400, 11, NULL, 1, NULL),
  -- #0125 Electabuzz - Black - External Trade
  (125, 12500, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0125 Electabuzz - White - Evolution
  (125, 12500, 11, 18, 7, NULL),
  -- #0126 Magmar - Black - External Trade
  (126, 12600, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0126 Magmar - White - Evolution
  (126, 12600, 11, 18, 7, NULL),
  -- #0127 Pinsir - Native Encounter
  (127, 12700, 11, NULL, 1, NULL),
  -- #0128 Tauros - Transfer Only
  (128, 12800, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0129 Magikarp - Gift
  (129, 12900, 11, NULL, 4, 'Marvelous Bridge Magikarp purchase from NPC.'),
  -- #0130 Gyarados - Evolution
  (130, 13000, 11, NULL, 7, NULL),
  -- #0131 Lapras - Native Encounter
  (131, 13100, 11, NULL, 1, NULL),
  -- #0132 Ditto - Native Encounter
  (132, 13200, 11, NULL, 1, NULL),
  -- #0133 Eevee - Transfer Only
  (133, 13300, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0134 Vaporeon - Evolution
  (134, 13400, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0135 Jolteon - Evolution
  (135, 13500, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0136 Flareon - Evolution
  (136, 13600, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0137 Porygon - Black - External Trade
  (137, 13700, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0137 Porygon - White - Native Encounter
  (137, 13700, 11, 18, 1, NULL),
  -- #0138 Omanyte - Fossil Restoration
  (138, 13800, 11, NULL, 6, 'Helix Fossil restored from fossil source.'),
  -- #0139 Omastar - Evolution
  (139, 13900, 11, NULL, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0140 Kabuto - Fossil Restoration
  (140, 14000, 11, NULL, 6, 'Dome Fossil restored from fossil source.'),
  -- #0141 Kabutops - Evolution
  (141, 14100, 11, NULL, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0142 Aerodactyl - Fossil Restoration
  (142, 14200, 11, NULL, 6, 'Old Amber fossil restored from fossil source.'),
  -- #0143 Snorlax - Evolution
  (143, 14300, 11, NULL, 7, NULL),
  -- #0144 Articuno - Transfer Only
  (144, 14400, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0145 Zapdos - Transfer Only
  (145, 14500, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0146 Moltres - Transfer Only
  (146, 14600, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0147 Dratini - Native Encounter
  (147, 14700, 11, NULL, 1, NULL),
  -- #0148 Dragonair - Native Encounter
  (148, 14800, 11, NULL, 1, NULL),
  -- #0149 Dragonite - Native Encounter
  (149, 14900, 11, NULL, 1, NULL),
  -- #0150 Mewtwo - Transfer Only
  (150, 15000, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0151 Mew - Transfer Only
  (151, 15100, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0152 Chikorita - Transfer Only
  (152, 15200, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0153 Bayleef - Transfer Only
  (153, 15300, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0154 Meganium - Transfer Only
  (154, 15400, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0155 Cyndaquil - Transfer Only
  (155, 15500, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0156 Quilava - Transfer Only
  (156, 15600, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0157 Typhlosion - Transfer Only
  (157, 15700, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0158 Totodile - Transfer Only
  (158, 15800, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0159 Croconaw - Transfer Only
  (159, 15900, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0160 Feraligatr - Transfer Only
  (160, 16000, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0161 Sentret - Raid or Special Encounter
  (161, 16100, 11, NULL, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0162 Furret - Evolution
  (162, 16200, 11, NULL, 7, NULL),
  -- #0163 Hoothoot - Breeding
  (163, 16300, 11, NULL, 8, NULL),
  -- #0164 Noctowl - Native Encounter
  (164, 16400, 11, NULL, 1, NULL),
  -- #0165 Ledyba - Breeding
  (165, 16500, 11, NULL, 8, NULL),
  -- #0166 Ledian - Native Encounter
  (166, 16600, 11, NULL, 1, NULL),
  -- #0167 Spinarak - Breeding
  (167, 16700, 11, NULL, 8, NULL),
  -- #0168 Ariados - Native Encounter
  (168, 16800, 11, NULL, 1, NULL),
  -- #0169 Crobat - Native Encounter
  (169, 16900, 11, NULL, 1, NULL),
  -- #0170 Chinchou - Native Encounter
  (170, 17000, 11, NULL, 1, NULL),
  -- #0171 Lanturn - Native Encounter
  (171, 17100, 11, NULL, 1, NULL),
  -- #0172 Pichu - Breeding
  (172, 17200, 11, NULL, 8, 'Requires breeding from a compatible event or transferred source Pokémon.'),
  -- #0173 Cleffa - Breeding
  (173, 17300, 11, NULL, 8, NULL),
  -- #0174 Igglybuff - Breeding
  (174, 17400, 11, NULL, 8, NULL),
  -- #0175 Togepi - Black - External Trade
  (175, 17500, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0175 Togepi - White - Native Encounter
  (175, 17500, 11, 18, 1, NULL),
  -- #0176 Togetic - Black - External Trade
  (176, 17600, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0176 Togetic - White - Evolution
  (176, 17600, 11, 18, 7, NULL),
  -- #0177 Natu - Transfer Only
  (177, 17700, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0178 Xatu - Evolution
  (178, 17800, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0179 Mareep - Black - External Trade
  (179, 17900, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0179 Mareep - White - Native Encounter
  (179, 17900, 11, 18, 1, NULL),
  -- #0180 Flaaffy - Black - External Trade
  (180, 18000, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0180 Flaaffy - White - Evolution
  (180, 18000, 11, 18, 7, NULL),
  -- #0181 Ampharos - Black - External Trade
  (181, 18100, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0181 Ampharos - White - Evolution
  (181, 18100, 11, 18, 7, NULL),
  -- #0182 Bellossom - Black - External Trade
  (182, 18200, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0182 Bellossom - White - Evolution
  (182, 18200, 11, 18, 7, NULL),
  -- #0183 Marill - Black - External Trade
  (183, 18300, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0183 Marill - White - Evolution
  (183, 18300, 11, 18, 7, NULL),
  -- #0184 Azumarill - Black - External Trade
  (184, 18400, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0184 Azumarill - White - Evolution
  (184, 18400, 11, 18, 7, NULL),
  -- #0185 Sudowoodo - Transfer Only
  (185, 18500, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0186 Politoed - Native Encounter
  (186, 18600, 11, NULL, 1, NULL),
  -- #0187 Hoppip - Black - External Trade
  (187, 18700, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0187 Hoppip - White - Native Encounter
  (187, 18700, 11, 18, 1, NULL),
  -- #0188 Skiploom - Black - External Trade
  (188, 18800, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0188 Skiploom - White - Evolution
  (188, 18800, 11, 18, 7, NULL),
  -- #0189 Jumpluff - Black - External Trade
  (189, 18900, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0189 Jumpluff - White - Evolution
  (189, 18900, 11, 18, 7, NULL),
  -- #0190 Aipom - Transfer Only
  (190, 19000, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0191 Sunkern - Native Encounter
  (191, 19100, 11, NULL, 1, NULL),
  -- #0192 Sunflora - Native Encounter
  (192, 19200, 11, NULL, 1, NULL),
  -- #0193 Yanma - Raid or Special Encounter
  (193, 19300, 11, NULL, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0194 Wooper - Black - External Trade
  (194, 19400, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0194 Wooper - White - Native Encounter
  (194, 19400, 11, 18, 1, NULL),
  -- #0195 Quagsire - Black - External Trade
  (195, 19500, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0195 Quagsire - White - Evolution
  (195, 19500, 11, 18, 7, NULL),
  -- #0196 Espeon - Evolution
  (196, 19600, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0197 Umbreon - Evolution
  (197, 19700, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0198 Murkrow - Black - Native Encounter
  (198, 19800, 11, 17, 1, NULL),
  -- #0198 Murkrow - White - External Trade
  (198, 19800, 11, 18, 12, 'Version source is Black; available in White by trade or compatible external transfer.'),
  -- #0199 Slowking - Native Encounter
  (199, 19900, 11, NULL, 1, NULL),
  -- #0200 Misdreavus - Black - External Trade
  (200, 20000, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0200 Misdreavus - White - Native Encounter
  (200, 20000, 11, 18, 1, NULL),
  -- #0201 Unown - Transfer Only
  (201, 20100, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0202 Wobbuffet - Evolution
  (202, 20200, 11, NULL, 7, NULL),
  -- #0203 Girafarig - Transfer Only
  (203, 20300, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0204 Pineco - Raid or Special Encounter
  (204, 20400, 11, NULL, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0205 Forretress - Evolution
  (205, 20500, 11, NULL, 7, NULL),
  -- #0206 Dunsparce - Native Encounter
  (206, 20600, 11, NULL, 1, NULL),
  -- #0207 Gligar - Native Encounter
  (207, 20700, 11, NULL, 1, NULL),
  -- #0208 Steelix - Evolution
  (208, 20800, 11, NULL, 7, 'Trade evolution from an available source Pokémon in Black/White.'),
  -- #0209 Snubbull - Transfer Only
  (209, 20900, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0210 Granbull - Evolution
  (210, 21000, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0211 Qwilfish - Native Encounter
  (211, 21100, 11, NULL, 1, NULL),
  -- #0212 Scizor - Evolution
  (212, 21200, 11, NULL, 7, 'Requires trade evolution from a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0213 Shuckle - Native Encounter
  (213, 21300, 11, NULL, 1, NULL),
  -- #0214 Heracross - Native Encounter
  (214, 21400, 11, NULL, 1, NULL),
  -- #0215 Sneasel - Native Encounter
  (215, 21500, 11, NULL, 1, NULL),
  -- #0216 Teddiursa - Transfer Only
  (216, 21600, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0217 Ursaring - Evolution
  (217, 21700, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0218 Slugma - Transfer Only
  (218, 21800, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0219 Magcargo - Evolution
  (219, 21900, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0220 Swinub - Breeding
  (220, 22000, 11, NULL, 8, NULL),
  -- #0221 Piloswine - Native Encounter
  (221, 22100, 11, NULL, 1, NULL),
  -- #0222 Corsola - Native Encounter
  (222, 22200, 11, NULL, 1, NULL),
  -- #0223 Remoraid - Native Encounter
  (223, 22300, 11, NULL, 1, NULL),
  -- #0224 Octillery - Native Encounter
  (224, 22400, 11, NULL, 1, NULL),
  -- #0225 Delibird - Native Encounter
  (225, 22500, 11, NULL, 1, NULL),
  -- #0226 Mantine - Native Encounter
  (226, 22600, 11, NULL, 1, NULL),
  -- #0227 Skarmory - Transfer Only
  (227, 22700, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0228 Houndour - Black - Raid or Special Encounter
  (228, 22800, 11, 17, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0228 Houndour - White - External Trade
  (228, 22800, 11, 18, 12, 'Version source is Black; available in White by trade or compatible external transfer.'),
  -- #0229 Houndoom - Black - Evolution
  (229, 22900, 11, 17, 7, NULL),
  -- #0229 Houndoom - White - External Trade
  (229, 22900, 11, 18, 12, 'Version source is Black; available in White by trade or compatible external transfer.'),
  -- #0230 Kingdra - Native Encounter
  (230, 23000, 11, NULL, 1, NULL),
  -- #0231 Phanpy - Transfer Only
  (231, 23100, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0232 Donphan - Evolution
  (232, 23200, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0233 Porygon2 - Black - External Trade
  (233, 23300, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0233 Porygon2 - White - Evolution
  (233, 23300, 11, 18, 7, 'Trade evolution from an available source Pokémon in Black/White.'),
  -- #0234 Stantler - Native Encounter
  (234, 23400, 11, NULL, 1, NULL),
  -- #0235 Smeargle - Raid or Special Encounter
  (235, 23500, 11, NULL, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0236 Tyrogue - Raid or Special Encounter
  (236, 23600, 11, NULL, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0237 Hitmontop - Evolution
  (237, 23700, 11, NULL, 7, NULL),
  -- #0238 Smoochum - Breeding
  (238, 23800, 11, NULL, 8, NULL),
  -- #0239 Elekid - Black - External Trade
  (239, 23900, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0239 Elekid - White - Native Encounter
  (239, 23900, 11, 18, 1, NULL),
  -- #0240 Magby - Black - External Trade
  (240, 24000, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0240 Magby - White - Native Encounter
  (240, 24000, 11, 18, 1, NULL),
  -- #0241 Miltank - Transfer Only
  (241, 24100, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0242 Blissey - Black - External Trade
  (242, 24200, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0242 Blissey - White - Evolution
  (242, 24200, 11, 18, 7, NULL),
  -- #0243 Raikou - Transfer Only
  (243, 24300, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0244 Entei - Transfer Only
  (244, 24400, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0245 Suicune - Transfer Only
  (245, 24500, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0246 Larvitar - Breeding
  (246, 24600, 11, NULL, 8, NULL),
  -- #0247 Pupitar - Native Encounter
  (247, 24700, 11, NULL, 1, NULL),
  -- #0248 Tyranitar - Native Encounter
  (248, 24800, 11, NULL, 1, NULL),
  -- #0249 Lugia - Transfer Only
  (249, 24900, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0250 Ho-Oh - Transfer Only
  (250, 25000, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0251 Celebi - Transfer Only
  (251, 25100, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0252 Treecko - Transfer Only
  (252, 25200, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0253 Grovyle - Transfer Only
  (253, 25300, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0254 Sceptile - Transfer Only
  (254, 25400, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0255 Torchic - Transfer Only
  (255, 25500, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0256 Combusken - Transfer Only
  (256, 25600, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0257 Blaziken - Transfer Only
  (257, 25700, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0258 Mudkip - Transfer Only
  (258, 25800, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0259 Marshtomp - Transfer Only
  (259, 25900, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0260 Swampert - Transfer Only
  (260, 26000, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0261 Poochyena - Black - External Trade
  (261, 26100, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0261 Poochyena - White - Raid or Special Encounter
  (261, 26100, 11, 18, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0262 Mightyena - Black - External Trade
  (262, 26200, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0262 Mightyena - White - Evolution
  (262, 26200, 11, 18, 7, NULL),
  -- #0263 Zigzagoon - Transfer Only
  (263, 26300, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0264 Linoone - Evolution
  (264, 26400, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0265 Wurmple - Black - External Trade
  (265, 26500, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0265 Wurmple - White - Native Encounter
  (265, 26500, 11, 18, 1, NULL),
  -- #0266 Silcoon - Black - External Trade
  (266, 26600, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0266 Silcoon - White - Evolution
  (266, 26600, 11, 18, 7, NULL),
  -- #0267 Beautifly - Black - External Trade
  (267, 26700, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0267 Beautifly - White - Evolution
  (267, 26700, 11, 18, 7, NULL),
  -- #0268 Cascoon - Black - External Trade
  (268, 26800, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0268 Cascoon - White - Evolution
  (268, 26800, 11, 18, 7, NULL),
  -- #0269 Dustox - Black - External Trade
  (269, 26900, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0269 Dustox - White - Evolution
  (269, 26900, 11, 18, 7, NULL),
  -- #0270 Lotad - Black - External Trade
  (270, 27000, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0270 Lotad - White - Native Encounter
  (270, 27000, 11, 18, 1, NULL),
  -- #0271 Lombre - Black - External Trade
  (271, 27100, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0271 Lombre - White - Evolution
  (271, 27100, 11, 18, 7, NULL),
  -- #0272 Ludicolo - Black - External Trade
  (272, 27200, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0272 Ludicolo - White - Evolution
  (272, 27200, 11, 18, 7, NULL),
  -- #0273 Seedot - Black - External Trade
  (273, 27300, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0273 Seedot - White - Native Encounter
  (273, 27300, 11, 18, 1, NULL),
  -- #0274 Nuzleaf - Black - External Trade
  (274, 27400, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0274 Nuzleaf - White - Evolution
  (274, 27400, 11, 18, 7, NULL),
  -- #0275 Shiftry - Black - External Trade
  (275, 27500, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0275 Shiftry - White - Evolution
  (275, 27500, 11, 18, 7, NULL),
  -- #0276 Taillow - Breeding
  (276, 27600, 11, NULL, 8, NULL),
  -- #0277 Swellow - Native Encounter
  (277, 27700, 11, NULL, 1, NULL),
  -- #0278 Wingull - Native Encounter
  (278, 27800, 11, NULL, 1, NULL),
  -- #0279 Pelipper - Native Encounter
  (279, 27900, 11, NULL, 1, NULL),
  -- #0280 Ralts - Black - External Trade
  (280, 28000, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0280 Ralts - White - Native Encounter
  (280, 28000, 11, 18, 1, NULL),
  -- #0281 Kirlia - Black - External Trade
  (281, 28100, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0281 Kirlia - White - Evolution
  (281, 28100, 11, 18, 7, NULL),
  -- #0282 Gardevoir - Black - External Trade
  (282, 28200, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0282 Gardevoir - White - Evolution
  (282, 28200, 11, 18, 7, NULL),
  -- #0283 Surskit - Black - External Trade
  (283, 28300, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0283 Surskit - White - Native Encounter
  (283, 28300, 11, 18, 1, NULL),
  -- #0284 Masquerain - Black - External Trade
  (284, 28400, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0284 Masquerain - White - Evolution
  (284, 28400, 11, 18, 7, NULL),
  -- #0285 Shroomish - Black - Raid or Special Encounter
  (285, 28500, 11, 17, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0285 Shroomish - White - External Trade
  (285, 28500, 11, 18, 12, 'Version source is Black; available in White by trade or compatible external transfer.'),
  -- #0286 Breloom - Black - Evolution
  (286, 28600, 11, 17, 7, NULL),
  -- #0286 Breloom - White - External Trade
  (286, 28600, 11, 18, 12, 'Version source is Black; available in White by trade or compatible external transfer.'),
  -- #0287 Slakoth - Black - External Trade
  (287, 28700, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0287 Slakoth - White - Native Encounter
  (287, 28700, 11, 18, 1, NULL),
  -- #0288 Vigoroth - Black - External Trade
  (288, 28800, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0288 Vigoroth - White - Evolution
  (288, 28800, 11, 18, 7, NULL),
  -- #0289 Slaking - Black - External Trade
  (289, 28900, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0289 Slaking - White - Evolution
  (289, 28900, 11, 18, 7, NULL),
  -- #0290 Nincada - Transfer Only
  (290, 29000, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0291 Ninjask - Evolution
  (291, 29100, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0292 Shedinja - Evolution
  (292, 29200, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0293 Whismur - Black - External Trade
  (293, 29300, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0293 Whismur - White - Native Encounter
  (293, 29300, 11, 18, 1, NULL),
  -- #0294 Loudred - Black - External Trade
  (294, 29400, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0294 Loudred - White - Evolution
  (294, 29400, 11, 18, 7, NULL),
  -- #0295 Exploud - Black - External Trade
  (295, 29500, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0295 Exploud - White - Evolution
  (295, 29500, 11, 18, 7, NULL),
  -- #0296 Makuhita - Transfer Only
  (296, 29600, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0297 Hariyama - Evolution
  (297, 29700, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0298 Azurill - Black - External Trade
  (298, 29800, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0298 Azurill - White - Native Encounter
  (298, 29800, 11, 18, 1, NULL),
  -- #0299 Nosepass - Transfer Only
  (299, 29900, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0300 Skitty - Transfer Only
  (300, 30000, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0301 Delcatty - Evolution
  (301, 30100, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0302 Sableye - Native Encounter
  (302, 30200, 11, NULL, 1, NULL),
  -- #0303 Mawile - Native Encounter
  (303, 30300, 11, NULL, 1, NULL),
  -- #0304 Aron - Black - External Trade
  (304, 30400, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0304 Aron - White - Native Encounter
  (304, 30400, 11, 18, 1, NULL),
  -- #0305 Lairon - Black - External Trade
  (305, 30500, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0305 Lairon - White - Evolution
  (305, 30500, 11, 18, 7, NULL),
  -- #0306 Aggron - Black - External Trade
  (306, 30600, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0306 Aggron - White - Evolution
  (306, 30600, 11, 18, 7, NULL),
  -- #0307 Meditite - Transfer Only
  (307, 30700, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0308 Medicham - Evolution
  (308, 30800, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0309 Electrike - Transfer Only
  (309, 30900, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0310 Manectric - Evolution
  (310, 31000, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0311 Plusle - Black - Raid or Special Encounter
  (311, 31100, 11, 17, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0311 Plusle - White - External Trade
  (311, 31100, 11, 18, 12, 'Version source is Black; available in White by trade or compatible external transfer.'),
  -- #0312 Minun - Black - External Trade
  (312, 31200, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0312 Minun - White - Raid or Special Encounter
  (312, 31200, 11, 18, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0313 Volbeat - Black - Raid or Special Encounter
  (313, 31300, 11, 17, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0313 Volbeat - White - Breeding
  (313, 31300, 11, 18, 8, NULL),
  -- #0314 Illumise - Black - Breeding
  (314, 31400, 11, 17, 8, NULL),
  -- #0314 Illumise - White - Raid or Special Encounter
  (314, 31400, 11, 18, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0315 Roselia - Black - External Trade
  (315, 31500, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0315 Roselia - White - Evolution
  (315, 31500, 11, 18, 7, NULL),
  -- #0316 Gulpin - Transfer Only
  (316, 31600, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0317 Swalot - Evolution
  (317, 31700, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0318 Carvanha - Native Encounter
  (318, 31800, 11, NULL, 1, NULL),
  -- #0319 Sharpedo - Native Encounter
  (319, 31900, 11, NULL, 1, NULL),
  -- #0320 Wailmer - Native Encounter
  (320, 32000, 11, NULL, 1, NULL),
  -- #0321 Wailord - Native Encounter
  (321, 32100, 11, NULL, 1, NULL),
  -- #0322 Numel - Transfer Only
  (322, 32200, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0323 Camerupt - Black - Evolution
  (323, 32300, 11, 17, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0323 Camerupt - White - External Trade
  (323, 32300, 11, 18, 12, 'Version source is Pokémon Black; available in Pokémon White by trade from the paired version or compatible external source.'),
  -- #0324 Torkoal - Transfer Only
  (324, 32400, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0325 Spoink - Transfer Only
  (325, 32500, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0326 Grumpig - Evolution
  (326, 32600, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0327 Spinda - Transfer Only
  (327, 32700, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0328 Trapinch - Black - External Trade
  (328, 32800, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0328 Trapinch - White - Native Encounter
  (328, 32800, 11, 18, 1, NULL),
  -- #0329 Vibrava - Black - External Trade
  (329, 32900, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0329 Vibrava - White - Evolution
  (329, 32900, 11, 18, 7, NULL),
  -- #0330 Flygon - Black - External Trade
  (330, 33000, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0330 Flygon - White - Evolution
  (330, 33000, 11, 18, 7, NULL),
  -- #0331 Cacnea - Transfer Only
  (331, 33100, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0332 Cacturne - Evolution
  (332, 33200, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0333 Swablu - Breeding
  (333, 33300, 11, NULL, 8, NULL),
  -- #0334 Altaria - Native Encounter
  (334, 33400, 11, NULL, 1, NULL),
  -- #0335 Zangoose - Native Encounter
  (335, 33500, 11, NULL, 1, NULL),
  -- #0336 Seviper - Native Encounter
  (336, 33600, 11, NULL, 1, NULL),
  -- #0337 Lunatone - Native Encounter
  (337, 33700, 11, NULL, 1, NULL),
  -- #0338 Solrock - Native Encounter
  (338, 33800, 11, NULL, 1, NULL),
  -- #0339 Barboach - Native Encounter
  (339, 33900, 11, NULL, 1, NULL),
  -- #0340 Whiscash - Native Encounter
  (340, 34000, 11, NULL, 1, NULL),
  -- #0341 Corphish - Black - External Trade
  (341, 34100, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0341 Corphish - White - Native Encounter
  (341, 34100, 11, 18, 1, NULL),
  -- #0342 Crawdaunt - Black - External Trade
  (342, 34200, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0342 Crawdaunt - White - Evolution
  (342, 34200, 11, 18, 7, NULL),
  -- #0343 Baltoy - Breeding
  (343, 34300, 11, NULL, 8, NULL),
  -- #0344 Claydol - Native Encounter
  (344, 34400, 11, NULL, 1, NULL),
  -- #0345 Lileep - Fossil Restoration
  (345, 34500, 11, NULL, 6, 'Root Fossil restored from fossil source.'),
  -- #0346 Cradily - Evolution
  (346, 34600, 11, NULL, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0347 Anorith - Fossil Restoration
  (347, 34700, 11, NULL, 6, 'Claw Fossil restored from fossil source.'),
  -- #0348 Armaldo - Evolution
  (348, 34800, 11, NULL, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0349 Feebas - Native Encounter
  (349, 34900, 11, NULL, 1, NULL),
  -- #0350 Milotic - Native Encounter
  (350, 35000, 11, NULL, 1, NULL),
  -- #0351 Castform - Transfer Only
  (351, 35100, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0352 Kecleon - Transfer Only
  (352, 35200, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0353 Shuppet - Raid or Special Encounter
  (353, 35300, 11, NULL, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0354 Banette - Evolution
  (354, 35400, 11, NULL, 7, NULL),
  -- #0355 Duskull - Transfer Only
  (355, 35500, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0356 Dusclops - Evolution
  (356, 35600, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0357 Tropius - Native Encounter
  (357, 35700, 11, NULL, 1, NULL),
  -- #0358 Chimecho - Native Encounter
  (358, 35800, 11, NULL, 1, NULL),
  -- #0359 Absol - Native Encounter
  (359, 35900, 11, NULL, 1, NULL),
  -- #0360 Wynaut - Raid or Special Encounter
  (360, 36000, 11, NULL, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0361 Snorunt - Transfer Only
  (361, 36100, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0362 Glalie - Evolution
  (362, 36200, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0363 Spheal - Native Encounter
  (363, 36300, 11, NULL, 1, NULL),
  -- #0364 Sealeo - Native Encounter
  (364, 36400, 11, NULL, 1, NULL),
  -- #0365 Walrein - Native Encounter
  (365, 36500, 11, NULL, 1, NULL),
  -- #0366 Clamperl - Native Encounter
  (366, 36600, 11, NULL, 1, NULL),
  -- #0367 Huntail - Black - Native Encounter
  (367, 36700, 11, 17, 1, NULL),
  -- #0367 Huntail - White - Evolution
  (367, 36700, 11, 18, 7, 'Trade evolution from an available source Pokémon in Black/White.'),
  -- #0368 Gorebyss - Black - Evolution
  (368, 36800, 11, 17, 7, 'Trade evolution from an available source Pokémon in Black/White.'),
  -- #0368 Gorebyss - White - Native Encounter
  (368, 36800, 11, 18, 1, NULL),
  -- #0369 Relicanth - Native Encounter
  (369, 36900, 11, NULL, 1, NULL),
  -- #0370 Luvdisc - Native Encounter
  (370, 37000, 11, NULL, 1, NULL),
  -- #0371 Bagon - Black - External Trade
  (371, 37100, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0371 Bagon - White - Native Encounter
  (371, 37100, 11, 18, 1, NULL),
  -- #0372 Shelgon - Black - External Trade
  (372, 37200, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0372 Shelgon - White - Evolution
  (372, 37200, 11, 18, 7, NULL),
  -- #0373 Salamence - Black - External Trade
  (373, 37300, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0373 Salamence - White - Evolution
  (373, 37300, 11, 18, 7, NULL),
  -- #0374 Beldum - Breeding
  (374, 37400, 11, NULL, 8, NULL),
  -- #0375 Metang - Native Encounter
  (375, 37500, 11, NULL, 1, NULL),
  -- #0376 Metagross - Native Encounter
  (376, 37600, 11, NULL, 1, NULL),
  -- #0377 Regirock - Transfer Only
  (377, 37700, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0378 Regice - Transfer Only
  (378, 37800, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0379 Registeel - Transfer Only
  (379, 37900, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0380 Latias - Transfer Only
  (380, 38000, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0381 Latios - Transfer Only
  (381, 38100, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0382 Kyogre - Transfer Only
  (382, 38200, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0383 Groudon - Transfer Only
  (383, 38300, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0384 Rayquaza - Transfer Only
  (384, 38400, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0385 Jirachi - Event
  (385, 38500, 11, NULL, 11, 'Mythical Pokémon source; requires compatible transfer or historical official distribution.'),
  -- #0386 Deoxys - Event
  (386, 38600, 11, NULL, 11, 'Mythical Pokémon source; requires compatible transfer or historical official distribution.'),
  -- #0387 Turtwig - Transfer Only
  (387, 38700, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0388 Grotle - Transfer Only
  (388, 38800, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0389 Torterra - Transfer Only
  (389, 38900, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0390 Chimchar - Transfer Only
  (390, 39000, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0391 Monferno - Transfer Only
  (391, 39100, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0392 Infernape - Transfer Only
  (392, 39200, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0393 Piplup - Transfer Only
  (393, 39300, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0394 Prinplup - Transfer Only
  (394, 39400, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0395 Empoleon - Transfer Only
  (395, 39500, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0396 Starly - Black - External Trade
  (396, 39600, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0396 Starly - White - Native Encounter
  (396, 39600, 11, 18, 1, NULL),
  -- #0397 Staravia - Black - External Trade
  (397, 39700, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0397 Staravia - White - Evolution
  (397, 39700, 11, 18, 7, NULL),
  -- #0398 Staraptor - Black - External Trade
  (398, 39800, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0398 Staraptor - White - Evolution
  (398, 39800, 11, 18, 7, NULL),
  -- #0399 Bidoof - Breeding
  (399, 39900, 11, NULL, 8, NULL),
  -- #0400 Bibarel - Native Encounter
  (400, 40000, 11, NULL, 1, NULL),
  -- #0401 Kricketot - Breeding
  (401, 40100, 11, NULL, 8, NULL),
  -- #0402 Kricketune - Native Encounter
  (402, 40200, 11, NULL, 1, NULL),
  -- #0403 Shinx - Black - External Trade
  (403, 40300, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0403 Shinx - White - Native Encounter
  (403, 40300, 11, 18, 1, NULL),
  -- #0404 Luxio - Black - External Trade
  (404, 40400, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0404 Luxio - White - Evolution
  (404, 40400, 11, 18, 7, NULL),
  -- #0405 Luxray - Black - External Trade
  (405, 40500, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0405 Luxray - White - Evolution
  (405, 40500, 11, 18, 7, NULL),
  -- #0406 Budew - Black - External Trade
  (406, 40600, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0406 Budew - White - Native Encounter
  (406, 40600, 11, 18, 1, NULL),
  -- #0407 Roserade - Black - External Trade
  (407, 40700, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0407 Roserade - White - Evolution
  (407, 40700, 11, 18, 7, NULL),
  -- #0408 Cranidos - Fossil Restoration
  (408, 40800, 11, NULL, 6, 'Skull Fossil restored from fossil source.'),
  -- #0409 Rampardos - Evolution
  (409, 40900, 11, NULL, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0410 Shieldon - Fossil Restoration
  (410, 41000, 11, NULL, 6, 'Armor Fossil restored from fossil source.'),
  -- #0411 Bastiodon - Evolution
  (411, 41100, 11, NULL, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0412 Burmy - Transfer Only
  (412, 41200, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0413 Wormadam - Evolution
  (413, 41300, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0414 Mothim - Evolution
  (414, 41400, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0415 Combee - Native Encounter
  (415, 41500, 11, NULL, 1, NULL),
  -- #0416 Vespiquen - Native Encounter
  (416, 41600, 11, NULL, 1, NULL),
  -- #0417 Pachirisu - Transfer Only
  (417, 41700, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0418 Buizel - Native Encounter
  (418, 41800, 11, NULL, 1, NULL),
  -- #0419 Floatzel - Native Encounter
  (419, 41900, 11, NULL, 1, NULL),
  -- #0420 Cherubi - Breeding
  (420, 42000, 11, NULL, 8, NULL),
  -- #0421 Cherrim - Native Encounter
  (421, 42100, 11, NULL, 1, NULL),
  -- #0422 Shellos - Transfer Only
  (422, 42200, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0423 Gastrodon - Evolution
  (423, 42300, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0424 Ambipom - Evolution
  (424, 42400, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0425 Drifloon - Breeding
  (425, 42500, 11, NULL, 8, NULL),
  -- #0426 Drifblim - Native Encounter
  (426, 42600, 11, NULL, 1, NULL),
  -- #0427 Buneary - Transfer Only
  (427, 42700, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0428 Lopunny - Evolution
  (428, 42800, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0429 Mismagius - Black - External Trade
  (429, 42900, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0429 Mismagius - White - Native Encounter
  (429, 42900, 11, 18, 1, NULL),
  -- #0430 Honchkrow - Black - Native Encounter
  (430, 43000, 11, 17, 1, NULL),
  -- #0430 Honchkrow - White - External Trade
  (430, 43000, 11, 18, 12, 'Version source is Black; available in White by trade or compatible external transfer.'),
  -- #0431 Glameow - Transfer Only
  (431, 43100, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0432 Purugly - Evolution
  (432, 43200, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0433 Chingling - Breeding
  (433, 43300, 11, NULL, 8, NULL),
  -- #0434 Stunky - Transfer Only
  (434, 43400, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0435 Skuntank - Evolution
  (435, 43500, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0436 Bronzor - Breeding
  (436, 43600, 11, NULL, 8, NULL),
  -- #0437 Bronzong - Native Encounter
  (437, 43700, 11, NULL, 1, NULL),
  -- #0438 Bonsly - Breeding
  (438, 43800, 11, NULL, 8, 'Requires breeding a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0439 Mime Jr. - Breeding
  (439, 43900, 11, NULL, 8, 'Requires breeding a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0440 Happiny - Black - External Trade
  (440, 44000, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0440 Happiny - White - Native Encounter
  (440, 44000, 11, 18, 1, NULL),
  -- #0441 Chatot - Transfer Only
  (441, 44100, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0442 Spiritomb - Transfer Only
  (442, 44200, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0443 Gible - Transfer Only
  (443, 44300, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0444 Gabite - Evolution
  (444, 44400, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0445 Garchomp - Evolution
  (445, 44500, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0446 Munchlax - In-Game Trade
  (446, 44600, 11, NULL, 5, 'In-game trade source for Munchlax in Black/White.'),
  -- #0447 Riolu - Native Encounter
  (447, 44700, 11, NULL, 1, NULL),
  -- #0448 Lucario - Evolution
  (448, 44800, 11, NULL, 7, NULL),
  -- #0449 Hippopotas - Raid or Special Encounter
  (449, 44900, 11, NULL, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0450 Hippowdon - Evolution
  (450, 45000, 11, NULL, 7, NULL),
  -- #0451 Skorupi - Transfer Only
  (451, 45100, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0452 Drapion - Evolution
  (452, 45200, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0453 Croagunk - Raid or Special Encounter
  (453, 45300, 11, NULL, 10, 'Special availability such as rustling grass, dust cloud, ripple spot, swarm, or daily/conditional source.'),
  -- #0454 Toxicroak - Evolution
  (454, 45400, 11, NULL, 7, NULL),
  -- #0455 Carnivine - Transfer Only
  (455, 45500, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0456 Finneon - Native Encounter
  (456, 45600, 11, NULL, 1, NULL),
  -- #0457 Lumineon - Native Encounter
  (457, 45700, 11, NULL, 1, NULL),
  -- #0458 Mantyke - Native Encounter
  (458, 45800, 11, NULL, 1, NULL),
  -- #0459 Snover - Transfer Only
  (459, 45900, 11, NULL, 13, 'Dream World source; online Global Link service is no longer available.'),
  -- #0460 Abomasnow - Evolution
  (460, 46000, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0461 Weavile - Evolution
  (461, 46100, 11, NULL, 7, NULL),
  -- #0462 Magnezone - Black - External Trade
  (462, 46200, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0462 Magnezone - White - Evolution
  (462, 46200, 11, 18, 7, NULL),
  -- #0463 Lickilicky - Evolution
  (463, 46300, 11, NULL, 7, NULL),
  -- #0464 Rhyperior - Black - External Trade
  (464, 46400, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0464 Rhyperior - White - Evolution
  (464, 46400, 11, 18, 7, 'Trade evolution from an available source Pokémon in Black/White.'),
  -- #0465 Tangrowth - Native Encounter
  (465, 46500, 11, NULL, 1, NULL),
  -- #0466 Electivire - Black - External Trade
  (466, 46600, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0466 Electivire - White - Evolution
  (466, 46600, 11, 18, 7, 'Trade evolution from an available source Pokémon in Black/White.'),
  -- #0467 Magmortar - Black - External Trade
  (467, 46700, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0467 Magmortar - White - Evolution
  (467, 46700, 11, 18, 7, 'Trade evolution from an available source Pokémon in Black/White.'),
  -- #0468 Togekiss - Black - External Trade
  (468, 46800, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0468 Togekiss - White - Evolution
  (468, 46800, 11, 18, 7, NULL),
  -- #0469 Yanmega - Evolution
  (469, 46900, 11, NULL, 7, NULL),
  -- #0470 Leafeon - Evolution
  (470, 47000, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0471 Glaceon - Evolution
  (471, 47100, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0472 Gliscor - Native Encounter
  (472, 47200, 11, NULL, 1, NULL),
  -- #0473 Mamoswine - Native Encounter
  (473, 47300, 11, NULL, 1, NULL),
  -- #0474 Porygon-Z - Black - External Trade
  (474, 47400, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0474 Porygon-Z - White - Evolution
  (474, 47400, 11, 18, 7, 'Trade evolution from an available source Pokémon in Black/White.'),
  -- #0475 Gallade - Black - External Trade
  (475, 47500, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0475 Gallade - White - Evolution
  (475, 47500, 11, 18, 7, NULL),
  -- #0476 Probopass - Evolution
  (476, 47600, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0477 Dusknoir - Evolution
  (477, 47700, 11, NULL, 7, 'Requires trade evolution from a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0478 Froslass - Evolution
  (478, 47800, 11, NULL, 7, 'Requires evolving a Dream World source Pokémon; online Global Link service is no longer available.'),
  -- #0479 Rotom - In-Game Trade
  (479, 47900, 11, NULL, 5, 'In-game trade source for Rotom in Black/White.'),
  -- #0480 Uxie - Transfer Only
  (480, 48000, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0481 Mesprit - Transfer Only
  (481, 48100, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0482 Azelf - Transfer Only
  (482, 48200, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0483 Dialga - Transfer Only
  (483, 48300, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0484 Palkia - Transfer Only
  (484, 48400, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0485 Heatran - Transfer Only
  (485, 48500, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0486 Regigigas - Transfer Only
  (486, 48600, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0487 Giratina - Transfer Only
  (487, 48700, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0487 Giratina (Origin) - Transfer Only
  (487, 48701, 11, NULL, 13, 'Requires transferred/imported Giratina and Griseous Orb access from the Shadow Triad in Black/White.'),
  -- #0488 Cresselia - Transfer Only
  (488, 48800, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0489 Phione - Breeding
  (489, 48900, 11, NULL, 8, 'Breed Manaphy with Ditto; requires transferred Manaphy or historical official distribution source.'),
  -- #0490 Manaphy - Transfer Only
  (490, 49000, 11, NULL, 13, 'Not obtainable through normal Black/White gameplay; requires Poke Transfer, compatible external source, or historical official distribution.'),
  -- #0491 Darkrai - Event
  (491, 49100, 11, NULL, 11, 'Mythical Pokémon source; requires compatible transfer or historical official distribution.'),
  -- #0492 Shaymin - Event
  (492, 49200, 11, NULL, 11, 'Mythical Pokémon source; requires compatible transfer or historical official distribution.'),
  -- #0493 Arceus - Event
  (493, 49300, 11, NULL, 11, 'Mythical Pokémon source; requires compatible transfer or historical official distribution.'),
  -- #0493 Arceus (Fighting) - Event
  (493, 49301, 11, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Black/White.'),
  -- #0493 Arceus (Flying) - Event
  (493, 49302, 11, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Black/White.'),
  -- #0493 Arceus (Poison) - Event
  (493, 49303, 11, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Black/White.'),
  -- #0493 Arceus (Ground) - Event
  (493, 49304, 11, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Black/White.'),
  -- #0493 Arceus (Rock) - Event
  (493, 49305, 11, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Black/White.'),
  -- #0493 Arceus (Bug) - Event
  (493, 49306, 11, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Black/White.'),
  -- #0493 Arceus (Ghost) - Event
  (493, 49307, 11, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Black/White.'),
  -- #0493 Arceus (Steel) - Event
  (493, 49308, 11, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Black/White.'),
  -- #0493 Arceus (Fire) - Event
  (493, 49309, 11, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Black/White.'),
  -- #0493 Arceus (Water) - Event
  (493, 49310, 11, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Black/White.'),
  -- #0493 Arceus (Grass) - Event
  (493, 49311, 11, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Black/White.'),
  -- #0493 Arceus (Electric) - Event
  (493, 49312, 11, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Black/White.'),
  -- #0493 Arceus (Psychic) - Event
  (493, 49313, 11, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Black/White.'),
  -- #0493 Arceus (Ice) - Event
  (493, 49314, 11, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Black/White.'),
  -- #0493 Arceus (Dragon) - Event
  (493, 49315, 11, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Black/White.'),
  -- #0493 Arceus (Dark) - Event
  (493, 49316, 11, NULL, 11, 'Requires event/distribution Arceus and Plate item access in Black/White.'),
  -- #0494 Victini - Event
  (494, 49400, 11, NULL, 11, 'Liberty Pass event-unlocked Liberty Garden encounter.'),
  -- #0495 Snivy - Starter
  (495, 49500, 11, NULL, 3, NULL),
  -- #0496 Servine - Evolution
  (496, 49600, 11, NULL, 7, NULL),
  -- #0497 Serperior - Evolution
  (497, 49700, 11, NULL, 7, NULL),
  -- #0498 Tepig - Starter
  (498, 49800, 11, NULL, 3, NULL),
  -- #0499 Pignite - Evolution
  (499, 49900, 11, NULL, 7, NULL),
  -- #0500 Emboar - Evolution
  (500, 50000, 11, NULL, 7, NULL),
  -- #0501 Oshawott - Starter
  (501, 50100, 11, NULL, 3, NULL),
  -- #0502 Dewott - Evolution
  (502, 50200, 11, NULL, 7, NULL),
  -- #0503 Samurott - Evolution
  (503, 50300, 11, NULL, 7, NULL),
  -- #0504 Patrat - Native Encounter
  (504, 50400, 11, NULL, 1, NULL),
  -- #0505 Watchog - Native Encounter
  (505, 50500, 11, NULL, 1, NULL),
  -- #0506 Lillipup - Native Encounter
  (506, 50600, 11, NULL, 1, NULL),
  -- #0507 Herdier - Native Encounter
  (507, 50700, 11, NULL, 1, NULL),
  -- #0508 Stoutland - Native Encounter
  (508, 50800, 11, NULL, 1, NULL),
  -- #0509 Purrloin - Native Encounter
  (509, 50900, 11, NULL, 1, NULL),
  -- #0510 Liepard - Native Encounter
  (510, 51000, 11, NULL, 1, NULL),
  -- #0511 Pansage - Native Encounter
  (511, 51100, 11, NULL, 1, NULL),
  -- #0512 Simisage - Evolution
  (512, 51200, 11, NULL, 7, NULL),
  -- #0513 Pansear - Native Encounter
  (513, 51300, 11, NULL, 1, NULL),
  -- #0514 Simisear - Evolution
  (514, 51400, 11, NULL, 7, NULL),
  -- #0515 Panpour - Native Encounter
  (515, 51500, 11, NULL, 1, NULL),
  -- #0516 Simipour - Evolution
  (516, 51600, 11, NULL, 7, NULL),
  -- #0517 Munna - Native Encounter
  (517, 51700, 11, NULL, 1, NULL),
  -- #0518 Musharna - Native Encounter
  (518, 51800, 11, NULL, 1, NULL),
  -- #0519 Pidove - Native Encounter
  (519, 51900, 11, NULL, 1, NULL),
  -- #0520 Tranquill - Native Encounter
  (520, 52000, 11, NULL, 1, NULL),
  -- #0521 Unfezant - Native Encounter
  (521, 52100, 11, NULL, 1, NULL),
  -- #0522 Blitzle - Native Encounter
  (522, 52200, 11, NULL, 1, NULL),
  -- #0523 Zebstrika - Native Encounter
  (523, 52300, 11, NULL, 1, NULL),
  -- #0524 Roggenrola - Native Encounter
  (524, 52400, 11, NULL, 1, NULL),
  -- #0525 Boldore - Native Encounter
  (525, 52500, 11, NULL, 1, NULL),
  -- #0526 Gigalith - Evolution
  (526, 52600, 11, NULL, 7, 'Trade evolution from an available source Pokémon in Black/White.'),
  -- #0527 Woobat - Native Encounter
  (527, 52700, 11, NULL, 1, NULL),
  -- #0528 Swoobat - Evolution
  (528, 52800, 11, NULL, 7, NULL),
  -- #0529 Drilbur - Native Encounter
  (529, 52900, 11, NULL, 1, NULL),
  -- #0530 Excadrill - Native Encounter
  (530, 53000, 11, NULL, 1, NULL),
  -- #0531 Audino - Native Encounter
  (531, 53100, 11, NULL, 1, NULL),
  -- #0532 Timburr - Native Encounter
  (532, 53200, 11, NULL, 1, NULL),
  -- #0533 Gurdurr - Native Encounter
  (533, 53300, 11, NULL, 1, NULL),
  -- #0534 Conkeldurr - Evolution
  (534, 53400, 11, NULL, 7, 'Trade evolution from an available source Pokémon in Black/White.'),
  -- #0535 Tympole - Native Encounter
  (535, 53500, 11, NULL, 1, NULL),
  -- #0536 Palpitoad - Native Encounter
  (536, 53600, 11, NULL, 1, NULL),
  -- #0537 Seismitoad - Native Encounter
  (537, 53700, 11, NULL, 1, NULL),
  -- #0538 Throh - Native Encounter
  (538, 53800, 11, NULL, 1, NULL),
  -- #0539 Sawk - Native Encounter
  (539, 53900, 11, NULL, 1, NULL),
  -- #0540 Sewaddle - Native Encounter
  (540, 54000, 11, NULL, 1, NULL),
  -- #0541 Swadloon - Native Encounter
  (541, 54100, 11, NULL, 1, NULL),
  -- #0542 Leavanny - Native Encounter
  (542, 54200, 11, NULL, 1, NULL),
  -- #0543 Venipede - Native Encounter
  (543, 54300, 11, NULL, 1, NULL),
  -- #0544 Whirlipede - Native Encounter
  (544, 54400, 11, NULL, 1, NULL),
  -- #0545 Scolipede - Evolution
  (545, 54500, 11, NULL, 7, NULL),
  -- #0546 Cottonee - Black - Native Encounter
  (546, 54600, 11, 17, 1, NULL),
  -- #0546 Cottonee - White - In-Game Trade
  (546, 54600, 11, 18, 5, 'Nacrene City in-game trade source for Cottonee in White.'),
  -- #0547 Whimsicott - Black - Native Encounter
  (547, 54700, 11, 17, 1, NULL),
  -- #0547 Whimsicott - White - Evolution
  (547, 54700, 11, 18, 7, NULL),
  -- #0548 Petilil - Black - In-Game Trade
  (548, 54800, 11, 17, 5, 'Nacrene City in-game trade source for Petilil in Black.'),
  -- #0548 Petilil - White - Native Encounter
  (548, 54800, 11, 18, 1, NULL),
  -- #0549 Lilligant - Black - Evolution
  (549, 54900, 11, 17, 7, NULL),
  -- #0549 Lilligant - White - Native Encounter
  (549, 54900, 11, 18, 1, NULL),
  -- #0550 Basculin - Native Encounter
  (550, 55000, 11, NULL, 1, 'Red-Striped Basculin is the default Voydex form; form rates and in-game trade availability differ by version.'),
  -- #0550 Basculin (Blue-Striped) - Native Encounter
  (550, 55001, 11, NULL, 1, 'Blue-Striped Basculin is obtainable in Black/White; form rates and in-game trade availability differ by version.'),
  -- #0551 Sandile - Native Encounter
  (551, 55100, 11, NULL, 1, NULL),
  -- #0552 Krokorok - Native Encounter
  (552, 55200, 11, NULL, 1, NULL),
  -- #0553 Krookodile - Evolution
  (553, 55300, 11, NULL, 7, NULL),
  -- #0554 Darumaka - Native Encounter
  (554, 55400, 11, NULL, 1, NULL),
  -- #0555 Darmanitan - Native Encounter
  (555, 55500, 11, NULL, 1, NULL),
  -- #0556 Maractus - Native Encounter
  (556, 55600, 11, NULL, 1, NULL),
  -- #0557 Dwebble - Native Encounter
  (557, 55700, 11, NULL, 1, NULL),
  -- #0558 Crustle - Native Encounter
  (558, 55800, 11, NULL, 1, NULL),
  -- #0559 Scraggy - Native Encounter
  (559, 55900, 11, NULL, 1, NULL),
  -- #0560 Scrafty - Evolution
  (560, 56000, 11, NULL, 7, NULL),
  -- #0561 Sigilyph - Native Encounter
  (561, 56100, 11, NULL, 1, NULL),
  -- #0562 Yamask - Native Encounter
  (562, 56200, 11, NULL, 1, NULL),
  -- #0563 Cofagrigus - Native Encounter
  (563, 56300, 11, NULL, 1, NULL),
  -- #0564 Tirtouga - Fossil Restoration
  (564, 56400, 11, NULL, 6, 'Cover Fossil restored from in-game fossil choice.'),
  -- #0565 Carracosta - Evolution
  (565, 56500, 11, NULL, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0566 Archen - Fossil Restoration
  (566, 56600, 11, NULL, 6, 'Plume Fossil restored from in-game fossil choice.'),
  -- #0567 Archeops - Evolution
  (567, 56700, 11, NULL, 7, 'Evolves from a fossil-restored source Pokémon.'),
  -- #0568 Trubbish - Native Encounter
  (568, 56800, 11, NULL, 1, NULL),
  -- #0569 Garbodor - Native Encounter
  (569, 56900, 11, NULL, 1, NULL),
  -- #0570 Zorua - Event
  (570, 57000, 11, NULL, 11, 'Castelia City event gift requiring transferred Celebi.'),
  -- #0571 Zoroark - Event
  (571, 57100, 11, NULL, 11, 'Lostlorn Forest event encounter requiring transferred shiny Legendary Beast.'),
  -- #0572 Minccino - Native Encounter
  (572, 57200, 11, NULL, 1, NULL),
  -- #0573 Cinccino - Native Encounter
  (573, 57300, 11, NULL, 1, NULL),
  -- #0574 Gothita - Black - Native Encounter
  (574, 57400, 11, 17, 1, NULL),
  -- #0574 Gothita - White - External Trade
  (574, 57400, 11, 18, 12, 'Version source is Black; available in White by trade or compatible external transfer.'),
  -- #0575 Gothorita - Black - Native Encounter
  (575, 57500, 11, 17, 1, NULL),
  -- #0575 Gothorita - White - External Trade
  (575, 57500, 11, 18, 12, 'Version source is Black; available in White by trade or compatible external transfer.'),
  -- #0576 Gothitelle - Black - Native Encounter
  (576, 57600, 11, 17, 1, NULL),
  -- #0576 Gothitelle - White - External Trade
  (576, 57600, 11, 18, 12, 'Version source is Black; available in White by trade or compatible external transfer.'),
  -- #0577 Solosis - Black - External Trade
  (577, 57700, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0577 Solosis - White - Native Encounter
  (577, 57700, 11, 18, 1, NULL),
  -- #0578 Duosion - Black - External Trade
  (578, 57800, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0578 Duosion - White - Native Encounter
  (578, 57800, 11, 18, 1, NULL),
  -- #0579 Reuniclus - Black - External Trade
  (579, 57900, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0579 Reuniclus - White - Native Encounter
  (579, 57900, 11, 18, 1, NULL),
  -- #0580 Ducklett - Native Encounter
  (580, 58000, 11, NULL, 1, NULL),
  -- #0581 Swanna - Native Encounter
  (581, 58100, 11, NULL, 1, NULL),
  -- #0582 Vanillite - Native Encounter
  (582, 58200, 11, NULL, 1, NULL),
  -- #0583 Vanillish - Native Encounter
  (583, 58300, 11, NULL, 1, NULL),
  -- #0584 Vanilluxe - Evolution
  (584, 58400, 11, NULL, 7, NULL),
  -- #0585 Deerling - Native Encounter
  (585, 58500, 11, NULL, 1, NULL),
  -- #0586 Sawsbuck - Native Encounter
  (586, 58600, 11, NULL, 1, NULL),
  -- #0587 Emolga - Native Encounter
  (587, 58700, 11, NULL, 1, NULL),
  -- #0588 Karrablast - Native Encounter
  (588, 58800, 11, NULL, 1, NULL),
  -- #0589 Escavalier - Evolution
  (589, 58900, 11, NULL, 7, 'Trade evolution from an available source Pokémon in Black/White.'),
  -- #0590 Foongus - Native Encounter
  (590, 59000, 11, NULL, 1, NULL),
  -- #0591 Amoonguss - Native Encounter
  (591, 59100, 11, NULL, 1, NULL),
  -- #0592 Frillish - Native Encounter
  (592, 59200, 11, NULL, 1, NULL),
  -- #0593 Jellicent - Native Encounter
  (593, 59300, 11, NULL, 1, NULL),
  -- #0594 Alomomola - Native Encounter
  (594, 59400, 11, NULL, 1, NULL),
  -- #0595 Joltik - Native Encounter
  (595, 59500, 11, NULL, 1, NULL),
  -- #0596 Galvantula - Evolution
  (596, 59600, 11, NULL, 7, NULL),
  -- #0597 Ferroseed - Native Encounter
  (597, 59700, 11, NULL, 1, NULL),
  -- #0598 Ferrothorn - Evolution
  (598, 59800, 11, NULL, 7, NULL),
  -- #0599 Klink - Native Encounter
  (599, 59900, 11, NULL, 1, NULL),
  -- #0600 Klang - Evolution
  (600, 60000, 11, NULL, 7, NULL),
  -- #0601 Klinklang - Evolution
  (601, 60100, 11, NULL, 7, NULL),
  -- #0602 Tynamo - Native Encounter
  (602, 60200, 11, NULL, 1, NULL),
  -- #0603 Eelektrik - Evolution
  (603, 60300, 11, NULL, 7, NULL),
  -- #0604 Eelektross - Evolution
  (604, 60400, 11, NULL, 7, NULL),
  -- #0605 Elgyem - Native Encounter
  (605, 60500, 11, NULL, 1, NULL),
  -- #0606 Beheeyem - Native Encounter
  (606, 60600, 11, NULL, 1, NULL),
  -- #0607 Litwick - Native Encounter
  (607, 60700, 11, NULL, 1, NULL),
  -- #0608 Lampent - Evolution
  (608, 60800, 11, NULL, 7, NULL),
  -- #0609 Chandelure - Evolution
  (609, 60900, 11, NULL, 7, NULL),
  -- #0610 Axew - Native Encounter
  (610, 61000, 11, NULL, 1, NULL),
  -- #0611 Fraxure - Native Encounter
  (611, 61100, 11, NULL, 1, NULL),
  -- #0612 Haxorus - Evolution
  (612, 61200, 11, NULL, 7, NULL),
  -- #0613 Cubchoo - Native Encounter
  (613, 61300, 11, NULL, 1, NULL),
  -- #0614 Beartic - Native Encounter
  (614, 61400, 11, NULL, 1, NULL),
  -- #0615 Cryogonal - Native Encounter
  (615, 61500, 11, NULL, 1, NULL),
  -- #0616 Shelmet - Native Encounter
  (616, 61600, 11, NULL, 1, NULL),
  -- #0617 Accelgor - Evolution
  (617, 61700, 11, NULL, 7, 'Trade evolution from an available source Pokémon in Black/White.'),
  -- #0618 Stunfisk - Native Encounter
  (618, 61800, 11, NULL, 1, NULL),
  -- #0619 Mienfoo - Native Encounter
  (619, 61900, 11, NULL, 1, NULL),
  -- #0620 Mienshao - Native Encounter
  (620, 62000, 11, NULL, 1, NULL),
  -- #0621 Druddigon - Native Encounter
  (621, 62100, 11, NULL, 1, NULL),
  -- #0622 Golett - Native Encounter
  (622, 62200, 11, NULL, 1, NULL),
  -- #0623 Golurk - Evolution
  (623, 62300, 11, NULL, 7, NULL),
  -- #0624 Pawniard - Native Encounter
  (624, 62400, 11, NULL, 1, NULL),
  -- #0625 Bisharp - Native Encounter
  (625, 62500, 11, NULL, 1, NULL),
  -- #0626 Bouffalant - Native Encounter
  (626, 62600, 11, NULL, 1, NULL),
  -- #0627 Rufflet - Black - External Trade
  (627, 62700, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0627 Rufflet - White - Native Encounter
  (627, 62700, 11, 18, 1, NULL),
  -- #0628 Braviary - Black - External Trade
  (628, 62800, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0628 Braviary - White - Native Encounter
  (628, 62800, 11, 18, 1, NULL),
  -- #0629 Vullaby - Black - Native Encounter
  (629, 62900, 11, 17, 1, NULL),
  -- #0629 Vullaby - White - External Trade
  (629, 62900, 11, 18, 12, 'Version source is Black; available in White by trade or compatible external transfer.'),
  -- #0630 Mandibuzz - Black - Native Encounter
  (630, 63000, 11, 17, 1, NULL),
  -- #0630 Mandibuzz - White - External Trade
  (630, 63000, 11, 18, 12, 'Version source is Black; available in White by trade or compatible external transfer.'),
  -- #0631 Heatmor - Native Encounter
  (631, 63100, 11, NULL, 1, NULL),
  -- #0632 Durant - Native Encounter
  (632, 63200, 11, NULL, 1, NULL),
  -- #0633 Deino - Native Encounter
  (633, 63300, 11, NULL, 1, NULL),
  -- #0634 Zweilous - Evolution
  (634, 63400, 11, NULL, 7, NULL),
  -- #0635 Hydreigon - Evolution
  (635, 63500, 11, NULL, 7, NULL),
  -- #0636 Larvesta - Gift
  (636, 63600, 11, NULL, 4, 'Route 18 Egg gift from NPC.'),
  -- #0637 Volcarona - Native Encounter
  (637, 63700, 11, NULL, 1, NULL),
  -- #0638 Cobalion - Native Encounter
  (638, 63800, 11, NULL, 1, NULL),
  -- #0639 Terrakion - Native Encounter
  (639, 63900, 11, NULL, 1, NULL),
  -- #0640 Virizion - Native Encounter
  (640, 64000, 11, NULL, 1, NULL),
  -- #0641 Tornadus - Black - Roaming Encounter
  (641, 64100, 11, 17, 9, 'Roaming encounter in Black after the Route 7 weather event.'),
  -- #0641 Tornadus - White - External Trade
  (641, 64100, 11, 18, 12, 'Version source is Black; available in White by trade or compatible external transfer.'),
  -- #0642 Thundurus - Black - External Trade
  (642, 64200, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0642 Thundurus - White - Roaming Encounter
  (642, 64200, 11, 18, 9, 'Roaming encounter in White after the Route 7 weather event.'),
  -- #0643 Reshiram - Black - Static Encounter
  (643, 64300, 11, 17, 2, 'N Castle static story encounter in Black.'),
  -- #0643 Reshiram - White - External Trade
  (643, 64300, 11, 18, 12, 'Version source is Black; available in White by trade or compatible external transfer.'),
  -- #0644 Zekrom - Black - External Trade
  (644, 64400, 11, 17, 12, 'Version source is White; available in Black by trade or compatible external transfer.'),
  -- #0644 Zekrom - White - Static Encounter
  (644, 64400, 11, 18, 2, 'N Castle static story encounter in White.'),
  -- #0645 Landorus - Static Encounter
  (645, 64500, 11, NULL, 2, 'Abundant Shrine static encounter requiring Tornadus and Thundurus in the party.'),
  -- #0646 Kyurem - Static Encounter
  (646, 64600, 11, NULL, 2, 'Giant Chasm static encounter.'),
  -- #0647 Keldeo - Event
  (647, 64700, 11, NULL, 11, 'Event/distribution-only in Generation V; not obtainable through normal Black/White gameplay.'),
  -- #0648 Meloetta - Event
  (648, 64800, 11, NULL, 11, 'Event/distribution-only in Generation V; not obtainable through normal Black/White gameplay.'),
  -- #0649 Genesect - Event
  (649, 64900, 11, NULL, 11, 'Event/distribution-only in Generation V; not obtainable through normal Black/White gameplay.'),
  -- #0649 Genesect (Douse Drive) - White - Event
  (649, 64901, 11, 18, 11, 'Requires event/distribution Genesect; Douse Drive and Chill Drive are obtained at P2 Laboratory in White.'),
  -- #0649 Genesect (Douse Drive) - Black - External Trade
  (649, 64901, 11, 17, 12, 'White Drive source; available in Black only by receiving the matching Drive item from a compatible trade.'),
  -- #0649 Genesect (Shock Drive) - Black - Event
  (649, 64902, 11, 17, 11, 'Requires event/distribution Genesect; Burn Drive and Shock Drive are obtained at P2 Laboratory in Black.'),
  -- #0649 Genesect (Shock Drive) - White - External Trade
  (649, 64902, 11, 18, 12, 'Black Drive source; available in White only by receiving the matching Drive item from a compatible trade.'),
  -- #0649 Genesect (Burn Drive) - Black - Event
  (649, 64903, 11, 17, 11, 'Requires event/distribution Genesect; Burn Drive and Shock Drive are obtained at P2 Laboratory in Black.'),
  -- #0649 Genesect (Burn Drive) - White - External Trade
  (649, 64903, 11, 18, 12, 'Black Drive source; available in White only by receiving the matching Drive item from a compatible trade.'),
  -- #0649 Genesect (Chill Drive) - White - Event
  (649, 64904, 11, 18, 11, 'Requires event/distribution Genesect; Douse Drive and Chill Drive are obtained at P2 Laboratory in White.'),
  -- #0649 Genesect (Chill Drive) - Black - External Trade
  (649, 64904, 11, 17, 12, 'White Drive source; available in Black only by receiving the matching Drive item from a compatible trade.');
