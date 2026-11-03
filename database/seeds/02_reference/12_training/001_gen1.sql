-- ============================================================================
-- Source
-- ============================================================================
-- Primary: each game's own personal data (the tables PKHeX reads), one row per
-- form at every version group that changed a value, in release order.
-- Cross-check: Bulbapedia species pages for the values that moved between games.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 1
-- Table: reference.pokemon_training_attributes
-- Scope: rows whose version_group_start_id belongs to Generation 1, for
-- forms that exist by then (a Mega has rows from X / Y on): EV
-- yield, catch rate, base friendship, base experience and growth rate. EVs are
-- NULL where the games have none (Generation I and II, Let's Go, Legends:
-- Arceus); base friendship is NULL in Generation I.
-- ============================================================================
INSERT INTO reference.pokemon_training_attributes (species_id, form_id, version_group_start_id, ev_hp, ev_attack, ev_defense, ev_special_attack, ev_special_defense, ev_speed, catch_rate, base_friendship, base_experience, growth_rate_id)
VALUES
  -- bulbasaur
  (1, 100, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 64, 4),
  -- ivysaur
  (2, 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 141, 4),
  -- venusaur
  (3, 300, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 208, 4),
  -- charmander
  (4, 400, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 65, 4),
  -- charmeleon
  (5, 500, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 142, 4),
  -- charizard
  (6, 600, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 209, 4),
  -- squirtle
  (7, 700, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 66, 4),
  -- wartortle
  (8, 800, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 143, 4),
  -- blastoise
  (9, 900, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 210, 4),
  -- caterpie
  (10, 1000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 255, NULL, 53, 3),
  -- metapod
  (11, 1100, 1, NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, 72, 3),
  -- butterfree
  (12, 1200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 160, 3),
  -- weedle
  (13, 1300, 1, NULL, NULL, NULL, NULL, NULL, NULL, 255, NULL, 52, 3),
  -- kakuna
  (14, 1400, 1, NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, 71, 3),
  -- beedrill
  (15, 1500, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 159, 3),
  -- pidgey
  (16, 1600, 1, NULL, NULL, NULL, NULL, NULL, NULL, 255, NULL, 55, 4),
  -- pidgeotto
  (17, 1700, 1, NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, 113, 4),
  -- pidgeot
  (18, 1800, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 172, 4),
  -- rattata
  (19, 1900, 1, NULL, NULL, NULL, NULL, NULL, NULL, 255, NULL, 57, 3),
  -- raticate
  (20, 2000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 90, NULL, 116, 3),
  -- spearow
  (21, 2100, 1, NULL, NULL, NULL, NULL, NULL, NULL, 255, NULL, 58, 3),
  -- fearow
  (22, 2200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 90, NULL, 162, 3),
  -- ekans
  (23, 2300, 1, NULL, NULL, NULL, NULL, NULL, NULL, 255, NULL, 62, 3),
  -- arbok
  (24, 2400, 1, NULL, NULL, NULL, NULL, NULL, NULL, 90, NULL, 147, 3),
  -- pikachu
  (25, 2500, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 82, 3),
  -- pikachu
  (25, 2500, 2, NULL, NULL, NULL, NULL, NULL, NULL, 163, NULL, 82, 3),
  -- raichu
  (26, 2600, 1, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, 122, 3),
  -- sandshrew
  (27, 2700, 1, NULL, NULL, NULL, NULL, NULL, NULL, 255, NULL, 93, 3),
  -- sandslash
  (28, 2800, 1, NULL, NULL, NULL, NULL, NULL, NULL, 90, NULL, 163, 3),
  -- nidoran-f
  (29, 2900, 1, NULL, NULL, NULL, NULL, NULL, NULL, 235, NULL, 59, 4),
  -- nidorina
  (30, 3000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, 117, 4),
  -- nidoqueen
  (31, 3100, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 194, 4),
  -- nidoran-m
  (32, 3200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 235, NULL, 60, 4),
  -- nidorino
  (33, 3300, 1, NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, 118, 4),
  -- nidoking
  (34, 3400, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 195, 4),
  -- clefairy
  (35, 3500, 1, NULL, NULL, NULL, NULL, NULL, NULL, 150, NULL, 68, 2),
  -- clefable
  (36, 3600, 1, NULL, NULL, NULL, NULL, NULL, NULL, 25, NULL, 129, 2),
  -- vulpix
  (37, 3700, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 63, 3),
  -- ninetales
  (38, 3800, 1, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, 178, 3),
  -- jigglypuff
  (39, 3900, 1, NULL, NULL, NULL, NULL, NULL, NULL, 170, NULL, 76, 2),
  -- wigglytuff
  (40, 4000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 109, 2),
  -- zubat
  (41, 4100, 1, NULL, NULL, NULL, NULL, NULL, NULL, 255, NULL, 54, 3),
  -- golbat
  (42, 4200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 90, NULL, 171, 3),
  -- oddish
  (43, 4300, 1, NULL, NULL, NULL, NULL, NULL, NULL, 255, NULL, 78, 4),
  -- gloom
  (44, 4400, 1, NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, 132, 4),
  -- vileplume
  (45, 4500, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 184, 4),
  -- paras
  (46, 4600, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 70, 3),
  -- parasect
  (47, 4700, 1, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, 128, 3),
  -- venonat
  (48, 4800, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 75, 3),
  -- venomoth
  (49, 4900, 1, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, 138, 3),
  -- diglett
  (50, 5000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 255, NULL, 81, 3),
  -- dugtrio
  (51, 5100, 1, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 153, 3),
  -- meowth
  (52, 5200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 255, NULL, 69, 3),
  -- persian
  (53, 5300, 1, NULL, NULL, NULL, NULL, NULL, NULL, 90, NULL, 148, 3),
  -- psyduck
  (54, 5400, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 80, 3),
  -- golduck
  (55, 5500, 1, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, 174, 3),
  -- mankey
  (56, 5600, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 74, 3),
  -- primeape
  (57, 5700, 1, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, 149, 3),
  -- growlithe
  (58, 5800, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 91, 5),
  -- arcanine
  (59, 5900, 1, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, 213, 5),
  -- poliwag
  (60, 6000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 255, NULL, 77, 4),
  -- poliwhirl
  (61, 6100, 1, NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, 131, 4),
  -- poliwrath
  (62, 6200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 185, 4),
  -- abra
  (63, 6300, 1, NULL, NULL, NULL, NULL, NULL, NULL, 200, NULL, 73, 4),
  -- kadabra
  (64, 6400, 1, NULL, NULL, NULL, NULL, NULL, NULL, 100, NULL, 145, 4),
  -- kadabra
  (64, 6400, 2, NULL, NULL, NULL, NULL, NULL, NULL, 96, NULL, 145, 4),
  -- alakazam
  (65, 6500, 1, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 186, 4),
  -- machop
  (66, 6600, 1, NULL, NULL, NULL, NULL, NULL, NULL, 180, NULL, 88, 4),
  -- machoke
  (67, 6700, 1, NULL, NULL, NULL, NULL, NULL, NULL, 90, NULL, 146, 4),
  -- machamp
  (68, 6800, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 193, 4),
  -- bellsprout
  (69, 6900, 1, NULL, NULL, NULL, NULL, NULL, NULL, 255, NULL, 84, 4),
  -- weepinbell
  (70, 7000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, 151, 4),
  -- victreebel
  (71, 7100, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 191, 4),
  -- tentacool
  (72, 7200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 105, 5),
  -- tentacruel
  (73, 7300, 1, NULL, NULL, NULL, NULL, NULL, NULL, 60, NULL, 205, 5),
  -- geodude
  (74, 7400, 1, NULL, NULL, NULL, NULL, NULL, NULL, 255, NULL, 86, 4),
  -- graveler
  (75, 7500, 1, NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, 134, 4),
  -- golem
  (76, 7600, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 177, 4),
  -- ponyta
  (77, 7700, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 152, 3),
  -- rapidash
  (78, 7800, 1, NULL, NULL, NULL, NULL, NULL, NULL, 60, NULL, 192, 3),
  -- slowpoke
  (79, 7900, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 99, 3),
  -- slowbro
  (80, 8000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, 164, 3),
  -- magnemite
  (81, 8100, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 89, 3),
  -- magneton
  (82, 8200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 60, NULL, 161, 3),
  -- farfetchd
  (83, 8300, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 94, 3),
  -- doduo
  (84, 8400, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 96, 3),
  -- dodrio
  (85, 8500, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 158, 3),
  -- seel
  (86, 8600, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 100, 3),
  -- dewgong
  (87, 8700, 1, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, 176, 3),
  -- grimer
  (88, 8800, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 90, 3),
  -- muk
  (89, 8900, 1, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, 157, 3),
  -- shellder
  (90, 9000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 97, 5),
  -- cloyster
  (91, 9100, 1, NULL, NULL, NULL, NULL, NULL, NULL, 60, NULL, 203, 5),
  -- gastly
  (92, 9200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 95, 4),
  -- haunter
  (93, 9300, 1, NULL, NULL, NULL, NULL, NULL, NULL, 90, NULL, 126, 4),
  -- gengar
  (94, 9400, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 190, 4),
  -- onix
  (95, 9500, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 108, 3),
  -- drowzee
  (96, 9600, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 102, 3),
  -- hypno
  (97, 9700, 1, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, 165, 3),
  -- krabby
  (98, 9800, 1, NULL, NULL, NULL, NULL, NULL, NULL, 225, NULL, 115, 3),
  -- kingler
  (99, 9900, 1, NULL, NULL, NULL, NULL, NULL, NULL, 60, NULL, 206, 3),
  -- voltorb
  (100, 10000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 103, 3),
  -- electrode
  (101, 10100, 1, NULL, NULL, NULL, NULL, NULL, NULL, 60, NULL, 150, 3),
  -- exeggcute
  (102, 10200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 90, NULL, 98, 5),
  -- exeggutor
  (103, 10300, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 212, 5),
  -- cubone
  (104, 10400, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 87, 3),
  -- marowak
  (105, 10500, 1, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, 124, 3),
  -- hitmonlee
  (106, 10600, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 139, 3),
  -- hitmonchan
  (107, 10700, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 140, 3),
  -- lickitung
  (108, 10800, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 127, 3),
  -- koffing
  (109, 10900, 1, NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, 114, 3),
  -- weezing
  (110, 11000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 60, NULL, 173, 3),
  -- rhyhorn
  (111, 11100, 1, NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, 135, 5),
  -- rhydon
  (112, 11200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 60, NULL, 204, 5),
  -- chansey
  (113, 11300, 1, NULL, NULL, NULL, NULL, NULL, NULL, 30, NULL, 255, 2),
  -- tangela
  (114, 11400, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 166, 3),
  -- kangaskhan
  (115, 11500, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 175, 3),
  -- horsea
  (116, 11600, 1, NULL, NULL, NULL, NULL, NULL, NULL, 225, NULL, 83, 3),
  -- seadra
  (117, 11700, 1, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, 155, 3),
  -- goldeen
  (118, 11800, 1, NULL, NULL, NULL, NULL, NULL, NULL, 225, NULL, 111, 3),
  -- seaking
  (119, 11900, 1, NULL, NULL, NULL, NULL, NULL, NULL, 60, NULL, 170, 3),
  -- staryu
  (120, 12000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 225, NULL, 106, 5),
  -- starmie
  (121, 12100, 1, NULL, NULL, NULL, NULL, NULL, NULL, 60, NULL, 207, 5),
  -- mr-mime
  (122, 12200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 136, 3),
  -- scyther
  (123, 12300, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 187, 3),
  -- jynx
  (124, 12400, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 137, 3),
  -- electabuzz
  (125, 12500, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 156, 3),
  -- magmar
  (126, 12600, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 167, 3),
  -- pinsir
  (127, 12700, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 200, 5),
  -- tauros
  (128, 12800, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 211, 5),
  -- magikarp
  (129, 12900, 1, NULL, NULL, NULL, NULL, NULL, NULL, 255, NULL, 20, 5),
  -- gyarados
  (130, 13000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 214, 5),
  -- lapras
  (131, 13100, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 219, 5),
  -- ditto
  (132, 13200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 35, NULL, 61, 3),
  -- eevee
  (133, 13300, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 92, 3),
  -- vaporeon
  (134, 13400, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 196, 3),
  -- jolteon
  (135, 13500, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 197, 3),
  -- flareon
  (136, 13600, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 198, 3),
  -- porygon
  (137, 13700, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 130, 3),
  -- omanyte
  (138, 13800, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 120, 3),
  -- omastar
  (139, 13900, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 199, 3),
  -- kabuto
  (140, 14000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 119, 3),
  -- kabutops
  (141, 14100, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 201, 3),
  -- aerodactyl
  (142, 14200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 202, 5),
  -- snorlax
  (143, 14300, 1, NULL, NULL, NULL, NULL, NULL, NULL, 25, NULL, 154, 5),
  -- articuno
  (144, 14400, 1, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 215, 5),
  -- zapdos
  (145, 14500, 1, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 216, 5),
  -- moltres
  (146, 14600, 1, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 217, 5),
  -- dratini
  (147, 14700, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 67, 5),
  -- dragonair
  (148, 14800, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 144, 5),
  -- dragonair
  (148, 14800, 2, NULL, NULL, NULL, NULL, NULL, NULL, 27, NULL, 144, 5),
  -- dragonite
  (149, 14900, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 218, 5),
  -- dragonite
  (149, 14900, 2, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, 218, 5),
  -- mewtwo
  (150, 15000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 220, 5),
  -- mew
  (151, 15100, 1, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, 64, 4);
