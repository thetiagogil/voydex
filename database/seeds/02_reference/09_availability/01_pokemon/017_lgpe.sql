-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon availability for Let's Go, Pikachu! and Let's Go, Eevee!.
-- Cross-check: Bulbapedia List of Pokémon by availability, PokemonDB Let's Go version exclusives, Serebii Let's Go version exclusives, and Bulbapedia Pokémon GO / HOME interaction notes.
-- Scope note: primary availability method per compatible persistent form; Mega Evolutions and gender/cosmetic variants are intentionally excluded.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Let's Go, Pikachu! / Let's Go, Eevee!
-- Table: reference.pokemon_availability
-- Scope: Kanto species #001-#151 plus Meltan and Melmetal; includes persistent Partner Pikachu/Eevee and all 18 Alolan forms compatible with LGPE.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0001 Bulbasaur - Native Encounter
  (1, 100, 17, NULL, 1, 'Rare wild spawn in LGPE; also available as an NPC gift in Cerulean City.'),
  -- #0002 Ivysaur - Evolution
  (2, 200, 17, NULL, 7, NULL),
  -- #0003 Venusaur - Evolution
  (3, 300, 17, NULL, 7, NULL),
  -- #0004 Charmander - Native Encounter
  (4, 400, 17, NULL, 1, 'Rare wild spawn in LGPE; also available as an NPC gift on Route 24.'),
  -- #0005 Charmeleon - Evolution
  (5, 500, 17, NULL, 7, NULL),
  -- #0006 Charizard - Native Encounter
  (6, 600, 17, NULL, 1, NULL),
  -- #0007 Squirtle - Native Encounter
  (7, 700, 17, NULL, 1, 'Rare wild spawn in LGPE; also available as an NPC gift in Vermilion City.'),
  -- #0008 Wartortle - Evolution
  (8, 800, 17, NULL, 7, NULL),
  -- #0009 Blastoise - Evolution
  (9, 900, 17, NULL, 7, NULL),
  -- #0010 Caterpie - Native Encounter
  (10, 1000, 17, NULL, 1, NULL),
  -- #0011 Metapod - Native Encounter
  (11, 1100, 17, NULL, 1, NULL),
  -- #0012 Butterfree - Let's Go, Pikachu! - Native Encounter
  (12, 1200, 17, 29, 1, NULL),
  -- #0012 Butterfree - Let's Go, Eevee! - Evolution
  (12, 1200, 17, 30, 7, NULL),
  -- #0013 Weedle - Native Encounter
  (13, 1300, 17, NULL, 1, NULL),
  -- #0014 Kakuna - Native Encounter
  (14, 1400, 17, NULL, 1, NULL),
  -- #0015 Beedrill - Let's Go, Pikachu! - Evolution
  (15, 1500, 17, 29, 7, NULL),
  -- #0015 Beedrill - Let's Go, Eevee! - Native Encounter
  (15, 1500, 17, 30, 1, NULL),
  -- #0016 Pidgey - Native Encounter
  (16, 1600, 17, NULL, 1, NULL),
  -- #0017 Pidgeotto - Native Encounter
  (17, 1700, 17, NULL, 1, NULL),
  -- #0018 Pidgeot - Native Encounter
  (18, 1800, 17, NULL, 1, NULL),
  -- #0019 Rattata - Native Encounter
  (19, 1900, 17, NULL, 1, NULL),
  -- #0019 Alolan Rattata - In-Game Trade
  (19, 1901, 17, NULL, 5, 'Alolan form received through a repeatable in-game trade in Let''s Go.'),
  -- #0020 Raticate - Native Encounter
  (20, 2000, 17, NULL, 1, NULL),
  -- #0020 Alolan Raticate - Evolution
  (20, 2001, 17, NULL, 7, NULL),
  -- #0021 Spearow - Native Encounter
  (21, 2100, 17, NULL, 1, NULL),
  -- #0022 Fearow - Native Encounter
  (22, 2200, 17, NULL, 1, NULL),
  -- #0023 Ekans - Let's Go, Pikachu! - External Trade
  (23, 2300, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0023 Ekans - Let's Go, Eevee! - Native Encounter
  (23, 2300, 17, 30, 1, NULL),
  -- #0024 Arbok - Let's Go, Pikachu! - External Trade
  (24, 2400, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0024 Arbok - Let's Go, Eevee! - Native Encounter
  (24, 2400, 17, 30, 1, NULL),
  -- #0025 Pikachu - Native Encounter
  (25, 2500, 17, NULL, 1, NULL),
  -- #0025 Pikachu (Partner) - Let's Go, Pikachu! - Starter
  (25, 2501, 17, 29, 3, 'Partner Pikachu received at the start of Pokémon Let''s Go, Pikachu!; cannot evolve, trade, or transfer to a different game.'),
  -- #0026 Raichu - Evolution
  (26, 2600, 17, NULL, 7, NULL),
  -- #0026 Alolan Raichu - In-Game Trade
  (26, 2601, 17, NULL, 5, 'Alolan form received through a repeatable in-game trade in Let''s Go.'),
  -- #0027 Sandshrew - Let's Go, Pikachu! - Native Encounter
  (27, 2700, 17, 29, 1, NULL),
  -- #0027 Sandshrew - Let's Go, Eevee! - External Trade
  (27, 2700, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0027 Alolan Sandshrew - Let's Go, Pikachu! - In-Game Trade
  (27, 2701, 17, 29, 5, 'Alolan form received through a repeatable in-game trade in Let''s Go.'),
  -- #0027 Alolan Sandshrew - Let's Go, Eevee! - External Trade
  (27, 2701, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0028 Sandslash - Let's Go, Pikachu! - Evolution
  (28, 2800, 17, 29, 7, NULL),
  -- #0028 Sandslash - Let's Go, Eevee! - External Trade
  (28, 2800, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0028 Alolan Sandslash - Let's Go, Pikachu! - Evolution
  (28, 2801, 17, 29, 7, NULL),
  -- #0028 Alolan Sandslash - Let's Go, Eevee! - External Trade
  (28, 2801, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0029 Nidoran F - Native Encounter
  (29, 2900, 17, NULL, 1, NULL),
  -- #0030 Nidorina - Native Encounter
  (30, 3000, 17, NULL, 1, NULL),
  -- #0031 Nidoqueen - Native Encounter
  (31, 3100, 17, NULL, 1, NULL),
  -- #0032 Nidoran M - Native Encounter
  (32, 3200, 17, NULL, 1, NULL),
  -- #0033 Nidorino - Native Encounter
  (33, 3300, 17, NULL, 1, NULL),
  -- #0034 Nidoking - Native Encounter
  (34, 3400, 17, NULL, 1, NULL),
  -- #0035 Clefairy - Native Encounter
  (35, 3500, 17, NULL, 1, NULL),
  -- #0036 Clefable - Native Encounter
  (36, 3600, 17, NULL, 1, NULL),
  -- #0037 Vulpix - Let's Go, Pikachu! - External Trade
  (37, 3700, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0037 Vulpix - Let's Go, Eevee! - Native Encounter
  (37, 3700, 17, 30, 1, NULL),
  -- #0037 Alolan Vulpix - Let's Go, Pikachu! - External Trade
  (37, 3701, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0037 Alolan Vulpix - Let's Go, Eevee! - In-Game Trade
  (37, 3701, 17, 30, 5, 'Alolan form received through a repeatable in-game trade in Let''s Go.'),
  -- #0038 Ninetales - Let's Go, Pikachu! - External Trade
  (38, 3800, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0038 Ninetales - Let's Go, Eevee! - Native Encounter
  (38, 3800, 17, 30, 1, NULL),
  -- #0038 Alolan Ninetales - Let's Go, Pikachu! - External Trade
  (38, 3801, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0038 Alolan Ninetales - Let's Go, Eevee! - Evolution
  (38, 3801, 17, 30, 7, NULL),
  -- #0039 Jigglypuff - Native Encounter
  (39, 3900, 17, NULL, 1, NULL),
  -- #0040 Wigglytuff - Evolution
  (40, 4000, 17, NULL, 7, NULL),
  -- #0041 Zubat - Native Encounter
  (41, 4100, 17, NULL, 1, NULL),
  -- #0042 Golbat - Native Encounter
  (42, 4200, 17, NULL, 1, NULL),
  -- #0043 Oddish - Let's Go, Pikachu! - Native Encounter
  (43, 4300, 17, 29, 1, NULL),
  -- #0043 Oddish - Let's Go, Eevee! - External Trade
  (43, 4300, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0044 Gloom - Let's Go, Pikachu! - Native Encounter
  (44, 4400, 17, 29, 1, NULL),
  -- #0044 Gloom - Let's Go, Eevee! - External Trade
  (44, 4400, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0045 Vileplume - Let's Go, Pikachu! - Native Encounter
  (45, 4500, 17, 29, 1, NULL),
  -- #0045 Vileplume - Let's Go, Eevee! - External Trade
  (45, 4500, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0046 Paras - Native Encounter
  (46, 4600, 17, NULL, 1, NULL),
  -- #0047 Parasect - Evolution
  (47, 4700, 17, NULL, 7, NULL),
  -- #0048 Venonat - Native Encounter
  (48, 4800, 17, NULL, 1, NULL),
  -- #0049 Venomoth - Native Encounter
  (49, 4900, 17, NULL, 1, NULL),
  -- #0050 Diglett - Native Encounter
  (50, 5000, 17, NULL, 1, NULL),
  -- #0050 Alolan Diglett - In-Game Trade
  (50, 5001, 17, NULL, 5, 'Alolan form received through a repeatable in-game trade in Let''s Go.'),
  -- #0051 Dugtrio - Native Encounter
  (51, 5100, 17, NULL, 1, NULL),
  -- #0051 Alolan Dugtrio - Evolution
  (51, 5101, 17, NULL, 7, NULL),
  -- #0052 Meowth - Let's Go, Pikachu! - External Trade
  (52, 5200, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0052 Meowth - Let's Go, Eevee! - Native Encounter
  (52, 5200, 17, 30, 1, NULL),
  -- #0052 Alolan Meowth - Let's Go, Pikachu! - External Trade
  (52, 5201, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0052 Alolan Meowth - Let's Go, Eevee! - In-Game Trade
  (52, 5201, 17, 30, 5, 'Alolan form received through a repeatable in-game trade in Let''s Go.'),
  -- #0053 Persian - Let's Go, Pikachu! - Gift
  (53, 5300, 17, 29, 4, 'Single request reward gift source in Let''s Go.'),
  -- #0053 Persian - Let's Go, Eevee! - Evolution
  (53, 5300, 17, 30, 7, NULL),
  -- #0053 Alolan Persian - Let's Go, Pikachu! - External Trade
  (53, 5301, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0053 Alolan Persian - Let's Go, Eevee! - Evolution
  (53, 5301, 17, 30, 7, NULL),
  -- #0054 Psyduck - Native Encounter
  (54, 5400, 17, NULL, 1, NULL),
  -- #0055 Golduck - Native Encounter
  (55, 5500, 17, NULL, 1, NULL),
  -- #0056 Mankey - Let's Go, Pikachu! - Native Encounter
  (56, 5600, 17, 29, 1, NULL),
  -- #0056 Mankey - Let's Go, Eevee! - External Trade
  (56, 5600, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0057 Primeape - Let's Go, Pikachu! - Evolution
  (57, 5700, 17, 29, 7, NULL),
  -- #0057 Primeape - Let's Go, Eevee! - External Trade
  (57, 5700, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0058 Growlithe - Let's Go, Pikachu! - Native Encounter
  (58, 5800, 17, 29, 1, NULL),
  -- #0058 Growlithe - Let's Go, Eevee! - External Trade
  (58, 5800, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0059 Arcanine - Let's Go, Pikachu! - Native Encounter
  (59, 5900, 17, 29, 1, NULL),
  -- #0059 Arcanine - Let's Go, Eevee! - Gift
  (59, 5900, 17, 30, 4, 'Single request reward gift source in Let''s Go.'),
  -- #0060 Poliwag - Native Encounter
  (60, 6000, 17, NULL, 1, NULL),
  -- #0061 Poliwhirl - Native Encounter
  (61, 6100, 17, NULL, 1, NULL),
  -- #0062 Poliwrath - Native Encounter
  (62, 6200, 17, NULL, 1, NULL),
  -- #0063 Abra - Native Encounter
  (63, 6300, 17, NULL, 1, NULL),
  -- #0064 Kadabra - Native Encounter
  (64, 6400, 17, NULL, 1, NULL),
  -- #0065 Alakazam - Let's Go, Pikachu! - External Trade
  (65, 6500, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0065 Alakazam - Let's Go, Eevee! - External Trade
  (65, 6500, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0066 Machop - Native Encounter
  (66, 6600, 17, NULL, 1, NULL),
  -- #0067 Machoke - Native Encounter
  (67, 6700, 17, NULL, 1, NULL),
  -- #0068 Machamp - Let's Go, Pikachu! - External Trade
  (68, 6800, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0068 Machamp - Let's Go, Eevee! - External Trade
  (68, 6800, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0069 Bellsprout - Let's Go, Pikachu! - External Trade
  (69, 6900, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0069 Bellsprout - Let's Go, Eevee! - Native Encounter
  (69, 6900, 17, 30, 1, NULL),
  -- #0070 Weepinbell - Let's Go, Pikachu! - External Trade
  (70, 7000, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0070 Weepinbell - Let's Go, Eevee! - Native Encounter
  (70, 7000, 17, 30, 1, NULL),
  -- #0071 Victreebel - Let's Go, Pikachu! - External Trade
  (71, 7100, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0071 Victreebel - Let's Go, Eevee! - Native Encounter
  (71, 7100, 17, 30, 1, NULL),
  -- #0072 Tentacool - Native Encounter
  (72, 7200, 17, NULL, 1, NULL),
  -- #0073 Tentacruel - Native Encounter
  (73, 7300, 17, NULL, 1, NULL),
  -- #0074 Geodude - Native Encounter
  (74, 7400, 17, NULL, 1, NULL),
  -- #0074 Alolan Geodude - In-Game Trade
  (74, 7401, 17, NULL, 5, 'Alolan form received through a repeatable in-game trade in Let''s Go.'),
  -- #0075 Graveler - Native Encounter
  (75, 7500, 17, NULL, 1, NULL),
  -- #0075 Alolan Graveler - Evolution
  (75, 7501, 17, NULL, 7, NULL),
  -- #0076 Golem - Let's Go, Pikachu! - External Trade
  (76, 7600, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0076 Golem - Let's Go, Eevee! - External Trade
  (76, 7600, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0076 Alolan Golem - Let's Go, Pikachu! - External Trade
  (76, 7601, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0076 Alolan Golem - Let's Go, Eevee! - External Trade
  (76, 7601, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0077 Ponyta - Native Encounter
  (77, 7700, 17, NULL, 1, NULL),
  -- #0078 Rapidash - Native Encounter
  (78, 7800, 17, NULL, 1, NULL),
  -- #0079 Slowpoke - Native Encounter
  (79, 7900, 17, NULL, 1, NULL),
  -- #0080 Slowbro - Native Encounter
  (80, 8000, 17, NULL, 1, NULL),
  -- #0081 Magnemite - Native Encounter
  (81, 8100, 17, NULL, 1, NULL),
  -- #0082 Magneton - Native Encounter
  (82, 8200, 17, NULL, 1, NULL),
  -- #0083 Farfetch'd - Native Encounter
  (83, 8300, 17, NULL, 1, NULL),
  -- #0084 Doduo - Native Encounter
  (84, 8400, 17, NULL, 1, NULL),
  -- #0085 Dodrio - Native Encounter
  (85, 8500, 17, NULL, 1, NULL),
  -- #0086 Seel - Native Encounter
  (86, 8600, 17, NULL, 1, NULL),
  -- #0087 Dewgong - Native Encounter
  (87, 8700, 17, NULL, 1, NULL),
  -- #0088 Grimer - Let's Go, Pikachu! - Native Encounter
  (88, 8800, 17, 29, 1, NULL),
  -- #0088 Grimer - Let's Go, Eevee! - External Trade
  (88, 8800, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0088 Alolan Grimer - Let's Go, Pikachu! - In-Game Trade
  (88, 8801, 17, 29, 5, 'Alolan form received through a repeatable in-game trade in Let''s Go.'),
  -- #0088 Alolan Grimer - Let's Go, Eevee! - External Trade
  (88, 8801, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0089 Muk - Let's Go, Pikachu! - Native Encounter
  (89, 8900, 17, 29, 1, NULL),
  -- #0089 Muk - Let's Go, Eevee! - External Trade
  (89, 8900, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0089 Alolan Muk - Let's Go, Pikachu! - Evolution
  (89, 8901, 17, 29, 7, NULL),
  -- #0089 Alolan Muk - Let's Go, Eevee! - External Trade
  (89, 8901, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0090 Shellder - Native Encounter
  (90, 9000, 17, NULL, 1, NULL),
  -- #0091 Cloyster - Native Encounter
  (91, 9100, 17, NULL, 1, NULL),
  -- #0092 Gastly - Native Encounter
  (92, 9200, 17, NULL, 1, NULL),
  -- #0093 Haunter - Native Encounter
  (93, 9300, 17, NULL, 1, NULL),
  -- #0094 Gengar - Let's Go, Pikachu! - External Trade
  (94, 9400, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0094 Gengar - Let's Go, Eevee! - External Trade
  (94, 9400, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0095 Onix - Native Encounter
  (95, 9500, 17, NULL, 1, NULL),
  -- #0096 Drowzee - Native Encounter
  (96, 9600, 17, NULL, 1, NULL),
  -- #0097 Hypno - Evolution
  (97, 9700, 17, NULL, 7, NULL),
  -- #0098 Krabby - Native Encounter
  (98, 9800, 17, NULL, 1, NULL),
  -- #0099 Kingler - Native Encounter
  (99, 9900, 17, NULL, 1, NULL),
  -- #0100 Voltorb - Native Encounter
  (100, 10000, 17, NULL, 1, NULL),
  -- #0101 Electrode - Native Encounter
  (101, 10100, 17, NULL, 1, NULL),
  -- #0102 Exeggcute - Native Encounter
  (102, 10200, 17, NULL, 1, NULL),
  -- #0103 Exeggutor - Native Encounter
  (103, 10300, 17, NULL, 1, NULL),
  -- #0103 Alolan Exeggutor - In-Game Trade
  (103, 10301, 17, NULL, 5, 'Alolan form received through a repeatable in-game trade in Let''s Go.'),
  -- #0104 Cubone - Native Encounter
  (104, 10400, 17, NULL, 1, NULL),
  -- #0105 Marowak - Evolution
  (105, 10500, 17, NULL, 7, NULL),
  -- #0105 Alolan Marowak - In-Game Trade
  (105, 10501, 17, NULL, 5, 'Alolan form received through a repeatable in-game trade in Let''s Go.'),
  -- #0106 Hitmonlee - Native Encounter
  (106, 10600, 17, NULL, 1, NULL),
  -- #0107 Hitmonchan - Native Encounter
  (107, 10700, 17, NULL, 1, NULL),
  -- #0108 Lickitung - Native Encounter
  (108, 10800, 17, NULL, 1, NULL),
  -- #0109 Koffing - Let's Go, Pikachu! - External Trade
  (109, 10900, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0109 Koffing - Let's Go, Eevee! - Native Encounter
  (109, 10900, 17, 30, 1, NULL),
  -- #0110 Weezing - Let's Go, Pikachu! - External Trade
  (110, 11000, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0110 Weezing - Let's Go, Eevee! - Native Encounter
  (110, 11000, 17, 30, 1, NULL),
  -- #0111 Rhyhorn - Native Encounter
  (111, 11100, 17, NULL, 1, NULL),
  -- #0112 Rhydon - Native Encounter
  (112, 11200, 17, NULL, 1, NULL),
  -- #0113 Chansey - Native Encounter
  (113, 11300, 17, NULL, 1, NULL),
  -- #0114 Tangela - Native Encounter
  (114, 11400, 17, NULL, 1, NULL),
  -- #0115 Kangaskhan - Native Encounter
  (115, 11500, 17, NULL, 1, NULL),
  -- #0116 Horsea - Native Encounter
  (116, 11600, 17, NULL, 1, NULL),
  -- #0117 Seadra - Native Encounter
  (117, 11700, 17, NULL, 1, NULL),
  -- #0118 Goldeen - Native Encounter
  (118, 11800, 17, NULL, 1, NULL),
  -- #0119 Seaking - Native Encounter
  (119, 11900, 17, NULL, 1, NULL),
  -- #0120 Staryu - Native Encounter
  (120, 12000, 17, NULL, 1, NULL),
  -- #0121 Starmie - Native Encounter
  (121, 12100, 17, NULL, 1, NULL),
  -- #0122 Mr. Mime - Native Encounter
  (122, 12200, 17, NULL, 1, NULL),
  -- #0123 Scyther - Let's Go, Pikachu! - Native Encounter
  (123, 12300, 17, 29, 1, NULL),
  -- #0123 Scyther - Let's Go, Eevee! - External Trade
  (123, 12300, 17, 30, 12, 'Version source is Pokémon Let''s Go, Pikachu!; available in Pokémon Let''s Go, Eevee! by trade from the paired version or compatible external source.'),
  -- #0124 Jynx - Native Encounter
  (124, 12400, 17, NULL, 1, NULL),
  -- #0125 Electabuzz - Native Encounter
  (125, 12500, 17, NULL, 1, NULL),
  -- #0126 Magmar - Native Encounter
  (126, 12600, 17, NULL, 1, NULL),
  -- #0127 Pinsir - Let's Go, Pikachu! - External Trade
  (127, 12700, 17, 29, 12, 'Version source is Pokémon Let''s Go, Eevee!; available in Pokémon Let''s Go, Pikachu! by trade from the paired version or compatible external source.'),
  -- #0127 Pinsir - Let's Go, Eevee! - Native Encounter
  (127, 12700, 17, 30, 1, NULL),
  -- #0128 Tauros - Native Encounter
  (128, 12800, 17, NULL, 1, NULL),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 17, NULL, 1, NULL),
  -- #0130 Gyarados - Native Encounter
  (130, 13000, 17, NULL, 1, NULL),
  -- #0131 Lapras - Native Encounter
  (131, 13100, 17, NULL, 1, NULL),
  -- #0132 Ditto - Native Encounter
  (132, 13200, 17, NULL, 1, NULL),
  -- #0133 Eevee - Native Encounter
  (133, 13300, 17, NULL, 1, NULL),
  -- #0133 Eevee (Partner) - Let's Go, Eevee! - Starter
  (133, 13301, 17, 30, 3, 'Partner Eevee received at the start of Pokémon Let''s Go, Eevee!; cannot evolve, trade, or transfer to a different game.'),
  -- #0134 Vaporeon - Evolution
  (134, 13400, 17, NULL, 7, NULL),
  -- #0135 Jolteon - Evolution
  (135, 13500, 17, NULL, 7, NULL),
  -- #0136 Flareon - Evolution
  (136, 13600, 17, NULL, 7, NULL),
  -- #0137 Porygon - Native Encounter
  (137, 13700, 17, NULL, 1, NULL),
  -- #0138 Omanyte - Fossil Restoration
  (138, 13800, 17, NULL, 6, 'Available by restoring a fossil in Let''s Go; additional fossils can be found in Cerulean Cave.'),
  -- #0139 Omastar - Evolution
  (139, 13900, 17, NULL, 7, NULL),
  -- #0140 Kabuto - Fossil Restoration
  (140, 14000, 17, NULL, 6, 'Available by restoring a fossil in Let''s Go; additional fossils can be found in Cerulean Cave.'),
  -- #0141 Kabutops - Evolution
  (141, 14100, 17, NULL, 7, NULL),
  -- #0142 Aerodactyl - Fossil Restoration
  (142, 14200, 17, NULL, 6, 'Available by restoring a fossil in Let''s Go; additional fossils can be found in Cerulean Cave.'),
  -- #0143 Snorlax - Static Encounter
  (143, 14300, 17, NULL, 2, 'Static Snorlax encounters in Let''s Go.'),
  -- #0144 Articuno - Static Encounter
  (144, 14400, 17, NULL, 2, 'Static encounter plus rare post-game sky spawn source in Let''s Go.'),
  -- #0145 Zapdos - Static Encounter
  (145, 14500, 17, NULL, 2, 'Static encounter plus rare post-game sky spawn source in Let''s Go.'),
  -- #0146 Moltres - Static Encounter
  (146, 14600, 17, NULL, 2, 'Static encounter plus rare post-game sky spawn source in Let''s Go.'),
  -- #0147 Dratini - Native Encounter
  (147, 14700, 17, NULL, 1, NULL),
  -- #0148 Dragonair - Native Encounter
  (148, 14800, 17, NULL, 1, NULL),
  -- #0149 Dragonite - Native Encounter
  (149, 14900, 17, NULL, 1, NULL),
  -- #0150 Mewtwo - Static Encounter
  (150, 15000, 17, NULL, 2, 'Cerulean Cave static Mewtwo encounter in Let''s Go.'),
  -- #0151 Mew - Event
  (151, 15100, 17, NULL, 11, 'Official Let''s Go event, distribution, or accessory-linked source.'),
  -- #0808 Meltan - Transfer Only
  (808, 80800, 17, NULL, 13, 'Requires Pokémon GO transfer through GO Park or official distribution source in Let''s Go.'),
  -- #0809 Melmetal - Transfer Only
  (809, 80900, 17, NULL, 13, 'Requires evolving Meltan in Pokémon GO before transfer through GO Park or official distribution source in Let''s Go.');
