-- ============================================================================
-- Source
-- ============================================================================
-- Primary: each game's own personal data (the tables PKHeX reads), one row per
-- form at every version group that changed a value, in release order.
-- Cross-check: Bulbapedia species pages for the values that moved between games.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 2
-- Table: reference.pokemon_training_attributes
-- Scope: rows whose version_group_start_id belongs to Generation 2, for
-- forms that exist by then (a Mega has rows from X / Y on): EV
-- yield, catch rate, base friendship, base experience and growth rate. EVs are
-- NULL where the games have none (Generation I and II, Let's Go, Legends:
-- Arceus); base friendship is NULL in Generation I.
-- ============================================================================
INSERT INTO reference.pokemon_training_attributes (species_id, form_id, version_group_start_id, ev_hp, ev_attack, ev_defense, ev_special_attack, ev_special_defense, ev_speed, catch_rate, base_friendship, base_experience, growth_rate_id)
VALUES
  -- bulbasaur
  (1, 100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 64, 4),
  -- ivysaur
  (2, 200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 141, 4),
  -- venusaur
  (3, 300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 208, 4),
  -- charmander
  (4, 400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 65, 4),
  -- charmeleon
  (5, 500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 142, 4),
  -- charizard
  (6, 600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 209, 4),
  -- squirtle
  (7, 700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 66, 4),
  -- wartortle
  (8, 800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 143, 4),
  -- blastoise
  (9, 900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 210, 4),
  -- caterpie
  (10, 1000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 53, 3),
  -- metapod
  (11, 1100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 72, 3),
  -- butterfree
  (12, 1200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 160, 3),
  -- weedle
  (13, 1300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 52, 3),
  -- kakuna
  (14, 1400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 71, 3),
  -- beedrill
  (15, 1500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 159, 3),
  -- pidgey
  (16, 1600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 55, 4),
  -- pidgeotto
  (17, 1700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 113, 4),
  -- pidgeot
  (18, 1800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 172, 4),
  -- rattata
  (19, 1900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 57, 3),
  -- raticate
  (20, 2000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 116, 3),
  -- spearow
  (21, 2100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 58, 3),
  -- fearow
  (22, 2200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 162, 3),
  -- ekans
  (23, 2300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 62, 3),
  -- arbok
  (24, 2400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 147, 3),
  -- pikachu
  (25, 2500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 82, 3),
  -- raichu
  (26, 2600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 122, 3),
  -- sandshrew
  (27, 2700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 93, 3),
  -- sandslash
  (28, 2800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 163, 3),
  -- nidoran-f
  (29, 2900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 235, 70, 59, 4),
  -- nidorina
  (30, 3000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 117, 4),
  -- nidoqueen
  (31, 3100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 194, 4),
  -- nidoran-m
  (32, 3200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 235, 70, 60, 4),
  -- nidorino
  (33, 3300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 118, 4),
  -- nidoking
  (34, 3400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 195, 4),
  -- clefairy
  (35, 3500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 150, 70, 68, 2),
  -- clefable
  (36, 3600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 129, 2),
  -- vulpix
  (37, 3700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 63, 3),
  -- ninetales
  (38, 3800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 178, 3),
  -- jigglypuff
  (39, 3900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 170, 70, 76, 2),
  -- wigglytuff
  (40, 4000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 50, 70, 109, 2),
  -- zubat
  (41, 4100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 54, 3),
  -- golbat
  (42, 4200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 171, 3),
  -- oddish
  (43, 4300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 78, 4),
  -- gloom
  (44, 4400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 132, 4),
  -- vileplume
  (45, 4500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 184, 4),
  -- paras
  (46, 4600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 70, 3),
  -- parasect
  (47, 4700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 128, 3),
  -- venonat
  (48, 4800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 75, 3),
  -- venomoth
  (49, 4900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 138, 3),
  -- diglett
  (50, 5000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 81, 3),
  -- dugtrio
  (51, 5100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 50, 70, 153, 3),
  -- meowth
  (52, 5200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 69, 3),
  -- persian
  (53, 5300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 148, 3),
  -- psyduck
  (54, 5400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 80, 3),
  -- golduck
  (55, 5500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 174, 3),
  -- mankey
  (56, 5600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 74, 3),
  -- primeape
  (57, 5700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 149, 3),
  -- growlithe
  (58, 5800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 91, 5),
  -- arcanine
  (59, 5900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 213, 5),
  -- poliwag
  (60, 6000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 77, 4),
  -- poliwhirl
  (61, 6100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 131, 4),
  -- poliwrath
  (62, 6200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 4),
  -- abra
  (63, 6300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 73, 4),
  -- kadabra
  (64, 6400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 100, 70, 145, 4),
  -- alakazam
  (65, 6500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 50, 70, 186, 4),
  -- machop
  (66, 6600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 180, 70, 88, 4),
  -- machoke
  (67, 6700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 146, 4),
  -- machamp
  (68, 6800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 193, 4),
  -- bellsprout
  (69, 6900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 84, 4),
  -- weepinbell
  (70, 7000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 151, 4),
  -- victreebel
  (71, 7100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 191, 4),
  -- tentacool
  (72, 7200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 105, 5),
  -- tentacruel
  (73, 7300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 205, 5),
  -- geodude
  (74, 7400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 86, 4),
  -- graveler
  (75, 7500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 134, 4),
  -- golem
  (76, 7600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 177, 4),
  -- ponyta
  (77, 7700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 152, 3),
  -- rapidash
  (78, 7800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 192, 3),
  -- slowpoke
  (79, 7900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 99, 3),
  -- slowbro
  (80, 8000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 164, 3),
  -- magnemite
  (81, 8100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 89, 3),
  -- magneton
  (82, 8200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 161, 3),
  -- farfetchd
  (83, 8300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 94, 3),
  -- doduo
  (84, 8400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 96, 3),
  -- dodrio
  (85, 8500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 158, 3),
  -- seel
  (86, 8600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 100, 3),
  -- dewgong
  (87, 8700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 176, 3),
  -- grimer
  (88, 8800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 90, 3),
  -- muk
  (89, 8900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 157, 3),
  -- shellder
  (90, 9000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 97, 5),
  -- cloyster
  (91, 9100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 203, 5),
  -- gastly
  (92, 9200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 95, 4),
  -- haunter
  (93, 9300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 126, 4),
  -- gengar
  (94, 9400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 190, 4),
  -- onix
  (95, 9500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 108, 3),
  -- drowzee
  (96, 9600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 102, 3),
  -- hypno
  (97, 9700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 165, 3),
  -- krabby
  (98, 9800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 115, 3),
  -- kingler
  (99, 9900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 206, 3),
  -- voltorb
  (100, 10000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 103, 3),
  -- electrode
  (101, 10100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 150, 3),
  -- exeggcute
  (102, 10200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 98, 5),
  -- exeggutor
  (103, 10300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 212, 5),
  -- cubone
  (104, 10400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 87, 3),
  -- marowak
  (105, 10500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 124, 3),
  -- hitmonlee
  (106, 10600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 139, 3),
  -- hitmonchan
  (107, 10700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 140, 3),
  -- lickitung
  (108, 10800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 127, 3),
  -- koffing
  (109, 10900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 114, 3),
  -- weezing
  (110, 11000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 173, 3),
  -- rhyhorn
  (111, 11100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 135, 5),
  -- rhydon
  (112, 11200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 204, 5),
  -- chansey
  (113, 11300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 255, 2),
  -- tangela
  (114, 11400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 166, 3),
  -- kangaskhan
  (115, 11500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 175, 3),
  -- horsea
  (116, 11600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 83, 3),
  -- seadra
  (117, 11700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 155, 3),
  -- goldeen
  (118, 11800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 111, 3),
  -- seaking
  (119, 11900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 170, 3),
  -- staryu
  (120, 12000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 106, 5),
  -- starmie
  (121, 12100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 207, 5),
  -- mr-mime
  (122, 12200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 136, 3),
  -- scyther
  (123, 12300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 187, 3),
  -- jynx
  (124, 12400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 137, 3),
  -- electabuzz
  (125, 12500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 156, 3),
  -- magmar
  (126, 12600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 167, 3),
  -- pinsir
  (127, 12700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 200, 5),
  -- tauros
  (128, 12800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 211, 5),
  -- magikarp
  (129, 12900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 20, 5),
  -- gyarados
  (130, 13000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 214, 5),
  -- lapras
  (131, 13100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 219, 5),
  -- ditto
  (132, 13200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 35, 70, 61, 3),
  -- eevee
  (133, 13300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 92, 3),
  -- vaporeon
  (134, 13400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 196, 3),
  -- jolteon
  (135, 13500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 197, 3),
  -- flareon
  (136, 13600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 198, 3),
  -- porygon
  (137, 13700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 130, 3),
  -- omanyte
  (138, 13800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 120, 3),
  -- omastar
  (139, 13900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 199, 3),
  -- kabuto
  (140, 14000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 119, 3),
  -- kabutops
  (141, 14100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 201, 3),
  -- aerodactyl
  (142, 14200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 202, 5),
  -- snorlax
  (143, 14300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 154, 5),
  -- articuno
  (144, 14400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 3, 70, 215, 5),
  -- zapdos
  (145, 14500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 3, 70, 216, 5),
  -- moltres
  (146, 14600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 3, 70, 217, 5),
  -- dratini
  (147, 14700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 67, 5),
  -- dragonair
  (148, 14800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 144, 5),
  -- dragonite
  (149, 14900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 218, 5),
  -- mewtwo
  (150, 15000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 3, 70, 220, 5),
  -- mew
  (151, 15100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 64, 4),
  -- chikorita
  (152, 15200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 64, 4),
  -- bayleef
  (153, 15300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 141, 4),
  -- meganium
  (154, 15400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 208, 4),
  -- cyndaquil
  (155, 15500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 65, 4),
  -- quilava
  (156, 15600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 142, 4),
  -- typhlosion
  (157, 15700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 209, 4),
  -- totodile
  (158, 15800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 66, 4),
  -- croconaw
  (159, 15900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 143, 4),
  -- feraligatr
  (160, 16000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 210, 4),
  -- sentret
  (161, 16100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 57, 3),
  -- furret
  (162, 16200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 116, 3),
  -- hoothoot
  (163, 16300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 58, 3),
  -- noctowl
  (164, 16400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 162, 3),
  -- ledyba
  (165, 16500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 54, 2),
  -- ledian
  (166, 16600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 134, 2),
  -- spinarak
  (167, 16700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 54, 2),
  -- ariados
  (168, 16800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 134, 2),
  -- crobat
  (169, 16900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 204, 3),
  -- chinchou
  (170, 17000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 90, 5),
  -- lanturn
  (171, 17100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 156, 5),
  -- pichu
  (172, 17200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 42, 3),
  -- cleffa
  (173, 17300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 150, 70, 37, 2),
  -- igglybuff
  (174, 17400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 170, 70, 39, 2),
  -- togepi
  (175, 17500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 74, 2),
  -- togetic
  (176, 17600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 114, 2),
  -- natu
  (177, 17700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 73, 3),
  -- xatu
  (178, 17800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 171, 3),
  -- mareep
  (179, 17900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 235, 70, 59, 4),
  -- flaaffy
  (180, 18000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 117, 4),
  -- ampharos
  (181, 18100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 194, 4),
  -- bellossom
  (182, 18200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 184, 4),
  -- marill
  (183, 18300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 58, 2),
  -- azumarill
  (184, 18400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 153, 2),
  -- sudowoodo
  (185, 18500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 65, 70, 135, 3),
  -- politoed
  (186, 18600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 4),
  -- hoppip
  (187, 18700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 74, 4),
  -- skiploom
  (188, 18800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 136, 4),
  -- jumpluff
  (189, 18900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 176, 4),
  -- aipom
  (190, 19000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 94, 2),
  -- sunkern
  (191, 19100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 235, 70, 52, 4),
  -- sunflora
  (192, 19200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 146, 4),
  -- yanma
  (193, 19300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 147, 3),
  -- wooper
  (194, 19400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 52, 3),
  -- quagsire
  (195, 19500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 137, 3),
  -- espeon
  (196, 19600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 197, 3),
  -- umbreon
  (197, 19700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 197, 3),
  -- murkrow
  (198, 19800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 107, 4),
  -- slowking
  (199, 19900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 70, 70, 164, 3),
  -- misdreavus
  (200, 20000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 147, 2),
  -- unown
  (201, 20100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-b
  (201, 20101, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-c
  (201, 20102, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-d
  (201, 20103, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-e
  (201, 20104, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-f
  (201, 20105, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-g
  (201, 20106, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-h
  (201, 20107, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-i
  (201, 20108, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-j
  (201, 20109, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-k
  (201, 20110, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-l
  (201, 20111, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-m
  (201, 20112, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-n
  (201, 20113, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-o
  (201, 20114, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-p
  (201, 20115, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-q
  (201, 20116, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-r
  (201, 20117, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-s
  (201, 20118, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-t
  (201, 20119, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-u
  (201, 20120, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-v
  (201, 20121, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-w
  (201, 20122, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-x
  (201, 20123, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-y
  (201, 20124, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- unown-z
  (201, 20125, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- wobbuffet
  (202, 20200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 177, 3),
  -- girafarig
  (203, 20300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 149, 3),
  -- pineco
  (204, 20400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 60, 3),
  -- forretress
  (205, 20500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 118, 3),
  -- dunsparce
  (206, 20600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 75, 3),
  -- gligar
  (207, 20700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 108, 4),
  -- steelix
  (208, 20800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 196, 3),
  -- snubbull
  (209, 20900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 63, 2),
  -- granbull
  (210, 21000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 178, 2),
  -- qwilfish
  (211, 21100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 100, 3),
  -- scizor
  (212, 21200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 200, 3),
  -- shuckle
  (213, 21300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 80, 4),
  -- heracross
  (214, 21400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 200, 5),
  -- sneasel
  (215, 21500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 132, 4),
  -- teddiursa
  (216, 21600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 124, 3),
  -- ursaring
  (217, 21700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 189, 3),
  -- slugma
  (218, 21800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 78, 3),
  -- magcargo
  (219, 21900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 154, 3),
  -- swinub
  (220, 22000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 78, 5),
  -- piloswine
  (221, 22100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 160, 5),
  -- corsola
  (222, 22200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 113, 2),
  -- remoraid
  (223, 22300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 78, 3),
  -- octillery
  (224, 22400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 164, 3),
  -- delibird
  (225, 22500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 183, 2),
  -- mantine
  (226, 22600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 168, 5),
  -- skarmory
  (227, 22700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 168, 5),
  -- houndour
  (228, 22800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 114, 5),
  -- houndoom
  (229, 22900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 204, 5),
  -- kingdra
  (230, 23000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 207, 3),
  -- phanpy
  (231, 23100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 124, 3),
  -- donphan
  (232, 23200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 189, 3),
  -- porygon2
  (233, 23300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 180, 3),
  -- stantler
  (234, 23400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 165, 5),
  -- smeargle
  (235, 23500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 106, 2),
  -- tyrogue
  (236, 23600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 91, 3),
  -- hitmontop
  (237, 23700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 138, 3),
  -- smoochum
  (238, 23800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 87, 3),
  -- elekid
  (239, 23900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 106, 3),
  -- magby
  (240, 24000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 117, 3),
  -- miltank
  (241, 24100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 200, 5),
  -- blissey
  (242, 24200, 3, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 255, 2),
  -- raikou
  (243, 24300, 3, NULL, NULL, NULL, NULL, NULL, NULL, 3, 70, 216, 5),
  -- entei
  (244, 24400, 3, NULL, NULL, NULL, NULL, NULL, NULL, 3, 70, 217, 5),
  -- suicune
  (245, 24500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 3, 70, 215, 5),
  -- larvitar
  (246, 24600, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 67, 5),
  -- pupitar
  (247, 24700, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 144, 5),
  -- tyranitar
  (248, 24800, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 218, 5),
  -- lugia
  (249, 24900, 3, NULL, NULL, NULL, NULL, NULL, NULL, 3, 70, 220, 5),
  -- ho-oh
  (250, 25000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 3, 70, 220, 5),
  -- celebi
  (251, 25100, 3, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 64, 4);
