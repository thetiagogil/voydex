-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by availability and Sun/Moon availability notes.
-- Cross-check: PokemonDB Sun/Moon version exclusives, Serebii Sun/Moon version exclusives, Bulbapedia Island Scan, QR Scanner, in-game trade, gift, and form pages.
-- Scope note: primary availability method per obtainable form; external-source rows preserve compatible-game usability for planning.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Sun / Moon
-- Table: reference.pokemon_availability
-- Scope: 928 rows; Sun/Moon-compatible species are represented, with game-specific rows for version sources and curated persistent form rows for Alolan forms, Basculin, Meowstic, Arceus Plates, Deoxys, Rotom, Giratina, Shaymin, Therian forms, Kyurem fusions, Genesect Drives, Zygarde 10%, Oricorio, Lycanroc Midnight, and Silvally Memories.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0001 Bulbasaur - Transfer Only
  (1, 100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0002 Ivysaur - Transfer Only
  (2, 200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0003 Venusaur - Transfer Only
  (3, 300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0004 Charmander - Breeding
  (4, 400, 15, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0005 Charmeleon - Breeding
  (5, 500, 15, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0006 Charizard - Event
  (6, 600, 15, NULL, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0007 Squirtle - Transfer Only
  (7, 700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0008 Wartortle - Transfer Only
  (8, 800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0009 Blastoise - Transfer Only
  (9, 900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0010 Caterpie - Native Encounter
  (10, 1000, 15, NULL, 1, NULL),
  -- #0011 Metapod - Native Encounter
  (11, 1100, 15, NULL, 1, NULL),
  -- #0012 Butterfree - Native Encounter
  (12, 1200, 15, NULL, 1, NULL),
  -- #0013 Weedle - Transfer Only
  (13, 1300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0014 Kakuna - Transfer Only
  (14, 1400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0015 Beedrill - Transfer Only
  (15, 1500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0016 Pidgey - Transfer Only
  (16, 1600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0017 Pidgeotto - Transfer Only
  (17, 1700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0018 Pidgeot - Transfer Only
  (18, 1800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0019 Rattata - Transfer Only
  (19, 1900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0019 Alolan Rattata - Native Encounter
  (19, 1901, 15, NULL, 1, NULL),
  -- #0020 Raticate - Transfer Only
  (20, 2000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0020 Alolan Raticate - Native Encounter
  (20, 2001, 15, NULL, 1, NULL),
  -- #0021 Spearow - Native Encounter
  (21, 2100, 15, NULL, 1, NULL),
  -- #0022 Fearow - Native Encounter
  (22, 2200, 15, NULL, 1, NULL),
  -- #0023 Ekans - Transfer Only
  (23, 2300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0024 Arbok - Transfer Only
  (24, 2400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0025 Pikachu - Native Encounter
  (25, 2500, 15, NULL, 1, NULL),
  -- #0026 Raichu - Transfer Only
  (26, 2600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0026 Alolan Raichu - Evolution
  (26, 2601, 15, NULL, 7, NULL),
  -- #0027 Sandshrew - Transfer Only
  (27, 2700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0027 Alolan Sandshrew - Sun - External Trade
  (27, 2701, 15, 25, 12, 'Version source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0027 Alolan Sandshrew - Moon - Native Encounter
  (27, 2701, 15, 26, 1, NULL),
  -- #0028 Sandslash - Transfer Only
  (28, 2800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0028 Alolan Sandslash - Sun - External Trade
  (28, 2801, 15, 25, 12, 'Version source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0028 Alolan Sandslash - Moon - Evolution
  (28, 2801, 15, 26, 7, NULL),
  -- #0029 Nidoran F - Transfer Only
  (29, 2900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0030 Nidorina - Transfer Only
  (30, 3000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0031 Nidoqueen - Transfer Only
  (31, 3100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0032 Nidoran M - Transfer Only
  (32, 3200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0033 Nidorino - Transfer Only
  (33, 3300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0034 Nidoking - Transfer Only
  (34, 3400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0035 Clefairy - Native Encounter
  (35, 3500, 15, NULL, 1, NULL),
  -- #0036 Clefable - Evolution
  (36, 3600, 15, NULL, 7, NULL),
  -- #0037 Vulpix - Transfer Only
  (37, 3700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0037 Alolan Vulpix - Sun - Native Encounter
  (37, 3701, 15, 25, 1, NULL),
  -- #0037 Alolan Vulpix - Moon - External Trade
  (37, 3701, 15, 26, 12, 'Version source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0038 Ninetales - Transfer Only
  (38, 3800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0038 Alolan Ninetales - Sun - Evolution
  (38, 3801, 15, 25, 7, NULL),
  -- #0038 Alolan Ninetales - Moon - External Trade
  (38, 3801, 15, 26, 12, 'Version source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0039 Jigglypuff - Native Encounter
  (39, 3900, 15, NULL, 1, NULL),
  -- #0040 Wigglytuff - Evolution
  (40, 4000, 15, NULL, 7, NULL),
  -- #0041 Zubat - Native Encounter
  (41, 4100, 15, NULL, 1, NULL),
  -- #0042 Golbat - Native Encounter
  (42, 4200, 15, NULL, 1, NULL),
  -- #0043 Oddish - Transfer Only
  (43, 4300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0044 Gloom - Transfer Only
  (44, 4400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0045 Vileplume - Transfer Only
  (45, 4500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0046 Paras - Native Encounter
  (46, 4600, 15, NULL, 1, NULL),
  -- #0047 Parasect - Evolution
  (47, 4700, 15, NULL, 7, NULL),
  -- #0048 Venonat - Transfer Only
  (48, 4800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0049 Venomoth - Transfer Only
  (49, 4900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0050 Diglett - Transfer Only
  (50, 5000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0050 Alolan Diglett - Native Encounter
  (50, 5001, 15, NULL, 1, NULL),
  -- #0051 Dugtrio - Transfer Only
  (51, 5100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0051 Alolan Dugtrio - Native Encounter
  (51, 5101, 15, NULL, 1, NULL),
  -- #0052 Meowth - Transfer Only
  (52, 5200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0052 Alolan Meowth - Native Encounter
  (52, 5201, 15, NULL, 1, NULL),
  -- #0053 Persian - Transfer Only
  (53, 5300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0053 Alolan Persian - Evolution
  (53, 5301, 15, NULL, 7, NULL),
  -- #0054 Psyduck - Native Encounter
  (54, 5400, 15, NULL, 1, NULL),
  -- #0055 Golduck - Native Encounter
  (55, 5500, 15, NULL, 1, NULL),
  -- #0056 Mankey - Native Encounter
  (56, 5600, 15, NULL, 1, NULL),
  -- #0057 Primeape - Native Encounter
  (57, 5700, 15, NULL, 1, NULL),
  -- #0058 Growlithe - Native Encounter
  (58, 5800, 15, NULL, 1, NULL),
  -- #0059 Arcanine - Evolution
  (59, 5900, 15, NULL, 7, NULL),
  -- #0060 Poliwag - Native Encounter
  (60, 6000, 15, NULL, 1, NULL),
  -- #0061 Poliwhirl - In-Game Trade
  (61, 6100, 15, NULL, 5, 'NPC in-game trade source in Sun/Moon.'),
  -- #0062 Poliwrath - Native Encounter
  (62, 6200, 15, NULL, 1, NULL),
  -- #0063 Abra - Native Encounter
  (63, 6300, 15, NULL, 1, NULL),
  -- #0064 Kadabra - Native Encounter
  (64, 6400, 15, NULL, 1, NULL),
  -- #0065 Alakazam - Evolution
  (65, 6500, 15, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0066 Machop - Native Encounter
  (66, 6600, 15, NULL, 1, NULL),
  -- #0067 Machoke - Native Encounter
  (67, 6700, 15, NULL, 1, NULL),
  -- #0068 Machamp - Evolution
  (68, 6800, 15, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0069 Bellsprout - Raid or Special Encounter
  (69, 6900, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0070 Weepinbell - Evolution
  (70, 7000, 15, NULL, 7, NULL),
  -- #0071 Victreebel - Evolution
  (71, 7100, 15, NULL, 7, NULL),
  -- #0072 Tentacool - Native Encounter
  (72, 7200, 15, NULL, 1, NULL),
  -- #0073 Tentacruel - Native Encounter
  (73, 7300, 15, NULL, 1, NULL),
  -- #0074 Geodude - Transfer Only
  (74, 7400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0074 Alolan Geodude - Native Encounter
  (74, 7401, 15, NULL, 1, NULL),
  -- #0075 Graveler - Transfer Only
  (75, 7500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0075 Alolan Graveler - Native Encounter
  (75, 7501, 15, NULL, 1, NULL),
  -- #0076 Golem - Transfer Only
  (76, 7600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0076 Alolan Golem - In-Game Trade
  (76, 7601, 15, NULL, 5, 'NPC in-game trade source in Sun/Moon.'),
  -- #0077 Ponyta - Transfer Only
  (77, 7700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0078 Rapidash - Transfer Only
  (78, 7800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0079 Slowpoke - Native Encounter
  (79, 7900, 15, NULL, 1, NULL),
  -- #0080 Slowbro - Native Encounter
  (80, 8000, 15, NULL, 1, NULL),
  -- #0081 Magnemite - Native Encounter
  (81, 8100, 15, NULL, 1, NULL),
  -- #0082 Magneton - Evolution
  (82, 8200, 15, NULL, 7, NULL),
  -- #0083 Farfetch'd - Transfer Only
  (83, 8300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0084 Doduo - Transfer Only
  (84, 8400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0085 Dodrio - Transfer Only
  (85, 8500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0086 Seel - Transfer Only
  (86, 8600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0087 Dewgong - Transfer Only
  (87, 8700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0088 Grimer - Transfer Only
  (88, 8800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0088 Alolan Grimer - Native Encounter
  (88, 8801, 15, NULL, 1, NULL),
  -- #0089 Muk - Transfer Only
  (89, 8900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0089 Alolan Muk - Evolution
  (89, 8901, 15, NULL, 7, NULL),
  -- #0090 Shellder - Native Encounter
  (90, 9000, 15, NULL, 1, NULL),
  -- #0091 Cloyster - Evolution
  (91, 9100, 15, NULL, 7, NULL),
  -- #0092 Gastly - Native Encounter
  (92, 9200, 15, NULL, 1, NULL),
  -- #0093 Haunter - Native Encounter
  (93, 9300, 15, NULL, 1, NULL),
  -- #0094 Gengar - Native Encounter
  (94, 9400, 15, NULL, 1, NULL),
  -- #0095 Onix - Transfer Only
  (95, 9500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0096 Drowzee - Native Encounter
  (96, 9600, 15, NULL, 1, NULL),
  -- #0097 Hypno - Native Encounter
  (97, 9700, 15, NULL, 1, NULL),
  -- #0098 Krabby - Transfer Only
  (98, 9800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0099 Kingler - Transfer Only
  (99, 9900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0100 Voltorb - Transfer Only
  (100, 10000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0101 Electrode - Transfer Only
  (101, 10100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0102 Exeggcute - Native Encounter
  (102, 10200, 15, NULL, 1, NULL),
  -- #0103 Exeggutor - Transfer Only
  (103, 10300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0103 Alolan Exeggutor - Native Encounter
  (103, 10301, 15, NULL, 1, NULL),
  -- #0104 Cubone - Native Encounter
  (104, 10400, 15, NULL, 1, NULL),
  -- #0105 Marowak - Transfer Only
  (105, 10500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0105 Alolan Marowak - Evolution
  (105, 10501, 15, NULL, 7, NULL),
  -- #0106 Hitmonlee - Transfer Only
  (106, 10600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0107 Hitmonchan - Transfer Only
  (107, 10700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0108 Lickitung - Transfer Only
  (108, 10800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0109 Koffing - Transfer Only
  (109, 10900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0110 Weezing - Transfer Only
  (110, 11000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0111 Rhyhorn - Raid or Special Encounter
  (111, 11100, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0112 Rhydon - Evolution
  (112, 11200, 15, NULL, 7, NULL),
  -- #0113 Chansey - Native Encounter
  (113, 11300, 15, NULL, 1, NULL),
  -- #0114 Tangela - Transfer Only
  (114, 11400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0115 Kangaskhan - Native Encounter
  (115, 11500, 15, NULL, 1, NULL),
  -- #0116 Horsea - Raid or Special Encounter
  (116, 11600, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0117 Seadra - Evolution
  (117, 11700, 15, NULL, 7, NULL),
  -- #0118 Goldeen - Native Encounter
  (118, 11800, 15, NULL, 1, NULL),
  -- #0119 Seaking - Native Encounter
  (119, 11900, 15, NULL, 1, NULL),
  -- #0120 Staryu - Native Encounter
  (120, 12000, 15, NULL, 1, NULL),
  -- #0121 Starmie - Native Encounter
  (121, 12100, 15, NULL, 1, NULL),
  -- #0122 Mr. Mime - Transfer Only
  (122, 12200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0123 Scyther - Native Encounter
  (123, 12300, 15, NULL, 1, NULL),
  -- #0124 Jynx - Transfer Only
  (124, 12400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0125 Electabuzz - Native Encounter
  (125, 12500, 15, NULL, 1, NULL),
  -- #0126 Magmar - Native Encounter
  (126, 12600, 15, NULL, 1, NULL),
  -- #0127 Pinsir - Native Encounter
  (127, 12700, 15, NULL, 1, NULL),
  -- #0128 Tauros - Native Encounter
  (128, 12800, 15, NULL, 1, NULL),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 15, NULL, 1, NULL),
  -- #0130 Gyarados - Native Encounter
  (130, 13000, 15, NULL, 1, NULL),
  -- #0131 Lapras - Native Encounter
  (131, 13100, 15, NULL, 1, NULL),
  -- #0132 Ditto - Native Encounter
  (132, 13200, 15, NULL, 1, NULL),
  -- #0133 Eevee - Native Encounter
  (133, 13300, 15, NULL, 1, NULL),
  -- #0134 Vaporeon - Evolution
  (134, 13400, 15, NULL, 7, NULL),
  -- #0135 Jolteon - Evolution
  (135, 13500, 15, NULL, 7, NULL),
  -- #0136 Flareon - Evolution
  (136, 13600, 15, NULL, 7, NULL),
  -- #0137 Porygon - Gift
  (137, 13700, 15, NULL, 4, 'Gift Porygon received from an Aether Foundation employee after entering the Hall of Fame in Sun/Moon.'),
  -- #0138 Omanyte - Transfer Only
  (138, 13800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0139 Omastar - Transfer Only
  (139, 13900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0140 Kabuto - Transfer Only
  (140, 14000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0141 Kabutops - Transfer Only
  (141, 14100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0142 Aerodactyl - Gift
  (142, 14200, 15, NULL, 4, 'Gift Aerodactyl received in Seafolk Village in Sun/Moon.'),
  -- #0143 Snorlax - Native Encounter
  (143, 14300, 15, NULL, 1, NULL),
  -- #0144 Articuno - Transfer Only
  (144, 14400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0145 Zapdos - Transfer Only
  (145, 14500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0146 Moltres - Transfer Only
  (146, 14600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0147 Dratini - Native Encounter
  (147, 14700, 15, NULL, 1, NULL),
  -- #0148 Dragonair - Native Encounter
  (148, 14800, 15, NULL, 1, NULL),
  -- #0149 Dragonite - Native Encounter
  (149, 14900, 15, NULL, 1, NULL),
  -- #0150 Mewtwo - Transfer Only
  (150, 15000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0151 Mew - Event
  (151, 15100, 15, NULL, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0152 Chikorita - Raid or Special Encounter
  (152, 15200, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0153 Bayleef - Evolution
  (153, 15300, 15, NULL, 7, NULL),
  -- #0154 Meganium - Evolution
  (154, 15400, 15, NULL, 7, NULL),
  -- #0155 Cyndaquil - Raid or Special Encounter
  (155, 15500, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0156 Quilava - Evolution
  (156, 15600, 15, NULL, 7, NULL),
  -- #0157 Typhlosion - Evolution
  (157, 15700, 15, NULL, 7, NULL),
  -- #0158 Totodile - Raid or Special Encounter
  (158, 15800, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0159 Croconaw - Evolution
  (159, 15900, 15, NULL, 7, NULL),
  -- #0160 Feraligatr - Evolution
  (160, 16000, 15, NULL, 7, NULL),
  -- #0161 Sentret - Transfer Only
  (161, 16100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0162 Furret - Transfer Only
  (162, 16200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0163 Hoothoot - Transfer Only
  (163, 16300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0164 Noctowl - Transfer Only
  (164, 16400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0165 Ledyba - Native Encounter
  (165, 16500, 15, NULL, 1, NULL),
  -- #0166 Ledian - Native Encounter
  (166, 16600, 15, NULL, 1, NULL),
  -- #0167 Spinarak - Native Encounter
  (167, 16700, 15, NULL, 1, NULL),
  -- #0168 Ariados - Native Encounter
  (168, 16800, 15, NULL, 1, NULL),
  -- #0169 Crobat - Native Encounter
  (169, 16900, 15, NULL, 1, NULL),
  -- #0170 Chinchou - Native Encounter
  (170, 17000, 15, NULL, 1, NULL),
  -- #0171 Lanturn - Evolution
  (171, 17100, 15, NULL, 7, NULL),
  -- #0172 Pichu - Native Encounter
  (172, 17200, 15, NULL, 1, NULL),
  -- #0173 Cleffa - Native Encounter
  (173, 17300, 15, NULL, 1, NULL),
  -- #0174 Igglybuff - Native Encounter
  (174, 17400, 15, NULL, 1, NULL),
  -- #0175 Togepi - Breeding
  (175, 17500, 15, NULL, 8, NULL),
  -- #0176 Togetic - Breeding
  (176, 17600, 15, NULL, 8, NULL),
  -- #0177 Natu - Transfer Only
  (177, 17700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0178 Xatu - Transfer Only
  (178, 17800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0179 Mareep - Transfer Only
  (179, 17900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0180 Flaaffy - Transfer Only
  (180, 18000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0181 Ampharos - Transfer Only
  (181, 18100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0182 Bellossom - Transfer Only
  (182, 18200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0183 Marill - Raid or Special Encounter
  (183, 18300, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0184 Azumarill - Evolution
  (184, 18400, 15, NULL, 7, NULL),
  -- #0185 Sudowoodo - Native Encounter
  (185, 18500, 15, NULL, 1, NULL),
  -- #0186 Politoed - Native Encounter
  (186, 18600, 15, NULL, 1, NULL),
  -- #0187 Hoppip - Transfer Only
  (187, 18700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0188 Skiploom - Transfer Only
  (188, 18800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0189 Jumpluff - Transfer Only
  (189, 18900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0190 Aipom - Transfer Only
  (190, 19000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0191 Sunkern - Transfer Only
  (191, 19100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0192 Sunflora - Transfer Only
  (192, 19200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0193 Yanma - Transfer Only
  (193, 19300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0194 Wooper - Transfer Only
  (194, 19400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0195 Quagsire - Transfer Only
  (195, 19500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0196 Espeon - Native Encounter
  (196, 19600, 15, NULL, 1, NULL),
  -- #0197 Umbreon - Native Encounter
  (197, 19700, 15, NULL, 1, NULL),
  -- #0198 Murkrow - Native Encounter
  (198, 19800, 15, NULL, 1, NULL),
  -- #0199 Slowking - Evolution
  (199, 19900, 15, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0200 Misdreavus - Native Encounter
  (200, 20000, 15, NULL, 1, NULL),
  -- #0201 Unown - Transfer Only
  (201, 20100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0202 Wobbuffet - Transfer Only
  (202, 20200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0203 Girafarig - Transfer Only
  (203, 20300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0204 Pineco - Transfer Only
  (204, 20400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0205 Forretress - Transfer Only
  (205, 20500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0206 Dunsparce - Transfer Only
  (206, 20600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0207 Gligar - Transfer Only
  (207, 20700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0208 Steelix - Transfer Only
  (208, 20800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0209 Snubbull - Breeding
  (209, 20900, 15, NULL, 8, NULL),
  -- #0210 Granbull - Native Encounter
  (210, 21000, 15, NULL, 1, NULL),
  -- #0211 Qwilfish - Transfer Only
  (211, 21100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0212 Scizor - Evolution
  (212, 21200, 15, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0213 Shuckle - Transfer Only
  (213, 21300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0214 Heracross - Transfer Only
  (214, 21400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0215 Sneasel - Native Encounter
  (215, 21500, 15, NULL, 1, NULL),
  -- #0216 Teddiursa - Transfer Only
  (216, 21600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0217 Ursaring - Transfer Only
  (217, 21700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0218 Slugma - Transfer Only
  (218, 21800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0219 Magcargo - Transfer Only
  (219, 21900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0220 Swinub - Raid or Special Encounter
  (220, 22000, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0221 Piloswine - Evolution
  (221, 22100, 15, NULL, 7, NULL),
  -- #0222 Corsola - Native Encounter
  (222, 22200, 15, NULL, 1, NULL),
  -- #0223 Remoraid - Transfer Only
  (223, 22300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0224 Octillery - Transfer Only
  (224, 22400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0225 Delibird - Native Encounter
  (225, 22500, 15, NULL, 1, NULL),
  -- #0226 Mantine - Transfer Only
  (226, 22600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0227 Skarmory - Native Encounter
  (227, 22700, 15, NULL, 1, NULL),
  -- #0228 Houndour - Transfer Only
  (228, 22800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0229 Houndoom - Transfer Only
  (229, 22900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0230 Kingdra - Evolution
  (230, 23000, 15, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0231 Phanpy - Transfer Only
  (231, 23100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0232 Donphan - Transfer Only
  (232, 23200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0233 Porygon2 - Evolution
  (233, 23300, 15, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0234 Stantler - Transfer Only
  (234, 23400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0235 Smeargle - Native Encounter
  (235, 23500, 15, NULL, 1, NULL),
  -- #0236 Tyrogue - Transfer Only
  (236, 23600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0237 Hitmontop - Transfer Only
  (237, 23700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0238 Smoochum - Transfer Only
  (238, 23800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0239 Elekid - Native Encounter
  (239, 23900, 15, NULL, 1, NULL),
  -- #0240 Magby - Native Encounter
  (240, 24000, 15, NULL, 1, NULL),
  -- #0241 Miltank - Native Encounter
  (241, 24100, 15, NULL, 1, NULL),
  -- #0242 Blissey - Evolution
  (242, 24200, 15, NULL, 7, NULL),
  -- #0243 Raikou - Sun - External Trade
  (243, 24300, 15, 25, 12, 'Official event/distribution source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0243 Raikou - Moon - Event
  (243, 24300, 15, 26, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0244 Entei - Sun - Event
  (244, 24400, 15, 25, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0244 Entei - Moon - External Trade
  (244, 24400, 15, 26, 12, 'Official event/distribution source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0245 Suicune - Transfer Only
  (245, 24500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0246 Larvitar - Transfer Only
  (246, 24600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0247 Pupitar - Transfer Only
  (247, 24700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0248 Tyranitar - Transfer Only
  (248, 24800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0249 Lugia - Event
  (249, 24900, 15, NULL, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0250 Ho-Oh - Event
  (250, 25000, 15, NULL, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0251 Celebi - Event
  (251, 25100, 15, NULL, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0252 Treecko - Transfer Only
  (252, 25200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0253 Grovyle - Transfer Only
  (253, 25300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0254 Sceptile - Transfer Only
  (254, 25400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0255 Torchic - Transfer Only
  (255, 25500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0256 Combusken - Transfer Only
  (256, 25600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0257 Blaziken - Transfer Only
  (257, 25700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0258 Mudkip - Transfer Only
  (258, 25800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0259 Marshtomp - Transfer Only
  (259, 25900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0260 Swampert - Transfer Only
  (260, 26000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0261 Poochyena - Transfer Only
  (261, 26100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0262 Mightyena - Transfer Only
  (262, 26200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0263 Zigzagoon - Transfer Only
  (263, 26300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0264 Linoone - Transfer Only
  (264, 26400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0265 Wurmple - Transfer Only
  (265, 26500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0266 Silcoon - Transfer Only
  (266, 26600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0267 Beautifly - Transfer Only
  (267, 26700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0268 Cascoon - Transfer Only
  (268, 26800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0269 Dustox - Transfer Only
  (269, 26900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0270 Lotad - Transfer Only
  (270, 27000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0271 Lombre - Transfer Only
  (271, 27100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0272 Ludicolo - Transfer Only
  (272, 27200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0273 Seedot - Transfer Only
  (273, 27300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0274 Nuzleaf - Transfer Only
  (274, 27400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0275 Shiftry - Transfer Only
  (275, 27500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0276 Taillow - Transfer Only
  (276, 27600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0277 Swellow - Transfer Only
  (277, 27700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0278 Wingull - Native Encounter
  (278, 27800, 15, NULL, 1, NULL),
  -- #0279 Pelipper - Native Encounter
  (279, 27900, 15, NULL, 1, NULL),
  -- #0280 Ralts - Transfer Only
  (280, 28000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0281 Kirlia - Transfer Only
  (281, 28100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0282 Gardevoir - Transfer Only
  (282, 28200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0283 Surskit - Native Encounter
  (283, 28300, 15, NULL, 1, NULL),
  -- #0284 Masquerain - Native Encounter
  (284, 28400, 15, NULL, 1, NULL),
  -- #0285 Shroomish - Transfer Only
  (285, 28500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0286 Breloom - Transfer Only
  (286, 28600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0287 Slakoth - Breeding
  (287, 28700, 15, NULL, 8, NULL),
  -- #0288 Vigoroth - Raid or Special Encounter
  (288, 28800, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0289 Slaking - Evolution
  (289, 28900, 15, NULL, 7, NULL),
  -- #0290 Nincada - Transfer Only
  (290, 29000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0291 Ninjask - Transfer Only
  (291, 29100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0292 Shedinja - Transfer Only
  (292, 29200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0293 Whismur - Transfer Only
  (293, 29300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0294 Loudred - Transfer Only
  (294, 29400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0295 Exploud - Transfer Only
  (295, 29500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0296 Makuhita - Native Encounter
  (296, 29600, 15, NULL, 1, NULL),
  -- #0297 Hariyama - Native Encounter
  (297, 29700, 15, NULL, 1, NULL),
  -- #0298 Azurill - Breeding
  (298, 29800, 15, NULL, 8, NULL),
  -- #0299 Nosepass - Native Encounter
  (299, 29900, 15, NULL, 1, NULL),
  -- #0300 Skitty - Transfer Only
  (300, 30000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0301 Delcatty - Transfer Only
  (301, 30100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0302 Sableye - Native Encounter
  (302, 30200, 15, NULL, 1, NULL),
  -- #0303 Mawile - Transfer Only
  (303, 30300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0304 Aron - Transfer Only
  (304, 30400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0305 Lairon - Transfer Only
  (305, 30500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0306 Aggron - Transfer Only
  (306, 30600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0307 Meditite - Transfer Only
  (307, 30700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0308 Medicham - Transfer Only
  (308, 30800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0309 Electrike - Transfer Only
  (309, 30900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0310 Manectric - Transfer Only
  (310, 31000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0311 Plusle - Transfer Only
  (311, 31100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0312 Minun - Transfer Only
  (312, 31200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0313 Volbeat - Transfer Only
  (313, 31300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0314 Illumise - Transfer Only
  (314, 31400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0315 Roselia - Raid or Special Encounter
  (315, 31500, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0316 Gulpin - Transfer Only
  (316, 31600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0317 Swalot - Transfer Only
  (317, 31700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0318 Carvanha - Breeding
  (318, 31800, 15, NULL, 8, NULL),
  -- #0319 Sharpedo - Native Encounter
  (319, 31900, 15, NULL, 1, NULL),
  -- #0320 Wailmer - Native Encounter
  (320, 32000, 15, NULL, 1, NULL),
  -- #0321 Wailord - Native Encounter
  (321, 32100, 15, NULL, 1, NULL),
  -- #0322 Numel - Transfer Only
  (322, 32200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0323 Camerupt - Transfer Only
  (323, 32300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0324 Torkoal - Native Encounter
  (324, 32400, 15, NULL, 1, NULL),
  -- #0325 Spoink - Transfer Only
  (325, 32500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0326 Grumpig - Transfer Only
  (326, 32600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0327 Spinda - Native Encounter
  (327, 32700, 15, NULL, 1, NULL),
  -- #0328 Trapinch - Native Encounter
  (328, 32800, 15, NULL, 1, NULL),
  -- #0329 Vibrava - Evolution
  (329, 32900, 15, NULL, 7, NULL),
  -- #0330 Flygon - Evolution
  (330, 33000, 15, NULL, 7, NULL),
  -- #0331 Cacnea - Transfer Only
  (331, 33100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0332 Cacturne - Transfer Only
  (332, 33200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0333 Swablu - Transfer Only
  (333, 33300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0334 Altaria - Transfer Only
  (334, 33400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0335 Zangoose - Transfer Only
  (335, 33500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0336 Seviper - Transfer Only
  (336, 33600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0337 Lunatone - Event
  (337, 33700, 15, NULL, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0338 Solrock - Event
  (338, 33800, 15, NULL, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0339 Barboach - Native Encounter
  (339, 33900, 15, NULL, 1, NULL),
  -- #0340 Whiscash - Native Encounter
  (340, 34000, 15, NULL, 1, NULL),
  -- #0341 Corphish - Transfer Only
  (341, 34100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0342 Crawdaunt - Transfer Only
  (342, 34200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0343 Baltoy - Transfer Only
  (343, 34300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0344 Claydol - Transfer Only
  (344, 34400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0345 Lileep - Transfer Only
  (345, 34500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0346 Cradily - Transfer Only
  (346, 34600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0347 Anorith - Transfer Only
  (347, 34700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0348 Armaldo - Transfer Only
  (348, 34800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0349 Feebas - Native Encounter
  (349, 34900, 15, NULL, 1, NULL),
  -- #0350 Milotic - Evolution
  (350, 35000, 15, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0351 Castform - Native Encounter
  (351, 35100, 15, NULL, 1, NULL),
  -- #0352 Kecleon - Transfer Only
  (352, 35200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0353 Shuppet - Transfer Only
  (353, 35300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0354 Banette - Transfer Only
  (354, 35400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0355 Duskull - Transfer Only
  (355, 35500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0356 Dusclops - Transfer Only
  (356, 35600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0357 Tropius - Transfer Only
  (357, 35700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0358 Chimecho - Transfer Only
  (358, 35800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0359 Absol - Native Encounter
  (359, 35900, 15, NULL, 1, NULL),
  -- #0360 Wynaut - Transfer Only
  (360, 36000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0361 Snorunt - Native Encounter
  (361, 36100, 15, NULL, 1, NULL),
  -- #0362 Glalie - Native Encounter
  (362, 36200, 15, NULL, 1, NULL),
  -- #0363 Spheal - Raid or Special Encounter
  (363, 36300, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0364 Sealeo - Evolution
  (364, 36400, 15, NULL, 7, NULL),
  -- #0365 Walrein - Evolution
  (365, 36500, 15, NULL, 7, NULL),
  -- #0366 Clamperl - Transfer Only
  (366, 36600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0367 Huntail - Transfer Only
  (367, 36700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0368 Gorebyss - Transfer Only
  (368, 36800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0369 Relicanth - Native Encounter
  (369, 36900, 15, NULL, 1, NULL),
  -- #0370 Luvdisc - Native Encounter
  (370, 37000, 15, NULL, 1, NULL),
  -- #0371 Bagon - Native Encounter
  (371, 37100, 15, NULL, 1, NULL),
  -- #0372 Shelgon - Native Encounter
  (372, 37200, 15, NULL, 1, NULL),
  -- #0373 Salamence - Native Encounter
  (373, 37300, 15, NULL, 1, NULL),
  -- #0374 Beldum - Native Encounter
  (374, 37400, 15, NULL, 1, NULL),
  -- #0375 Metang - Native Encounter
  (375, 37500, 15, NULL, 1, NULL),
  -- #0376 Metagross - Evolution
  (376, 37600, 15, NULL, 7, NULL),
  -- #0377 Regirock - Transfer Only
  (377, 37700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0378 Regice - Transfer Only
  (378, 37800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0379 Registeel - Transfer Only
  (379, 37900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0380 Latias - Sun - Event
  (380, 38000, 15, 25, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0380 Latias - Moon - External Trade
  (380, 38000, 15, 26, 12, 'Official event/distribution source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0381 Latios - Sun - External Trade
  (381, 38100, 15, 25, 12, 'Official event/distribution source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0381 Latios - Moon - Event
  (381, 38100, 15, 26, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0382 Kyogre - Sun - Event
  (382, 38200, 15, 25, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0382 Kyogre - Moon - External Trade
  (382, 38200, 15, 26, 12, 'Official event/distribution source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0383 Groudon - Sun - External Trade
  (383, 38300, 15, 25, 12, 'Official event/distribution source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0383 Groudon - Moon - Event
  (383, 38300, 15, 26, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0384 Rayquaza - Transfer Only
  (384, 38400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0385 Jirachi - Event
  (385, 38500, 15, NULL, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0386 Deoxys - Transfer Only
  (386, 38600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0386 Deoxys (Attack) - Transfer Only
  (386, 38601, 15, NULL, 13, 'Requires transferred Deoxys and meteorite form access in Sun/Moon.'),
  -- #0386 Deoxys (Defense) - Transfer Only
  (386, 38602, 15, NULL, 13, 'Requires transferred Deoxys and meteorite form access in Sun/Moon.'),
  -- #0386 Deoxys (Speed) - Transfer Only
  (386, 38603, 15, NULL, 13, 'Requires transferred Deoxys and meteorite form access in Sun/Moon.'),
  -- #0387 Turtwig - Transfer Only
  (387, 38700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0388 Grotle - Transfer Only
  (388, 38800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0389 Torterra - Transfer Only
  (389, 38900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0390 Chimchar - Transfer Only
  (390, 39000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0391 Monferno - Transfer Only
  (391, 39100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0392 Infernape - Transfer Only
  (392, 39200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0393 Piplup - Event
  (393, 39300, 15, NULL, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0394 Prinplup - Evolution
  (394, 39400, 15, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0395 Empoleon - Evolution
  (395, 39500, 15, NULL, 7, 'Requires evolving an event or distribution source Pokémon.'),
  -- #0396 Starly - Breeding
  (396, 39600, 15, NULL, 8, NULL),
  -- #0397 Staravia - Raid or Special Encounter
  (397, 39700, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0398 Staraptor - Evolution
  (398, 39800, 15, NULL, 7, NULL),
  -- #0399 Bidoof - Transfer Only
  (399, 39900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0400 Bibarel - Transfer Only
  (400, 40000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0401 Kricketot - Transfer Only
  (401, 40100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0402 Kricketune - Transfer Only
  (402, 40200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0403 Shinx - Breeding
  (403, 40300, 15, NULL, 8, NULL),
  -- #0404 Luxio - Raid or Special Encounter
  (404, 40400, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0405 Luxray - Evolution
  (405, 40500, 15, NULL, 7, NULL),
  -- #0406 Budew - Breeding
  (406, 40600, 15, NULL, 8, NULL),
  -- #0407 Roserade - Evolution
  (407, 40700, 15, NULL, 7, NULL),
  -- #0408 Cranidos - Sun - Fossil Restoration
  (408, 40800, 15, 25, 6, 'Available by restoring a fossil obtainable in Sun/Moon.'),
  -- #0408 Cranidos - Moon - External Trade
  (408, 40800, 15, 26, 12, 'Version source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0409 Rampardos - Sun - Evolution
  (409, 40900, 15, 25, 7, NULL),
  -- #0409 Rampardos - Moon - External Trade
  (409, 40900, 15, 26, 12, 'Version source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0410 Shieldon - Sun - External Trade
  (410, 41000, 15, 25, 12, 'Version source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0410 Shieldon - Moon - Fossil Restoration
  (410, 41000, 15, 26, 6, 'Available by restoring a fossil obtainable in Sun/Moon.'),
  -- #0411 Bastiodon - Sun - External Trade
  (411, 41100, 15, 25, 12, 'Version source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0411 Bastiodon - Moon - Evolution
  (411, 41100, 15, 26, 7, NULL),
  -- #0412 Burmy - Transfer Only
  (412, 41200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0413 Wormadam - Transfer Only
  (413, 41300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0414 Mothim - Transfer Only
  (414, 41400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0415 Combee - Transfer Only
  (415, 41500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0416 Vespiquen - Transfer Only
  (416, 41600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0417 Pachirisu - Transfer Only
  (417, 41700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0418 Buizel - Transfer Only
  (418, 41800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0419 Floatzel - Transfer Only
  (419, 41900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0420 Cherubi - Transfer Only
  (420, 42000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0421 Cherrim - Transfer Only
  (421, 42100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0422 Shellos - Breeding
  (422, 42200, 15, NULL, 8, NULL),
  -- #0423 Gastrodon - Native Encounter
  (423, 42300, 15, NULL, 1, NULL),
  -- #0424 Ambipom - Transfer Only
  (424, 42400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0425 Drifloon - Native Encounter
  (425, 42500, 15, NULL, 1, NULL),
  -- #0426 Drifblim - Native Encounter
  (426, 42600, 15, NULL, 1, NULL),
  -- #0427 Buneary - Transfer Only
  (427, 42700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0428 Lopunny - Transfer Only
  (428, 42800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0429 Mismagius - Native Encounter
  (429, 42900, 15, NULL, 1, NULL),
  -- #0430 Honchkrow - Evolution
  (430, 43000, 15, NULL, 7, NULL),
  -- #0431 Glameow - Transfer Only
  (431, 43100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0432 Purugly - Transfer Only
  (432, 43200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0433 Chingling - Transfer Only
  (433, 43300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0434 Stunky - Transfer Only
  (434, 43400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0435 Skuntank - Transfer Only
  (435, 43500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0436 Bronzor - Transfer Only
  (436, 43600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0437 Bronzong - Transfer Only
  (437, 43700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0438 Bonsly - Native Encounter
  (438, 43800, 15, NULL, 1, NULL),
  -- #0439 Mime Jr. - Transfer Only
  (439, 43900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0440 Happiny - Native Encounter
  (440, 44000, 15, NULL, 1, NULL),
  -- #0441 Chatot - Transfer Only
  (441, 44100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0442 Spiritomb - Transfer Only
  (442, 44200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0443 Gible - Breeding
  (443, 44300, 15, NULL, 8, NULL),
  -- #0444 Gabite - Native Encounter
  (444, 44400, 15, NULL, 1, NULL),
  -- #0445 Garchomp - Evolution
  (445, 44500, 15, NULL, 7, NULL),
  -- #0446 Munchlax - Native Encounter
  (446, 44600, 15, NULL, 1, NULL),
  -- #0447 Riolu - Native Encounter
  (447, 44700, 15, NULL, 1, NULL),
  -- #0448 Lucario - Native Encounter
  (448, 44800, 15, NULL, 1, NULL),
  -- #0449 Hippopotas - Transfer Only
  (449, 44900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0450 Hippowdon - Transfer Only
  (450, 45000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0451 Skorupi - Transfer Only
  (451, 45100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0452 Drapion - Transfer Only
  (452, 45200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0453 Croagunk - Transfer Only
  (453, 45300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0454 Toxicroak - Transfer Only
  (454, 45400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0455 Carnivine - Transfer Only
  (455, 45500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0456 Finneon - Native Encounter
  (456, 45600, 15, NULL, 1, NULL),
  -- #0457 Lumineon - Native Encounter
  (457, 45700, 15, NULL, 1, NULL),
  -- #0458 Mantyke - Transfer Only
  (458, 45800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0459 Snover - Transfer Only
  (459, 45900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0460 Abomasnow - Transfer Only
  (460, 46000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0461 Weavile - Evolution
  (461, 46100, 15, NULL, 7, NULL),
  -- #0462 Magnezone - Evolution
  (462, 46200, 15, NULL, 7, NULL),
  -- #0463 Lickilicky - Transfer Only
  (463, 46300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0464 Rhyperior - Evolution
  (464, 46400, 15, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0465 Tangrowth - Transfer Only
  (465, 46500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0466 Electivire - Evolution
  (466, 46600, 15, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0467 Magmortar - Evolution
  (467, 46700, 15, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0468 Togekiss - Raid or Special Encounter
  (468, 46800, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0469 Yanmega - Transfer Only
  (469, 46900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0470 Leafeon - Evolution
  (470, 47000, 15, NULL, 7, NULL),
  -- #0471 Glaceon - Evolution
  (471, 47100, 15, NULL, 7, NULL),
  -- #0472 Gliscor - Transfer Only
  (472, 47200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0473 Mamoswine - Evolution
  (473, 47300, 15, NULL, 7, NULL),
  -- #0474 Porygon-Z - Evolution
  (474, 47400, 15, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0475 Gallade - Transfer Only
  (475, 47500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0476 Probopass - Evolution
  (476, 47600, 15, NULL, 7, NULL),
  -- #0477 Dusknoir - Transfer Only
  (477, 47700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0478 Froslass - Evolution
  (478, 47800, 15, NULL, 7, NULL),
  -- #0479 Rotom - Transfer Only
  (479, 47900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0479 Rotom (Heat) - Transfer Only
  (479, 47901, 15, NULL, 13, 'Requires transferred Rotom and appliance form access in Sun/Moon.'),
  -- #0479 Rotom (Wash) - Transfer Only
  (479, 47902, 15, NULL, 13, 'Requires transferred Rotom and appliance form access in Sun/Moon.'),
  -- #0479 Rotom (Frost) - Transfer Only
  (479, 47903, 15, NULL, 13, 'Requires transferred Rotom and appliance form access in Sun/Moon.'),
  -- #0479 Rotom (Fan) - Transfer Only
  (479, 47904, 15, NULL, 13, 'Requires transferred Rotom and appliance form access in Sun/Moon.'),
  -- #0479 Rotom (Mow) - Transfer Only
  (479, 47905, 15, NULL, 13, 'Requires transferred Rotom and appliance form access in Sun/Moon.'),
  -- #0480 Uxie - Transfer Only
  (480, 48000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0481 Mesprit - Transfer Only
  (481, 48100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0482 Azelf - Transfer Only
  (482, 48200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0483 Dialga - Sun - External Trade
  (483, 48300, 15, 25, 12, 'Official event/distribution source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0483 Dialga - Moon - Event
  (483, 48300, 15, 26, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0484 Palkia - Sun - Event
  (484, 48400, 15, 25, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0484 Palkia - Moon - External Trade
  (484, 48400, 15, 26, 12, 'Official event/distribution source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0485 Heatran - Sun - External Trade
  (485, 48500, 15, 25, 12, 'Official event/distribution source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0485 Heatran - Moon - Event
  (485, 48500, 15, 26, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0486 Regigigas - Sun - Event
  (486, 48600, 15, 25, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0486 Regigigas - Moon - External Trade
  (486, 48600, 15, 26, 12, 'Official event/distribution source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0487 Giratina - Transfer Only
  (487, 48700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0487 Giratina (Origin) - Transfer Only
  (487, 48701, 15, NULL, 13, 'Requires transferred Giratina and Griseous Orb form access in Sun/Moon.'),
  -- #0488 Cresselia - Transfer Only
  (488, 48800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0489 Phione - Breeding
  (489, 48900, 15, NULL, 8, 'Requires breeding an event or distribution source Pokémon.'),
  -- #0490 Manaphy - Event
  (490, 49000, 15, NULL, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0491 Darkrai - Event
  (491, 49100, 15, NULL, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0492 Shaymin - Event
  (492, 49200, 15, NULL, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0492 Shaymin (Sky) - Event
  (492, 49201, 15, NULL, 11, 'Requires event/distribution Shaymin and Gracidea form access in Sun/Moon.'),
  -- #0493 Arceus - Transfer Only
  (493, 49300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0493 Arceus (Fighting) - Transfer Only
  (493, 49301, 15, NULL, 13, 'Requires transferred Arceus and the matching Plate in Sun/Moon.'),
  -- #0493 Arceus (Flying) - Transfer Only
  (493, 49302, 15, NULL, 13, 'Requires transferred Arceus and the matching Plate in Sun/Moon.'),
  -- #0493 Arceus (Poison) - Transfer Only
  (493, 49303, 15, NULL, 13, 'Requires transferred Arceus and the matching Plate in Sun/Moon.'),
  -- #0493 Arceus (Ground) - Transfer Only
  (493, 49304, 15, NULL, 13, 'Requires transferred Arceus and the matching Plate in Sun/Moon.'),
  -- #0493 Arceus (Rock) - Transfer Only
  (493, 49305, 15, NULL, 13, 'Requires transferred Arceus and the matching Plate in Sun/Moon.'),
  -- #0493 Arceus (Bug) - Transfer Only
  (493, 49306, 15, NULL, 13, 'Requires transferred Arceus and the matching Plate in Sun/Moon.'),
  -- #0493 Arceus (Ghost) - Transfer Only
  (493, 49307, 15, NULL, 13, 'Requires transferred Arceus and the matching Plate in Sun/Moon.'),
  -- #0493 Arceus (Steel) - Transfer Only
  (493, 49308, 15, NULL, 13, 'Requires transferred Arceus and the matching Plate in Sun/Moon.'),
  -- #0493 Arceus (Fire) - Transfer Only
  (493, 49309, 15, NULL, 13, 'Requires transferred Arceus and the matching Plate in Sun/Moon.'),
  -- #0493 Arceus (Water) - Transfer Only
  (493, 49310, 15, NULL, 13, 'Requires transferred Arceus and the matching Plate in Sun/Moon.'),
  -- #0493 Arceus (Grass) - Transfer Only
  (493, 49311, 15, NULL, 13, 'Requires transferred Arceus and the matching Plate in Sun/Moon.'),
  -- #0493 Arceus (Electric) - Transfer Only
  (493, 49312, 15, NULL, 13, 'Requires transferred Arceus and the matching Plate in Sun/Moon.'),
  -- #0493 Arceus (Psychic) - Transfer Only
  (493, 49313, 15, NULL, 13, 'Requires transferred Arceus and the matching Plate in Sun/Moon.'),
  -- #0493 Arceus (Ice) - Transfer Only
  (493, 49314, 15, NULL, 13, 'Requires transferred Arceus and the matching Plate in Sun/Moon.'),
  -- #0493 Arceus (Dragon) - Transfer Only
  (493, 49315, 15, NULL, 13, 'Requires transferred Arceus and the matching Plate in Sun/Moon.'),
  -- #0493 Arceus (Dark) - Transfer Only
  (493, 49316, 15, NULL, 13, 'Requires transferred Arceus and the matching Plate in Sun/Moon.'),
  -- #0493 Arceus (Fairy) - Transfer Only
  (493, 49317, 15, NULL, 13, 'Requires transferred Arceus and the matching Plate in Sun/Moon.'),
  -- #0494 Victini - Event
  (494, 49400, 15, NULL, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0495 Snivy - Breeding
  (495, 49500, 15, NULL, 8, NULL),
  -- #0496 Servine - Breeding
  (496, 49600, 15, NULL, 8, NULL),
  -- #0497 Serperior - Raid or Special Encounter
  (497, 49700, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0498 Tepig - Breeding
  (498, 49800, 15, NULL, 8, NULL),
  -- #0499 Pignite - Breeding
  (499, 49900, 15, NULL, 8, NULL),
  -- #0500 Emboar - Raid or Special Encounter
  (500, 50000, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0501 Oshawott - Breeding
  (501, 50100, 15, NULL, 8, NULL),
  -- #0502 Dewott - Breeding
  (502, 50200, 15, NULL, 8, NULL),
  -- #0503 Samurott - Raid or Special Encounter
  (503, 50300, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0504 Patrat - Transfer Only
  (504, 50400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0505 Watchog - Transfer Only
  (505, 50500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0506 Lillipup - Native Encounter
  (506, 50600, 15, NULL, 1, NULL),
  -- #0507 Herdier - Evolution
  (507, 50700, 15, NULL, 7, NULL),
  -- #0508 Stoutland - Evolution
  (508, 50800, 15, NULL, 7, NULL),
  -- #0509 Purrloin - Transfer Only
  (509, 50900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0510 Liepard - Transfer Only
  (510, 51000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0511 Pansage - Transfer Only
  (511, 51100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0512 Simisage - Transfer Only
  (512, 51200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0513 Pansear - Transfer Only
  (513, 51300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0514 Simisear - Transfer Only
  (514, 51400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0515 Panpour - Transfer Only
  (515, 51500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0516 Simipour - Transfer Only
  (516, 51600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0517 Munna - Transfer Only
  (517, 51700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0518 Musharna - Transfer Only
  (518, 51800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0519 Pidove - Transfer Only
  (519, 51900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0520 Tranquill - Transfer Only
  (520, 52000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0521 Unfezant - Transfer Only
  (521, 52100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0522 Blitzle - Transfer Only
  (522, 52200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0523 Zebstrika - Transfer Only
  (523, 52300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0524 Roggenrola - Native Encounter
  (524, 52400, 15, NULL, 1, NULL),
  -- #0525 Boldore - Native Encounter
  (525, 52500, 15, NULL, 1, NULL),
  -- #0526 Gigalith - Evolution
  (526, 52600, 15, NULL, 7, 'Requires trade evolution from an available source Pokémon.'),
  -- #0527 Woobat - Transfer Only
  (527, 52700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0528 Swoobat - Transfer Only
  (528, 52800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0529 Drilbur - Transfer Only
  (529, 52900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0530 Excadrill - Transfer Only
  (530, 53000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0531 Audino - Transfer Only
  (531, 53100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0532 Timburr - Breeding
  (532, 53200, 15, NULL, 8, NULL),
  -- #0533 Gurdurr - Breeding
  (533, 53300, 15, NULL, 8, NULL),
  -- #0534 Conkeldurr - Raid or Special Encounter
  (534, 53400, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0535 Tympole - Transfer Only
  (535, 53500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0536 Palpitoad - Transfer Only
  (536, 53600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0537 Seismitoad - Transfer Only
  (537, 53700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0538 Throh - Transfer Only
  (538, 53800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0539 Sawk - Transfer Only
  (539, 53900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0540 Sewaddle - Breeding
  (540, 54000, 15, NULL, 8, NULL),
  -- #0541 Swadloon - Breeding
  (541, 54100, 15, NULL, 8, NULL),
  -- #0542 Leavanny - Raid or Special Encounter
  (542, 54200, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0543 Venipede - Raid or Special Encounter
  (543, 54300, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0544 Whirlipede - Evolution
  (544, 54400, 15, NULL, 7, NULL),
  -- #0545 Scolipede - Evolution
  (545, 54500, 15, NULL, 7, NULL),
  -- #0546 Cottonee - Sun - Native Encounter
  (546, 54600, 15, 25, 1, NULL),
  -- #0546 Cottonee - Moon - External Trade
  (546, 54600, 15, 26, 12, 'Version source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0547 Whimsicott - Sun - Evolution
  (547, 54700, 15, 25, 7, NULL),
  -- #0547 Whimsicott - Moon - External Trade
  (547, 54700, 15, 26, 12, 'Version source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0548 Petilil - Sun - External Trade
  (548, 54800, 15, 25, 12, 'Version source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0548 Petilil - Moon - Native Encounter
  (548, 54800, 15, 26, 1, NULL),
  -- #0549 Lilligant - Sun - External Trade
  (549, 54900, 15, 25, 12, 'Version source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0549 Lilligant - Moon - Evolution
  (549, 54900, 15, 26, 7, NULL),
  -- #0550 Basculin - Transfer Only
  (550, 55000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0550 Basculin (Blue-Striped) - Transfer Only
  (550, 55001, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0551 Sandile - Native Encounter
  (551, 55100, 15, NULL, 1, NULL),
  -- #0552 Krokorok - Evolution
  (552, 55200, 15, NULL, 7, NULL),
  -- #0553 Krookodile - Evolution
  (553, 55300, 15, NULL, 7, NULL),
  -- #0554 Darumaka - Transfer Only
  (554, 55400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0555 Darmanitan - Transfer Only
  (555, 55500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0556 Maractus - Transfer Only
  (556, 55600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0557 Dwebble - Transfer Only
  (557, 55700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0558 Crustle - Transfer Only
  (558, 55800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0559 Scraggy - Transfer Only
  (559, 55900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0560 Scrafty - Transfer Only
  (560, 56000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0561 Sigilyph - Transfer Only
  (561, 56100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0562 Yamask - Transfer Only
  (562, 56200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0563 Cofagrigus - Transfer Only
  (563, 56300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0564 Tirtouga - Sun - Fossil Restoration
  (564, 56400, 15, 25, 6, 'Available by restoring a fossil obtainable in Sun/Moon.'),
  -- #0564 Tirtouga - Moon - External Trade
  (564, 56400, 15, 26, 12, 'Version source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0565 Carracosta - Sun - Evolution
  (565, 56500, 15, 25, 7, NULL),
  -- #0565 Carracosta - Moon - External Trade
  (565, 56500, 15, 26, 12, 'Version source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0566 Archen - Sun - External Trade
  (566, 56600, 15, 25, 12, 'Version source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0566 Archen - Moon - Fossil Restoration
  (566, 56600, 15, 26, 6, 'Available by restoring a fossil obtainable in Sun/Moon.'),
  -- #0567 Archeops - Sun - External Trade
  (567, 56700, 15, 25, 12, 'Version source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0567 Archeops - Moon - Evolution
  (567, 56700, 15, 26, 7, NULL),
  -- #0568 Trubbish - Native Encounter
  (568, 56800, 15, NULL, 1, NULL),
  -- #0569 Garbodor - Native Encounter
  (569, 56900, 15, NULL, 1, NULL),
  -- #0570 Zorua - Transfer Only
  (570, 57000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0571 Zoroark - Transfer Only
  (571, 57100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0572 Minccino - Transfer Only
  (572, 57200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0573 Cinccino - Transfer Only
  (573, 57300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0574 Gothita - Raid or Special Encounter
  (574, 57400, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0575 Gothorita - Evolution
  (575, 57500, 15, NULL, 7, NULL),
  -- #0576 Gothitelle - Evolution
  (576, 57600, 15, NULL, 7, NULL),
  -- #0577 Solosis - Breeding
  (577, 57700, 15, NULL, 8, NULL),
  -- #0578 Duosion - Raid or Special Encounter
  (578, 57800, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0579 Reuniclus - Evolution
  (579, 57900, 15, NULL, 7, NULL),
  -- #0580 Ducklett - Transfer Only
  (580, 58000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0581 Swanna - Transfer Only
  (581, 58100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0582 Vanillite - Native Encounter
  (582, 58200, 15, NULL, 1, NULL),
  -- #0583 Vanillish - Native Encounter
  (583, 58300, 15, NULL, 1, NULL),
  -- #0584 Vanilluxe - Evolution
  (584, 58400, 15, NULL, 7, NULL),
  -- #0585 Deerling - Transfer Only
  (585, 58500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0586 Sawsbuck - Transfer Only
  (586, 58600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0587 Emolga - Native Encounter
  (587, 58700, 15, NULL, 1, NULL),
  -- #0588 Karrablast - Transfer Only
  (588, 58800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0589 Escavalier - Transfer Only
  (589, 58900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0590 Foongus - Transfer Only
  (590, 59000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0591 Amoonguss - Transfer Only
  (591, 59100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0592 Frillish - Transfer Only
  (592, 59200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0593 Jellicent - Transfer Only
  (593, 59300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0594 Alomomola - Native Encounter
  (594, 59400, 15, NULL, 1, NULL),
  -- #0595 Joltik - Transfer Only
  (595, 59500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0596 Galvantula - Transfer Only
  (596, 59600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0597 Ferroseed - Transfer Only
  (597, 59700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0598 Ferrothorn - Transfer Only
  (598, 59800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0599 Klink - Raid or Special Encounter
  (599, 59900, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0600 Klang - Evolution
  (600, 60000, 15, NULL, 7, NULL),
  -- #0601 Klinklang - Evolution
  (601, 60100, 15, NULL, 7, NULL),
  -- #0602 Tynamo - Breeding
  (602, 60200, 15, NULL, 8, NULL),
  -- #0603 Eelektrik - Breeding
  (603, 60300, 15, NULL, 8, NULL),
  -- #0604 Eelektross - Raid or Special Encounter
  (604, 60400, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0605 Elgyem - Transfer Only
  (605, 60500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0606 Beheeyem - Transfer Only
  (606, 60600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0607 Litwick - Raid or Special Encounter
  (607, 60700, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0608 Lampent - Evolution
  (608, 60800, 15, NULL, 7, NULL),
  -- #0609 Chandelure - Evolution
  (609, 60900, 15, NULL, 7, NULL),
  -- #0610 Axew - Raid or Special Encounter
  (610, 61000, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0611 Fraxure - Evolution
  (611, 61100, 15, NULL, 7, NULL),
  -- #0612 Haxorus - Evolution
  (612, 61200, 15, NULL, 7, NULL),
  -- #0613 Cubchoo - Transfer Only
  (613, 61300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0614 Beartic - Transfer Only
  (614, 61400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0615 Cryogonal - Transfer Only
  (615, 61500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0616 Shelmet - Transfer Only
  (616, 61600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0617 Accelgor - Transfer Only
  (617, 61700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0618 Stunfisk - Transfer Only
  (618, 61800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0619 Mienfoo - Transfer Only
  (619, 61900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0620 Mienshao - Transfer Only
  (620, 62000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0621 Druddigon - Transfer Only
  (621, 62100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0622 Golett - Transfer Only
  (622, 62200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0623 Golurk - Transfer Only
  (623, 62300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0624 Pawniard - Transfer Only
  (624, 62400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0625 Bisharp - Transfer Only
  (625, 62500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0626 Bouffalant - Transfer Only
  (626, 62600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0627 Rufflet - Sun - Native Encounter
  (627, 62700, 15, 25, 1, NULL),
  -- #0627 Rufflet - Moon - External Trade
  (627, 62700, 15, 26, 12, 'Version source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0628 Braviary - Sun - Native Encounter
  (628, 62800, 15, 25, 1, NULL),
  -- #0628 Braviary - Moon - External Trade
  (628, 62800, 15, 26, 12, 'Version source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0629 Vullaby - Sun - External Trade
  (629, 62900, 15, 25, 12, 'Version source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0629 Vullaby - Moon - Native Encounter
  (629, 62900, 15, 26, 1, NULL),
  -- #0630 Mandibuzz - Sun - External Trade
  (630, 63000, 15, 25, 12, 'Version source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0630 Mandibuzz - Moon - Native Encounter
  (630, 63000, 15, 26, 1, NULL),
  -- #0631 Heatmor - Transfer Only
  (631, 63100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0632 Durant - Transfer Only
  (632, 63200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0633 Deino - Raid or Special Encounter
  (633, 63300, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0634 Zweilous - Evolution
  (634, 63400, 15, NULL, 7, NULL),
  -- #0635 Hydreigon - Evolution
  (635, 63500, 15, NULL, 7, NULL),
  -- #0636 Larvesta - Transfer Only
  (636, 63600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0637 Volcarona - Transfer Only
  (637, 63700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0638 Cobalion - Transfer Only
  (638, 63800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0639 Terrakion - Transfer Only
  (639, 63900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0640 Virizion - Transfer Only
  (640, 64000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0641 Tornadus - Sun - External Trade
  (641, 64100, 15, 25, 12, 'Official event/distribution source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0641 Tornadus - Moon - Event
  (641, 64100, 15, 26, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0641 Tornadus (Therian) - Sun - External Trade
  (641, 64101, 15, 25, 12, 'Official event/distribution source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0641 Tornadus (Therian) - Moon - Event
  (641, 64101, 15, 26, 11, 'Requires event/distribution Tornadus and Reveal Glass form access in Pokémon Moon.'),
  -- #0642 Thundurus - Sun - Event
  (642, 64200, 15, 25, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0642 Thundurus - Moon - External Trade
  (642, 64200, 15, 26, 12, 'Official event/distribution source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0642 Thundurus (Therian) - Sun - Event
  (642, 64201, 15, 25, 11, 'Requires event/distribution Thundurus and Reveal Glass form access in Pokémon Sun.'),
  -- #0642 Thundurus (Therian) - Moon - External Trade
  (642, 64201, 15, 26, 12, 'Official event/distribution source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0643 Reshiram - Sun - External Trade
  (643, 64300, 15, 25, 12, 'Official event/distribution source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0643 Reshiram - Moon - Event
  (643, 64300, 15, 26, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0644 Zekrom - Sun - Event
  (644, 64400, 15, 25, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0644 Zekrom - Moon - External Trade
  (644, 64400, 15, 26, 12, 'Official event/distribution source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0645 Landorus - Transfer Only
  (645, 64500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0645 Landorus (Therian) - Transfer Only
  (645, 64501, 15, NULL, 13, 'Requires transferred Landorus and Reveal Glass form access in Sun/Moon.'),
  -- #0646 Kyurem - Transfer Only
  (646, 64600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0646 Kyurem (White) - Transfer Only
  (646, 64601, 15, NULL, 13, 'Requires transferred Kyurem and DNA Splicers form fusion in Sun/Moon.'),
  -- #0646 Kyurem (Black) - Transfer Only
  (646, 64602, 15, NULL, 13, 'Requires transferred Kyurem and DNA Splicers form fusion in Sun/Moon.'),
  -- #0647 Keldeo - Transfer Only
  (647, 64700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0648 Meloetta - Event
  (648, 64800, 15, NULL, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0649 Genesect - Transfer Only
  (649, 64900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0649 Genesect (Douse Drive) - Transfer Only
  (649, 64901, 15, NULL, 13, 'Requires transferred Genesect and Drive item access in Sun/Moon.'),
  -- #0649 Genesect (Shock Drive) - Transfer Only
  (649, 64902, 15, NULL, 13, 'Requires transferred Genesect and Drive item access in Sun/Moon.'),
  -- #0649 Genesect (Burn Drive) - Transfer Only
  (649, 64903, 15, NULL, 13, 'Requires transferred Genesect and Drive item access in Sun/Moon.'),
  -- #0649 Genesect (Chill Drive) - Transfer Only
  (649, 64904, 15, NULL, 13, 'Requires transferred Genesect and Drive item access in Sun/Moon.'),
  -- #0650 Chespin - Transfer Only
  (650, 65000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0651 Quilladin - Transfer Only
  (651, 65100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0652 Chesnaught - Transfer Only
  (652, 65200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0653 Fennekin - Transfer Only
  (653, 65300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0654 Braixen - Transfer Only
  (654, 65400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0655 Delphox - Transfer Only
  (655, 65500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0656 Froakie - Transfer Only
  (656, 65600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0657 Frogadier - Transfer Only
  (657, 65700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0658 Greninja - Event
  (658, 65800, 15, NULL, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0659 Bunnelby - Transfer Only
  (659, 65900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0660 Diggersby - Transfer Only
  (660, 66000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0661 Fletchling - Native Encounter
  (661, 66100, 15, NULL, 1, NULL),
  -- #0662 Fletchinder - Native Encounter
  (662, 66200, 15, NULL, 1, NULL),
  -- #0663 Talonflame - In-Game Trade
  (663, 66300, 15, NULL, 5, 'NPC in-game trade source in Sun/Moon.'),
  -- #0664 Scatterbug - Transfer Only
  (664, 66400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0665 Spewpa - Transfer Only
  (665, 66500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0666 Vivillon - Transfer Only
  (666, 66600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0667 Litleo - Transfer Only
  (667, 66700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0668 Pyroar - Transfer Only
  (668, 66800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0669 Flabebe - Transfer Only
  (669, 66900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0670 Floette - Transfer Only
  (670, 67000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0671 Florges - Transfer Only
  (671, 67100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0672 Skiddo - Transfer Only
  (672, 67200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0673 Gogoat - Transfer Only
  (673, 67300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0674 Pancham - Native Encounter
  (674, 67400, 15, NULL, 1, NULL),
  -- #0675 Pangoro - Native Encounter
  (675, 67500, 15, NULL, 1, NULL),
  -- #0676 Furfrou - Transfer Only
  (676, 67600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0677 Espurr - Transfer Only
  (677, 67700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0678 Meowstic - Transfer Only
  (678, 67800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0678 Meowstic (Female) - Transfer Only
  (678, 67801, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0679 Honedge - Raid or Special Encounter
  (679, 67900, 15, NULL, 10, 'Island Scan source in Sun/Moon.'),
  -- #0680 Doublade - Evolution
  (680, 68000, 15, NULL, 7, NULL),
  -- #0681 Aegislash - Evolution
  (681, 68100, 15, NULL, 7, NULL),
  -- #0682 Spritzee - Transfer Only
  (682, 68200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0683 Aromatisse - Transfer Only
  (683, 68300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0684 Swirlix - Transfer Only
  (684, 68400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0685 Slurpuff - Transfer Only
  (685, 68500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0686 Inkay - Transfer Only
  (686, 68600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0687 Malamar - Transfer Only
  (687, 68700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0688 Binacle - Transfer Only
  (688, 68800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0689 Barbaracle - Transfer Only
  (689, 68900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0690 Skrelp - Transfer Only
  (690, 69000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0691 Dragalge - Transfer Only
  (691, 69100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0692 Clauncher - Transfer Only
  (692, 69200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0693 Clawitzer - Transfer Only
  (693, 69300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0694 Helioptile - Transfer Only
  (694, 69400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0695 Heliolisk - Transfer Only
  (695, 69500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0696 Tyrunt - Transfer Only
  (696, 69600, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0697 Tyrantrum - Transfer Only
  (697, 69700, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0698 Amaura - Transfer Only
  (698, 69800, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0699 Aurorus - Transfer Only
  (699, 69900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0700 Sylveon - Evolution
  (700, 70000, 15, NULL, 7, NULL),
  -- #0701 Hawlucha - Transfer Only
  (701, 70100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0702 Dedenne - Transfer Only
  (702, 70200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0703 Carbink - Native Encounter
  (703, 70300, 15, NULL, 1, NULL),
  -- #0704 Goomy - Native Encounter
  (704, 70400, 15, NULL, 1, NULL),
  -- #0705 Sliggoo - Native Encounter
  (705, 70500, 15, NULL, 1, NULL),
  -- #0706 Goodra - Evolution
  (706, 70600, 15, NULL, 7, NULL),
  -- #0707 Klefki - Native Encounter
  (707, 70700, 15, NULL, 1, NULL),
  -- #0708 Phantump - Native Encounter
  (708, 70800, 15, NULL, 1, NULL),
  -- #0709 Trevenant - Native Encounter
  (709, 70900, 15, NULL, 1, NULL),
  -- #0710 Pumpkaboo - Transfer Only
  (710, 71000, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0711 Gourgeist - Transfer Only
  (711, 71100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0712 Bergmite - Transfer Only
  (712, 71200, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0713 Avalugg - Transfer Only
  (713, 71300, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0714 Noibat - Transfer Only
  (714, 71400, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0715 Noivern - Transfer Only
  (715, 71500, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0716 Xerneas - Sun - External Trade
  (716, 71600, 15, 25, 12, 'Official event/distribution source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0716 Xerneas - Moon - Event
  (716, 71600, 15, 26, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0717 Yveltal - Sun - Event
  (717, 71700, 15, 25, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0717 Yveltal - Moon - External Trade
  (717, 71700, 15, 26, 12, 'Official event/distribution source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0718 Zygarde - Gift
  (718, 71800, 15, NULL, 4, 'Zygarde Cube assembly source from collected Cells and Cores in Sun/Moon.'),
  -- #0718 Zygarde (10% Forme) - Gift
  (718, 71801, 15, NULL, 4, 'Zygarde 10% Forme is available through Zygarde Cube assembly in Sun/Moon.'),
  -- #0719 Diancie - Transfer Only
  (719, 71900, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0720 Hoopa - Event
  (720, 72000, 15, NULL, 11, 'Official Sun/Moon event or distribution source.'),
  -- #0721 Volcanion - Transfer Only
  (721, 72100, 15, NULL, 13, 'Not obtainable through normal Sun/Moon gameplay; requires Pokémon Bank, Poke Transporter, compatible transfer, or historical official distribution.'),
  -- #0722 Rowlet - Starter
  (722, 72200, 15, NULL, 3, 'Alola first partner choice in Sun/Moon.'),
  -- #0723 Dartrix - Evolution
  (723, 72300, 15, NULL, 7, NULL),
  -- #0724 Decidueye - Evolution
  (724, 72400, 15, NULL, 7, NULL),
  -- #0725 Litten - Starter
  (725, 72500, 15, NULL, 3, 'Alola first partner choice in Sun/Moon.'),
  -- #0726 Torracat - Evolution
  (726, 72600, 15, NULL, 7, NULL),
  -- #0727 Incineroar - Evolution
  (727, 72700, 15, NULL, 7, NULL),
  -- #0728 Popplio - Starter
  (728, 72800, 15, NULL, 3, 'Alola first partner choice in Sun/Moon.'),
  -- #0729 Brionne - Evolution
  (729, 72900, 15, NULL, 7, NULL),
  -- #0730 Primarina - Evolution
  (730, 73000, 15, NULL, 7, NULL),
  -- #0731 Pikipek - Native Encounter
  (731, 73100, 15, NULL, 1, NULL),
  -- #0732 Trumbeak - Native Encounter
  (732, 73200, 15, NULL, 1, NULL),
  -- #0733 Toucannon - Evolution
  (733, 73300, 15, NULL, 7, NULL),
  -- #0734 Yungoos - Native Encounter
  (734, 73400, 15, NULL, 1, NULL),
  -- #0735 Gumshoos - Native Encounter
  (735, 73500, 15, NULL, 1, NULL),
  -- #0736 Grubbin - Native Encounter
  (736, 73600, 15, NULL, 1, NULL),
  -- #0737 Charjabug - Native Encounter
  (737, 73700, 15, NULL, 1, NULL),
  -- #0738 Vikavolt - Evolution
  (738, 73800, 15, NULL, 7, NULL),
  -- #0739 Crabrawler - Native Encounter
  (739, 73900, 15, NULL, 1, NULL),
  -- #0740 Crabominable - Evolution
  (740, 74000, 15, NULL, 7, NULL),
  -- #0741 Oricorio - Native Encounter
  (741, 74100, 15, NULL, 1, NULL),
  -- #0741 Oricorio (Pom-Pom) - Native Encounter
  (741, 74101, 15, NULL, 1, 'Oricorio form is available through Alola island encounter/form access in Sun/Moon.'),
  -- #0741 Oricorio (Pa'u) - Native Encounter
  (741, 74102, 15, NULL, 1, 'Oricorio form is available through Alola island encounter/form access in Sun/Moon.'),
  -- #0741 Oricorio (Sensu) - Native Encounter
  (741, 74103, 15, NULL, 1, 'Oricorio form is available through Alola island encounter/form access in Sun/Moon.'),
  -- #0742 Cutiefly - Native Encounter
  (742, 74200, 15, NULL, 1, NULL),
  -- #0743 Ribombee - Native Encounter
  (743, 74300, 15, NULL, 1, NULL),
  -- #0744 Rockruff - Native Encounter
  (744, 74400, 15, NULL, 1, NULL),
  -- #0745 Lycanroc - Native Encounter
  (745, 74500, 15, NULL, 1, NULL),
  -- #0745 Lycanroc (Midnight) - Native Encounter
  (745, 74501, 15, NULL, 1, NULL),
  -- #0746 Wishiwashi - Native Encounter
  (746, 74600, 15, NULL, 1, NULL),
  -- #0747 Mareanie - Native Encounter
  (747, 74700, 15, NULL, 1, NULL),
  -- #0748 Toxapex - Evolution
  (748, 74800, 15, NULL, 7, NULL),
  -- #0749 Mudbray - Native Encounter
  (749, 74900, 15, NULL, 1, NULL),
  -- #0750 Mudsdale - Native Encounter
  (750, 75000, 15, NULL, 1, NULL),
  -- #0751 Dewpider - Native Encounter
  (751, 75100, 15, NULL, 1, NULL),
  -- #0752 Araquanid - Native Encounter
  (752, 75200, 15, NULL, 1, NULL),
  -- #0753 Fomantis - Native Encounter
  (753, 75300, 15, NULL, 1, NULL),
  -- #0754 Lurantis - Evolution
  (754, 75400, 15, NULL, 7, NULL),
  -- #0755 Morelull - Native Encounter
  (755, 75500, 15, NULL, 1, NULL),
  -- #0756 Shiinotic - Evolution
  (756, 75600, 15, NULL, 7, NULL),
  -- #0757 Salandit - Native Encounter
  (757, 75700, 15, NULL, 1, NULL),
  -- #0758 Salazzle - Evolution
  (758, 75800, 15, NULL, 7, NULL),
  -- #0759 Stufful - Native Encounter
  (759, 75900, 15, NULL, 1, NULL),
  -- #0760 Bewear - Native Encounter
  (760, 76000, 15, NULL, 1, NULL),
  -- #0761 Bounsweet - Native Encounter
  (761, 76100, 15, NULL, 1, NULL),
  -- #0762 Steenee - In-Game Trade
  (762, 76200, 15, NULL, 5, 'NPC in-game trade source in Sun/Moon.'),
  -- #0763 Tsareena - Evolution
  (763, 76300, 15, NULL, 7, NULL),
  -- #0764 Comfey - Native Encounter
  (764, 76400, 15, NULL, 1, NULL),
  -- #0765 Oranguru - Sun - External Trade
  (765, 76500, 15, 25, 12, 'Version source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0765 Oranguru - Moon - Native Encounter
  (765, 76500, 15, 26, 1, NULL),
  -- #0766 Passimian - Sun - Native Encounter
  (766, 76600, 15, 25, 1, NULL),
  -- #0766 Passimian - Moon - External Trade
  (766, 76600, 15, 26, 12, 'Version source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0767 Wimpod - Native Encounter
  (767, 76700, 15, NULL, 1, NULL),
  -- #0768 Golisopod - Evolution
  (768, 76800, 15, NULL, 7, NULL),
  -- #0769 Sandygast - Native Encounter
  (769, 76900, 15, NULL, 1, NULL),
  -- #0770 Palossand - Evolution
  (770, 77000, 15, NULL, 7, NULL),
  -- #0771 Pyukumuku - Native Encounter
  (771, 77100, 15, NULL, 1, NULL),
  -- #0772 Type: Null - Gift
  (772, 77200, 15, NULL, 4, 'Gift Type: Null received after entering the Hall of Fame in Sun/Moon.'),
  -- #0773 Silvally - Evolution
  (773, 77300, 15, NULL, 7, NULL),
  -- #0773 Silvally (Fighting) - Evolution
  (773, 77301, 15, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sun/Moon.'),
  -- #0773 Silvally (Flying) - Evolution
  (773, 77302, 15, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sun/Moon.'),
  -- #0773 Silvally (Poison) - Evolution
  (773, 77303, 15, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sun/Moon.'),
  -- #0773 Silvally (Ground) - Evolution
  (773, 77304, 15, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sun/Moon.'),
  -- #0773 Silvally (Rock) - Evolution
  (773, 77305, 15, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sun/Moon.'),
  -- #0773 Silvally (Bug) - Evolution
  (773, 77306, 15, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sun/Moon.'),
  -- #0773 Silvally (Ghost) - Evolution
  (773, 77307, 15, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sun/Moon.'),
  -- #0773 Silvally (Steel) - Evolution
  (773, 77308, 15, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sun/Moon.'),
  -- #0773 Silvally (Fire) - Evolution
  (773, 77309, 15, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sun/Moon.'),
  -- #0773 Silvally (Water) - Evolution
  (773, 77310, 15, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sun/Moon.'),
  -- #0773 Silvally (Grass) - Evolution
  (773, 77311, 15, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sun/Moon.'),
  -- #0773 Silvally (Electric) - Evolution
  (773, 77312, 15, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sun/Moon.'),
  -- #0773 Silvally (Psychic) - Evolution
  (773, 77313, 15, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sun/Moon.'),
  -- #0773 Silvally (Ice) - Evolution
  (773, 77314, 15, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sun/Moon.'),
  -- #0773 Silvally (Dragon) - Evolution
  (773, 77315, 15, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sun/Moon.'),
  -- #0773 Silvally (Dark) - Evolution
  (773, 77316, 15, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sun/Moon.'),
  -- #0773 Silvally (Fairy) - Evolution
  (773, 77317, 15, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sun/Moon.'),
  -- #0774 Minior - Native Encounter
  (774, 77400, 15, NULL, 1, NULL),
  -- #0775 Komala - Native Encounter
  (775, 77500, 15, NULL, 1, NULL),
  -- #0776 Turtonator - Sun - Native Encounter
  (776, 77600, 15, 25, 1, NULL),
  -- #0776 Turtonator - Moon - External Trade
  (776, 77600, 15, 26, 12, 'Version source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0777 Togedemaru - Native Encounter
  (777, 77700, 15, NULL, 1, NULL),
  -- #0778 Mimikyu - Native Encounter
  (778, 77800, 15, NULL, 1, NULL),
  -- #0779 Bruxish - Native Encounter
  (779, 77900, 15, NULL, 1, NULL),
  -- #0780 Drampa - Sun - External Trade
  (780, 78000, 15, 25, 12, 'Version source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0780 Drampa - Moon - Native Encounter
  (780, 78000, 15, 26, 1, NULL),
  -- #0781 Dhelmise - Native Encounter
  (781, 78100, 15, NULL, 1, NULL),
  -- #0782 Jangmo-o - Native Encounter
  (782, 78200, 15, NULL, 1, NULL),
  -- #0783 Hakamo-o - Native Encounter
  (783, 78300, 15, NULL, 1, NULL),
  -- #0784 Kommo-o - Native Encounter
  (784, 78400, 15, NULL, 1, NULL),
  -- #0785 Tapu Koko - Static Encounter
  (785, 78500, 15, NULL, 2, 'Ruins of Conflict static encounter in Sun/Moon.'),
  -- #0786 Tapu Lele - Static Encounter
  (786, 78600, 15, NULL, 2, 'Ruins of Life static encounter in Sun/Moon.'),
  -- #0787 Tapu Bulu - Static Encounter
  (787, 78700, 15, NULL, 2, 'Ruins of Abundance static encounter in Sun/Moon.'),
  -- #0788 Tapu Fini - Static Encounter
  (788, 78800, 15, NULL, 2, 'Ruins of Hope static encounter in Sun/Moon.'),
  -- #0789 Cosmog - Gift
  (789, 78900, 15, NULL, 4, 'Gift Cosmog received after entering the Hall of Fame in Sun/Moon.'),
  -- #0790 Cosmoem - Evolution
  (790, 79000, 15, NULL, 7, NULL),
  -- #0791 Solgaleo - Sun - Static Encounter
  (791, 79100, 15, 25, 2, 'Sun version legendary encounter in Sun/Moon.'),
  -- #0791 Solgaleo - Moon - External Trade
  (791, 79100, 15, 26, 12, 'Version source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0792 Lunala - Sun - External Trade
  (792, 79200, 15, 25, 12, 'Version source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0792 Lunala - Moon - Static Encounter
  (792, 79200, 15, 26, 2, 'Moon version legendary encounter in Sun/Moon.'),
  -- #0793 Nihilego - Raid or Special Encounter
  (793, 79300, 15, NULL, 10, 'Postgame Ultra Beast mission encounter in Sun/Moon.'),
  -- #0794 Buzzwole - Sun - Raid or Special Encounter
  (794, 79400, 15, 25, 10, 'Postgame Ultra Beast mission encounter in Sun/Moon.'),
  -- #0794 Buzzwole - Moon - External Trade
  (794, 79400, 15, 26, 12, 'Version source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0795 Pheromosa - Sun - External Trade
  (795, 79500, 15, 25, 12, 'Version source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0795 Pheromosa - Moon - Raid or Special Encounter
  (795, 79500, 15, 26, 10, 'Postgame Ultra Beast mission encounter in Sun/Moon.'),
  -- #0796 Xurkitree - Raid or Special Encounter
  (796, 79600, 15, NULL, 10, 'Postgame Ultra Beast mission encounter in Sun/Moon.'),
  -- #0797 Celesteela - Sun - External Trade
  (797, 79700, 15, 25, 12, 'Version source is Pokémon Moon; available in Pokémon Sun by trade from the paired version or compatible external source.'),
  -- #0797 Celesteela - Moon - Raid or Special Encounter
  (797, 79700, 15, 26, 10, 'Postgame Ultra Beast mission encounter in Sun/Moon.'),
  -- #0798 Kartana - Sun - Raid or Special Encounter
  (798, 79800, 15, 25, 10, 'Postgame Ultra Beast mission encounter in Sun/Moon.'),
  -- #0798 Kartana - Moon - External Trade
  (798, 79800, 15, 26, 12, 'Version source is Pokémon Sun; available in Pokémon Moon by trade from the paired version or compatible external source.'),
  -- #0799 Guzzlord - Raid or Special Encounter
  (799, 79900, 15, NULL, 10, 'Postgame Ultra Beast mission encounter in Sun/Moon.'),
  -- #0800 Necrozma - Static Encounter
  (800, 80000, 15, NULL, 2, 'Ten Carat Hill static encounter after entering the Hall of Fame in Sun/Moon.'),
  -- #0801 Magearna - Event
  (801, 80100, 15, NULL, 11, 'QR Scanner or event-unlocked distribution source in Sun/Moon.'),
  -- #0802 Marshadow - Event
  (802, 80200, 15, NULL, 11, 'Official Sun/Moon event or distribution source.');
