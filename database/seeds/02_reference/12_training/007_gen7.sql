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
  (25, 2501, 15, 0, 0, 0, 0, 0, 2, 190, 70, 112, 3),
  -- pikachu-partner
  (25, 2501, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 86, 4),
  -- pikachu-original-cap
  (25, 2503, 15, 0, 0, 0, 0, 0, 2, 190, 70, 112, 3),
  -- pikachu-original-cap
  (25, 2503, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 112, 3),
  -- pikachu-hoenn-cap
  (25, 2504, 15, 0, 0, 0, 0, 0, 2, 190, 70, 112, 3),
  -- pikachu-hoenn-cap
  (25, 2504, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 112, 3),
  -- pikachu-sinnoh-cap
  (25, 2505, 15, 0, 0, 0, 0, 0, 2, 190, 70, 112, 3),
  -- pikachu-sinnoh-cap
  (25, 2505, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 112, 3),
  -- pikachu-unova-cap
  (25, 2506, 15, 0, 0, 0, 0, 0, 2, 190, 70, 112, 3),
  -- pikachu-unova-cap
  (25, 2506, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 112, 3),
  -- pikachu-kalos-cap
  (25, 2507, 15, 0, 0, 0, 0, 0, 2, 190, 70, 112, 3),
  -- pikachu-kalos-cap
  (25, 2507, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 112, 3),
  -- pikachu-alola-cap
  (25, 2508, 15, 0, 0, 0, 0, 0, 2, 190, 70, 112, 3),
  -- pikachu-alola-cap
  (25, 2508, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 112, 3),
  -- pikachu-partner-cap
  (25, 2509, 15, 0, 0, 0, 0, 0, 2, 190, 70, 112, 3),
  -- pikachu-partner-cap
  (25, 2509, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 112, 3),
  -- pikachu-cosplay
  (25, 2511, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 64, 3),
  -- pikachu-rock-star
  (25, 2512, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 64, 3),
  -- pikachu-belle
  (25, 2513, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 64, 3),
  -- pikachu-pop-star
  (25, 2514, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 64, 3),
  -- pikachu-phd
  (25, 2515, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 64, 3),
  -- pikachu-libre
  (25, 2516, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 64, 3),
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
  (133, 13301, 15, 0, 0, 0, 0, 1, 0, 45, 70, 65, 3),
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
  -- chikorita
  (152, 15200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 64, 4),
  -- bayleef
  (153, 15300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 142, 4),
  -- meganium
  (154, 15400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 236, 4),
  -- cyndaquil
  (155, 15500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 62, 4),
  -- quilava
  (156, 15600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 142, 4),
  -- typhlosion
  (157, 15700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 240, 4),
  -- totodile
  (158, 15800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 63, 4),
  -- croconaw
  (159, 15900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 142, 4),
  -- feraligatr
  (160, 16000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 239, 4),
  -- sentret
  (161, 16100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 43, 3),
  -- furret
  (162, 16200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 145, 3),
  -- hoothoot
  (163, 16300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 52, 3),
  -- noctowl
  (164, 16400, 15, 2, 0, 0, 0, 0, 0, 90, 70, 158, 3),
  -- noctowl
  (164, 16400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 158, 3),
  -- ledyba
  (165, 16500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 53, 2),
  -- ledian
  (166, 16600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 137, 2),
  -- spinarak
  (167, 16700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 50, 2),
  -- ariados
  (168, 16800, 15, 0, 2, 0, 0, 0, 0, 90, 70, 140, 2),
  -- ariados
  (168, 16800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 140, 2),
  -- crobat
  (169, 16900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 241, 3),
  -- chinchou
  (170, 17000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 66, 5),
  -- lanturn
  (171, 17100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 161, 5),
  -- pichu
  (172, 17200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 41, 3),
  -- pichu-spiky-eared
  (172, 17201, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 41, 3),
  -- cleffa
  (173, 17300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 150, 140, 44, 2),
  -- igglybuff
  (174, 17400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 170, 70, 42, 2),
  -- togepi
  (175, 17500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 49, 2),
  -- togetic
  (176, 17600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 142, 2),
  -- natu
  (177, 17700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 64, 3),
  -- xatu
  (178, 17800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 165, 3),
  -- mareep
  (179, 17900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 235, 70, 56, 4),
  -- flaaffy
  (180, 18000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 128, 4),
  -- ampharos
  (181, 18100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 230, 4),
  -- mega-ampharos
  (181, 18101, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 275, 4),
  -- bellossom
  (182, 18200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 221, 4),
  -- marill
  (183, 18300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 88, 2),
  -- azumarill
  (184, 18400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 189, 2),
  -- sudowoodo
  (185, 18500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 65, 70, 144, 3),
  -- politoed
  (186, 18600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 225, 4),
  -- hoppip
  (187, 18700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 50, 4),
  -- skiploom
  (188, 18800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 119, 4),
  -- jumpluff
  (189, 18900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 207, 4),
  -- aipom
  (190, 19000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 72, 2),
  -- sunkern
  (191, 19100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 235, 70, 36, 4),
  -- sunflora
  (192, 19200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 149, 4),
  -- yanma
  (193, 19300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 78, 3),
  -- wooper
  (194, 19400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 42, 3),
  -- quagsire
  (195, 19500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 151, 3),
  -- espeon
  (196, 19600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 184, 3),
  -- umbreon
  (197, 19700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 184, 3),
  -- murkrow
  (198, 19800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 35, 81, 4),
  -- slowking
  (199, 19900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 70, 70, 172, 3),
  -- misdreavus
  (200, 20000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 87, 2),
  -- unown
  (201, 20100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-b
  (201, 20101, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-c
  (201, 20102, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-d
  (201, 20103, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-e
  (201, 20104, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-f
  (201, 20105, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-g
  (201, 20106, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-h
  (201, 20107, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-i
  (201, 20108, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-j
  (201, 20109, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-k
  (201, 20110, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-l
  (201, 20111, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-m
  (201, 20112, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-n
  (201, 20113, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-o
  (201, 20114, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-p
  (201, 20115, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-q
  (201, 20116, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-r
  (201, 20117, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-s
  (201, 20118, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-t
  (201, 20119, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-u
  (201, 20120, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-v
  (201, 20121, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-w
  (201, 20122, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-x
  (201, 20123, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-y
  (201, 20124, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-z
  (201, 20125, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-exclamation
  (201, 20126, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- unown-question
  (201, 20127, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 118, 3),
  -- wobbuffet
  (202, 20200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 142, 3),
  -- girafarig
  (203, 20300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 159, 3),
  -- pineco
  (204, 20400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 58, 3),
  -- forretress
  (205, 20500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 163, 3),
  -- dunsparce
  (206, 20600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 145, 3),
  -- gligar
  (207, 20700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 86, 4),
  -- steelix
  (208, 20800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 179, 3),
  -- mega-steelix
  (208, 20801, 17, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 214, 3),
  -- snubbull
  (209, 20900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 60, 2),
  -- granbull
  (210, 21000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 158, 2),
  -- qwilfish
  (211, 21100, 15, 0, 1, 0, 0, 0, 0, 45, 70, 88, 3),
  -- qwilfish
  (211, 21100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 88, 3),
  -- scizor
  (212, 21200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 175, 3),
  -- mega-scizor
  (212, 21201, 17, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 210, 3),
  -- shuckle
  (213, 21300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 177, 4),
  -- heracross
  (214, 21400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 175, 5),
  -- mega-heracross
  (214, 21401, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 210, 5),
  -- sneasel
  (215, 21500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 35, 86, 4),
  -- teddiursa
  (216, 21600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 66, 3),
  -- ursaring
  (217, 21700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 175, 3),
  -- slugma
  (218, 21800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 50, 3),
  -- magcargo
  (219, 21900, 15, 0, 0, 2, 0, 0, 0, 75, 70, 151, 3),
  -- magcargo
  (219, 21900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 151, 3),
  -- swinub
  (220, 22000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 50, 5),
  -- piloswine
  (221, 22100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 158, 5),
  -- corsola
  (222, 22200, 15, 0, 0, 1, 0, 1, 0, 60, 70, 144, 2),
  -- corsola
  (222, 22200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 144, 2),
  -- remoraid
  (223, 22300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 60, 3),
  -- octillery
  (224, 22400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 168, 3),
  -- delibird
  (225, 22500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 116, 2),
  -- mantine
  (226, 22600, 15, 0, 0, 0, 0, 2, 0, 25, 70, 170, 5),
  -- mantine
  (226, 22600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 170, 5),
  -- skarmory
  (227, 22700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 163, 5),
  -- houndour
  (228, 22800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 35, 66, 5),
  -- houndoom
  (229, 22900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 175, 5),
  -- mega-houndoom
  (229, 22901, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 210, 5),
  -- kingdra
  (230, 23000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 243, 3),
  -- phanpy
  (231, 23100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 66, 3),
  -- donphan
  (232, 23200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 175, 3),
  -- porygon2
  (233, 23300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 180, 3),
  -- stantler
  (234, 23400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 163, 5),
  -- smeargle
  (235, 23500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 88, 2),
  -- tyrogue
  (236, 23600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 42, 3),
  -- hitmontop
  (237, 23700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 159, 3),
  -- smoochum
  (238, 23800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 61, 3),
  -- elekid
  (239, 23900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 72, 3),
  -- magby
  (240, 24000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 73, 3),
  -- miltank
  (241, 24100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 172, 5),
  -- blissey
  (242, 24200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 140, 608, 2),
  -- raikou
  (243, 24300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 35, 261, 5),
  -- entei
  (244, 24400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 35, 261, 5),
  -- suicune
  (245, 24500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 35, 261, 5),
  -- larvitar
  (246, 24600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 60, 5),
  -- pupitar
  (247, 24700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 144, 5),
  -- tyranitar
  (248, 24800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 270, 5),
  -- mega-tyranitar
  (248, 24801, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 315, 5),
  -- lugia
  (249, 24900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 306, 5),
  -- ho-oh
  (250, 25000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 306, 5),
  -- celebi
  (251, 25100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 100, 270, 4),
  -- treecko
  (252, 25200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 62, 4),
  -- grovyle
  (253, 25300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 142, 4),
  -- sceptile
  (254, 25400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 239, 4),
  -- mega-sceptile
  (254, 25401, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 284, 4),
  -- torchic
  (255, 25500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 62, 4),
  -- combusken
  (256, 25600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 142, 4),
  -- blaziken
  (257, 25700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 239, 4),
  -- mega-blaziken
  (257, 25701, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 284, 4),
  -- mudkip
  (258, 25800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 62, 4),
  -- marshtomp
  (259, 25900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 142, 4),
  -- swampert
  (260, 26000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 241, 4),
  -- mega-swampert
  (260, 26001, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 286, 4),
  -- poochyena
  (261, 26100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 56, 3),
  -- mightyena
  (262, 26200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 127, 70, 147, 3),
  -- zigzagoon
  (263, 26300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 56, 3),
  -- linoone
  (264, 26400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 147, 3),
  -- wurmple
  (265, 26500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 56, 3),
  -- silcoon
  (266, 26600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 72, 3),
  -- beautifly
  (267, 26700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 178, 3),
  -- cascoon
  (268, 26800, 15, 0, 0, 2, 0, 0, 0, 120, 70, 72, 3),
  -- cascoon
  (268, 26800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 72, 3),
  -- dustox
  (269, 26900, 15, 0, 0, 0, 0, 3, 0, 45, 70, 173, 3),
  -- dustox
  (269, 26900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 173, 3),
  -- lotad
  (270, 27000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 44, 4),
  -- lombre
  (271, 27100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 119, 4),
  -- ludicolo
  (272, 27200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 216, 4),
  -- seedot
  (273, 27300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 44, 4),
  -- nuzleaf
  (274, 27400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 119, 4),
  -- shiftry
  (275, 27500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 216, 4),
  -- taillow
  (276, 27600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 54, 4),
  -- swellow
  (277, 27700, 15, 0, 0, 0, 0, 0, 2, 45, 70, 159, 4),
  -- swellow
  (277, 27700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 159, 4),
  -- wingull
  (278, 27800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 54, 3),
  -- pelipper
  (279, 27900, 15, 0, 0, 2, 0, 0, 0, 45, 70, 154, 3),
  -- pelipper
  (279, 27900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 154, 3),
  -- ralts
  (280, 28000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 235, 35, 40, 5),
  -- kirlia
  (281, 28100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 35, 97, 5),
  -- gardevoir
  (282, 28200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 233, 5),
  -- mega-gardevoir
  (282, 28201, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 278, 5),
  -- surskit
  (283, 28300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 54, 3),
  -- masquerain
  (284, 28400, 15, 0, 0, 0, 1, 1, 0, 75, 70, 159, 3),
  -- masquerain
  (284, 28400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 159, 3),
  -- shroomish
  (285, 28500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 59, 6),
  -- breloom
  (286, 28600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 161, 6),
  -- slakoth
  (287, 28700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 56, 5),
  -- vigoroth
  (288, 28800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 154, 5),
  -- slaking
  (289, 28900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 252, 5),
  -- nincada
  (290, 29000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 53, 1),
  -- ninjask
  (291, 29100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 160, 1),
  -- shedinja
  (292, 29200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 83, 1),
  -- whismur
  (293, 29300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 48, 4),
  -- loudred
  (294, 29400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 126, 4),
  -- exploud
  (295, 29500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 221, 4),
  -- makuhita
  (296, 29600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 180, 70, 47, 6),
  -- hariyama
  (297, 29700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 166, 6),
  -- azurill
  (298, 29800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 150, 70, 38, 2),
  -- nosepass
  (299, 29900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 75, 3),
  -- skitty
  (300, 30000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 52, 2),
  -- delcatty
  (301, 30100, 15, 1, 0, 0, 0, 0, 1, 60, 70, 140, 2),
  -- delcatty
  (301, 30100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 140, 2),
  -- sableye
  (302, 30200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 133, 4),
  -- mega-sableye
  (302, 30201, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 168, 4),
  -- mawile
  (303, 30300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 133, 2),
  -- mega-mawile
  (303, 30301, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 168, 2),
  -- aron
  (304, 30400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 180, 35, 66, 5),
  -- lairon
  (305, 30500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 35, 151, 5),
  -- aggron
  (306, 30600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 239, 5),
  -- mega-aggron
  (306, 30601, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 284, 5),
  -- meditite
  (307, 30700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 180, 70, 56, 3),
  -- medicham
  (308, 30800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 144, 3),
  -- mega-medicham
  (308, 30801, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 179, 3),
  -- electrike
  (309, 30900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 59, 5),
  -- manectric
  (310, 31000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 166, 5),
  -- mega-manectric
  (310, 31001, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 201, 5),
  -- plusle
  (311, 31100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 142, 3),
  -- minun
  (312, 31200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 142, 3),
  -- volbeat
  (313, 31300, 15, 0, 0, 0, 0, 0, 1, 150, 70, 151, 1),
  -- volbeat
  (313, 31300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 150, 70, 151, 1),
  -- illumise
  (314, 31400, 15, 0, 0, 0, 0, 0, 1, 150, 70, 151, 6),
  -- illumise
  (314, 31400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 150, 70, 151, 6),
  -- roselia
  (315, 31500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 150, 70, 140, 4),
  -- gulpin
  (316, 31600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 60, 6),
  -- swalot
  (317, 31700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 163, 6),
  -- carvanha
  (318, 31800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 35, 61, 5),
  -- sharpedo
  (319, 31900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 35, 161, 5),
  -- mega-sharpedo
  (319, 31901, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 35, 196, 5),
  -- wailmer
  (320, 32000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 125, 70, 80, 6),
  -- wailord
  (321, 32100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 175, 6),
  -- numel
  (322, 32200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 61, 3),
  -- camerupt
  (323, 32300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 150, 70, 161, 3),
  -- mega-camerupt
  (323, 32301, 17, NULL, NULL, NULL, NULL, NULL, NULL, 150, 70, 196, 3),
  -- torkoal
  (324, 32400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 165, 3),
  -- spoink
  (325, 32500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 66, 2),
  -- grumpig
  (326, 32600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 165, 2),
  -- spinda
  (327, 32700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 126, 2),
  -- trapinch
  (328, 32800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 58, 4),
  -- vibrava
  (329, 32900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 119, 4),
  -- flygon
  (330, 33000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 234, 4),
  -- cacnea
  (331, 33100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 35, 67, 4),
  -- cacturne
  (332, 33200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 35, 166, 4),
  -- swablu
  (333, 33300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 62, 1),
  -- altaria
  (334, 33400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 172, 1),
  -- mega-altaria
  (334, 33401, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 207, 1),
  -- zangoose
  (335, 33500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 160, 1),
  -- seviper
  (336, 33600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 160, 6),
  -- lunatone
  (337, 33700, 15, 0, 0, 0, 2, 0, 0, 45, 70, 161, 2),
  -- lunatone
  (337, 33700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 161, 2),
  -- solrock
  (338, 33800, 15, 0, 2, 0, 0, 0, 0, 45, 70, 161, 2),
  -- solrock
  (338, 33800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 161, 2),
  -- barboach
  (339, 33900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 58, 3),
  -- whiscash
  (340, 34000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 164, 3),
  -- corphish
  (341, 34100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 205, 70, 62, 6),
  -- crawdaunt
  (342, 34200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 155, 70, 164, 6),
  -- baltoy
  (343, 34300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 60, 3),
  -- claydol
  (344, 34400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 175, 3),
  -- lileep
  (345, 34500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 71, 1),
  -- cradily
  (346, 34600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 173, 1),
  -- anorith
  (347, 34700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 71, 1),
  -- armaldo
  (348, 34800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 173, 1),
  -- feebas
  (349, 34900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 40, 1),
  -- milotic
  (350, 35000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 189, 1),
  -- castform
  (351, 35100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 147, 3),
  -- castform-sunny
  (351, 35101, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 147, 3),
  -- castform-rainy
  (351, 35102, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 147, 3),
  -- castform-snowy
  (351, 35103, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 147, 3),
  -- kecleon
  (352, 35200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 154, 4),
  -- shuppet
  (353, 35300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 35, 59, 2),
  -- banette
  (354, 35400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 159, 2),
  -- mega-banette
  (354, 35401, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 194, 2),
  -- duskull
  (355, 35500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 35, 59, 2),
  -- dusclops
  (356, 35600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 35, 159, 2),
  -- tropius
  (357, 35700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 161, 5),
  -- chimecho
  (358, 35800, 15, 0, 0, 0, 1, 1, 0, 45, 70, 159, 2),
  -- chimecho
  (358, 35800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 159, 2),
  -- absol
  (359, 35900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 35, 163, 4),
  -- mega-absol
  (359, 35901, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 35, 198, 4),
  -- wynaut
  (360, 36000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 125, 70, 52, 3),
  -- snorunt
  (361, 36100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 60, 3),
  -- glalie
  (362, 36200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 168, 3),
  -- mega-glalie
  (362, 36201, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 203, 3),
  -- spheal
  (363, 36300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 58, 4),
  -- sealeo
  (364, 36400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 144, 4),
  -- walrein
  (365, 36500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 239, 4),
  -- clamperl
  (366, 36600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 69, 1),
  -- huntail
  (367, 36700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 170, 1),
  -- gorebyss
  (368, 36800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 170, 1),
  -- relicanth
  (369, 36900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 170, 5),
  -- luvdisc
  (370, 37000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 116, 2),
  -- bagon
  (371, 37100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 60, 5),
  -- shelgon
  (372, 37200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 147, 5),
  -- salamence
  (373, 37300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 270, 5),
  -- mega-salamence
  (373, 37301, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 315, 5),
  -- beldum
  (374, 37400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 35, 60, 5),
  -- metang
  (375, 37500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 35, 147, 5),
  -- metagross
  (376, 37600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 35, 270, 5),
  -- mega-metagross
  (376, 37601, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 35, 315, 5),
  -- regirock
  (377, 37700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 35, 261, 5),
  -- regice
  (378, 37800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 35, 261, 5),
  -- registeel
  (379, 37900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 35, 261, 5),
  -- latias
  (380, 38000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 90, 270, 5),
  -- mega-latias
  (380, 38001, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 90, 315, 5),
  -- latios
  (381, 38100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 90, 270, 5),
  -- mega-latios
  (381, 38101, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 90, 315, 5),
  -- kyogre
  (382, 38200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 302, 5),
  -- primal-kyogre
  (382, 38201, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 347, 5),
  -- groudon
  (383, 38300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 302, 5),
  -- primal-groudon
  (383, 38301, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 347, 5),
  -- rayquaza
  (384, 38400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 0, 306, 5),
  -- mega-rayquaza
  (384, 38401, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 0, 351, 5),
  -- jirachi
  (385, 38500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 100, 270, 5),
  -- deoxys
  (386, 38600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 270, 5),
  -- deoxys-attack
  (386, 38601, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 270, 5),
  -- deoxys-defense
  (386, 38602, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 270, 5),
  -- deoxys-speed
  (386, 38603, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 270, 5),
  -- turtwig
  (387, 38700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 64, 4),
  -- grotle
  (388, 38800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 142, 4),
  -- torterra
  (389, 38900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 236, 4),
  -- chimchar
  (390, 39000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 62, 4),
  -- monferno
  (391, 39100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 142, 4),
  -- infernape
  (392, 39200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 240, 4),
  -- piplup
  (393, 39300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 63, 4),
  -- prinplup
  (394, 39400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 142, 4),
  -- empoleon
  (395, 39500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 239, 4),
  -- starly
  (396, 39600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 49, 4),
  -- staravia
  (397, 39700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 119, 4),
  -- staraptor
  (398, 39800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 218, 4),
  -- bidoof
  (399, 39900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 50, 3),
  -- bibarel
  (400, 40000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 127, 70, 144, 3),
  -- kricketot
  (401, 40100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 39, 4),
  -- kricketune
  (402, 40200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 134, 4),
  -- shinx
  (403, 40300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 235, 70, 53, 4),
  -- luxio
  (404, 40400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 100, 127, 4),
  -- luxray
  (405, 40500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 235, 4),
  -- budew
  (406, 40600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 56, 4),
  -- roserade
  (407, 40700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 232, 4),
  -- cranidos
  (408, 40800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 70, 1),
  -- rampardos
  (409, 40900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 173, 1),
  -- shieldon
  (410, 41000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 70, 1),
  -- bastiodon
  (411, 41100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 173, 1),
  -- burmy
  (412, 41200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 45, 3),
  -- burmy-sandy
  (412, 41201, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 45, 3),
  -- burmy-trash
  (412, 41202, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 45, 3),
  -- wormadam
  (413, 41300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 148, 3),
  -- wormadam-sandy
  (413, 41301, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 148, 3),
  -- wormadam-trash
  (413, 41302, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 148, 3),
  -- mothim
  (414, 41400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 148, 3),
  -- combee
  (415, 41500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 49, 4),
  -- vespiquen
  (416, 41600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 166, 4),
  -- pachirisu
  (417, 41700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 100, 142, 3),
  -- buizel
  (418, 41800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 66, 3),
  -- floatzel
  (419, 41900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 173, 3),
  -- cherubi
  (420, 42000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 55, 3),
  -- cherrim
  (421, 42100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 158, 3),
  -- cherrim-sunshine
  (421, 42101, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 158, 3),
  -- shellos
  (422, 42200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 65, 3),
  -- shellos-east
  (422, 42201, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 65, 3),
  -- gastrodon
  (423, 42300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 166, 3),
  -- gastrodon-east
  (423, 42301, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 166, 3),
  -- ambipom
  (424, 42400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 100, 169, 2),
  -- drifloon
  (425, 42500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 125, 70, 70, 6),
  -- drifblim
  (426, 42600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 174, 6),
  -- buneary
  (427, 42700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 0, 70, 3),
  -- lopunny
  (428, 42800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 140, 168, 3),
  -- mega-lopunny
  (428, 42801, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 140, 203, 3),
  -- mismagius
  (429, 42900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 173, 2),
  -- honchkrow
  (430, 43000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 35, 177, 4),
  -- glameow
  (431, 43100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 62, 2),
  -- purugly
  (432, 43200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 158, 2),
  -- chingling
  (433, 43300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 57, 2),
  -- stunky
  (434, 43400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 66, 3),
  -- skuntank
  (435, 43500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 168, 3),
  -- bronzor
  (436, 43600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 60, 3),
  -- bronzong
  (437, 43700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 175, 3),
  -- bonsly
  (438, 43800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 58, 3),
  -- mime-jr
  (439, 43900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 145, 70, 62, 3),
  -- happiny
  (440, 44000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 130, 140, 110, 2),
  -- chatot
  (441, 44100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 35, 144, 4),
  -- spiritomb
  (442, 44200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 100, 70, 170, 3),
  -- gible
  (443, 44300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 60, 5),
  -- gabite
  (444, 44400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 144, 5),
  -- garchomp
  (445, 44500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 270, 5),
  -- mega-garchomp
  (445, 44501, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 315, 5),
  -- munchlax
  (446, 44600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 50, 70, 78, 5),
  -- riolu
  (447, 44700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 57, 4),
  -- lucario
  (448, 44800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 184, 4),
  -- mega-lucario
  (448, 44801, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 219, 4),
  -- hippopotas
  (449, 44900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 140, 70, 66, 5),
  -- hippowdon
  (450, 45000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 184, 5),
  -- skorupi
  (451, 45100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 66, 5),
  -- drapion
  (452, 45200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 175, 5),
  -- croagunk
  (453, 45300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 140, 100, 60, 3),
  -- toxicroak
  (454, 45400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 172, 3),
  -- carnivine
  (455, 45500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 159, 5),
  -- finneon
  (456, 45600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 66, 1),
  -- lumineon
  (457, 45700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 161, 1),
  -- mantyke
  (458, 45800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 69, 5),
  -- snover
  (459, 45900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 67, 5),
  -- abomasnow
  (460, 46000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 173, 5),
  -- mega-abomasnow
  (460, 46001, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 208, 5),
  -- weavile
  (461, 46100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 179, 4),
  -- magnezone
  (462, 46200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 241, 3),
  -- lickilicky
  (463, 46300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 180, 3),
  -- rhyperior
  (464, 46400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 241, 5),
  -- tangrowth
  (465, 46500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 187, 3),
  -- electivire
  (466, 46600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 243, 3),
  -- magmortar
  (467, 46700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 243, 3),
  -- togekiss
  (468, 46800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 245, 2),
  -- yanmega
  (469, 46900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 180, 3),
  -- leafeon
  (470, 47000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 184, 3),
  -- glaceon
  (471, 47100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 184, 3),
  -- gliscor
  (472, 47200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 179, 4),
  -- mamoswine
  (473, 47300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 50, 70, 239, 5),
  -- porygon-z
  (474, 47400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 241, 3),
  -- gallade
  (475, 47500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 233, 5),
  -- mega-gallade
  (475, 47501, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 278, 5),
  -- probopass
  (476, 47600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 184, 3),
  -- dusknoir
  (477, 47700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 236, 2),
  -- froslass
  (478, 47800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 168, 3),
  -- rotom
  (479, 47900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 154, 3),
  -- rotom-heat
  (479, 47901, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 182, 3),
  -- rotom-wash
  (479, 47902, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 182, 3),
  -- rotom-frost
  (479, 47903, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 182, 3),
  -- rotom-fan
  (479, 47904, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 182, 3),
  -- rotom-mow
  (479, 47905, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 182, 3),
  -- uxie
  (480, 48000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 140, 261, 5),
  -- mesprit
  (481, 48100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 140, 261, 5),
  -- azelf
  (482, 48200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 140, 261, 5),
  -- dialga
  (483, 48300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 306, 5),
  -- palkia
  (484, 48400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 306, 5),
  -- heatran
  (485, 48500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 100, 270, 5),
  -- regigigas
  (486, 48600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 302, 5),
  -- giratina
  (487, 48700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 306, 5),
  -- giratina-origin
  (487, 48701, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 306, 5),
  -- cresselia
  (488, 48800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 100, 270, 5),
  -- phione
  (489, 48900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 216, 5),
  -- manaphy
  (490, 49000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 70, 270, 5),
  -- darkrai
  (491, 49100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 270, 5),
  -- shaymin
  (492, 49200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 100, 270, 4),
  -- shaymin-sky
  (492, 49201, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 100, 270, 4),
  -- arceus
  (493, 49300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 324, 5),
  -- arceus-fighting
  (493, 49301, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 324, 5),
  -- arceus-flying
  (493, 49302, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 324, 5),
  -- arceus-poison
  (493, 49303, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 324, 5),
  -- arceus-ground
  (493, 49304, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 324, 5),
  -- arceus-rock
  (493, 49305, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 324, 5),
  -- arceus-bug
  (493, 49306, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 324, 5),
  -- arceus-ghost
  (493, 49307, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 324, 5),
  -- arceus-steel
  (493, 49308, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 324, 5),
  -- arceus-fire
  (493, 49309, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 324, 5),
  -- arceus-water
  (493, 49310, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 324, 5),
  -- arceus-grass
  (493, 49311, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 324, 5),
  -- arceus-electric
  (493, 49312, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 324, 5),
  -- arceus-psychic
  (493, 49313, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 324, 5),
  -- arceus-ice
  (493, 49314, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 324, 5),
  -- arceus-dragon
  (493, 49315, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 324, 5),
  -- arceus-dark
  (493, 49316, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 324, 5),
  -- arceus-fairy
  (493, 49317, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 324, 5),
  -- victini
  (494, 49400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 100, 270, 5),
  -- snivy
  (495, 49500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 62, 4),
  -- servine
  (496, 49600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 145, 4),
  -- serperior
  (497, 49700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 238, 4),
  -- tepig
  (498, 49800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 62, 4),
  -- pignite
  (499, 49900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 146, 4),
  -- emboar
  (500, 50000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 238, 4),
  -- oshawott
  (501, 50100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 62, 4),
  -- dewott
  (502, 50200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 145, 4),
  -- samurott
  (503, 50300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 238, 4),
  -- patrat
  (504, 50400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 51, 3),
  -- watchog
  (505, 50500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 147, 3),
  -- lillipup
  (506, 50600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 55, 4),
  -- herdier
  (507, 50700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 130, 4),
  -- stoutland
  (508, 50800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 225, 4),
  -- purrloin
  (509, 50900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 56, 3),
  -- liepard
  (510, 51000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 156, 3),
  -- pansage
  (511, 51100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 63, 3),
  -- simisage
  (512, 51200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 174, 3),
  -- pansear
  (513, 51300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 63, 3),
  -- simisear
  (514, 51400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 174, 3),
  -- panpour
  (515, 51500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 63, 3),
  -- simipour
  (516, 51600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 174, 3),
  -- munna
  (517, 51700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 58, 2),
  -- musharna
  (518, 51800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 170, 2),
  -- pidove
  (519, 51900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 53, 4),
  -- tranquill
  (520, 52000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 125, 4),
  -- unfezant
  (521, 52100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 220, 4),
  -- blitzle
  (522, 52200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 59, 3),
  -- zebstrika
  (523, 52300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 174, 3),
  -- roggenrola
  (524, 52400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 56, 4),
  -- boldore
  (525, 52500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 137, 4),
  -- gigalith
  (526, 52600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 232, 4),
  -- woobat
  (527, 52700, 15, 0, 0, 0, 0, 0, 1, 190, 70, 65, 3),
  -- woobat
  (527, 52700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 65, 3),
  -- swoobat
  (528, 52800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 149, 3),
  -- drilbur
  (529, 52900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 66, 3),
  -- excadrill
  (530, 53000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 178, 3),
  -- audino
  (531, 53100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 390, 2),
  -- mega-audino
  (531, 53101, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 425, 2),
  -- timburr
  (532, 53200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 180, 70, 61, 4),
  -- gurdurr
  (533, 53300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 142, 4),
  -- conkeldurr
  (534, 53400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 227, 4),
  -- tympole
  (535, 53500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 59, 4),
  -- palpitoad
  (536, 53600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 134, 4),
  -- seismitoad
  (537, 53700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 229, 4),
  -- throh
  (538, 53800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 163, 3),
  -- sawk
  (539, 53900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 163, 3),
  -- sewaddle
  (540, 54000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 62, 4),
  -- swadloon
  (541, 54100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 133, 4),
  -- leavanny
  (542, 54200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 225, 4),
  -- venipede
  (543, 54300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 52, 4),
  -- whirlipede
  (544, 54400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 126, 4),
  -- scolipede
  (545, 54500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 218, 4),
  -- cottonee
  (546, 54600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 56, 3),
  -- whimsicott
  (547, 54700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 168, 3),
  -- petilil
  (548, 54800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 56, 3),
  -- lilligant
  (549, 54900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 168, 3),
  -- basculin
  (550, 55000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 161, 3),
  -- basculin-blue-striped
  (550, 55001, 17, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 161, 3),
  -- sandile
  (551, 55100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 180, 70, 58, 4),
  -- krokorok
  (552, 55200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 123, 4),
  -- krookodile
  (553, 55300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 234, 4),
  -- darumaka
  (554, 55400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 63, 4),
  -- darmanitan
  (555, 55500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 168, 4),
  -- darmanitan-zen
  (555, 55501, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 189, 4),
  -- maractus
  (556, 55600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 161, 3),
  -- dwebble
  (557, 55700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 65, 3),
  -- crustle
  (558, 55800, 15, 0, 0, 2, 0, 0, 0, 75, 70, 170, 3),
  -- crustle
  (558, 55800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 170, 3),
  -- scraggy
  (559, 55900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 180, 35, 70, 3),
  -- scrafty
  (560, 56000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 171, 3),
  -- sigilyph
  (561, 56100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 172, 3),
  -- yamask
  (562, 56200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 61, 3),
  -- cofagrigus
  (563, 56300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 169, 3),
  -- tirtouga
  (564, 56400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 71, 3),
  -- carracosta
  (565, 56500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 173, 3),
  -- archen
  (566, 56600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 71, 3),
  -- archeops
  (567, 56700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 177, 3),
  -- trubbish
  (568, 56800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 66, 3),
  -- garbodor
  (569, 56900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 166, 3),
  -- zorua
  (570, 57000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 66, 4),
  -- zoroark
  (571, 57100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 179, 4),
  -- minccino
  (572, 57200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 60, 2),
  -- cinccino
  (573, 57300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 165, 2),
  -- gothita
  (574, 57400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 58, 4),
  -- gothorita
  (575, 57500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 100, 70, 137, 4),
  -- gothitelle
  (576, 57600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 50, 70, 221, 4),
  -- solosis
  (577, 57700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 58, 4),
  -- duosion
  (578, 57800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 100, 70, 130, 4),
  -- reuniclus
  (579, 57900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 50, 70, 221, 4),
  -- ducklett
  (580, 58000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 61, 3),
  -- swanna
  (581, 58100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 166, 3),
  -- vanillite
  (582, 58200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 61, 5),
  -- vanillish
  (583, 58300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 138, 5),
  -- vanilluxe
  (584, 58400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 241, 5),
  -- deerling
  (585, 58500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 67, 3),
  -- deerling-summer
  (585, 58501, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 67, 3),
  -- deerling-autumn
  (585, 58502, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 67, 3),
  -- deerling-winter
  (585, 58503, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 67, 3),
  -- sawsbuck
  (586, 58600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 166, 3),
  -- sawsbuck-summer
  (586, 58601, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 166, 3),
  -- sawsbuck-autumn
  (586, 58602, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 166, 3),
  -- sawsbuck-winter
  (586, 58603, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 166, 3),
  -- emolga
  (587, 58700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 150, 3),
  -- karrablast
  (588, 58800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 63, 3),
  -- escavalier
  (589, 58900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 173, 3),
  -- foongus
  (590, 59000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 59, 3),
  -- amoonguss
  (591, 59100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 162, 3),
  -- frillish
  (592, 59200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 67, 3),
  -- jellicent
  (593, 59300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 168, 3),
  -- alomomola
  (594, 59400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 165, 2),
  -- joltik
  (595, 59500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 64, 3),
  -- galvantula
  (596, 59600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 165, 3),
  -- ferroseed
  (597, 59700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 61, 3),
  -- ferrothorn
  (598, 59800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 171, 3),
  -- klink
  (599, 59900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 130, 70, 60, 4),
  -- klang
  (600, 60000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 154, 4),
  -- klinklang
  (601, 60100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 234, 4),
  -- tynamo
  (602, 60200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 55, 5),
  -- eelektrik
  (603, 60300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 142, 5),
  -- eelektross
  (604, 60400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 232, 5),
  -- elgyem
  (605, 60500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 67, 3),
  -- beheeyem
  (606, 60600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 170, 3),
  -- litwick
  (607, 60700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 55, 4),
  -- lampent
  (608, 60800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 130, 4),
  -- chandelure
  (609, 60900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 234, 4),
  -- axew
  (610, 61000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 35, 64, 5),
  -- fraxure
  (611, 61100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 35, 144, 5),
  -- haxorus
  (612, 61200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 243, 5),
  -- cubchoo
  (613, 61300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 61, 3),
  -- beartic
  (614, 61400, 15, 0, 2, 0, 0, 0, 0, 60, 70, 177, 3),
  -- beartic
  (614, 61400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 177, 3),
  -- cryogonal
  (615, 61500, 15, 0, 0, 0, 0, 2, 0, 25, 70, 180, 3),
  -- cryogonal
  (615, 61500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 180, 3),
  -- shelmet
  (616, 61600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 61, 3),
  -- accelgor
  (617, 61700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 173, 3),
  -- stunfisk
  (618, 61800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 165, 3),
  -- mienfoo
  (619, 61900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 180, 70, 70, 4),
  -- mienshao
  (620, 62000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 179, 4),
  -- druddigon
  (621, 62100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 170, 3),
  -- golett
  (622, 62200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 61, 3),
  -- golurk
  (623, 62300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 169, 3),
  -- pawniard
  (624, 62400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 35, 68, 3),
  -- bisharp
  (625, 62500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 172, 3),
  -- bouffalant
  (626, 62600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 172, 3),
  -- rufflet
  (627, 62700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 70, 5),
  -- braviary
  (628, 62800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 179, 5),
  -- vullaby
  (629, 62900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 35, 74, 5),
  -- mandibuzz
  (630, 63000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 35, 179, 5),
  -- heatmor
  (631, 63100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 169, 3),
  -- durant
  (632, 63200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 169, 3),
  -- deino
  (633, 63300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 60, 5),
  -- zweilous
  (634, 63400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 147, 5),
  -- hydreigon
  (635, 63500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 270, 5),
  -- larvesta
  (636, 63600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 72, 5),
  -- volcarona
  (637, 63700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 15, 70, 248, 5),
  -- cobalion
  (638, 63800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 35, 261, 5),
  -- terrakion
  (639, 63900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 35, 261, 5),
  -- virizion
  (640, 64000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 35, 261, 5),
  -- tornadus
  (641, 64100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 90, 261, 5),
  -- tornadus-therian
  (641, 64101, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 90, 261, 5),
  -- thundurus
  (642, 64200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 90, 261, 5),
  -- thundurus-therian
  (642, 64201, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 90, 261, 5),
  -- reshiram
  (643, 64300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 306, 5),
  -- zekrom
  (644, 64400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 306, 5),
  -- landorus
  (645, 64500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 90, 270, 5),
  -- landorus-therian
  (645, 64501, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 90, 270, 5),
  -- kyurem
  (646, 64600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 297, 5),
  -- kyurem-white
  (646, 64601, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 315, 5),
  -- kyurem-black
  (646, 64602, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 315, 5),
  -- keldeo
  (647, 64700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 35, 261, 5),
  -- keldeo-resolute
  (647, 64701, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 35, 261, 5),
  -- meloetta
  (648, 64800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 100, 270, 5),
  -- meloetta-pirouette
  (648, 64801, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 100, 270, 5),
  -- genesect
  (649, 64900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 270, 5),
  -- genesect-douse-drive
  (649, 64901, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 270, 5),
  -- genesect-shock-drive
  (649, 64902, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 270, 5),
  -- genesect-burn-drive
  (649, 64903, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 270, 5),
  -- genesect-chill-drive
  (649, 64904, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 270, 5),
  -- chespin
  (650, 65000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 63, 4),
  -- quilladin
  (651, 65100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 142, 4),
  -- chesnaught
  (652, 65200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 239, 4),
  -- fennekin
  (653, 65300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 61, 4),
  -- braixen
  (654, 65400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 143, 4),
  -- delphox
  (655, 65500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 240, 4),
  -- froakie
  (656, 65600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 63, 4),
  -- frogadier
  (657, 65700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 142, 4),
  -- greninja
  (658, 65800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 239, 4),
  -- greninja-battle-bond
  (658, 65802, 15, 0, 0, 0, 0, 0, 3, 45, 70, 239, 4),
  -- greninja-battle-bond
  (658, 65802, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 239, 4),
  -- ash-greninja
  (658, 65803, 15, 0, 0, 0, 0, 0, 3, 45, 70, 288, 4),
  -- ash-greninja
  (658, 65803, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 288, 4),
  -- bunnelby
  (659, 65900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 47, 3),
  -- diggersby
  (660, 66000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 127, 70, 148, 3),
  -- fletchling
  (661, 66100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 56, 4),
  -- fletchinder
  (662, 66200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 134, 4),
  -- talonflame
  (663, 66300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 175, 4),
  -- scatterbug
  (664, 66400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 40, 3),
  -- spewpa
  (665, 66500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 75, 3),
  -- vivillon
  (666, 66600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-icy-snow
  (666, 66601, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-polar
  (666, 66602, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-tundra
  (666, 66603, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-continental
  (666, 66604, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-garden
  (666, 66605, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-elegant
  (666, 66606, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-modern
  (666, 66607, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-marine
  (666, 66608, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-archipelago
  (666, 66609, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-high-plains
  (666, 66610, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-sandstorm
  (666, 66611, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-river
  (666, 66612, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-monsoon
  (666, 66613, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-savanna
  (666, 66614, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-sun
  (666, 66615, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-ocean
  (666, 66616, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-jungle
  (666, 66617, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-fancy
  (666, 66618, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- vivillon-poke-ball
  (666, 66619, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 185, 3),
  -- litleo
  (667, 66700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 220, 70, 74, 4),
  -- pyroar
  (668, 66800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 65, 70, 177, 4),
  -- flabebe
  (669, 66900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- flabebe-yellow
  (669, 66901, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- flabebe-orange
  (669, 66902, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- flabebe-blue
  (669, 66903, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- flabebe-white
  (669, 66904, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 61, 3),
  -- floette
  (670, 67000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 130, 3),
  -- floette-eternal-flower
  (670, 67002, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 243, 3),
  -- floette-yellow
  (670, 67003, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 130, 3),
  -- floette-orange
  (670, 67004, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 130, 3),
  -- floette-blue
  (670, 67005, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 130, 3),
  -- floette-white
  (670, 67006, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 130, 3),
  -- florges
  (671, 67100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 248, 3),
  -- florges-yellow
  (671, 67101, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 248, 3),
  -- florges-orange
  (671, 67102, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 248, 3),
  -- florges-blue
  (671, 67103, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 248, 3),
  -- florges-white
  (671, 67104, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 248, 3),
  -- skiddo
  (672, 67200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 70, 3),
  -- gogoat
  (673, 67300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 186, 3),
  -- pancham
  (674, 67400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 220, 70, 70, 3),
  -- pangoro
  (675, 67500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 65, 70, 173, 3),
  -- furfrou
  (676, 67600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 160, 70, 165, 3),
  -- furfrou-heart
  (676, 67601, 17, NULL, NULL, NULL, NULL, NULL, NULL, 160, 70, 165, 3),
  -- furfrou-star
  (676, 67602, 17, NULL, NULL, NULL, NULL, NULL, NULL, 160, 70, 165, 3),
  -- furfrou-diamond
  (676, 67603, 17, NULL, NULL, NULL, NULL, NULL, NULL, 160, 70, 165, 3),
  -- furfrou-debutante
  (676, 67604, 17, NULL, NULL, NULL, NULL, NULL, NULL, 160, 70, 165, 3),
  -- furfrou-matron
  (676, 67605, 17, NULL, NULL, NULL, NULL, NULL, NULL, 160, 70, 165, 3),
  -- furfrou-dandy
  (676, 67606, 17, NULL, NULL, NULL, NULL, NULL, NULL, 160, 70, 165, 3),
  -- furfrou-la-reine
  (676, 67607, 17, NULL, NULL, NULL, NULL, NULL, NULL, 160, 70, 165, 3),
  -- furfrou-kabuki
  (676, 67608, 17, NULL, NULL, NULL, NULL, NULL, NULL, 160, 70, 165, 3),
  -- furfrou-pharaoh
  (676, 67609, 17, NULL, NULL, NULL, NULL, NULL, NULL, 160, 70, 165, 3),
  -- espurr
  (677, 67700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 71, 3),
  -- meowstic
  (678, 67800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 163, 3),
  -- meowstic-female
  (678, 67801, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 163, 3),
  -- honedge
  (679, 67900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 180, 70, 65, 3),
  -- doublade
  (680, 68000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 157, 3),
  -- aegislash
  (681, 68100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 234, 3),
  -- aegislash-blade
  (681, 68101, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 234, 3),
  -- spritzee
  (682, 68200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 68, 3),
  -- aromatisse
  (683, 68300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 140, 70, 162, 3),
  -- swirlix
  (684, 68400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 68, 3),
  -- slurpuff
  (685, 68500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 140, 70, 168, 3),
  -- inkay
  (686, 68600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 58, 3),
  -- malamar
  (687, 68700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 80, 70, 169, 3),
  -- binacle
  (688, 68800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 61, 3),
  -- barbaracle
  (689, 68900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 175, 3),
  -- skrelp
  (690, 69000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 64, 3),
  -- dragalge
  (691, 69100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 55, 70, 173, 3),
  -- clauncher
  (692, 69200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 66, 5),
  -- clawitzer
  (693, 69300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 55, 70, 100, 5),
  -- helioptile
  (694, 69400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 58, 3),
  -- heliolisk
  (695, 69500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 168, 3),
  -- tyrunt
  (696, 69600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 72, 3),
  -- tyrantrum
  (697, 69700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 182, 3),
  -- amaura
  (698, 69800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 72, 3),
  -- aurorus
  (699, 69900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 104, 3),
  -- sylveon
  (700, 70000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 184, 3),
  -- hawlucha
  (701, 70100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 100, 70, 175, 3),
  -- dedenne
  (702, 70200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 180, 70, 151, 3),
  -- carbink
  (703, 70300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 100, 5),
  -- goomy
  (704, 70400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 60, 5),
  -- sliggoo
  (705, 70500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 158, 5),
  -- goodra
  (706, 70600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 35, 270, 5),
  -- klefki
  (707, 70700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 165, 2),
  -- phantump
  (708, 70800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 62, 3),
  -- trevenant
  (709, 70900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 166, 3),
  -- pumpkaboo
  (710, 71000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 67, 3),
  -- pumpkaboo-small
  (710, 71001, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 67, 3),
  -- pumpkaboo-large
  (710, 71002, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 67, 3),
  -- pumpkaboo-super
  (710, 71003, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 67, 3),
  -- gourgeist
  (711, 71100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 173, 3),
  -- gourgeist-small
  (711, 71101, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 173, 3),
  -- gourgeist-large
  (711, 71102, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 173, 3),
  -- gourgeist-super
  (711, 71103, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 173, 3),
  -- bergmite
  (712, 71200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 61, 3),
  -- avalugg
  (713, 71300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 55, 70, 180, 3),
  -- noibat
  (714, 71400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 49, 3),
  -- noivern
  (715, 71500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 187, 3),
  -- xerneas
  (716, 71600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 0, 306, 5),
  -- yveltal
  (717, 71700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 0, 306, 5),
  -- zygarde
  (718, 71800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 270, 5),
  -- zygarde-10-percent
  (718, 71801, 15, 3, 0, 0, 0, 0, 0, 3, 0, 219, 5),
  -- zygarde-10-percent
  (718, 71801, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 219, 5),
  -- zygarde-complete
  (718, 71803, 15, 3, 0, 0, 0, 0, 0, 3, 0, 319, 5),
  -- zygarde-complete
  (718, 71803, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 319, 5),
  -- diancie
  (719, 71900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 70, 270, 5),
  -- mega-diancie
  (719, 71901, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 70, 315, 5),
  -- hoopa
  (720, 72000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 100, 270, 5),
  -- hoopa-unbound
  (720, 72001, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 100, 306, 5),
  -- volcanion
  (721, 72100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 100, 270, 5),
  -- rowlet
  (722, 72200, 15, 1, 0, 0, 0, 0, 0, 45, 70, 64, 4),
  -- rowlet
  (722, 72200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 64, 4),
  -- dartrix
  (723, 72300, 15, 2, 0, 0, 0, 0, 0, 45, 70, 147, 4),
  -- dartrix
  (723, 72300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 147, 4),
  -- decidueye
  (724, 72400, 15, 0, 3, 0, 0, 0, 0, 45, 70, 239, 4),
  -- decidueye
  (724, 72400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 239, 4),
  -- litten
  (725, 72500, 15, 0, 0, 0, 0, 0, 1, 45, 70, 64, 4),
  -- litten
  (725, 72500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 64, 4),
  -- torracat
  (726, 72600, 15, 0, 0, 0, 0, 0, 2, 45, 70, 147, 4),
  -- torracat
  (726, 72600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 147, 4),
  -- incineroar
  (727, 72700, 15, 0, 3, 0, 0, 0, 0, 45, 70, 239, 4),
  -- incineroar
  (727, 72700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 239, 4),
  -- popplio
  (728, 72800, 15, 0, 0, 0, 1, 0, 0, 45, 70, 64, 4),
  -- popplio
  (728, 72800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 64, 4),
  -- brionne
  (729, 72900, 15, 0, 0, 0, 2, 0, 0, 45, 70, 147, 4),
  -- brionne
  (729, 72900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 147, 4),
  -- primarina
  (730, 73000, 15, 0, 0, 0, 3, 0, 0, 45, 70, 239, 4),
  -- primarina
  (730, 73000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 239, 4),
  -- pikipek
  (731, 73100, 15, 0, 1, 0, 0, 0, 0, 255, 70, 53, 3),
  -- pikipek
  (731, 73100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 53, 3),
  -- trumbeak
  (732, 73200, 15, 0, 2, 0, 0, 0, 0, 120, 70, 124, 3),
  -- trumbeak
  (732, 73200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 124, 3),
  -- toucannon
  (733, 73300, 15, 0, 3, 0, 0, 0, 0, 45, 70, 218, 3),
  -- toucannon
  (733, 73300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 218, 3),
  -- yungoos
  (734, 73400, 15, 0, 1, 0, 0, 0, 0, 255, 70, 51, 3),
  -- yungoos
  (734, 73400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 51, 3),
  -- gumshoos
  (735, 73500, 15, 0, 2, 0, 0, 0, 0, 127, 70, 146, 3),
  -- gumshoos
  (735, 73500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 127, 70, 146, 3),
  -- grubbin
  (736, 73600, 15, 0, 1, 0, 0, 0, 0, 255, 70, 60, 3),
  -- grubbin
  (736, 73600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 60, 3),
  -- charjabug
  (737, 73700, 15, 0, 0, 2, 0, 0, 0, 120, 70, 140, 3),
  -- charjabug
  (737, 73700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 140, 3),
  -- vikavolt
  (738, 73800, 15, 0, 0, 0, 3, 0, 0, 45, 70, 225, 3),
  -- vikavolt
  (738, 73800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 225, 3),
  -- crabrawler
  (739, 73900, 15, 0, 1, 0, 0, 0, 0, 225, 70, 68, 3),
  -- crabrawler
  (739, 73900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 225, 70, 68, 3),
  -- crabominable
  (740, 74000, 15, 0, 2, 0, 0, 0, 0, 60, 70, 167, 3),
  -- crabominable
  (740, 74000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 167, 3),
  -- oricorio
  (741, 74100, 15, 0, 0, 0, 2, 0, 0, 45, 70, 167, 3),
  -- oricorio
  (741, 74100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 167, 3),
  -- oricorio-pom-pom
  (741, 74101, 15, 0, 0, 0, 2, 0, 0, 45, 70, 167, 3),
  -- oricorio-pom-pom
  (741, 74101, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 167, 3),
  -- oricorio-pau
  (741, 74102, 15, 0, 0, 0, 2, 0, 0, 45, 70, 167, 3),
  -- oricorio-pau
  (741, 74102, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 167, 3),
  -- oricorio-sensu
  (741, 74103, 15, 0, 0, 0, 2, 0, 0, 45, 70, 167, 3),
  -- oricorio-sensu
  (741, 74103, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 167, 3),
  -- cutiefly
  (742, 74200, 15, 0, 0, 0, 0, 0, 1, 190, 70, 61, 3),
  -- cutiefly
  (742, 74200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 61, 3),
  -- ribombee
  (743, 74300, 15, 0, 0, 0, 0, 0, 2, 75, 70, 162, 3),
  -- ribombee
  (743, 74300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 162, 3),
  -- rockruff
  (744, 74400, 15, 0, 1, 0, 0, 0, 0, 190, 70, 56, 3),
  -- rockruff
  (744, 74400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 56, 3),
  -- rockruff-own-tempo
  (744, 74401, 15, 0, 1, 0, 0, 0, 0, 190, 70, 56, 3),
  -- rockruff-own-tempo
  (744, 74401, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 56, 3),
  -- lycanroc
  (745, 74500, 15, 0, 2, 0, 0, 0, 0, 90, 70, 170, 3),
  -- lycanroc
  (745, 74500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 170, 3),
  -- lycanroc-midnight
  (745, 74501, 15, 0, 2, 0, 0, 0, 0, 90, 70, 170, 3),
  -- lycanroc-midnight
  (745, 74501, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 170, 3),
  -- lycanroc-dusk
  (745, 74502, 15, 0, 2, 0, 0, 0, 0, 90, 70, 170, 3),
  -- lycanroc-dusk
  (745, 74502, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 170, 3),
  -- wishiwashi
  (746, 74600, 15, 1, 0, 0, 0, 0, 0, 60, 70, 61, 2),
  -- wishiwashi
  (746, 74600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 61, 2),
  -- wishiwashi-school
  (746, 74601, 15, 1, 0, 0, 0, 0, 0, 60, 70, 217, 2),
  -- wishiwashi-school
  (746, 74601, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 217, 2),
  -- mareanie
  (747, 74700, 15, 0, 0, 1, 0, 0, 0, 190, 70, 61, 3),
  -- mareanie
  (747, 74700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 61, 3),
  -- toxapex
  (748, 74800, 15, 0, 0, 2, 0, 0, 0, 75, 70, 173, 3),
  -- toxapex
  (748, 74800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 173, 3),
  -- mudbray
  (749, 74900, 15, 0, 1, 0, 0, 0, 0, 190, 70, 77, 3),
  -- mudbray
  (749, 74900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 77, 3),
  -- mudsdale
  (750, 75000, 15, 0, 2, 0, 0, 0, 0, 60, 70, 175, 3),
  -- mudsdale
  (750, 75000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 175, 3),
  -- dewpider
  (751, 75100, 15, 0, 0, 0, 0, 1, 0, 200, 70, 54, 3),
  -- dewpider
  (751, 75100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 200, 70, 54, 3),
  -- araquanid
  (752, 75200, 15, 0, 0, 0, 0, 2, 0, 100, 70, 159, 3),
  -- araquanid
  (752, 75200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 100, 70, 159, 3),
  -- fomantis
  (753, 75300, 15, 0, 1, 0, 0, 0, 0, 190, 70, 50, 3),
  -- fomantis
  (753, 75300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 50, 3),
  -- lurantis
  (754, 75400, 15, 0, 2, 0, 0, 0, 0, 75, 70, 168, 3),
  -- lurantis
  (754, 75400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 168, 3),
  -- morelull
  (755, 75500, 15, 0, 0, 0, 0, 1, 0, 190, 70, 57, 3),
  -- morelull
  (755, 75500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 190, 70, 57, 3),
  -- shiinotic
  (756, 75600, 15, 0, 0, 0, 0, 2, 0, 75, 70, 142, 3),
  -- shiinotic
  (756, 75600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 75, 70, 142, 3),
  -- salandit
  (757, 75700, 15, 0, 0, 0, 0, 0, 1, 120, 70, 64, 3),
  -- salandit
  (757, 75700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 64, 3),
  -- salazzle
  (758, 75800, 15, 0, 0, 0, 0, 0, 2, 45, 70, 168, 3),
  -- salazzle
  (758, 75800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 168, 3),
  -- stufful
  (759, 75900, 15, 0, 1, 0, 0, 0, 0, 140, 70, 68, 3),
  -- stufful
  (759, 75900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 140, 70, 68, 3),
  -- bewear
  (760, 76000, 15, 0, 2, 0, 0, 0, 0, 70, 70, 175, 3),
  -- bewear
  (760, 76000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 70, 70, 175, 3),
  -- bounsweet
  (761, 76100, 15, 1, 0, 0, 0, 0, 0, 235, 70, 42, 4),
  -- bounsweet
  (761, 76100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 235, 70, 42, 4),
  -- steenee
  (762, 76200, 15, 0, 0, 0, 0, 0, 2, 120, 70, 102, 4),
  -- steenee
  (762, 76200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 120, 70, 102, 4),
  -- tsareena
  (763, 76300, 15, 0, 3, 0, 0, 0, 0, 45, 70, 230, 4),
  -- tsareena
  (763, 76300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 230, 4),
  -- comfey
  (764, 76400, 15, 0, 0, 0, 0, 2, 0, 60, 70, 170, 2),
  -- comfey
  (764, 76400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 170, 2),
  -- oranguru
  (765, 76500, 15, 0, 0, 0, 0, 2, 0, 45, 70, 172, 5),
  -- oranguru
  (765, 76500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 172, 5),
  -- passimian
  (766, 76600, 15, 0, 2, 0, 0, 0, 0, 45, 70, 172, 5),
  -- passimian
  (766, 76600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 172, 5),
  -- wimpod
  (767, 76700, 15, 0, 0, 0, 0, 0, 1, 90, 70, 46, 3),
  -- wimpod
  (767, 76700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 90, 70, 46, 3),
  -- golisopod
  (768, 76800, 15, 0, 0, 2, 0, 0, 0, 45, 70, 186, 3),
  -- golisopod
  (768, 76800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 186, 3),
  -- sandygast
  (769, 76900, 15, 0, 0, 1, 0, 0, 0, 140, 70, 64, 3),
  -- sandygast
  (769, 76900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 140, 70, 64, 3),
  -- palossand
  (770, 77000, 15, 0, 0, 2, 0, 0, 0, 60, 70, 168, 3),
  -- palossand
  (770, 77000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 168, 3),
  -- pyukumuku
  (771, 77100, 15, 0, 0, 0, 0, 2, 0, 60, 70, 144, 2),
  -- pyukumuku
  (771, 77100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 144, 2),
  -- type-null
  (772, 77200, 15, 2, 0, 0, 0, 0, 0, 3, 0, 107, 5),
  -- type-null
  (772, 77200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 107, 5),
  -- silvally
  (773, 77300, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally
  (773, 77300, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally
  (773, 77300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 257, 5),
  -- silvally-fighting
  (773, 77301, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-fighting
  (773, 77301, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-fighting
  (773, 77301, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 257, 5),
  -- silvally-flying
  (773, 77302, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-flying
  (773, 77302, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-flying
  (773, 77302, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 257, 5),
  -- silvally-poison
  (773, 77303, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-poison
  (773, 77303, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-poison
  (773, 77303, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 257, 5),
  -- silvally-ground
  (773, 77304, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-ground
  (773, 77304, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-ground
  (773, 77304, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 257, 5),
  -- silvally-rock
  (773, 77305, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-rock
  (773, 77305, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-rock
  (773, 77305, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 257, 5),
  -- silvally-bug
  (773, 77306, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-bug
  (773, 77306, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-bug
  (773, 77306, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 257, 5),
  -- silvally-ghost
  (773, 77307, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-ghost
  (773, 77307, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-ghost
  (773, 77307, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 257, 5),
  -- silvally-steel
  (773, 77308, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-steel
  (773, 77308, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-steel
  (773, 77308, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 257, 5),
  -- silvally-fire
  (773, 77309, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-fire
  (773, 77309, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-fire
  (773, 77309, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 257, 5),
  -- silvally-water
  (773, 77310, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-water
  (773, 77310, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-water
  (773, 77310, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 257, 5),
  -- silvally-grass
  (773, 77311, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-grass
  (773, 77311, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-grass
  (773, 77311, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 257, 5),
  -- silvally-electric
  (773, 77312, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-electric
  (773, 77312, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-electric
  (773, 77312, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 257, 5),
  -- silvally-psychic
  (773, 77313, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-psychic
  (773, 77313, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-psychic
  (773, 77313, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 257, 5),
  -- silvally-ice
  (773, 77314, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-ice
  (773, 77314, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-ice
  (773, 77314, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 257, 5),
  -- silvally-dragon
  (773, 77315, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-dragon
  (773, 77315, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-dragon
  (773, 77315, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 257, 5),
  -- silvally-dark
  (773, 77316, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-dark
  (773, 77316, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-dark
  (773, 77316, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 257, 5),
  -- silvally-fairy
  (773, 77317, 15, 3, 0, 0, 0, 0, 0, 3, 0, 114, 5),
  -- silvally-fairy
  (773, 77317, 16, 3, 0, 0, 0, 0, 0, 3, 0, 257, 5),
  -- silvally-fairy
  (773, 77317, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 257, 5),
  -- minior
  (774, 77400, 15, 0, 0, 1, 0, 1, 0, 30, 70, 154, 4),
  -- minior
  (774, 77400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 154, 4),
  -- minior-core
  (774, 77401, 15, 0, 1, 0, 1, 0, 0, 255, 70, 175, 4),
  -- minior-core
  (774, 77401, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 70, 175, 4),
  -- minior-orange
  (774, 77402, 15, 0, 0, 1, 0, 1, 0, 30, 70, 154, 4),
  -- minior-orange
  (774, 77402, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 154, 4),
  -- minior-yellow
  (774, 77403, 15, 0, 0, 1, 0, 1, 0, 30, 70, 154, 4),
  -- minior-yellow
  (774, 77403, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 154, 4),
  -- minior-green
  (774, 77404, 15, 0, 0, 1, 0, 1, 0, 30, 70, 154, 4),
  -- minior-green
  (774, 77404, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 154, 4),
  -- minior-blue
  (774, 77405, 15, 0, 0, 1, 0, 1, 0, 30, 70, 154, 4),
  -- minior-blue
  (774, 77405, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 154, 4),
  -- minior-indigo
  (774, 77406, 15, 0, 0, 1, 0, 1, 0, 30, 70, 154, 4),
  -- minior-indigo
  (774, 77406, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 154, 4),
  -- minior-violet
  (774, 77407, 15, 0, 0, 1, 0, 1, 0, 30, 70, 154, 4),
  -- minior-violet
  (774, 77407, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 70, 154, 4),
  -- komala
  (775, 77500, 15, 0, 2, 0, 0, 0, 0, 45, 70, 168, 5),
  -- komala
  (775, 77500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 168, 5),
  -- turtonator
  (776, 77600, 15, 0, 0, 2, 0, 0, 0, 70, 70, 170, 3),
  -- turtonator
  (776, 77600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 70, 70, 170, 3),
  -- togedemaru
  (777, 77700, 15, 0, 2, 0, 0, 0, 0, 180, 70, 152, 3),
  -- togedemaru
  (777, 77700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 180, 70, 152, 3),
  -- mimikyu
  (778, 77800, 15, 0, 0, 0, 0, 2, 0, 45, 70, 167, 3),
  -- mimikyu
  (778, 77800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 167, 3),
  -- mimikyu-busted
  (778, 77801, 15, 0, 0, 0, 0, 2, 0, 45, 70, 167, 3),
  -- mimikyu-busted
  (778, 77801, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 167, 3),
  -- bruxish
  (779, 77900, 15, 0, 2, 0, 0, 0, 0, 80, 70, 166, 3),
  -- bruxish
  (779, 77900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 80, 70, 166, 3),
  -- drampa
  (780, 78000, 15, 0, 0, 0, 2, 0, 0, 70, 70, 170, 3),
  -- drampa
  (780, 78000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 70, 70, 170, 3),
  -- dhelmise
  (781, 78100, 15, 0, 2, 0, 0, 0, 0, 25, 70, 181, 3),
  -- dhelmise
  (781, 78100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 25, 70, 181, 3),
  -- jangmo-o
  (782, 78200, 15, 0, 0, 1, 0, 0, 0, 45, 70, 60, 5),
  -- jangmo-o
  (782, 78200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 60, 5),
  -- hakamo-o
  (783, 78300, 15, 0, 0, 2, 0, 0, 0, 45, 70, 147, 5),
  -- hakamo-o
  (783, 78300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 147, 5),
  -- kommo-o
  (784, 78400, 15, 0, 0, 3, 0, 0, 0, 45, 70, 270, 5),
  -- kommo-o
  (784, 78400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 70, 270, 5),
  -- tapu-koko
  (785, 78500, 15, 0, 0, 0, 0, 0, 3, 3, 70, 114, 5),
  -- tapu-koko
  (785, 78500, 16, 0, 0, 0, 0, 0, 3, 3, 70, 257, 5),
  -- tapu-koko
  (785, 78500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 70, 257, 5),
  -- tapu-lele
  (786, 78600, 15, 0, 0, 0, 3, 0, 0, 3, 70, 114, 5),
  -- tapu-lele
  (786, 78600, 16, 0, 0, 0, 3, 0, 0, 3, 70, 257, 5),
  -- tapu-lele
  (786, 78600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 70, 257, 5),
  -- tapu-bulu
  (787, 78700, 15, 0, 3, 0, 0, 0, 0, 3, 70, 114, 5),
  -- tapu-bulu
  (787, 78700, 16, 0, 3, 0, 0, 0, 0, 3, 70, 257, 5),
  -- tapu-bulu
  (787, 78700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 70, 257, 5),
  -- tapu-fini
  (788, 78800, 15, 0, 0, 0, 0, 3, 0, 3, 70, 114, 5),
  -- tapu-fini
  (788, 78800, 16, 0, 0, 0, 0, 3, 0, 3, 70, 257, 5),
  -- tapu-fini
  (788, 78800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 70, 257, 5),
  -- cosmog
  (789, 78900, 15, 1, 0, 0, 0, 0, 0, 45, 0, 40, 5),
  -- cosmog
  (789, 78900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 0, 40, 5),
  -- cosmoem
  (790, 79000, 15, 0, 0, 1, 0, 1, 0, 45, 0, 80, 5),
  -- cosmoem
  (790, 79000, 16, 0, 0, 1, 0, 1, 0, 45, 0, 140, 5),
  -- cosmoem
  (790, 79000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 0, 140, 5),
  -- solgaleo
  (791, 79100, 15, 0, 3, 0, 0, 0, 0, 45, 0, 136, 5),
  -- solgaleo
  (791, 79100, 16, 0, 3, 0, 0, 0, 0, 45, 0, 306, 5),
  -- solgaleo
  (791, 79100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 0, 306, 5),
  -- lunala
  (792, 79200, 15, 0, 0, 0, 3, 0, 0, 45, 0, 136, 5),
  -- lunala
  (792, 79200, 16, 0, 0, 0, 3, 0, 0, 45, 0, 306, 5),
  -- lunala
  (792, 79200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 0, 306, 5),
  -- nihilego
  (793, 79300, 15, 0, 0, 0, 0, 3, 0, 45, 0, 114, 5),
  -- nihilego
  (793, 79300, 16, 0, 0, 0, 0, 3, 0, 45, 0, 257, 5),
  -- nihilego
  (793, 79300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 45, 0, 257, 5),
  -- buzzwole
  (794, 79400, 15, 0, 1, 2, 0, 0, 0, 25, 0, 114, 5),
  -- buzzwole
  (794, 79400, 16, 0, 1, 2, 0, 0, 0, 45, 0, 257, 5),
  -- buzzwole
  (794, 79400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 25, 0, 257, 5),
  -- pheromosa
  (795, 79500, 15, 0, 0, 0, 0, 0, 3, 255, 0, 114, 5),
  -- pheromosa
  (795, 79500, 16, 0, 0, 0, 0, 0, 3, 45, 0, 257, 5),
  -- pheromosa
  (795, 79500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 0, 257, 5),
  -- xurkitree
  (796, 79600, 15, 0, 0, 0, 3, 0, 0, 30, 0, 114, 5),
  -- xurkitree
  (796, 79600, 16, 0, 0, 0, 3, 0, 0, 45, 0, 257, 5),
  -- xurkitree
  (796, 79600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 0, 257, 5),
  -- celesteela
  (797, 79700, 15, 0, 1, 1, 1, 0, 0, 25, 0, 114, 5),
  -- celesteela
  (797, 79700, 16, 0, 1, 1, 1, 0, 0, 45, 0, 257, 5),
  -- celesteela
  (797, 79700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 25, 0, 257, 5),
  -- kartana
  (798, 79800, 15, 0, 3, 0, 0, 0, 0, 255, 0, 114, 5),
  -- kartana
  (798, 79800, 16, 0, 3, 0, 0, 0, 0, 45, 0, 257, 5),
  -- kartana
  (798, 79800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 0, 257, 5),
  -- guzzlord
  (799, 79900, 15, 3, 0, 0, 0, 0, 0, 15, 0, 114, 5),
  -- guzzlord
  (799, 79900, 16, 3, 0, 0, 0, 0, 0, 45, 0, 257, 5),
  -- guzzlord
  (799, 79900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 15, 0, 257, 5),
  -- necrozma
  (800, 80000, 15, 0, 1, 0, 2, 0, 0, 3, 0, 120, 5),
  -- necrozma
  (800, 80000, 16, 0, 1, 0, 2, 0, 0, 255, 0, 270, 5),
  -- necrozma
  (800, 80000, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 0, 270, 5),
  -- necrozma-dusk-mane
  (800, 80001, 15, 0, 1, 0, 2, 0, 0, 3, 0, 120, 5),
  -- necrozma-dusk-mane
  (800, 80001, 16, 0, 3, 0, 0, 0, 0, 255, 0, 306, 5),
  -- necrozma-dusk-mane
  (800, 80001, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 0, 306, 5),
  -- necrozma-dawn-wings
  (800, 80002, 15, 0, 1, 0, 2, 0, 0, 3, 0, 120, 5),
  -- necrozma-dawn-wings
  (800, 80002, 16, 0, 0, 0, 3, 0, 0, 255, 0, 306, 5),
  -- necrozma-dawn-wings
  (800, 80002, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 0, 306, 5),
  -- ultra-necrozma
  (800, 80003, 15, 0, 1, 0, 2, 0, 0, 3, 0, 120, 5),
  -- ultra-necrozma
  (800, 80003, 16, 0, 1, 0, 1, 0, 1, 255, 0, 339, 5),
  -- ultra-necrozma
  (800, 80003, 17, NULL, NULL, NULL, NULL, NULL, NULL, 255, 0, 339, 5),
  -- magearna
  (801, 80100, 15, 0, 0, 0, 3, 0, 0, 3, 0, 120, 5),
  -- magearna
  (801, 80100, 16, 0, 0, 0, 3, 0, 0, 3, 0, 270, 5),
  -- magearna
  (801, 80100, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 270, 5),
  -- magearna-original-color
  (801, 80102, 15, 0, 0, 0, 3, 0, 0, 3, 0, 120, 5),
  -- magearna-original-color
  (801, 80102, 16, 0, 0, 0, 3, 0, 0, 3, 0, 270, 5),
  -- magearna-original-color
  (801, 80102, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 270, 5),
  -- marshadow
  (802, 80200, 15, 0, 2, 0, 0, 0, 1, 3, 0, 120, 5),
  -- marshadow
  (802, 80200, 16, 0, 2, 0, 0, 0, 1, 3, 0, 270, 5),
  -- marshadow
  (802, 80200, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 270, 5),
  -- poipole
  (803, 80300, 16, 0, 0, 0, 0, 0, 1, 45, 0, 189, 5),
  -- poipole
  (803, 80300, 17, NULL, NULL, NULL, NULL, NULL, NULL, 15, 0, 189, 5),
  -- naganadel
  (804, 80400, 16, 0, 0, 0, 3, 0, 0, 45, 0, 243, 5),
  -- naganadel
  (804, 80400, 17, NULL, NULL, NULL, NULL, NULL, NULL, 15, 0, 243, 5),
  -- stakataka
  (805, 80500, 16, 0, 0, 3, 0, 0, 0, 30, 0, 257, 5),
  -- stakataka
  (805, 80500, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 0, 257, 5),
  -- blacephalon
  (806, 80600, 16, 0, 0, 0, 3, 0, 0, 30, 0, 257, 5),
  -- blacephalon
  (806, 80600, 17, NULL, NULL, NULL, NULL, NULL, NULL, 30, 0, 257, 5),
  -- zeraora
  (807, 80700, 16, 0, 0, 0, 0, 0, 3, 3, 0, 270, 5),
  -- zeraora
  (807, 80700, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 270, 5),
  -- meltan
  (808, 80800, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 135, 5),
  -- melmetal
  (809, 80900, 17, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 270, 5);
