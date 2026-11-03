-- ============================================================================
-- Source
-- ============================================================================
-- Primary: each game's own personal data (the tables PKHeX reads), one row per
-- form at every version group that changed a value, in release order.
-- Cross-check: Bulbapedia species pages for the values that moved between games.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 7
-- Table: reference.pokemon_training_attributes
-- Scope: rows whose version_group_start_id belongs to Generation 7, for
-- forms that exist by then (a Mega has rows from X / Y on): EV
-- yield, catch rate, base friendship, base experience and growth rate. EVs are
-- NULL where the games have none (Generation I and II, Let's Go, Legends:
-- Arceus); base friendship is NULL in Generation I.
-- ============================================================================
INSERT INTO reference.pokemon_training_attributes (species_id, form_id, version_group_start_id, ev_hp, ev_attack, ev_defense, ev_special_attack, ev_special_defense, ev_speed, catch_rate, base_friendship, base_experience, growth_rate_id)
VALUES
  -- bulbasaur
  (1, 100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 64, 4),
  -- ivysaur
  (2, 200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 142, 4),
  -- venusaur
  (3, 300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 236, 4),
  -- mega-venusaur
  (3, 301, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 281, 4),
  -- charmander
  (4, 400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 62, 4),
  -- charmeleon
  (5, 500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 142, 4),
  -- charizard
  (6, 600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 240, 4),
  -- mega-charizard-x
  (6, 601, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 285, 4),
  -- mega-charizard-y
  (6, 602, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 285, 4),
  -- squirtle
  (7, 700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 63, 4),
  -- wartortle
  (8, 800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 142, 4),
  -- blastoise
  (9, 900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 239, 4),
  -- mega-blastoise
  (9, 901, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 284, 4),
  -- caterpie
  (10, 1000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 39, 3),
  -- metapod
  (11, 1100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 72, 3),
  -- butterfree
  (12, 1200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 178, 3),
  -- weedle
  (13, 1300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 39, 3),
  -- kakuna
  (14, 1400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 72, 3),
  -- beedrill
  (15, 1500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 178, 3),
  -- mega-beedrill
  (15, 1501, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 223, 3),
  -- pidgey
  (16, 1600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 50, 4),
  -- pidgeotto
  (17, 1700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 122, 4),
  -- pidgeot
  (18, 1800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 216, 4),
  -- mega-pidgeot
  (18, 1801, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 261, 4),
  -- rattata
  (19, 1900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 51, 3),
  -- alolan-rattata
  (19, 1901, 15, 0, 0, 0, 0, 0, 1, 255, 70, 51, 3),
  -- alolan-rattata
  (19, 1901, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 51, 3),
  -- raticate
  (20, 2000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 127, 70, 145, 3),
  -- alolan-raticate
  (20, 2001, 15, 0, 0, 0, 0, 0, 2, 127, 70, 145, 3),
  -- alolan-raticate
  (20, 2001, 17, NULL, NULL, NULL, NULL, NULL, NULL, 127, 70, 145, 3),
  -- spearow
  (21, 2100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 52, 3),
  -- fearow
  (22, 2200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 155, 3),
  -- ekans
  (23, 2300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 58, 3),
  -- arbok
  (24, 2400, 15, 0, 2, 0, 0, 0, 0, 90, 70, 157, 3),
  -- arbok
  (24, 2400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 157, 3),
  -- pikachu
  (25, 2500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 64, 3),
  -- pikachu-partner
  (25, 2501, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 86, 4),
  -- pikachu-original-cap
  (25, 2503, 15, 0, 0, 0, 0, 0, 2, 190, 70, 112, 3),
  -- pikachu-hoenn-cap
  (25, 2504, 15, 0, 0, 0, 0, 0, 2, 190, 70, 112, 3),
  -- pikachu-sinnoh-cap
  (25, 2505, 15, 0, 0, 0, 0, 0, 2, 190, 70, 112, 3),
  -- pikachu-unova-cap
  (25, 2506, 15, 0, 0, 0, 0, 0, 2, 190, 70, 112, 3),
  -- pikachu-kalos-cap
  (25, 2507, 15, 0, 0, 0, 0, 0, 2, 190, 70, 112, 3),
  -- pikachu-alola-cap
  (25, 2508, 15, 0, 0, 0, 0, 0, 2, 190, 70, 112, 3),
  -- pikachu-partner-cap
  (25, 2509, 15, 0, 0, 0, 0, 0, 2, 190, 70, 112, 3),
  -- raichu
  (26, 2600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 170, 3),
  -- alolan-raichu
  (26, 2601, 15, 0, 0, 0, 0, 0, 3, 75, 70, 218, 3),
  -- alolan-raichu
  (26, 2601, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 170, 3),
  -- sandshrew
  (27, 2700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 60, 3),
  -- alolan-sandshrew
  (27, 2701, 15, 0, 0, 1, 0, 0, 0, 255, 70, 60, 3),
  -- alolan-sandshrew
  (27, 2701, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 60, 3),
  -- sandslash
  (28, 2800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 158, 3),
  -- alolan-sandslash
  (28, 2801, 15, 0, 0, 2, 0, 0, 0, 90, 70, 158, 3),
  -- alolan-sandslash
  (28, 2801, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 158, 3),
  -- nidoran-f
  (29, 2900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 235, 70, 55, 4),
  -- nidorina
  (30, 3000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 128, 4),
  -- nidoqueen
  (31, 3100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 227, 4),
  -- nidoran-m
  (32, 3200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 235, 70, 55, 4),
  -- nidorino
  (33, 3300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 128, 4),
  -- nidoking
  (34, 3400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 227, 4),
  -- clefairy
  (35, 3500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 150, 140, 97, 2),
  -- clefable
  (36, 3600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 25, 140, 253, 2),
  -- vulpix
  (37, 3700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 60, 3),
  -- alolan-vulpix
  (37, 3701, 15, 0, 0, 0, 0, 0, 1, 190, 70, 60, 3),
  -- alolan-vulpix
  (37, 3701, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 60, 3),
  -- ninetales
  (38, 3800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 177, 3),
  -- alolan-ninetales
  (38, 3801, 15, 0, 0, 0, 0, 0, 2, 75, 70, 177, 3),
  -- alolan-ninetales
  (38, 3801, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 177, 3),
  -- jigglypuff
  (39, 3900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 170, 70, 54, 2),
  -- wigglytuff
  (40, 4000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 50, 70, 152, 2),
  -- zubat
  (41, 4100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 49, 3),
  -- golbat
  (42, 4200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 159, 3),
  -- oddish
  (43, 4300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 64, 4),
  -- gloom
  (44, 4400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 138, 4),
  -- vileplume
  (45, 4500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 221, 4),
  -- paras
  (46, 4600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 57, 3),
  -- parasect
  (47, 4700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 142, 3),
  -- venonat
  (48, 4800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 61, 3),
  -- venomoth
  (49, 4900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 158, 3),
  -- diglett
  (50, 5000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 53, 3),
  -- alolan-diglett
  (50, 5001, 15, 0, 0, 0, 0, 0, 1, 255, 70, 53, 3),
  -- alolan-diglett
  (50, 5001, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 53, 3),
  -- dugtrio
  (51, 5100, 15, 0, 0, 0, 0, 0, 2, 50, 70, 149, 3),
  -- dugtrio
  (51, 5100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 50, 70, 149, 3),
  -- alolan-dugtrio
  (51, 5101, 15, 0, 2, 0, 0, 0, 0, 50, 70, 149, 3),
  -- alolan-dugtrio
  (51, 5101, 17, NULL, NULL, NULL, NULL, NULL, NULL, 50, 70, 149, 3),
  -- meowth
  (52, 5200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 58, 3),
  -- alolan-meowth
  (52, 5201, 15, 0, 0, 0, 0, 0, 1, 255, 70, 58, 3),
  -- alolan-meowth
  (52, 5201, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 58, 3),
  -- persian
  (53, 5300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 154, 3),
  -- alolan-persian
  (53, 5301, 15, 0, 0, 0, 0, 0, 2, 90, 70, 154, 3),
  -- alolan-persian
  (53, 5301, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 154, 3),
  -- psyduck
  (54, 5400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 64, 3),
  -- golduck
  (55, 5500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 175, 3),
  -- mankey
  (56, 5600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 61, 3),
  -- primeape
  (57, 5700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 159, 3),
  -- growlithe
  (58, 5800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 70, 5),
  -- arcanine
  (59, 5900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 194, 5),
  -- poliwag
  (60, 6000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 60, 4),
  -- poliwhirl
  (61, 6100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 135, 4),
  -- poliwrath
  (62, 6200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 230, 4),
  -- abra
  (63, 6300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 62, 4),
  -- kadabra
  (64, 6400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 100, 70, 140, 4),
  -- alakazam
  (65, 6500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 50, 70, 225, 4),
  -- mega-alakazam
  (65, 6501, 15, 0, 0, 0, 3, 0, 0, 50, 70, 270, 4),
  -- mega-alakazam
  (65, 6501, 17, NULL, NULL, NULL, NULL, NULL, NULL, 50, 70, 270, 4),
  -- machop
  (66, 6600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 180, 70, 61, 4),
  -- machoke
  (67, 6700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 142, 4),
  -- machamp
  (68, 6800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 227, 4),
  -- bellsprout
  (69, 6900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 60, 4),
  -- weepinbell
  (70, 7000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 137, 4),
  -- victreebel
  (71, 7100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 221, 4),
  -- tentacool
  (72, 7200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 67, 5),
  -- tentacruel
  (73, 7300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 180, 5),
  -- geodude
  (74, 7400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 60, 4),
  -- alolan-geodude
  (74, 7401, 15, 0, 0, 1, 0, 0, 0, 255, 70, 60, 4),
  -- alolan-geodude
  (74, 7401, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 60, 4),
  -- graveler
  (75, 7500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 137, 4),
  -- alolan-graveler
  (75, 7501, 15, 0, 0, 2, 0, 0, 0, 120, 70, 137, 4),
  -- alolan-graveler
  (75, 7501, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 137, 4),
  -- golem
  (76, 7600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 223, 4),
  -- alolan-golem
  (76, 7601, 15, 0, 0, 3, 0, 0, 0, 45, 70, 223, 4),
  -- alolan-golem
  (76, 7601, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 223, 4),
  -- ponyta
  (77, 7700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 82, 3),
  -- rapidash
  (78, 7800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 175, 3),
  -- slowpoke
  (79, 7900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 63, 3),
  -- slowbro
  (80, 8000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 172, 3),
  -- mega-slowbro
  (80, 8001, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 207, 3),
  -- magnemite
  (81, 8100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 65, 3),
  -- magneton
  (82, 8200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 163, 3),
  -- farfetchd
  (83, 8300, 15, 0, 1, 0, 0, 0, 0, 45, 70, 132, 3),
  -- farfetchd
  (83, 8300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 132, 3),
  -- doduo
  (84, 8400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 62, 3),
  -- dodrio
  (85, 8500, 15, 0, 2, 0, 0, 0, 0, 45, 70, 165, 3),
  -- dodrio
  (85, 8500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 165, 3),
  -- seel
  (86, 8600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 65, 3),
  -- dewgong
  (87, 8700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 166, 3),
  -- grimer
  (88, 8800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 65, 3),
  -- alolan-grimer
  (88, 8801, 15, 1, 0, 0, 0, 0, 0, 190, 70, 65, 3),
  -- alolan-grimer
  (88, 8801, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 65, 3),
  -- muk
  (89, 8900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 175, 3),
  -- alolan-muk
  (89, 8901, 15, 1, 1, 0, 0, 0, 0, 75, 70, 175, 3),
  -- alolan-muk
  (89, 8901, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 175, 3),
  -- shellder
  (90, 9000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 61, 5),
  -- cloyster
  (91, 9100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 184, 5),
  -- gastly
  (92, 9200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 62, 4),
  -- haunter
  (93, 9300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 142, 4),
  -- gengar
  (94, 9400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 225, 4),
  -- mega-gengar
  (94, 9401, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 270, 4),
  -- onix
  (95, 9500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 135, 3),
  -- drowzee
  (96, 9600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 66, 3),
  -- hypno
  (97, 9700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 169, 3),
  -- krabby
  (98, 9800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 65, 3),
  -- kingler
  (99, 9900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 166, 3),
  -- voltorb
  (100, 10000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 66, 3),
  -- electrode
  (101, 10100, 15, 0, 0, 0, 0, 0, 2, 60, 70, 172, 3),
  -- electrode
  (101, 10100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 172, 3),
  -- exeggcute
  (102, 10200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 65, 5),
  -- exeggutor
  (103, 10300, 15, 0, 0, 0, 2, 0, 0, 45, 70, 186, 5),
  -- exeggutor
  (103, 10300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 186, 5),
  -- alolan-exeggutor
  (103, 10301, 15, 0, 0, 0, 2, 0, 0, 45, 70, 186, 5),
  -- alolan-exeggutor
  (103, 10301, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 186, 5),
  -- cubone
  (104, 10400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 64, 3),
  -- marowak
  (105, 10500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 149, 3),
  -- alolan-marowak
  (105, 10501, 15, 0, 0, 2, 0, 0, 0, 75, 70, 149, 3),
  -- alolan-marowak
  (105, 10501, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 149, 3),
  -- hitmonlee
  (106, 10600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 159, 3),
  -- hitmonchan
  (107, 10700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 159, 3),
  -- lickitung
  (108, 10800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 135, 3),
  -- koffing
  (109, 10900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 68, 3),
  -- weezing
  (110, 11000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 172, 3),
  -- rhyhorn
  (111, 11100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 69, 5),
  -- rhydon
  (112, 11200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 170, 5),
  -- chansey
  (113, 11300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 140, 395, 2),
  -- tangela
  (114, 11400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 152, 3),
  -- kangaskhan
  (115, 11500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 172, 3),
  -- mega-kangaskhan
  (115, 11501, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 207, 3),
  -- horsea
  (116, 11600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 59, 3),
  -- seadra
  (117, 11700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 154, 3),
  -- goldeen
  (118, 11800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 64, 3),
  -- seaking
  (119, 11900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 158, 3),
  -- staryu
  (120, 12000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 68, 5),
  -- starmie
  (121, 12100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 182, 5),
  -- mr-mime
  (122, 12200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 161, 3),
  -- scyther
  (123, 12300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 175, 3),
  -- jynx
  (124, 12400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 159, 3),
  -- electabuzz
  (125, 12500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 172, 3),
  -- magmar
  (126, 12600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 173, 3),
  -- pinsir
  (127, 12700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 175, 5),
  -- mega-pinsir
  (127, 12701, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 210, 5),
  -- tauros
  (128, 12800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 172, 5),
  -- magikarp
  (129, 12900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 40, 5),
  -- gyarados
  (130, 13000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 189, 5),
  -- mega-gyarados
  (130, 13001, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 224, 5),
  -- lapras
  (131, 13100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 187, 5),
  -- ditto
  (132, 13200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 35, 70, 101, 3),
  -- eevee
  (133, 13300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 65, 3),
  -- eevee-partner
  (133, 13301, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 87, 4),
  -- vaporeon
  (134, 13400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 184, 3),
  -- jolteon
  (135, 13500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 184, 3),
  -- flareon
  (136, 13600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 184, 3),
  -- porygon
  (137, 13700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 138, 3),
  -- omanyte
  (138, 13800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 71, 3),
  -- omastar
  (139, 13900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 173, 3),
  -- kabuto
  (140, 14000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 71, 3),
  -- kabutops
  (141, 14100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 173, 3),
  -- aerodactyl
  (142, 14200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 180, 5),
  -- mega-aerodactyl
  (142, 14201, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 215, 5),
  -- snorlax
  (143, 14300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 189, 5),
  -- articuno
  (144, 14400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 35, 261, 5),
  -- zapdos
  (145, 14500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 35, 261, 5),
  -- moltres
  (146, 14600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 35, 261, 5),
  -- dratini
  (147, 14700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 60, 5),
  -- dragonair
  (148, 14800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 147, 5),
  -- dragonite
  (149, 14900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 270, 5),
  -- mewtwo
  (150, 15000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 306, 5),
  -- mega-mewtwo-x
  (150, 15001, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 351, 5),
  -- mega-mewtwo-y
  (150, 15002, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 351, 5),
  -- mew
  (151, 15100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 100, 270, 4),
  -- noctowl
  (164, 16400, 15, 2, 0, 0, 0, 0, 0, 90, 70, 158, 3),
  -- ariados
  (168, 16800, 15, 0, 2, 0, 0, 0, 0, 90, 70, 140, 2),
  -- qwilfish
  (211, 21100, 15, 0, 1, 0, 0, 0, 0, 45, 70, 88, 3),
  -- magcargo
  (219, 21900, 15, 0, 0, 2, 0, 0, 0, 75, 70, 151, 3),
  -- corsola
  (222, 22200, 15, 0, 0, 1, 0, 1, 0, 60, 70, 144, 2),
  -- mantine
  (226, 22600, 15, 0, 0, 0, 0, 2, 0, 25, 70, 170, 5),
  -- cascoon
  (268, 26800, 15, 0, 0, 2, 0, 0, 0, 120, 70, 72, 3),
  -- dustox
  (269, 26900, 15, 0, 0, 0, 0, 3, 0, 45, 70, 173, 3),
  -- swellow
  (277, 27700, 15, 0, 0, 0, 0, 0, 2, 45, 70, 159, 4),
  -- pelipper
  (279, 27900, 15, 0, 0, 2, 0, 0, 0, 45, 70, 154, 3),
  -- masquerain
  (284, 28400, 15, 0, 0, 0, 1, 1, 0, 75, 70, 159, 3),
  -- delcatty
  (301, 30100, 15, 1, 0, 0, 0, 0, 1, 60, 70, 140, 2),
  -- volbeat
  (313, 31300, 15, 0, 0, 0, 0, 0, 1, 150, 70, 151, 1),
  -- illumise
  (314, 31400, 15, 0, 0, 0, 0, 0, 1, 150, 70, 151, 6),
  -- lunatone
  (337, 33700, 15, 0, 0, 0, 2, 0, 0, 45, 70, 161, 2),
  -- solrock
  (338, 33800, 15, 0, 2, 0, 0, 0, 0, 45, 70, 161, 2),
  -- chimecho
  (358, 35800, 15, 0, 0, 0, 1, 1, 0, 45, 70, 159, 2),
  -- woobat
  (527, 52700, 15, 0, 0, 0, 0, 0, 1, 190, 70, 65, 3),
  -- crustle
  (558, 55800, 15, 0, 0, 2, 0, 0, 0, 75, 70, 170, 3),
  -- beartic
  (614, 61400, 15, 0, 2, 0, 0, 0, 0, 60, 70, 177, 3),
  -- cryogonal
  (615, 61500, 15, 0, 0, 0, 0, 2, 0, 25, 70, 180, 3),
  -- greninja-battle-bond
  (658, 65802, 15, 0, 0, 0, 0, 0, 3, 45, 70, 239, 4),
  -- ash-greninja
  (658, 65803, 15, 0, 0, 0, 0, 0, 3, 45, 70, 288, 4),
  -- zygarde-10-percent
  (718, 71801, 15, 3, 0, 0, 0, 0, 0, 3, 0, 219, 5),
  -- zygarde-complete
  (718, 71803, 15, 3, 0, 0, 0, 0, 0, 3, 0, 319, 5),
  -- rowlet
  (722, 72200, 15, 1, 0, 0, 0, 0, 0, 45, 70, 64, 4),
  -- dartrix
  (723, 72300, 15, 2, 0, 0, 0, 0, 0, 45, 70, 147, 4),
  -- decidueye
  (724, 72400, 15, 0, 3, 0, 0, 0, 0, 45, 70, 239, 4),
  -- litten
  (725, 72500, 15, 0, 0, 0, 0, 0, 1, 45, 70, 64, 4),
  -- torracat
  (726, 72600, 15, 0, 0, 0, 0, 0, 2, 45, 70, 147, 4),
  -- incineroar
  (727, 72700, 15, 0, 3, 0, 0, 0, 0, 45, 70, 239, 4),
  -- popplio
  (728, 72800, 15, 0, 0, 0, 1, 0, 0, 45, 70, 64, 4),
  -- brionne
  (729, 72900, 15, 0, 0, 0, 2, 0, 0, 45, 70, 147, 4),
  -- primarina
  (730, 73000, 15, 0, 0, 0, 3, 0, 0, 45, 70, 239, 4),
  -- pikipek
  (731, 73100, 15, 0, 1, 0, 0, 0, 0, 255, 70, 53, 3),
  -- trumbeak
  (732, 73200, 15, 0, 2, 0, 0, 0, 0, 120, 70, 124, 3),
  -- toucannon
  (733, 73300, 15, 0, 3, 0, 0, 0, 0, 45, 70, 218, 3),
  -- yungoos
  (734, 73400, 15, 0, 1, 0, 0, 0, 0, 255, 70, 51, 3),
  -- gumshoos
  (735, 73500, 15, 0, 2, 0, 0, 0, 0, 127, 70, 146, 3),
  -- grubbin
  (736, 73600, 15, 0, 1, 0, 0, 0, 0, 255, 70, 60, 3),
  -- charjabug
  (737, 73700, 15, 0, 0, 2, 0, 0, 0, 120, 70, 140, 3),
  -- vikavolt
  (738, 73800, 15, 0, 0, 0, 3, 0, 0, 45, 70, 225, 3),
  -- crabrawler
  (739, 73900, 15, 0, 1, 0, 0, 0, 0, 225, 70, 68, 3),
  -- crabominable
  (740, 74000, 15, 0, 2, 0, 0, 0, 0, 60, 70, 167, 3),
  -- oricorio
  (741, 74100, 15, 0, 0, 0, 2, 0, 0, 45, 70, 167, 3),
  -- oricorio-pom-pom
  (741, 74101, 15, 0, 0, 0, 2, 0, 0, 45, 70, 167, 3),
  -- oricorio-pau
  (741, 74102, 15, 0, 0, 0, 2, 0, 0, 45, 70, 167, 3),
  -- oricorio-sensu
  (741, 74103, 15, 0, 0, 0, 2, 0, 0, 45, 70, 167, 3),
  -- cutiefly
  (742, 74200, 15, 0, 0, 0, 0, 0, 1, 190, 70, 61, 3),
  -- ribombee
  (743, 74300, 15, 0, 0, 0, 0, 0, 2, 75, 70, 162, 3),
  -- rockruff
  (744, 74400, 15, 0, 1, 0, 0, 0, 0, 190, 70, 56, 3),
  -- rockruff-own-tempo
  (744, 74401, 15, 0, 1, 0, 0, 0, 0, 190, 70, 56, 3),
  -- lycanroc
  (745, 74500, 15, 0, 2, 0, 0, 0, 0, 90, 70, 170, 3),
  -- lycanroc-midnight
  (745, 74501, 15, 0, 2, 0, 0, 0, 0, 90, 70, 170, 3),
  -- lycanroc-dusk
  (745, 74502, 16, 0, 2, 0, 0, 0, 0, 90, 70, 170, 3),
  -- wishiwashi
  (746, 74600, 15, 1, 0, 0, 0, 0, 0, 60, 70, 61, 2),
  -- wishiwashi-school
  (746, 74601, 15, 1, 0, 0, 0, 0, 0, 60, 70, 217, 2),
  -- mareanie
  (747, 74700, 15, 0, 0, 1, 0, 0, 0, 190, 70, 61, 3),
  -- toxapex
  (748, 74800, 15, 0, 0, 2, 0, 0, 0, 75, 70, 173, 3),
  -- mudbray
  (749, 74900, 15, 0, 1, 0, 0, 0, 0, 190, 70, 77, 3),
  -- mudsdale
  (750, 75000, 15, 0, 2, 0, 0, 0, 0, 60, 70, 175, 3),
  -- dewpider
  (751, 75100, 15, 0, 0, 0, 0, 1, 0, 200, 70, 54, 3),
  -- araquanid
  (752, 75200, 15, 0, 0, 0, 0, 2, 0, 100, 70, 159, 3),
  -- fomantis
  (753, 75300, 15, 0, 1, 0, 0, 0, 0, 190, 70, 50, 3),
  -- lurantis
  (754, 75400, 15, 0, 2, 0, 0, 0, 0, 75, 70, 168, 3),
  -- morelull
  (755, 75500, 15, 0, 0, 0, 0, 1, 0, 190, 70, 57, 3),
  -- shiinotic
  (756, 75600, 15, 0, 0, 0, 0, 2, 0, 75, 70, 142, 3),
  -- salandit
  (757, 75700, 15, 0, 0, 0, 0, 0, 1, 120, 70, 64, 3),
  -- salazzle
  (758, 75800, 15, 0, 0, 0, 0, 0, 2, 45, 70, 168, 3),
  -- stufful
  (759, 75900, 15, 0, 1, 0, 0, 0, 0, 140, 70, 68, 3),
  -- bewear
  (760, 76000, 15, 0, 2, 0, 0, 0, 0, 70, 70, 175, 3),
  -- bounsweet
  (761, 76100, 15, 1, 0, 0, 0, 0, 0, 235, 70, 42, 4),
  -- steenee
  (762, 76200, 15, 0, 0, 0, 0, 0, 2, 120, 70, 102, 4),
  -- tsareena
  (763, 76300, 15, 0, 3, 0, 0, 0, 0, 45, 70, 230, 4),
  -- comfey
  (764, 76400, 15, 0, 0, 0, 0, 2, 0, 60, 70, 170, 2),
  -- oranguru
  (765, 76500, 15, 0, 0, 0, 0, 2, 0, 45, 70, 172, 5),
  -- passimian
  (766, 76600, 15, 0, 2, 0, 0, 0, 0, 45, 70, 172, 5),
  -- wimpod
  (767, 76700, 15, 0, 0, 0, 0, 0, 1, 90, 70, 46, 3),
  -- golisopod
  (768, 76800, 15, 0, 0, 2, 0, 0, 0, 45, 70, 186, 3),
  -- sandygast
  (769, 76900, 15, 0, 0, 1, 0, 0, 0, 140, 70, 64, 3),
  -- palossand
  (770, 77000, 15, 0, 0, 2, 0, 0, 0, 60, 70, 168, 3),
  -- pyukumuku
  (771, 77100, 15, 0, 0, 0, 0, 2, 0, 60, 70, 144, 2),
  -- type-null
  (772, 77200, 15, 2, 0, 0, 0, 0, 0, 3, 0, 107, 5),
  -- silvally
  (773, 77300, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally
  (773, 77300, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-fighting
  (773, 77301, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-fighting
  (773, 77301, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-flying
  (773, 77302, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-flying
  (773, 77302, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-poison
  (773, 77303, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-poison
  (773, 77303, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-ground
  (773, 77304, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-ground
  (773, 77304, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-rock
  (773, 77305, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-rock
  (773, 77305, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-bug
  (773, 77306, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-bug
  (773, 77306, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-ghost
  (773, 77307, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-ghost
  (773, 77307, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-steel
  (773, 77308, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-steel
  (773, 77308, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-fire
  (773, 77309, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-fire
  (773, 77309, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-water
  (773, 77310, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-water
  (773, 77310, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-grass
  (773, 77311, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-grass
  (773, 77311, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-electric
  (773, 77312, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-electric
  (773, 77312, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-psychic
  (773, 77313, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-psychic
  (773, 77313, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-ice
  (773, 77314, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-ice
  (773, 77314, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-dragon
  (773, 77315, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-dragon
  (773, 77315, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-dark
  (773, 77316, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-dark
  (773, 77316, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-fairy
  (773, 77317, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-fairy
  (773, 77317, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- minior
  (774, 77400, 15, 0, 0, 1, 0, 1, 0, 30, 70, 154, 4),
  -- minior-core
  (774, 77401, 15, 0, 1, 0, 1, 0, 0, 255, 70, 175, 4),
  -- minior-orange
  (774, 77402, 15, 0, 0, 1, 0, 1, 0, 30, 70, 154, 4),
  -- minior-yellow
  (774, 77403, 15, 0, 0, 1, 0, 1, 0, 30, 70, 154, 4),
  -- minior-green
  (774, 77404, 15, 0, 0, 1, 0, 1, 0, 30, 70, 154, 4),
  -- minior-blue
  (774, 77405, 15, 0, 0, 1, 0, 1, 0, 30, 70, 154, 4),
  -- minior-indigo
  (774, 77406, 15, 0, 0, 1, 0, 1, 0, 30, 70, 154, 4),
  -- minior-violet
  (774, 77407, 15, 0, 0, 1, 0, 1, 0, 30, 70, 154, 4),
  -- komala
  (775, 77500, 15, 0, 2, 0, 0, 0, 0, 45, 70, 168, 5),
  -- turtonator
  (776, 77600, 15, 0, 0, 2, 0, 0, 0, 70, 70, 170, 3),
  -- togedemaru
  (777, 77700, 15, 0, 2, 0, 0, 0, 0, 180, 70, 152, 3),
  -- mimikyu
  (778, 77800, 15, 0, 0, 0, 0, 2, 0, 45, 70, 167, 3),
  -- mimikyu-busted
  (778, 77801, 15, 0, 0, 0, 0, 2, 0, 45, 70, 167, 3),
  -- bruxish
  (779, 77900, 15, 0, 2, 0, 0, 0, 0, 80, 70, 166, 3),
  -- drampa
  (780, 78000, 15, 0, 0, 0, 2, 0, 0, 70, 70, 170, 3),
  -- dhelmise
  (781, 78100, 15, 0, 2, 0, 0, 0, 0, 25, 70, 181, 3),
  -- jangmo-o
  (782, 78200, 15, 0, 0, 1, 0, 0, 0, 45, 70, 60, 5),
  -- hakamo-o
  (783, 78300, 15, 0, 0, 2, 0, 0, 0, 45, 70, 147, 5),
  -- kommo-o
  (784, 78400, 15, 0, 0, 3, 0, 0, 0, 45, 70, 270, 5),
  -- tapu-koko
  (785, 78500, 15, 0, 0, 0, 0, 0, 3, 3, 70, 114, 5),
  -- tapu-koko
  (785, 78500, 16, 0, 0, 0, 0, 0, 3, 3, 70, 257, 5),
  -- tapu-lele
  (786, 78600, 15, 0, 0, 0, 3, 0, 0, 3, 70, 114, 5),
  -- tapu-lele
  (786, 78600, 16, 0, 0, 0, 3, 0, 0, 3, 70, 257, 5),
  -- tapu-bulu
  (787, 78700, 15, 0, 3, 0, 0, 0, 0, 3, 70, 114, 5),
  -- tapu-bulu
  (787, 78700, 16, 0, 3, 0, 0, 0, 0, 3, 70, 257, 5),
  -- tapu-fini
  (788, 78800, 15, 0, 0, 0, 0, 3, 0, 3, 70, 114, 5),
  -- tapu-fini
  (788, 78800, 16, 0, 0, 0, 0, 3, 0, 3, 70, 257, 5),
  -- cosmog
  (789, 78900, 15, 1, 0, 0, 0, 0, 0, 45, 0, 40, 5),
  -- cosmoem
  (790, 79000, 15, 0, 0, 1, 0, 1, 0, 45, 0, 80, 5),
  -- cosmoem
  (790, 79000, 16, 0, 0, 1, 0, 1, 0, 45, 0, 140, 5),
  -- solgaleo
  (791, 79100, 15, 0, 3, 0, 0, 0, 0, 45, 0, 136, 5),
  -- solgaleo
  (791, 79100, 16, 0, 3, 0, 0, 0, 0, 45, 0, 306, 5),
  -- lunala
  (792, 79200, 15, 0, 0, 0, 3, 0, 0, 45, 0, 136, 5),
  -- lunala
  (792, 79200, 16, 0, 0, 0, 3, 0, 0, 45, 0, 306, 5),
  -- nihilego
  (793, 79300, 15, 0, 0, 0, 0, 3, 0, 45, 0, 114, 5),
  -- nihilego
  (793, 79300, 16, 0, 0, 0, 0, 3, 0, 45, 0, 257, 5),
  -- buzzwole
  (794, 79400, 15, 0, 1, 2, 0, 0, 0, 25, 0, 114, 5),
  -- buzzwole
  (794, 79400, 16, 0, 1, 2, 0, 0, 0, 45, 0, 257, 5),
  -- pheromosa
  (795, 79500, 15, 0, 0, 0, 0, 0, 3, 255, 0, 114, 5),
  -- pheromosa
  (795, 79500, 16, 0, 0, 0, 0, 0, 3, 45, 0, 257, 5),
  -- xurkitree
  (796, 79600, 15, 0, 0, 0, 3, 0, 0, 30, 0, 114, 5),
  -- xurkitree
  (796, 79600, 16, 0, 0, 0, 3, 0, 0, 45, 0, 257, 5),
  -- celesteela
  (797, 79700, 15, 0, 1, 1, 1, 0, 0, 25, 0, 114, 5),
  -- celesteela
  (797, 79700, 16, 0, 1, 1, 1, 0, 0, 45, 0, 257, 5),
  -- kartana
  (798, 79800, 15, 0, 3, 0, 0, 0, 0, 255, 0, 114, 5),
  -- kartana
  (798, 79800, 16, 0, 3, 0, 0, 0, 0, 45, 0, 257, 5),
  -- guzzlord
  (799, 79900, 15, 3, 0, 0, 0, 0, 0, 15, 0, 114, 5),
  -- guzzlord
  (799, 79900, 16, 3, 0, 0, 0, 0, 0, 45, 0, 257, 5),
  -- necrozma
  (800, 80000, 15, 0, 1, 0, 2, 0, 0, 3, 0, 120, 5),
  -- necrozma
  (800, 80000, 16, 0, 1, 0, 2, 0, 0, 255, 0, 270, 5),
  -- necrozma-dusk-mane
  (800, 80001, 16, 0, 3, 0, 0, 0, 0, 255, 0, 306, 5),
  -- necrozma-dawn-wings
  (800, 80002, 16, 0, 0, 0, 3, 0, 0, 255, 0, 306, 5),
  -- ultra-necrozma
  (800, 80003, 16, 0, 1, 0, 1, 0, 1, 255, 0, 339, 5),
  -- magearna
  (801, 80100, 15, 0, 0, 0, 3, 0, 0, 3, 0, 120, 5),
  -- magearna
  (801, 80100, 16, 0, 0, 0, 3, 0, 0, 3, 0, 270, 5),
  -- magearna-original-color
  (801, 80102, 15, 0, 0, 0, 3, 0, 0, 3, 0, 120, 5),
  -- magearna-original-color
  (801, 80102, 16, 0, 0, 0, 3, 0, 0, 3, 0, 270, 5),
  -- marshadow
  (802, 80200, 15, 0, 2, 0, 0, 0, 1, 3, 0, 120, 5),
  -- marshadow
  (802, 80200, 16, 0, 2, 0, 0, 0, 1, 3, 0, 270, 5),
  -- poipole
  (803, 80300, 16, 0, 0, 0, 0, 0, 1, 45, 0, 189, 5),
  -- naganadel
  (804, 80400, 16, 0, 0, 0, 3, 0, 0, 45, 0, 243, 5),
  -- stakataka
  (805, 80500, 16, 0, 0, 3, 0, 0, 0, 30, 0, 257, 5),
  -- blacephalon
  (806, 80600, 16, 0, 0, 0, 3, 0, 0, 30, 0, 257, 5),
  -- zeraora
  (807, 80700, 16, 0, 0, 0, 0, 0, 3, 3, 0, 270, 5),
  -- meltan
  (808, 80800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 135, 5),
  -- melmetal
  (809, 80900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 270, 5);
