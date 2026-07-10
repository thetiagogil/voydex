-- ============================================================================
-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia evolution method and Pokémon species pages.
-- Cross-check: Serebii evolution pages and PokemonDB evolution chains.
-- Machine-readable sanity: PokeAPI evolution-chain detail fields.
-- Scope note: official core-series Pokémon evolution edges through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 8 evolution edge rows grouped by when the edge/form/method
-- entered the source model.
-- Table: reference.pokemon_evolution_edges
-- ============================================================================

INSERT INTO reference.pokemon_evolution_edges (from_species_id, from_form_id, to_species_id, to_form_id, version_group_id, introduced_generation_id, evolution_method_id, minimum_level, item_id, held_item_id, known_move_id, known_type_id, gender, time_of_day, location_label, condition_summary, condition_data, sort_order)
VALUES
  -- Magneton -> Magnezone
  (82, 8200, 462, 46200, NULL, 8, 2, NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, 'use Thunder Stone', '{"source_trigger":"use-item","item":"thunder-stone"}', 428),
  -- Magneton -> Magnezone
  (82, 8200, 462, 46200, 22, 8, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Coronet Highlands', 'at Coronet Highlands', '{"source_trigger":"level-up","location":"coronet-highlands"}', 429),
  -- Eevee -> Leafeon
  (133, 13300, 470, 47000, NULL, 8, 2, NULL, 67, NULL, NULL, NULL, NULL, NULL, NULL, 'use Leaf Stone', '{"source_trigger":"use-item","item":"leaf-stone"}', 430),
  -- Eevee -> Leafeon
  (133, 13300, 470, 47000, 22, 8, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'The Heartwood', 'at The Heartwood', '{"source_trigger":"level-up","location":"the-heartwood"}', 431),
  -- Eevee -> Glaceon
  (133, 13300, 471, 47100, NULL, 8, 2, NULL, 89, NULL, NULL, NULL, NULL, NULL, NULL, 'use Ice Stone', '{"source_trigger":"use-item","item":"ice-stone"}', 432),
  -- Eevee -> Glaceon
  (133, 13300, 471, 47100, 22, 8, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Icepeak Cavern', 'at Icepeak Cavern', '{"source_trigger":"level-up","location":"icepeak-cavern"}', 433),
  -- Eevee -> Sylveon
  (133, 13300, 700, 70000, NULL, 8, 4, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, 'friendship 160+; knows a Fairy-type move', '{"source_trigger":"level-up","known_move_type":"fairy","min_happiness":160}', 434),
  -- Nosepass -> Probopass
  (299, 29900, 476, 47600, NULL, 8, 2, NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, 'use Thunder Stone', '{"source_trigger":"use-item","item":"thunder-stone"}', 435),
  -- Nosepass -> Probopass
  (299, 29900, 476, 47600, 22, 8, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Coronet Highlands', 'at Coronet Highlands', '{"source_trigger":"level-up","location":"coronet-highlands"}', 436),
  -- Charjabug -> Vikavolt
  (737, 73700, 738, 73800, NULL, 8, 2, NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, 'use Thunder Stone', '{"source_trigger":"use-item","item":"thunder-stone"}', 437),
  -- Galarian Meowth -> Perrserker
  (52, 5202, 863, 86300, NULL, 8, 1, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 28', '{"source_trigger":"level-up"}', 438),
  -- Hisuian Growlithe -> Hisuian Arcanine
  (58, 5801, 59, 5901, NULL, 8, 2, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, 'use Fire Stone', '{"source_trigger":"use-item","item":"fire-stone"}', 439),
  -- Kadabra -> Alakazam
  (64, 6400, 65, 6500, 22, 8, 2, NULL, 105, NULL, NULL, NULL, NULL, NULL, NULL, 'Use Linking Cord in Pokémon Legends: Arceus', '{"source_trigger":"use-item","item":"linking-cord","alternate_for":"trade"}', 440),
  -- Machoke -> Machamp
  (67, 6700, 68, 6800, 22, 8, 2, NULL, 105, NULL, NULL, NULL, NULL, NULL, NULL, 'Use Linking Cord in Pokémon Legends: Arceus', '{"source_trigger":"use-item","item":"linking-cord","alternate_for":"trade"}', 441),
  -- Graveler -> Golem
  (75, 7500, 76, 7600, 22, 8, 2, NULL, 105, NULL, NULL, NULL, NULL, NULL, NULL, 'Use Linking Cord in Pokémon Legends: Arceus', '{"source_trigger":"use-item","item":"linking-cord","alternate_for":"trade"}', 442),
  -- Galarian Ponyta -> Galarian Rapidash
  (77, 7701, 78, 7801, NULL, 8, 1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 40', '{"source_trigger":"level-up"}', 443),
  -- Galarian Slowpoke -> Galarian Slowbro
  (79, 7901, 80, 8002, NULL, 8, 2, NULL, 101, NULL, NULL, NULL, NULL, NULL, NULL, 'use Galarica Cuff', '{"source_trigger":"use-item","item":"galarica-cuff"}', 444),
  -- Galarian Slowpoke -> Galarian Slowking
  (79, 7901, 199, 19901, NULL, 8, 2, NULL, 102, NULL, NULL, NULL, NULL, NULL, NULL, 'use Galarica Wreath', '{"source_trigger":"use-item","item":"galarica-wreath"}', 445),
  -- Galarian Farfetch'd -> Sirfetch'd
  (83, 8301, 865, 86500, NULL, 8, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'land three critical hits in one battle', '{"source_trigger":"three-critical-hits"}', 446),
  -- Haunter -> Gengar
  (93, 9300, 94, 9400, 22, 8, 2, NULL, 105, NULL, NULL, NULL, NULL, NULL, NULL, 'Use Linking Cord in Pokémon Legends: Arceus', '{"source_trigger":"use-item","item":"linking-cord","alternate_for":"trade"}', 447),
  -- Onix -> Steelix
  (95, 9500, 208, 20800, 22, 8, 2, NULL, 70, NULL, NULL, NULL, NULL, NULL, NULL, 'Use Metal Coat directly in Pokémon Legends: Arceus', '{"source_trigger":"use-item","alternate_for":"held_item_trade"}', 448),
  -- Hisuian Voltorb -> Hisuian Electrode
  (100, 10001, 101, 10101, NULL, 8, 2, NULL, 67, NULL, NULL, NULL, NULL, NULL, NULL, 'use Leaf Stone', '{"source_trigger":"use-item","item":"leaf-stone"}', 449),
  -- Koffing -> Galarian Weezing
  (109, 10900, 110, 11001, NULL, 8, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 35', '{"source_trigger":"level-up","region":"galar"}', 450),
  -- Rhydon -> Rhyperior
  (112, 11200, 464, 46400, 22, 8, 2, NULL, 79, NULL, NULL, NULL, NULL, NULL, NULL, 'Use Protector directly in Pokémon Legends: Arceus', '{"source_trigger":"use-item","alternate_for":"held_item_trade"}', 451),
  -- Galarian Mr. Mime -> Mr. Rime
  (122, 12201, 866, 86600, NULL, 8, 1, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 42', '{"source_trigger":"level-up"}', 452),
  -- Scyther -> Scizor
  (123, 12300, 212, 21200, 22, 8, 2, NULL, 70, NULL, NULL, NULL, NULL, NULL, NULL, 'Use Metal Coat directly in Pokémon Legends: Arceus', '{"source_trigger":"use-item","alternate_for":"held_item_trade"}', 453),
  -- Scyther -> Kleavor
  (123, 12300, 900, 90000, 22, 8, 2, NULL, 106, NULL, NULL, NULL, NULL, NULL, NULL, 'use Black Augurite', '{"source_trigger":"use-item","item":"black-augurite"}', 454),
  -- Electabuzz -> Electivire
  (125, 12500, 466, 46600, 22, 8, 2, NULL, 80, NULL, NULL, NULL, NULL, NULL, NULL, 'Use Electirizer directly in Pokémon Legends: Arceus', '{"source_trigger":"use-item","alternate_for":"held_item_trade"}', 455),
  -- Magmar -> Magmortar
  (126, 12600, 467, 46700, 22, 8, 2, NULL, 81, NULL, NULL, NULL, NULL, NULL, NULL, 'Use Magmarizer directly in Pokémon Legends: Arceus', '{"source_trigger":"use-item","alternate_for":"held_item_trade"}', 456),
  -- Porygon -> Porygon2
  (137, 13700, 233, 23300, 22, 8, 2, NULL, 72, NULL, NULL, NULL, NULL, NULL, NULL, 'Use Up Grade directly in Pokémon Legends: Arceus', '{"source_trigger":"use-item","alternate_for":"held_item_trade"}', 457),
  -- Cyndaquil -> Quilava (Pokémon Legends: Arceus)
  (155, 15500, 156, 15600, 22, 8, 1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 17 in Pokémon Legends: Arceus', '{"source_trigger":"level-up","region":"hisui"}', 458),
  -- Quilava -> Hisuian Typhlosion
  (156, 15600, 157, 15701, 22, 8, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36 in Pokémon Legends: Arceus', '{"source_trigger":"level-up","region":"hisui"}', 459),
  -- Hisuian Qwilfish -> Overqwil
  (211, 21101, 904, 90400, 22, 8, 9, NULL, NULL, NULL, 839, NULL, NULL, NULL, NULL, 'use Barb Barrage 20 times', '{"source_trigger":"strong-style-move","used_move":"barb-barrage","min_move_count":20}', 460),
  -- Hisuian Sneasel -> Sneasler
  (215, 21501, 903, 90300, NULL, 8, 7, NULL, NULL, 84, NULL, NULL, NULL, 'day', NULL, 'level up holding Razor Claw; during day', '{"source_trigger":"level-up","held_item":"razor-claw"}', 461),
  -- Ursaring -> Ursaluna
  (217, 21700, 901, 90100, 22, 8, 2, NULL, 107, NULL, NULL, NULL, NULL, 'full-moon', NULL, 'use Peat Block; during full-moon', '{"source_trigger":"use-item","item":"peat-block"}', 462),
  -- Galarian Corsola -> Cursola
  (222, 22201, 864, 86400, NULL, 8, 1, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 38', '{"source_trigger":"level-up"}', 463),
  -- Porygon2 -> Porygon-Z
  (233, 23300, 474, 47400, 22, 8, 2, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, 'Use Dubious Disc directly in Pokémon Legends: Arceus', '{"source_trigger":"use-item","alternate_for":"held_item_trade"}', 464),
  -- Stantler -> Wyrdeer
  (234, 23400, 899, 89900, 22, 8, 9, NULL, NULL, NULL, 828, NULL, NULL, NULL, NULL, 'use Psyshield Bash 20 times', '{"source_trigger":"agile-style-move","used_move":"psyshield-bash","min_move_count":20}', 465),
  -- Galarian Zigzagoon -> Galarian Linoone
  (263, 26301, 264, 26401, NULL, 8, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20', '{"source_trigger":"level-up"}', 466),
  -- Galarian Linoone -> Obstagoon
  (264, 26401, 862, 86200, NULL, 8, 7, 35, NULL, NULL, NULL, NULL, NULL, 'night', NULL, 'Level 35; during night', '{"source_trigger":"level-up"}', 467),
  -- Dusclops -> Dusknoir
  (356, 35600, 477, 47700, 22, 8, 2, NULL, 83, NULL, NULL, NULL, NULL, NULL, NULL, 'Use Reaper Cloth directly in Pokémon Legends: Arceus', '{"source_trigger":"use-item","alternate_for":"held_item_trade"}', 468),
  -- Mime Jr. -> Galarian Mr. Mime
  (439, 43900, 122, 12201, NULL, 8, 5, NULL, NULL, NULL, 102, NULL, NULL, NULL, NULL, 'knows Mimic', '{"source_trigger":"level-up","known_move":"mimic","region":"galar"}', 469),
  -- Dewott -> Hisuian Samurott
  (502, 50200, 503, 50301, 22, 8, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up","region":"hisui"}', 470),
  -- Petilil -> Hisuian Lilligant
  (548, 54800, 549, 54901, 22, 8, 2, NULL, 68, NULL, NULL, NULL, NULL, NULL, NULL, 'use Sun Stone', '{"source_trigger":"use-item","item":"sun-stone","region":"hisui"}', 471),
  -- Basculin (White-Striped) -> Basculegion
  (550, 55002, 902, 90200, NULL, 8, 9, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 'Male after taking 294+ recoil damage without fainting', '{"source_trigger":"recoil-damage","min_damage_taken":294,"target_form_rule":"male"}', 472),
  -- Basculin (White-Striped) -> Basculegion (Female)
  (550, 55002, 902, 90201, NULL, 8, 9, NULL, NULL, NULL, NULL, NULL, 'female', NULL, NULL, 'Female after taking 294+ recoil damage without fainting', '{"source_trigger":"recoil-damage","min_damage_taken":294,"target_form_rule":"female"}', 473),
  -- Galarian Darumaka -> Galarian Darmanitan
  (554, 55401, 555, 55502, NULL, 8, 2, NULL, 89, NULL, NULL, NULL, NULL, NULL, NULL, 'use Ice Stone', '{"source_trigger":"use-item","item":"ice-stone"}', 474),
  -- Galarian Yamask -> Runerigus
  (562, 56201, 867, 86700, NULL, 8, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'after taking 49+ recoil damage', '{"source_trigger":"take-damage","min_damage_taken":49}', 475),
  -- Hisuian Zorua -> Hisuian Zoroark
  (570, 57001, 571, 57101, NULL, 8, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 476),
  -- Rufflet -> Hisuian Braviary
  (627, 62700, 628, 62801, 22, 8, 1, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 54', '{"source_trigger":"level-up","region":"hisui"}', 477),
  -- Goomy -> Hisuian Sliggoo
  (704, 70400, 705, 70501, 22, 8, 1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 40', '{"source_trigger":"level-up","region":"hisui"}', 478),
  -- Hisuian Sliggoo -> Hisuian Goodra
  (705, 70501, 706, 70601, NULL, 8, 9, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 50; during rain or fog', '{"source_trigger":"level-up","needs_overworld_rain":true}', 479),
  -- Bergmite -> Hisuian Avalugg
  (712, 71200, 713, 71301, 22, 8, 1, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 37', '{"source_trigger":"level-up","region":"hisui"}', 480),
  -- Dartrix -> Hisuian Decidueye
  (723, 72300, 724, 72401, 22, 8, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up","region":"hisui"}', 481),
  -- Grookey -> Thwackey
  (810, 81000, 811, 81100, NULL, 8, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 482),
  -- Thwackey -> Rillaboom
  (811, 81100, 812, 81200, NULL, 8, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 35', '{"source_trigger":"level-up"}', 483),
  -- Scorbunny -> Raboot
  (813, 81300, 814, 81400, NULL, 8, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 484),
  -- Raboot -> Cinderace
  (814, 81400, 815, 81500, NULL, 8, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 35', '{"source_trigger":"level-up"}', 485),
  -- Sobble -> Drizzile
  (816, 81600, 817, 81700, NULL, 8, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 486),
  -- Drizzile -> Inteleon
  (817, 81700, 818, 81800, NULL, 8, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 35', '{"source_trigger":"level-up"}', 487),
  -- Skwovet -> Greedent
  (819, 81900, 820, 82000, NULL, 8, 1, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 24', '{"source_trigger":"level-up"}', 488),
  -- Rookidee -> Corvisquire
  (821, 82100, 822, 82200, NULL, 8, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 18', '{"source_trigger":"level-up"}', 489),
  -- Corvisquire -> Corviknight
  (822, 82200, 823, 82300, NULL, 8, 1, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 38', '{"source_trigger":"level-up"}', 490),
  -- Blipbug -> Dottler
  (824, 82400, 825, 82500, NULL, 8, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 10', '{"source_trigger":"level-up"}', 491),
  -- Dottler -> Orbeetle
  (825, 82500, 826, 82600, NULL, 8, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 492),
  -- Nickit -> Thievul
  (827, 82700, 828, 82800, NULL, 8, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 18', '{"source_trigger":"level-up"}', 493),
  -- Gossifleur -> Eldegoss
  (829, 82900, 830, 83000, NULL, 8, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20', '{"source_trigger":"level-up"}', 494),
  -- Wooloo -> Dubwool
  (831, 83100, 832, 83200, NULL, 8, 1, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 24', '{"source_trigger":"level-up"}', 495),
  -- Chewtle -> Drednaw
  (833, 83300, 834, 83400, NULL, 8, 1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 22', '{"source_trigger":"level-up"}', 496),
  -- Yamper -> Boltund
  (835, 83500, 836, 83600, NULL, 8, 1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 25', '{"source_trigger":"level-up"}', 497),
  -- Rolycoly -> Carkol
  (837, 83700, 838, 83800, NULL, 8, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 18', '{"source_trigger":"level-up"}', 498),
  -- Carkol -> Coalossal
  (838, 83800, 839, 83900, NULL, 8, 1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 34', '{"source_trigger":"level-up"}', 499),
  -- Applin -> Flapple
  (840, 84000, 841, 84100, NULL, 8, 2, NULL, 98, NULL, NULL, NULL, NULL, NULL, NULL, 'use Tart Apple', '{"source_trigger":"use-item","item":"tart-apple"}', 500),
  -- Applin -> Appletun
  (840, 84000, 842, 84200, NULL, 8, 2, NULL, 97, NULL, NULL, NULL, NULL, NULL, NULL, 'use Sweet Apple', '{"source_trigger":"use-item","item":"sweet-apple"}', 501),
  -- Silicobra -> Sandaconda
  (843, 84300, 844, 84400, NULL, 8, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 502),
  -- Arrokuda -> Barraskewda
  (846, 84600, 847, 84700, NULL, 8, 1, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 26', '{"source_trigger":"level-up"}', 503),
  -- Toxel -> Toxtricity
  (848, 84800, 849, 84900, NULL, 8, 9, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30 with an Amped Form nature group', '{"source_trigger":"level-up","target_form_rule":"amped_nature_group"}', 504),
  -- Toxel -> Toxtricity (Low Key)
  (848, 84800, 849, 84901, NULL, 8, 9, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30 with a Low Key nature group', '{"source_trigger":"level-up","target_form_rule":"low_key_nature_group"}', 505),
  -- Sizzlipede -> Centiskorch
  (850, 85000, 851, 85100, NULL, 8, 1, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 28', '{"source_trigger":"level-up"}', 506),
  -- Clobbopus -> Grapploct
  (852, 85200, 853, 85300, NULL, 8, 5, NULL, NULL, NULL, 269, NULL, NULL, NULL, NULL, 'knows Taunt', '{"source_trigger":"level-up","known_move":"taunt"}', 507),
  -- Sinistea -> Polteageist
  (854, 85400, 855, 85500, NULL, 8, 2, NULL, 99, NULL, NULL, NULL, NULL, NULL, NULL, 'use Cracked Pot', '{"source_trigger":"use-item","item":"cracked-pot"}', 508),
  -- Sinistea (Antique) -> Polteageist (Antique)
  (854, 85401, 855, 85501, NULL, 8, 2, NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, 'use Chipped Pot on Antique Form', '{"source_trigger":"use-item","item":"chipped-pot","form_rule":"antique_form"}', 509),
  -- Hatenna -> Hattrem
  (856, 85600, 857, 85700, NULL, 8, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 32', '{"source_trigger":"level-up"}', 510),
  -- Hattrem -> Hatterene
  (857, 85700, 858, 85800, NULL, 8, 1, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 42', '{"source_trigger":"level-up"}', 511),
  -- Impidimp -> Morgrem
  (859, 85900, 860, 86000, NULL, 8, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 32', '{"source_trigger":"level-up"}', 512),
  -- Morgrem -> Grimmsnarl
  (860, 86000, 861, 86100, NULL, 8, 1, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 42', '{"source_trigger":"level-up"}', 513),
  -- Milcery -> Alcremie
  (868, 86800, 869, 86900, NULL, 8, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spin with a Sweet held item', '{"source_trigger":"spin"}', 514),
  -- Snom -> Frosmoth
  (872, 87200, 873, 87300, NULL, 8, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'night', NULL, 'friendship 160+; during night', '{"source_trigger":"level-up","min_happiness":160}', 515),
  -- Cufant -> Copperajah
  (878, 87800, 879, 87900, NULL, 8, 1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 34', '{"source_trigger":"level-up"}', 516),
  -- Dreepy -> Drakloak
  (885, 88500, 886, 88600, NULL, 8, 1, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 50', '{"source_trigger":"level-up"}', 517),
  -- Drakloak -> Dragapult
  (886, 88600, 887, 88700, NULL, 8, 1, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 60', '{"source_trigger":"level-up"}', 518),
  -- Kubfu -> Urshifu
  (891, 89100, 892, 89200, 19, 8, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'clear the Tower of Darkness', '{"source_trigger":"tower-of-darkness"}', 519),
  -- Kubfu -> Urshifu (Rapid Strike)
  (891, 89100, 892, 89201, 19, 8, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'clear the Tower of Waters', '{"source_trigger":"tower-of-waters"}', 520);

-- ============================================================================
