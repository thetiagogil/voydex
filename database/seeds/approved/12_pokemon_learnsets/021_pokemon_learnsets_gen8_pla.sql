-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokeAPI (data derived from Bulbapedia)

-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: meta.pokemon_learnsets
-- Scope: Legends: Arceus (VG 22) learnsets
INSERT INTO
    meta.pokemon_learnsets (species_id, form_id, move_id, version_group_id, learn_method_id, level_learned_at)
VALUES
    -- #025 Pikachu
    (25, 2500, 84, 22, 1, 1),  -- thunder-shock lv1
    (25, 2500, 98, 22, 1, 5),  -- quick-attack lv5
    (25, 2500, 86, 22, 1, 9),  -- thunder-wave lv9
    (25, 2500, 129, 22, 1, 15),  -- swift lv15
    (25, 2500, 209, 22, 1, 21),  -- spark lv21
    (25, 2500, 85, 22, 1, 29),  -- thunderbolt lv29
    (25, 2500, 231, 22, 1, 37),  -- iron-tail lv37
    (25, 2500, 87, 22, 1, 47),  -- thunder lv47
    -- #026 Raichu
    (26, 2600, 84, 22, 1, 1),  -- thunder-shock lv1
    (26, 2600, 98, 22, 1, 5),  -- quick-attack lv5
    (26, 2600, 86, 22, 1, 9),  -- thunder-wave lv9
    (26, 2600, 129, 22, 1, 15),  -- swift lv15
    (26, 2600, 209, 22, 1, 21),  -- spark lv21
    (26, 2600, 85, 22, 1, 29),  -- thunderbolt lv29
    (26, 2600, 231, 22, 1, 37),  -- iron-tail lv37
    (26, 2600, 87, 22, 1, 47),  -- thunder lv47
    -- #035 Clefairy
    (35, 3500, 33, 22, 1, 1),  -- tackle lv1
    (35, 3500, 584, 22, 1, 5),  -- fairy-wind lv5
    (35, 3500, 608, 22, 1, 9),  -- baby-doll-eyes lv9
    (35, 3500, 577, 22, 1, 15),  -- draining-kiss lv15
    (35, 3500, 347, 22, 1, 21),  -- calm-mind lv21
    (35, 3500, 94, 22, 1, 29),  -- psychic lv29
    (35, 3500, 585, 22, 1, 37),  -- moonblast lv37
    (35, 3500, 38, 22, 1, 47),  -- double-edge lv47
    -- #036 Clefable
    (36, 3600, 33, 22, 1, 1),  -- tackle lv1
    (36, 3600, 584, 22, 1, 5),  -- fairy-wind lv5
    (36, 3600, 608, 22, 1, 9),  -- baby-doll-eyes lv9
    (36, 3600, 577, 22, 1, 15),  -- draining-kiss lv15
    (36, 3600, 347, 22, 1, 21),  -- calm-mind lv21
    (36, 3600, 94, 22, 1, 29),  -- psychic lv29
    (36, 3600, 585, 22, 1, 37),  -- moonblast lv37
    (36, 3600, 38, 22, 1, 47),  -- double-edge lv47
    -- #037 Vulpix
    (37, 3700, 52, 22, 1, 1),  -- ember lv1
    (37, 3700, 98, 22, 1, 5),  -- quick-attack lv5
    (37, 3700, 417, 22, 1, 9),  -- nasty-plot lv9
    (37, 3700, 172, 22, 1, 15),  -- flame-wheel lv15
    (37, 3700, 506, 22, 1, 21),  -- hex lv21
    (37, 3700, 326, 22, 1, 29),  -- extrasensory lv29
    (37, 3700, 53, 22, 1, 37),  -- flamethrower lv37
    (37, 3700, 126, 22, 1, 47),  -- fire-blast lv47
    (37, 3700, 53, 22, 6, NULL),  -- flamethrower tutor
    (37, 3700, 129, 22, 6, NULL),  -- swift tutor
    (37, 3700, 156, 22, 6, NULL),  -- rest tutor
    (37, 3700, 231, 22, 6, NULL),  -- iron-tail tutor
    (37, 3700, 399, 22, 6, NULL),  -- dark-pulse tutor
    (37, 3700, 412, 22, 6, NULL),  -- energy-ball tutor
    (37, 3700, 428, 22, 6, NULL),  -- zen-headbutt tutor
    (37, 3700, 466, 22, 6, NULL),  -- ominous-wind tutor
    (37, 3700, 595, 22, 6, NULL),  -- mystical-fire tutor
    (37, 3700, 608, 22, 6, NULL),  -- baby-doll-eyes tutor
    -- #038 Ninetales
    (38, 3800, 52, 22, 1, 1),  -- ember lv1
    (38, 3800, 98, 22, 1, 5),  -- quick-attack lv5
    (38, 3800, 417, 22, 1, 9),  -- nasty-plot lv9
    (38, 3800, 172, 22, 1, 15),  -- flame-wheel lv15
    (38, 3800, 506, 22, 1, 21),  -- hex lv21
    (38, 3800, 326, 22, 1, 29),  -- extrasensory lv29
    (38, 3800, 53, 22, 1, 37),  -- flamethrower lv37
    (38, 3800, 126, 22, 1, 47),  -- fire-blast lv47
    (38, 3800, 53, 22, 6, NULL),  -- flamethrower tutor
    (38, 3800, 63, 22, 6, NULL),  -- hyper-beam tutor
    (38, 3800, 129, 22, 6, NULL),  -- swift tutor
    (38, 3800, 156, 22, 6, NULL),  -- rest tutor
    (38, 3800, 231, 22, 6, NULL),  -- iron-tail tutor
    (38, 3800, 247, 22, 6, NULL),  -- shadow-ball tutor
    (38, 3800, 347, 22, 6, NULL),  -- calm-mind tutor
    (38, 3800, 399, 22, 6, NULL),  -- dark-pulse tutor
    (38, 3800, 412, 22, 6, NULL),  -- energy-ball tutor
    (38, 3800, 416, 22, 6, NULL),  -- giga-impact tutor
    (38, 3800, 428, 22, 6, NULL),  -- zen-headbutt tutor
    (38, 3800, 466, 22, 6, NULL),  -- ominous-wind tutor
    (38, 3800, 595, 22, 6, NULL),  -- mystical-fire tutor
    (38, 3800, 608, 22, 6, NULL),  -- baby-doll-eyes tutor
    -- #041 Zubat
    (41, 4100, 16, 22, 1, 1),  -- gust lv1
    (41, 4100, 95, 22, 1, 6),  -- hypnosis lv6
    (41, 4100, 44, 22, 1, 11),  -- bite lv11
    (41, 4100, 314, 22, 1, 18),  -- air-cutter lv18
    (41, 4100, 440, 22, 1, 25),  -- cross-poison lv25
    (41, 4100, 403, 22, 1, 34),  -- air-slash lv34
    (41, 4100, 141, 22, 1, 43),  -- leech-life lv43
    -- #042 Golbat
    (42, 4200, 16, 22, 1, 1),  -- gust lv1
    (42, 4200, 95, 22, 1, 6),  -- hypnosis lv6
    (42, 4200, 44, 22, 1, 11),  -- bite lv11
    (42, 4200, 314, 22, 1, 18),  -- air-cutter lv18
    (42, 4200, 440, 22, 1, 25),  -- cross-poison lv25
    (42, 4200, 403, 22, 1, 34),  -- air-slash lv34
    (42, 4200, 141, 22, 1, 43),  -- leech-life lv43
    -- #046 Paras
    (46, 4600, 71, 22, 1, 1),  -- absorb lv1
    (46, 4600, 78, 22, 1, 5),  -- stun-spore lv5
    (46, 4600, 77, 22, 1, 9),  -- poison-powder lv9
    (46, 4600, 474, 22, 1, 15),  -- venoshock lv15
    (46, 4600, 163, 22, 1, 21),  -- slash lv21
    (46, 4600, 147, 22, 1, 29),  -- spore lv29
    (46, 4600, 404, 22, 1, 37),  -- x-scissor lv37
    (46, 4600, 412, 22, 1, 47),  -- energy-ball lv47
    -- #047 Parasect
    (47, 4700, 71, 22, 1, 1),  -- absorb lv1
    (47, 4700, 78, 22, 1, 5),  -- stun-spore lv5
    (47, 4700, 77, 22, 1, 9),  -- poison-powder lv9
    (47, 4700, 474, 22, 1, 15),  -- venoshock lv15
    (47, 4700, 163, 22, 1, 21),  -- slash lv21
    (47, 4700, 147, 22, 1, 29),  -- spore lv29
    (47, 4700, 404, 22, 1, 37),  -- x-scissor lv37
    (47, 4700, 412, 22, 1, 47),  -- energy-ball lv47
    -- #054 Psyduck
    (54, 5400, 145, 22, 1, 1),  -- bubble lv1
    (54, 5400, 93, 22, 1, 6),  -- confusion lv6
    (54, 5400, 352, 22, 1, 11),  -- water-pulse lv11
    (54, 5400, 95, 22, 1, 18),  -- hypnosis lv18
    (54, 5400, 428, 22, 1, 25),  -- zen-headbutt lv25
    (54, 5400, 401, 22, 1, 34),  -- aqua-tail lv34
    (54, 5400, 56, 22, 1, 43),  -- hydro-pump lv43
    -- #055 Golduck
    (55, 5500, 145, 22, 1, 1),  -- bubble lv1
    (55, 5500, 93, 22, 1, 6),  -- confusion lv6
    (55, 5500, 352, 22, 1, 11),  -- water-pulse lv11
    (55, 5500, 95, 22, 1, 18),  -- hypnosis lv18
    (55, 5500, 428, 22, 1, 25),  -- zen-headbutt lv25
    (55, 5500, 401, 22, 1, 34),  -- aqua-tail lv34
    (55, 5500, 56, 22, 1, 43),  -- hydro-pump lv43
    -- #063 Abra
    (63, 6300, 100, 22, 1, 1),  -- teleport lv1
    -- #064 Kadabra
    (64, 6400, 100, 22, 1, 1),  -- teleport lv1
    (64, 6400, 95, 22, 1, 6),  -- hypnosis lv6
    (64, 6400, 347, 22, 1, 11),  -- calm-mind lv11
    (64, 6400, 427, 22, 1, 18),  -- psycho-cut lv18
    (64, 6400, 428, 22, 1, 25),  -- zen-headbutt lv25
    (64, 6400, 105, 22, 1, 34),  -- recover lv34
    (64, 6400, 94, 22, 1, 43),  -- psychic lv43
    (64, 6400, 93, 22, 7, 0),  -- confusion evo
    -- #065 Alakazam
    (65, 6500, 100, 22, 1, 1),  -- teleport lv1
    (65, 6500, 93, 22, 1, 6),  -- confusion lv6
    (65, 6500, 95, 22, 1, 6),  -- hypnosis lv6
    (65, 6500, 347, 22, 1, 11),  -- calm-mind lv11
    (65, 6500, 427, 22, 1, 18),  -- psycho-cut lv18
    (65, 6500, 428, 22, 1, 25),  -- zen-headbutt lv25
    (65, 6500, 105, 22, 1, 34),  -- recover lv34
    (65, 6500, 94, 22, 1, 43),  -- psychic lv43
    -- #066 Machop
    (66, 6600, 33, 22, 1, 1),  -- tackle lv1
    (66, 6600, 249, 22, 1, 6),  -- rock-smash lv6
    (66, 6600, 418, 22, 1, 11),  -- bullet-punch lv11
    (66, 6600, 458, 22, 1, 18),  -- double-hit lv18
    (66, 6600, 183, 22, 1, 22),  -- mach-punch lv22
    (66, 6600, 339, 22, 1, 25),  -- bulk-up lv25
    (66, 6600, 38, 22, 1, 34),  -- double-edge lv34
    (66, 6600, 370, 22, 1, 43),  -- close-combat lv43
    -- #067 Machoke
    (67, 6700, 33, 22, 1, 1),  -- tackle lv1
    (67, 6700, 249, 22, 1, 6),  -- rock-smash lv6
    (67, 6700, 418, 22, 1, 11),  -- bullet-punch lv11
    (67, 6700, 458, 22, 1, 18),  -- double-hit lv18
    (67, 6700, 183, 22, 1, 22),  -- mach-punch lv22
    (67, 6700, 339, 22, 1, 25),  -- bulk-up lv25
    (67, 6700, 38, 22, 1, 34),  -- double-edge lv34
    (67, 6700, 370, 22, 1, 43),  -- close-combat lv43
    -- #068 Machamp
    (68, 6800, 33, 22, 1, 1),  -- tackle lv1
    (68, 6800, 249, 22, 1, 6),  -- rock-smash lv6
    (68, 6800, 418, 22, 1, 11),  -- bullet-punch lv11
    (68, 6800, 458, 22, 1, 18),  -- double-hit lv18
    (68, 6800, 183, 22, 1, 22),  -- mach-punch lv22
    (68, 6800, 339, 22, 1, 25),  -- bulk-up lv25
    (68, 6800, 409, 22, 1, 30),  -- drain-punch lv30
    (68, 6800, 38, 22, 1, 34),  -- double-edge lv34
    (68, 6800, 370, 22, 1, 43),  -- close-combat lv43
    -- #072 Tentacool
    (72, 7200, 40, 22, 1, 1),  -- poison-sting lv1
    (72, 7200, 145, 22, 1, 6),  -- bubble lv6
    (72, 7200, 352, 22, 1, 11),  -- water-pulse lv11
    (72, 7200, 506, 22, 1, 18),  -- hex lv18
    (72, 7200, 398, 22, 1, 25),  -- poison-jab lv25
    (72, 7200, 151, 22, 1, 34),  -- acid-armor lv34
    (72, 7200, 56, 22, 1, 43),  -- hydro-pump lv43
    -- #073 Tentacruel
    (73, 7300, 40, 22, 1, 1),  -- poison-sting lv1
    (73, 7300, 145, 22, 1, 6),  -- bubble lv6
    (73, 7300, 352, 22, 1, 11),  -- water-pulse lv11
    (73, 7300, 506, 22, 1, 18),  -- hex lv18
    (73, 7300, 398, 22, 1, 25),  -- poison-jab lv25
    (73, 7300, 151, 22, 1, 34),  -- acid-armor lv34
    (73, 7300, 56, 22, 1, 43),  -- hydro-pump lv43
    -- #074 Geodude
    (74, 7400, 205, 22, 1, 1),  -- rollout lv1
    (74, 7400, 33, 22, 1, 5),  -- tackle lv5
    (74, 7400, 189, 22, 1, 9),  -- mud-slap lv9
    (74, 7400, 334, 22, 1, 15),  -- iron-defense lv15
    (74, 7400, 157, 22, 1, 21),  -- rock-slide lv21
    (74, 7400, 523, 22, 1, 26),  -- bulldoze lv26
    (74, 7400, 446, 22, 1, 29),  -- stealth-rock lv29
    (74, 7400, 38, 22, 1, 37),  -- double-edge lv37
    (74, 7400, 120, 22, 1, 47),  -- self-destruct lv47
    -- #075 Graveler
    (75, 7500, 205, 22, 1, 1),  -- rollout lv1
    (75, 7500, 33, 22, 1, 5),  -- tackle lv5
    (75, 7500, 189, 22, 1, 9),  -- mud-slap lv9
    (75, 7500, 334, 22, 1, 15),  -- iron-defense lv15
    (75, 7500, 157, 22, 1, 21),  -- rock-slide lv21
    (75, 7500, 523, 22, 1, 26),  -- bulldoze lv26
    (75, 7500, 446, 22, 1, 29),  -- stealth-rock lv29
    (75, 7500, 38, 22, 1, 37),  -- double-edge lv37
    (75, 7500, 120, 22, 1, 47),  -- self-destruct lv47
    -- #076 Golem
    (76, 7600, 205, 22, 1, 1),  -- rollout lv1
    (76, 7600, 33, 22, 1, 5),  -- tackle lv5
    (76, 7600, 189, 22, 1, 9),  -- mud-slap lv9
    (76, 7600, 334, 22, 1, 15),  -- iron-defense lv15
    (76, 7600, 157, 22, 1, 21),  -- rock-slide lv21
    (76, 7600, 523, 22, 1, 26),  -- bulldoze lv26
    (76, 7600, 446, 22, 1, 29),  -- stealth-rock lv29
    (76, 7600, 38, 22, 1, 37),  -- double-edge lv37
    (76, 7600, 120, 22, 1, 47),  -- self-destruct lv47
    (76, 7600, 444, 22, 1, 57),  -- stone-edge lv57
    -- #077 Ponyta
    (77, 7700, 33, 22, 1, 1),  -- tackle lv1
    (77, 7700, 52, 22, 1, 5),  -- ember lv5
    (77, 7700, 458, 22, 1, 9),  -- double-hit lv9
    (77, 7700, 172, 22, 1, 15),  -- flame-wheel lv15
    (77, 7700, 95, 22, 1, 21),  -- hypnosis lv21
    (77, 7700, 126, 22, 1, 29),  -- fire-blast lv29
    (77, 7700, 38, 22, 1, 37),  -- double-edge lv37
    (77, 7700, 394, 22, 1, 47),  -- flare-blitz lv47
    -- #078 Rapidash
    (78, 7800, 33, 22, 1, 1),  -- tackle lv1
    (78, 7800, 52, 22, 1, 5),  -- ember lv5
    (78, 7800, 458, 22, 1, 9),  -- double-hit lv9
    (78, 7800, 172, 22, 1, 15),  -- flame-wheel lv15
    (78, 7800, 95, 22, 1, 21),  -- hypnosis lv21
    (78, 7800, 126, 22, 1, 29),  -- fire-blast lv29
    (78, 7800, 38, 22, 1, 37),  -- double-edge lv37
    (78, 7800, 394, 22, 1, 47),  -- flare-blitz lv47
    -- #081 Magnemite
    (81, 8100, 84, 22, 1, 1),  -- thunder-shock lv1
    (81, 8100, 33, 22, 1, 6),  -- tackle lv6
    (81, 8100, 86, 22, 1, 11),  -- thunder-wave lv11
    (81, 8100, 209, 22, 1, 18),  -- spark lv18
    (81, 8100, 430, 22, 1, 25),  -- flash-cannon lv25
    (81, 8100, 85, 22, 1, 34),  -- thunderbolt lv34
    (81, 8100, 87, 22, 1, 43),  -- thunder lv43
    -- #082 Magneton
    (82, 8200, 84, 22, 1, 1),  -- thunder-shock lv1
    (82, 8200, 33, 22, 1, 6),  -- tackle lv6
    (82, 8200, 86, 22, 1, 11),  -- thunder-wave lv11
    (82, 8200, 209, 22, 1, 18),  -- spark lv18
    (82, 8200, 161, 22, 1, 25),  -- tri-attack lv25
    (82, 8200, 430, 22, 1, 25),  -- flash-cannon lv25
    (82, 8200, 85, 22, 1, 34),  -- thunderbolt lv34
    (82, 8200, 87, 22, 1, 43),  -- thunder lv43
    -- #092 Gastly
    (92, 9200, 310, 22, 1, 1),  -- astonish lv1
    (92, 9200, 139, 22, 1, 6),  -- poison-gas lv6
    (92, 9200, 506, 22, 1, 11),  -- hex lv11
    (92, 9200, 474, 22, 1, 18),  -- venoshock lv18
    (92, 9200, 95, 22, 1, 25),  -- hypnosis lv25
    (92, 9200, 399, 22, 1, 34),  -- dark-pulse lv34
    (92, 9200, 247, 22, 1, 43),  -- shadow-ball lv43
    -- #093 Haunter
    (93, 9300, 310, 22, 1, 1),  -- astonish lv1
    (93, 9300, 139, 22, 1, 6),  -- poison-gas lv6
    (93, 9300, 506, 22, 1, 11),  -- hex lv11
    (93, 9300, 474, 22, 1, 18),  -- venoshock lv18
    (93, 9300, 95, 22, 1, 25),  -- hypnosis lv25
    (93, 9300, 399, 22, 1, 34),  -- dark-pulse lv34
    (93, 9300, 247, 22, 1, 43),  -- shadow-ball lv43
    -- #094 Gengar
    (94, 9400, 310, 22, 1, 1),  -- astonish lv1
    (94, 9400, 139, 22, 1, 6),  -- poison-gas lv6
    (94, 9400, 506, 22, 1, 11),  -- hex lv11
    (94, 9400, 474, 22, 1, 18),  -- venoshock lv18
    (94, 9400, 95, 22, 1, 25),  -- hypnosis lv25
    (94, 9400, 399, 22, 1, 34),  -- dark-pulse lv34
    (94, 9400, 247, 22, 1, 43),  -- shadow-ball lv43
    -- #095 Onix
    (95, 9500, 205, 22, 1, 1),  -- rollout lv1
    (95, 9500, 33, 22, 1, 6),  -- tackle lv6
    (95, 9500, 523, 22, 1, 11),  -- bulldoze lv11
    (95, 9500, 157, 22, 1, 18),  -- rock-slide lv18
    (95, 9500, 446, 22, 1, 25),  -- stealth-rock lv25
    (95, 9500, 667, 22, 1, 34),  -- high-horsepower lv34
    (95, 9500, 231, 22, 1, 43),  -- iron-tail lv43
    -- #108 Lickitung
    (108, 10800, 33, 22, 1, 1),  -- tackle lv1
    (108, 10800, 156, 22, 1, 6),  -- rest lv6
    (108, 10800, 523, 22, 1, 11),  -- bulldoze lv11
    (108, 10800, 428, 22, 1, 18),  -- zen-headbutt lv18
    (108, 10800, 38, 22, 1, 25),  -- double-edge lv25
    (108, 10800, 205, 22, 1, 34),  -- rollout lv34
    (108, 10800, 416, 22, 1, 43),  -- giga-impact lv43
    -- #111 Rhyhorn
    (111, 11100, 33, 22, 1, 1),  -- tackle lv1
    (111, 11100, 523, 22, 1, 6),  -- bulldoze lv6
    (111, 11100, 249, 22, 1, 11),  -- rock-smash lv11
    (111, 11100, 446, 22, 1, 18),  -- stealth-rock lv18
    (111, 11100, 157, 22, 1, 25),  -- rock-slide lv25
    (111, 11100, 667, 22, 1, 34),  -- high-horsepower lv34
    (111, 11100, 38, 22, 1, 43),  -- double-edge lv43
    (111, 11100, 416, 22, 1, 52),  -- giga-impact lv52
    -- #112 Rhydon
    (112, 11200, 33, 22, 1, 1),  -- tackle lv1
    (112, 11200, 523, 22, 1, 6),  -- bulldoze lv6
    (112, 11200, 249, 22, 1, 11),  -- rock-smash lv11
    (112, 11200, 446, 22, 1, 18),  -- stealth-rock lv18
    (112, 11200, 157, 22, 1, 25),  -- rock-slide lv25
    (112, 11200, 667, 22, 1, 34),  -- high-horsepower lv34
    (112, 11200, 38, 22, 1, 43),  -- double-edge lv43
    (112, 11200, 416, 22, 1, 52),  -- giga-impact lv52
    -- #113 Chansey
    (113, 11300, 33, 22, 1, 1),  -- tackle lv1
    (113, 11300, 584, 22, 1, 6),  -- fairy-wind lv6
    (113, 11300, 608, 22, 1, 11),  -- baby-doll-eyes lv11
    (113, 11300, 577, 22, 1, 18),  -- draining-kiss lv18
    (113, 11300, 347, 22, 1, 25),  -- calm-mind lv25
    (113, 11300, 135, 22, 1, 34),  -- soft-boiled lv34
    (113, 11300, 38, 22, 1, 43),  -- double-edge lv43
    -- #114 Tangela
    (114, 11400, 71, 22, 1, 1),  -- absorb lv1
    (114, 11400, 78, 22, 1, 6),  -- stun-spore lv6
    (114, 11400, 77, 22, 1, 11),  -- poison-powder lv11
    (114, 11400, 491, 22, 1, 15),  -- acid-spray lv15
    (114, 11400, 458, 22, 1, 18),  -- double-hit lv18
    (114, 11400, 412, 22, 1, 25),  -- energy-ball lv25
    (114, 11400, 246, 22, 1, 34),  -- ancient-power lv34
    (114, 11400, 79, 22, 1, 43),  -- sleep-powder lv43
    -- #122 Mr-Mime
    (122, 12200, 93, 22, 1, 1),  -- confusion lv1
    (122, 12200, 95, 22, 1, 6),  -- hypnosis lv6
    (122, 12200, 334, 22, 1, 11),  -- iron-defense lv11
    (122, 12200, 428, 22, 1, 18),  -- zen-headbutt lv18
    (122, 12200, 102, 22, 1, 25),  -- mimic lv25
    (122, 12200, 94, 22, 1, 34),  -- psychic lv34
    (122, 12200, 347, 22, 1, 43),  -- calm-mind lv43
    (122, 12200, 605, 22, 1, 46),  -- dazzling-gleam lv46
    -- #123 Scyther
    (123, 12300, 98, 22, 1, 1),  -- quick-attack lv1
    (123, 12300, 318, 22, 1, 6),  -- silver-wind lv6
    (123, 12300, 332, 22, 1, 11),  -- aerial-ace lv11
    (123, 12300, 458, 22, 1, 14),  -- double-hit lv14
    (123, 12300, 403, 22, 1, 18),  -- air-slash lv18
    (123, 12300, 14, 22, 1, 25),  -- swords-dance lv25
    (123, 12300, 404, 22, 1, 34),  -- x-scissor lv34
    (123, 12300, 370, 22, 1, 43),  -- close-combat lv43
    -- #125 Electabuzz
    (125, 12500, 84, 22, 1, 1),  -- thunder-shock lv1
    (125, 12500, 98, 22, 1, 6),  -- quick-attack lv6
    (125, 12500, 209, 22, 1, 11),  -- spark lv11
    (125, 12500, 86, 22, 1, 18),  -- thunder-wave lv18
    (125, 12500, 9, 22, 1, 25),  -- thunder-punch lv25
    (125, 12500, 85, 22, 1, 34),  -- thunderbolt lv34
    (125, 12500, 87, 22, 1, 43),  -- thunder lv43
    -- #126 Magmar
    (126, 12600, 52, 22, 1, 1),  -- ember lv1
    (126, 12600, 33, 22, 1, 6),  -- tackle lv6
    (126, 12600, 172, 22, 1, 11),  -- flame-wheel lv11
    (126, 12600, 139, 22, 1, 18),  -- poison-gas lv18
    (126, 12600, 7, 22, 1, 25),  -- fire-punch lv25
    (126, 12600, 53, 22, 1, 34),  -- flamethrower lv34
    (126, 12600, 126, 22, 1, 43),  -- fire-blast lv43
    -- #129 Magikarp
    (129, 12900, 150, 22, 1, 1),  -- splash lv1
    -- #130 Gyarados
    (130, 13000, 150, 22, 1, 1),  -- splash lv1
    (130, 13000, 239, 22, 1, 5),  -- twister lv5
    (130, 13000, 44, 22, 1, 9),  -- bite lv9
    (130, 13000, 116, 22, 1, 15),  -- focus-energy lv15
    (130, 13000, 242, 22, 1, 21),  -- crunch lv21
    (130, 13000, 401, 22, 1, 29),  -- aqua-tail lv29
    (130, 13000, 542, 22, 1, 37),  -- hurricane lv37
    (130, 13000, 56, 22, 1, 47),  -- hydro-pump lv47
    (130, 13000, 63, 22, 1, 57),  -- hyper-beam lv57
    (130, 13000, 352, 22, 7, 0),  -- water-pulse evo
    -- #133 Eevee
    (133, 13300, 33, 22, 1, 1),  -- tackle lv1
    (133, 13300, 98, 22, 1, 6),  -- quick-attack lv6
    (133, 13300, 129, 22, 1, 11),  -- swift lv11
    (133, 13300, 608, 22, 1, 18),  -- baby-doll-eyes lv18
    (133, 13300, 102, 22, 1, 25),  -- mimic lv25
    (133, 13300, 347, 22, 1, 34),  -- calm-mind lv34
    (133, 13300, 38, 22, 1, 43),  -- double-edge lv43
    -- #134 Vaporeon
    (134, 13400, 33, 22, 1, 1),  -- tackle lv1
    (134, 13400, 98, 22, 1, 6),  -- quick-attack lv6
    (134, 13400, 129, 22, 1, 11),  -- swift lv11
    (134, 13400, 608, 22, 1, 18),  -- baby-doll-eyes lv18
    (134, 13400, 102, 22, 1, 25),  -- mimic lv25
    (134, 13400, 401, 22, 1, 25),  -- aqua-tail lv25
    (134, 13400, 347, 22, 1, 34),  -- calm-mind lv34
    (134, 13400, 38, 22, 1, 43),  -- double-edge lv43
    (134, 13400, 145, 22, 7, 0),  -- bubble evo
    -- #135 Jolteon
    (135, 13500, 33, 22, 1, 1),  -- tackle lv1
    (135, 13500, 98, 22, 1, 6),  -- quick-attack lv6
    (135, 13500, 129, 22, 1, 11),  -- swift lv11
    (135, 13500, 608, 22, 1, 18),  -- baby-doll-eyes lv18
    (135, 13500, 85, 22, 1, 25),  -- thunderbolt lv25
    (135, 13500, 102, 22, 1, 25),  -- mimic lv25
    (135, 13500, 347, 22, 1, 34),  -- calm-mind lv34
    (135, 13500, 38, 22, 1, 43),  -- double-edge lv43
    (135, 13500, 84, 22, 7, 0),  -- thunder-shock evo
    -- #136 Flareon
    (136, 13600, 33, 22, 1, 1),  -- tackle lv1
    (136, 13600, 98, 22, 1, 6),  -- quick-attack lv6
    (136, 13600, 129, 22, 1, 11),  -- swift lv11
    (136, 13600, 608, 22, 1, 18),  -- baby-doll-eyes lv18
    (136, 13600, 53, 22, 1, 25),  -- flamethrower lv25
    (136, 13600, 102, 22, 1, 25),  -- mimic lv25
    (136, 13600, 347, 22, 1, 34),  -- calm-mind lv34
    (136, 13600, 38, 22, 1, 43),  -- double-edge lv43
    (136, 13600, 52, 22, 7, 0),  -- ember evo
    -- #137 Porygon
    (137, 13700, 33, 22, 1, 1),  -- tackle lv1
    (137, 13700, 84, 22, 1, 5),  -- thunder-shock lv5
    (137, 13700, 86, 22, 1, 9),  -- thunder-wave lv9
    (137, 13700, 209, 22, 1, 15),  -- spark lv15
    (137, 13700, 161, 22, 1, 21),  -- tri-attack lv21
    (137, 13700, 85, 22, 1, 29),  -- thunderbolt lv29
    (137, 13700, 105, 22, 1, 37),  -- recover lv37
    (137, 13700, 63, 22, 1, 47),  -- hyper-beam lv47
    -- #143 Snorlax
    (143, 14300, 205, 22, 1, 1),  -- rollout lv1
    (143, 14300, 33, 22, 1, 5),  -- tackle lv5
    (143, 14300, 156, 22, 1, 9),  -- rest lv9
    (143, 14300, 523, 22, 1, 15),  -- bulldoze lv15
    (143, 14300, 44, 22, 1, 21),  -- bite lv21
    (143, 14300, 428, 22, 1, 29),  -- zen-headbutt lv29
    (143, 14300, 242, 22, 1, 35),  -- crunch lv35
    (143, 14300, 667, 22, 1, 37),  -- high-horsepower lv37
    (143, 14300, 38, 22, 1, 46),  -- double-edge lv46
    (143, 14300, 416, 22, 1, 57),  -- giga-impact lv57
    -- #155 Cyndaquil
    (155, 15500, 98, 22, 1, 1),  -- quick-attack lv1
    (155, 15500, 52, 22, 1, 6),  -- ember lv6
    (155, 15500, 205, 22, 1, 11),  -- rollout lv11
    (155, 15500, 172, 22, 1, 18),  -- flame-wheel lv18
    (155, 15500, 129, 22, 1, 25),  -- swift lv25
    (155, 15500, 53, 22, 1, 34),  -- flamethrower lv34
    (155, 15500, 315, 22, 1, 43),  -- overheat lv43
    -- #156 Quilava
    (156, 15600, 98, 22, 1, 1),  -- quick-attack lv1
    (156, 15600, 52, 22, 1, 6),  -- ember lv6
    (156, 15600, 205, 22, 1, 11),  -- rollout lv11
    (156, 15600, 172, 22, 1, 18),  -- flame-wheel lv18
    (156, 15600, 129, 22, 1, 25),  -- swift lv25
    (156, 15600, 53, 22, 1, 34),  -- flamethrower lv34
    (156, 15600, 315, 22, 1, 43),  -- overheat lv43
    -- #169 Crobat
    (169, 16900, 16, 22, 1, 1),  -- gust lv1
    (169, 16900, 95, 22, 1, 6),  -- hypnosis lv6
    (169, 16900, 44, 22, 1, 11),  -- bite lv11
    (169, 16900, 314, 22, 1, 18),  -- air-cutter lv18
    (169, 16900, 440, 22, 1, 25),  -- cross-poison lv25
    (169, 16900, 403, 22, 1, 34),  -- air-slash lv34
    (169, 16900, 141, 22, 1, 43),  -- leech-life lv43
    -- #172 Pichu
    (172, 17200, 84, 22, 1, 1),  -- thunder-shock lv1
    (172, 17200, 98, 22, 1, 5),  -- quick-attack lv5
    (172, 17200, 86, 22, 1, 9),  -- thunder-wave lv9
    (172, 17200, 129, 22, 1, 15),  -- swift lv15
    (172, 17200, 209, 22, 1, 21),  -- spark lv21
    (172, 17200, 85, 22, 1, 29),  -- thunderbolt lv29
    (172, 17200, 231, 22, 1, 37),  -- iron-tail lv37
    (172, 17200, 87, 22, 1, 47),  -- thunder lv47
    -- #173 Cleffa
    (173, 17300, 33, 22, 1, 1),  -- tackle lv1
    (173, 17300, 584, 22, 1, 5),  -- fairy-wind lv5
    (173, 17300, 608, 22, 1, 9),  -- baby-doll-eyes lv9
    (173, 17300, 577, 22, 1, 15),  -- draining-kiss lv15
    (173, 17300, 347, 22, 1, 21),  -- calm-mind lv21
    (173, 17300, 94, 22, 1, 29),  -- psychic lv29
    (173, 17300, 585, 22, 1, 37),  -- moonblast lv37
    (173, 17300, 38, 22, 1, 47),  -- double-edge lv47
    -- #175 Togepi
    (175, 17500, 33, 22, 1, 1),  -- tackle lv1
    (175, 17500, 584, 22, 1, 6),  -- fairy-wind lv6
    (175, 17500, 577, 22, 1, 11),  -- draining-kiss lv11
    (175, 17500, 347, 22, 1, 18),  -- calm-mind lv18
    (175, 17500, 608, 22, 1, 25),  -- baby-doll-eyes lv25
    (175, 17500, 326, 22, 1, 34),  -- extrasensory lv34
    (175, 17500, 585, 22, 1, 43),  -- moonblast lv43
    -- #176 Togetic
    (176, 17600, 33, 22, 1, 1),  -- tackle lv1
    (176, 17600, 584, 22, 1, 6),  -- fairy-wind lv6
    (176, 17600, 577, 22, 1, 11),  -- draining-kiss lv11
    (176, 17600, 347, 22, 1, 18),  -- calm-mind lv18
    (176, 17600, 403, 22, 1, 25),  -- air-slash lv25
    (176, 17600, 608, 22, 1, 25),  -- baby-doll-eyes lv25
    (176, 17600, 326, 22, 1, 34),  -- extrasensory lv34
    (176, 17600, 585, 22, 1, 43),  -- moonblast lv43
    (176, 17600, 314, 22, 7, 0),  -- air-cutter evo
    -- #185 Sudowoodo
    (185, 18500, 205, 22, 1, 1),  -- rollout lv1
    (185, 18500, 33, 22, 1, 5),  -- tackle lv5
    (185, 18500, 446, 22, 1, 9),  -- stealth-rock lv9
    (185, 18500, 157, 22, 1, 15),  -- rock-slide lv15
    (185, 18500, 334, 22, 1, 21),  -- iron-defense lv21
    (185, 18500, 102, 22, 1, 29),  -- mimic lv29
    (185, 18500, 38, 22, 1, 37),  -- double-edge lv37
    (185, 18500, 457, 22, 1, 47),  -- head-smash lv47
    (185, 18500, 452, 22, 1, 57),  -- wood-hammer lv57
    -- #190 Aipom
    (190, 19000, 98, 22, 1, 1),  -- quick-attack lv1
    (190, 19000, 417, 22, 1, 6),  -- nasty-plot lv6
    (190, 19000, 129, 22, 1, 11),  -- swift lv11
    (190, 19000, 426, 22, 1, 18),  -- mud-bomb lv18
    (190, 19000, 458, 22, 1, 25),  -- double-hit lv25
    (190, 19000, 231, 22, 1, 34),  -- iron-tail lv34
    (190, 19000, 38, 22, 1, 43),  -- double-edge lv43
    -- #193 Yanma
    (193, 19300, 98, 22, 1, 1),  -- quick-attack lv1
    (193, 19300, 16, 22, 1, 6),  -- gust lv6
    (193, 19300, 318, 22, 1, 11),  -- silver-wind lv11
    (193, 19300, 95, 22, 1, 18),  -- hypnosis lv18
    (193, 19300, 403, 22, 1, 25),  -- air-slash lv25
    (193, 19300, 246, 22, 1, 34),  -- ancient-power lv34
    (193, 19300, 405, 22, 1, 43),  -- bug-buzz lv43
    -- #196 Espeon
    (196, 19600, 33, 22, 1, 1),  -- tackle lv1
    (196, 19600, 98, 22, 1, 6),  -- quick-attack lv6
    (196, 19600, 129, 22, 1, 11),  -- swift lv11
    (196, 19600, 608, 22, 1, 18),  -- baby-doll-eyes lv18
    (196, 19600, 94, 22, 1, 25),  -- psychic lv25
    (196, 19600, 102, 22, 1, 25),  -- mimic lv25
    (196, 19600, 347, 22, 1, 34),  -- calm-mind lv34
    (196, 19600, 38, 22, 1, 43),  -- double-edge lv43
    (196, 19600, 93, 22, 7, 0),  -- confusion evo
    -- #197 Umbreon
    (197, 19700, 33, 22, 1, 1),  -- tackle lv1
    (197, 19700, 98, 22, 1, 6),  -- quick-attack lv6
    (197, 19700, 129, 22, 1, 11),  -- swift lv11
    (197, 19700, 608, 22, 1, 18),  -- baby-doll-eyes lv18
    (197, 19700, 102, 22, 1, 25),  -- mimic lv25
    (197, 19700, 399, 22, 1, 25),  -- dark-pulse lv25
    (197, 19700, 347, 22, 1, 34),  -- calm-mind lv34
    (197, 19700, 38, 22, 1, 43),  -- double-edge lv43
    (197, 19700, 555, 22, 7, 0),  -- snarl evo
    -- #198 Murkrow
    (198, 19800, 16, 22, 1, 1),  -- gust lv1
    (198, 19800, 555, 22, 1, 6),  -- snarl lv6
    (198, 19800, 355, 22, 1, 11),  -- roost lv11
    (198, 19800, 332, 22, 1, 18),  -- aerial-ace lv18
    (198, 19800, 400, 22, 1, 25),  -- night-slash lv25
    (198, 19800, 403, 22, 1, 30),  -- air-slash lv30
    (198, 19800, 417, 22, 1, 34),  -- nasty-plot lv34
    (198, 19800, 399, 22, 1, 43),  -- dark-pulse lv43
    -- #200 Misdreavus
    (200, 20000, 425, 22, 1, 1),  -- shadow-sneak lv1
    (200, 20000, 93, 22, 1, 6),  -- confusion lv6
    (200, 20000, 95, 22, 1, 11),  -- hypnosis lv11
    (200, 20000, 506, 22, 1, 18),  -- hex lv18
    (200, 20000, 326, 22, 1, 25),  -- extrasensory lv25
    (200, 20000, 408, 22, 1, 34),  -- power-gem lv34
    (200, 20000, 247, 22, 1, 43),  -- shadow-ball lv43
    -- #201 Unown
    (201, 20100, 237, 22, 1, 1),  -- hidden-power lv1
    -- #207 Gligar
    (207, 20700, 40, 22, 1, 1),  -- poison-sting lv1
    (207, 20700, 98, 22, 1, 6),  -- quick-attack lv6
    (207, 20700, 332, 22, 1, 11),  -- aerial-ace lv11
    (207, 20700, 426, 22, 1, 18),  -- mud-bomb lv18
    (207, 20700, 163, 22, 1, 25),  -- slash lv25
    (207, 20700, 398, 22, 1, 34),  -- poison-jab lv34
    (207, 20700, 404, 22, 1, 43),  -- x-scissor lv43
    -- #208 Steelix
    (208, 20800, 205, 22, 1, 1),  -- rollout lv1
    (208, 20800, 33, 22, 1, 6),  -- tackle lv6
    (208, 20800, 523, 22, 1, 11),  -- bulldoze lv11
    (208, 20800, 157, 22, 1, 18),  -- rock-slide lv18
    (208, 20800, 446, 22, 1, 25),  -- stealth-rock lv25
    (208, 20800, 667, 22, 1, 34),  -- high-horsepower lv34
    (208, 20800, 231, 22, 1, 43),  -- iron-tail lv43
    -- #212 Scizor
    (212, 21200, 98, 22, 1, 1),  -- quick-attack lv1
    (212, 21200, 318, 22, 1, 6),  -- silver-wind lv6
    (212, 21200, 332, 22, 1, 11),  -- aerial-ace lv11
    (212, 21200, 458, 22, 1, 14),  -- double-hit lv14
    (212, 21200, 403, 22, 1, 18),  -- air-slash lv18
    (212, 21200, 14, 22, 1, 25),  -- swords-dance lv25
    (212, 21200, 418, 22, 1, 29),  -- bullet-punch lv29
    (212, 21200, 404, 22, 1, 34),  -- x-scissor lv34
    (212, 21200, 442, 22, 1, 34),  -- iron-head lv34
    (212, 21200, 370, 22, 1, 43),  -- close-combat lv43
    -- #214 Heracross
    (214, 21400, 33, 22, 1, 1),  -- tackle lv1
    (214, 21400, 249, 22, 1, 5),  -- rock-smash lv5
    (214, 21400, 42, 22, 1, 9),  -- pin-missile lv9
    (214, 21400, 332, 22, 1, 15),  -- aerial-ace lv15
    (214, 21400, 163, 22, 1, 21),  -- slash lv21
    (214, 21400, 14, 22, 1, 29),  -- swords-dance lv29
    (214, 21400, 38, 22, 1, 37),  -- double-edge lv37
    (214, 21400, 370, 22, 1, 47),  -- close-combat lv47
    (214, 21400, 224, 22, 1, 57),  -- megahorn lv57
    -- #215 Sneasel
    (215, 21500, 98, 22, 1, 1),  -- quick-attack lv1
    (215, 21500, 420, 22, 1, 6),  -- ice-shard lv6
    (215, 21500, 129, 22, 1, 11),  -- swift lv11
    (215, 21500, 163, 22, 1, 18),  -- slash lv18
    (215, 21500, 398, 22, 1, 25),  -- poison-jab lv25
    (215, 21500, 14, 22, 1, 34),  -- swords-dance lv34
    (215, 21500, 59, 22, 1, 43),  -- blizzard lv43
    (215, 21500, 8, 22, 6, NULL),  -- ice-punch tutor
    (215, 21500, 58, 22, 6, NULL),  -- ice-beam tutor
    (215, 21500, 129, 22, 6, NULL),  -- swift tutor
    (215, 21500, 156, 22, 6, NULL),  -- rest tutor
    (215, 21500, 196, 22, 6, NULL),  -- icy-wind tutor
    (215, 21500, 206, 22, 6, NULL),  -- false-swipe tutor
    (215, 21500, 231, 22, 6, NULL),  -- iron-tail tutor
    (215, 21500, 247, 22, 6, NULL),  -- shadow-ball tutor
    (215, 21500, 249, 22, 6, NULL),  -- rock-smash tutor
    (215, 21500, 332, 22, 6, NULL),  -- aerial-ace tutor
    (215, 21500, 347, 22, 6, NULL),  -- calm-mind tutor
    (215, 21500, 398, 22, 6, NULL),  -- poison-jab tutor
    (215, 21500, 399, 22, 6, NULL),  -- dark-pulse tutor
    (215, 21500, 404, 22, 6, NULL),  -- x-scissor tutor
    (215, 21500, 421, 22, 6, NULL),  -- shadow-claw tutor
    (215, 21500, 427, 22, 6, NULL),  -- psycho-cut tutor
    (215, 21500, 555, 22, 6, NULL),  -- snarl tutor
    -- #216 Teddiursa
    (216, 21600, 33, 22, 1, 1),  -- tackle lv1
    (216, 21600, 608, 22, 1, 6),  -- baby-doll-eyes lv6
    (216, 21600, 523, 22, 1, 11),  -- bulldoze lv11
    (216, 21600, 163, 22, 1, 18),  -- slash lv18
    (216, 21600, 583, 22, 1, 25),  -- play-rough lv25
    (216, 21600, 667, 22, 1, 34),  -- high-horsepower lv34
    (216, 21600, 38, 22, 1, 43),  -- double-edge lv43
    -- #217 Ursaring
    (217, 21700, 33, 22, 1, 1),  -- tackle lv1
    (217, 21700, 608, 22, 1, 6),  -- baby-doll-eyes lv6
    (217, 21700, 523, 22, 1, 11),  -- bulldoze lv11
    (217, 21700, 163, 22, 1, 18),  -- slash lv18
    (217, 21700, 583, 22, 1, 25),  -- play-rough lv25
    (217, 21700, 667, 22, 1, 34),  -- high-horsepower lv34
    (217, 21700, 38, 22, 1, 43),  -- double-edge lv43
    -- #220 Swinub
    (220, 22000, 33, 22, 1, 1),  -- tackle lv1
    (220, 22000, 420, 22, 1, 6),  -- ice-shard lv6
    (220, 22000, 523, 22, 1, 11),  -- bulldoze lv11
    (220, 22000, 556, 22, 1, 18),  -- icicle-crash lv18
    (220, 22000, 667, 22, 1, 25),  -- high-horsepower lv25
    (220, 22000, 246, 22, 1, 34),  -- ancient-power lv34
    (220, 22000, 59, 22, 1, 43),  -- blizzard lv43
    (220, 22000, 38, 22, 1, 52),  -- double-edge lv52
    -- #221 Piloswine
    (221, 22100, 33, 22, 1, 1),  -- tackle lv1
    (221, 22100, 420, 22, 1, 6),  -- ice-shard lv6
    (221, 22100, 523, 22, 1, 11),  -- bulldoze lv11
    (221, 22100, 556, 22, 1, 18),  -- icicle-crash lv18
    (221, 22100, 667, 22, 1, 25),  -- high-horsepower lv25
    (221, 22100, 246, 22, 1, 34),  -- ancient-power lv34
    (221, 22100, 59, 22, 1, 43),  -- blizzard lv43
    (221, 22100, 38, 22, 1, 52),  -- double-edge lv52
    -- #223 Remoraid
    (223, 22300, 145, 22, 1, 1),  -- bubble lv1
    (223, 22300, 491, 22, 1, 6),  -- acid-spray lv6
    (223, 22300, 451, 22, 1, 11),  -- charge-beam lv11
    (223, 22300, 352, 22, 1, 18),  -- water-pulse lv18
    (223, 22300, 58, 22, 1, 25),  -- ice-beam lv25
    (223, 22300, 56, 22, 1, 34),  -- hydro-pump lv34
    (223, 22300, 63, 22, 1, 43),  -- hyper-beam lv43
    -- #224 Octillery
    (224, 22400, 145, 22, 1, 1),  -- bubble lv1
    (224, 22400, 491, 22, 1, 6),  -- acid-spray lv6
    (224, 22400, 451, 22, 1, 11),  -- charge-beam lv11
    (224, 22400, 352, 22, 1, 18),  -- water-pulse lv18
    (224, 22400, 58, 22, 1, 25),  -- ice-beam lv25
    (224, 22400, 56, 22, 1, 34),  -- hydro-pump lv34
    (224, 22400, 63, 22, 1, 43),  -- hyper-beam lv43
    (224, 22400, 190, 22, 7, 0),  -- octazooka evo
    -- #226 Mantine
    (226, 22600, 33, 22, 1, 1),  -- tackle lv1
    (226, 22600, 145, 22, 1, 5),  -- bubble lv5
    (226, 22600, 332, 22, 1, 9),  -- aerial-ace lv9
    (226, 22600, 352, 22, 1, 15),  -- water-pulse lv15
    (226, 22600, 403, 22, 1, 21),  -- air-slash lv21
    (226, 22600, 355, 22, 1, 29),  -- roost lv29
    (226, 22600, 56, 22, 1, 37),  -- hydro-pump lv37
    (226, 22600, 38, 22, 1, 47),  -- double-edge lv47
    -- #234 Stantler
    (234, 23400, 33, 22, 1, 1),  -- tackle lv1
    (234, 23400, 93, 22, 1, 5),  -- confusion lv5
    (234, 23400, 95, 22, 1, 9),  -- hypnosis lv9
    (234, 23400, 347, 22, 1, 15),  -- calm-mind lv15
    (234, 23400, 828, 22, 1, 21),  -- psyshield-bash lv21
    (234, 23400, 326, 22, 1, 29),  -- extrasensory lv29
    (234, 23400, 428, 22, 1, 37),  -- zen-headbutt lv37
    (234, 23400, 38, 22, 1, 47),  -- double-edge lv47
    -- #239 Elekid
    (239, 23900, 84, 22, 1, 1),  -- thunder-shock lv1
    (239, 23900, 98, 22, 1, 6),  -- quick-attack lv6
    (239, 23900, 209, 22, 1, 11),  -- spark lv11
    (239, 23900, 86, 22, 1, 18),  -- thunder-wave lv18
    (239, 23900, 9, 22, 1, 25),  -- thunder-punch lv25
    (239, 23900, 85, 22, 1, 34),  -- thunderbolt lv34
    (239, 23900, 87, 22, 1, 43),  -- thunder lv43
    -- #240 Magby
    (240, 24000, 52, 22, 1, 1),  -- ember lv1
    (240, 24000, 33, 22, 1, 6),  -- tackle lv6
    (240, 24000, 172, 22, 1, 11),  -- flame-wheel lv11
    (240, 24000, 139, 22, 1, 18),  -- poison-gas lv18
    (240, 24000, 7, 22, 1, 25),  -- fire-punch lv25
    (240, 24000, 53, 22, 1, 34),  -- flamethrower lv34
    (240, 24000, 126, 22, 1, 43),  -- fire-blast lv43
    -- #242 Blissey
    (242, 24200, 33, 22, 1, 1),  -- tackle lv1
    (242, 24200, 584, 22, 1, 6),  -- fairy-wind lv6
    (242, 24200, 608, 22, 1, 11),  -- baby-doll-eyes lv11
    (242, 24200, 577, 22, 1, 18),  -- draining-kiss lv18
    (242, 24200, 347, 22, 1, 25),  -- calm-mind lv25
    (242, 24200, 135, 22, 1, 34),  -- soft-boiled lv34
    (242, 24200, 38, 22, 1, 43),  -- double-edge lv43
    -- #265 Wurmple
    (265, 26500, 40, 22, 1, 1),  -- poison-sting lv1
    (265, 26500, 33, 22, 1, 6),  -- tackle lv6
    -- #266 Silcoon
    (266, 26600, 40, 22, 1, 1),  -- poison-sting lv1
    (266, 26600, 33, 22, 1, 6),  -- tackle lv6
    (266, 26600, 334, 22, 7, 0),  -- iron-defense evo
    -- #267 Beautifly
    (267, 26700, 40, 22, 1, 1),  -- poison-sting lv1
    (267, 26700, 33, 22, 1, 6),  -- tackle lv6
    (267, 26700, 334, 22, 1, 6),  -- iron-defense lv6
    (267, 26700, 78, 22, 1, 11),  -- stun-spore lv11
    (267, 26700, 318, 22, 1, 18),  -- silver-wind lv18
    (267, 26700, 474, 22, 1, 25),  -- venoshock lv25
    (267, 26700, 403, 22, 1, 34),  -- air-slash lv34
    (267, 26700, 405, 22, 1, 43),  -- bug-buzz lv43
    (267, 26700, 314, 22, 7, 0),  -- air-cutter evo
    -- #268 Cascoon
    (268, 26800, 40, 22, 1, 1),  -- poison-sting lv1
    (268, 26800, 33, 22, 1, 6),  -- tackle lv6
    (268, 26800, 334, 22, 7, 0),  -- iron-defense evo
    -- #269 Dustox
    (269, 26900, 40, 22, 1, 1),  -- poison-sting lv1
    (269, 26900, 33, 22, 1, 6),  -- tackle lv6
    (269, 26900, 334, 22, 1, 6),  -- iron-defense lv6
    (269, 26900, 77, 22, 1, 11),  -- poison-powder lv11
    (269, 26900, 318, 22, 1, 18),  -- silver-wind lv18
    (269, 26900, 474, 22, 1, 25),  -- venoshock lv25
    (269, 26900, 326, 22, 1, 34),  -- extrasensory lv34
    (269, 26900, 405, 22, 1, 43),  -- bug-buzz lv43
    (269, 26900, 93, 22, 7, 0),  -- confusion evo
    -- #280 Ralts
    (280, 28000, 93, 22, 1, 1),  -- confusion lv1
    (280, 28000, 100, 22, 1, 6),  -- teleport lv6
    (280, 28000, 577, 22, 1, 11),  -- draining-kiss lv11
    (280, 28000, 95, 22, 1, 18),  -- hypnosis lv18
    (280, 28000, 347, 22, 1, 25),  -- calm-mind lv25
    (280, 28000, 94, 22, 1, 34),  -- psychic lv34
    -- #281 Kirlia
    (281, 28100, 93, 22, 1, 1),  -- confusion lv1
    (281, 28100, 100, 22, 1, 6),  -- teleport lv6
    (281, 28100, 577, 22, 1, 11),  -- draining-kiss lv11
    (281, 28100, 95, 22, 1, 18),  -- hypnosis lv18
    (281, 28100, 347, 22, 1, 25),  -- calm-mind lv25
    (281, 28100, 94, 22, 1, 34),  -- psychic lv34
    -- #282 Gardevoir
    (282, 28200, 93, 22, 1, 1),  -- confusion lv1
    (282, 28200, 100, 22, 1, 6),  -- teleport lv6
    (282, 28200, 577, 22, 1, 11),  -- draining-kiss lv11
    (282, 28200, 95, 22, 1, 18),  -- hypnosis lv18
    (282, 28200, 347, 22, 1, 25),  -- calm-mind lv25
    (282, 28200, 94, 22, 1, 34),  -- psychic lv34
    (282, 28200, 396, 22, 1, 40),  -- aura-sphere lv40
    (282, 28200, 585, 22, 1, 43),  -- moonblast lv43
    (282, 28200, 105, 22, 1, 52),  -- recover lv52
    (282, 28200, 605, 22, 7, 0),  -- dazzling-gleam evo
    -- #299 Nosepass
    (299, 29900, 33, 22, 1, 1),  -- tackle lv1
    (299, 29900, 86, 22, 1, 6),  -- thunder-wave lv6
    (299, 29900, 209, 22, 1, 11),  -- spark lv11
    (299, 29900, 334, 22, 1, 18),  -- iron-defense lv18
    (299, 29900, 157, 22, 1, 25),  -- rock-slide lv25
    (299, 29900, 408, 22, 1, 34),  -- power-gem lv34
    (299, 29900, 414, 22, 1, 43),  -- earth-power lv43
    -- #315 Roselia
    (315, 31500, 40, 22, 1, 1),  -- poison-sting lv1
    (315, 31500, 71, 22, 1, 6),  -- absorb lv6
    (315, 31500, 77, 22, 1, 11),  -- poison-powder lv11
    (315, 31500, 78, 22, 1, 18),  -- stun-spore lv18
    (315, 31500, 474, 22, 1, 25),  -- venoshock lv25
    (315, 31500, 398, 22, 1, 34),  -- poison-jab lv34
    (315, 31500, 412, 22, 1, 43),  -- energy-ball lv43
    (315, 31500, 80, 22, 1, 52),  -- petal-dance lv52
    -- #339 Barboach
    (339, 33900, 189, 22, 1, 1),  -- mud-slap lv1
    (339, 33900, 352, 22, 1, 6),  -- water-pulse lv6
    (339, 33900, 426, 22, 1, 11),  -- mud-bomb lv11
    (339, 33900, 156, 22, 1, 18),  -- rest lv18
    (339, 33900, 428, 22, 1, 25),  -- zen-headbutt lv25
    (339, 33900, 401, 22, 1, 34),  -- aqua-tail lv34
    (339, 33900, 414, 22, 1, 43),  -- earth-power lv43
    -- #340 Whiscash
    (340, 34000, 189, 22, 1, 1),  -- mud-slap lv1
    (340, 34000, 352, 22, 1, 6),  -- water-pulse lv6
    (340, 34000, 426, 22, 1, 11),  -- mud-bomb lv11
    (340, 34000, 156, 22, 1, 18),  -- rest lv18
    (340, 34000, 428, 22, 1, 25),  -- zen-headbutt lv25
    (340, 34000, 401, 22, 1, 34),  -- aqua-tail lv34
    (340, 34000, 414, 22, 1, 43),  -- earth-power lv43
    -- #355 Duskull
    (355, 35500, 71, 22, 1, 1),  -- absorb lv1
    (355, 35500, 425, 22, 1, 6),  -- shadow-sneak lv6
    (355, 35500, 506, 22, 1, 11),  -- hex lv11
    (355, 35500, 141, 22, 1, 18),  -- leech-life lv18
    (355, 35500, 399, 22, 1, 25),  -- dark-pulse lv25
    (355, 35500, 247, 22, 1, 34),  -- shadow-ball lv34
    (355, 35500, 94, 22, 1, 43),  -- psychic lv43
    -- #356 Dusclops
    (356, 35600, 71, 22, 1, 1),  -- absorb lv1
    (356, 35600, 425, 22, 1, 6),  -- shadow-sneak lv6
    (356, 35600, 506, 22, 1, 11),  -- hex lv11
    (356, 35600, 141, 22, 1, 18),  -- leech-life lv18
    (356, 35600, 399, 22, 1, 25),  -- dark-pulse lv25
    (356, 35600, 247, 22, 1, 34),  -- shadow-ball lv34
    (356, 35600, 94, 22, 1, 43),  -- psychic lv43
    -- #358 Chimecho
    (358, 35800, 33, 22, 1, 1),  -- tackle lv1
    (358, 35800, 93, 22, 1, 6),  -- confusion lv6
    (358, 35800, 466, 22, 1, 11),  -- ominous-wind lv11
    (358, 35800, 95, 22, 1, 18),  -- hypnosis lv18
    (358, 35800, 326, 22, 1, 25),  -- extrasensory lv25
    (358, 35800, 105, 22, 1, 34),  -- recover lv34
    (358, 35800, 38, 22, 1, 43),  -- double-edge lv43
    -- #361 Snorunt
    (361, 36100, 181, 22, 1, 1),  -- powder-snow lv1
    (361, 36100, 420, 22, 1, 6),  -- ice-shard lv6
    (361, 36100, 44, 22, 1, 11),  -- bite lv11
    (361, 36100, 423, 22, 1, 18),  -- ice-fang lv18
    (361, 36100, 242, 22, 1, 25),  -- crunch lv25
    (361, 36100, 556, 22, 1, 34),  -- icicle-crash lv34
    (361, 36100, 59, 22, 1, 43),  -- blizzard lv43
    -- #362 Glalie
    (362, 36200, 181, 22, 1, 1),  -- powder-snow lv1
    (362, 36200, 301, 22, 1, 1),  -- ice-ball lv1
    (362, 36200, 420, 22, 1, 6),  -- ice-shard lv6
    (362, 36200, 44, 22, 1, 11),  -- bite lv11
    (362, 36200, 423, 22, 1, 18),  -- ice-fang lv18
    (362, 36200, 242, 22, 1, 25),  -- crunch lv25
    (362, 36200, 556, 22, 1, 34),  -- icicle-crash lv34
    (362, 36200, 59, 22, 1, 43),  -- blizzard lv43
    -- #363 Spheal
    (363, 36300, 205, 22, 1, 1),  -- rollout lv1
    (363, 36300, 181, 22, 1, 6),  -- powder-snow lv6
    (363, 36300, 352, 22, 1, 11),  -- water-pulse lv11
    (363, 36300, 156, 22, 1, 18),  -- rest lv18
    (363, 36300, 710, 22, 1, 25),  -- liquidation lv25
    (363, 36300, 58, 22, 1, 34),  -- ice-beam lv34
    (363, 36300, 59, 22, 1, 43),  -- blizzard lv43
    -- #364 Sealeo
    (364, 36400, 205, 22, 1, 1),  -- rollout lv1
    (364, 36400, 181, 22, 1, 6),  -- powder-snow lv6
    (364, 36400, 352, 22, 1, 11),  -- water-pulse lv11
    (364, 36400, 156, 22, 1, 18),  -- rest lv18
    (364, 36400, 710, 22, 1, 25),  -- liquidation lv25
    (364, 36400, 58, 22, 1, 34),  -- ice-beam lv34
    (364, 36400, 59, 22, 1, 43),  -- blizzard lv43
    -- #365 Walrein
    (365, 36500, 205, 22, 1, 1),  -- rollout lv1
    (365, 36500, 181, 22, 1, 6),  -- powder-snow lv6
    (365, 36500, 352, 22, 1, 11),  -- water-pulse lv11
    (365, 36500, 156, 22, 1, 18),  -- rest lv18
    (365, 36500, 710, 22, 1, 25),  -- liquidation lv25
    (365, 36500, 58, 22, 1, 34),  -- ice-beam lv34
    (365, 36500, 59, 22, 1, 43),  -- blizzard lv43
    -- #387 Turtwig
    (387, 38700, 33, 22, 1, 1),  -- tackle lv1
    (387, 38700, 670, 22, 1, 6),  -- leafage lv6
    (387, 38700, 44, 22, 1, 11),  -- bite lv11
    (387, 38700, 523, 22, 1, 18),  -- bulldoze lv18
    (387, 38700, 79, 22, 1, 25),  -- sleep-powder lv25
    (387, 38700, 348, 22, 1, 34),  -- leaf-blade lv34
    (387, 38700, 38, 22, 1, 43),  -- double-edge lv43
    -- #388 Grotle
    (388, 38800, 33, 22, 1, 1),  -- tackle lv1
    (388, 38800, 670, 22, 1, 6),  -- leafage lv6
    (388, 38800, 44, 22, 1, 11),  -- bite lv11
    (388, 38800, 523, 22, 1, 18),  -- bulldoze lv18
    (388, 38800, 79, 22, 1, 25),  -- sleep-powder lv25
    (388, 38800, 348, 22, 1, 34),  -- leaf-blade lv34
    (388, 38800, 38, 22, 1, 43),  -- double-edge lv43
    -- #389 Torterra
    (389, 38900, 33, 22, 1, 1),  -- tackle lv1
    (389, 38900, 670, 22, 1, 6),  -- leafage lv6
    (389, 38900, 44, 22, 1, 11),  -- bite lv11
    (389, 38900, 523, 22, 1, 18),  -- bulldoze lv18
    (389, 38900, 79, 22, 1, 25),  -- sleep-powder lv25
    (389, 38900, 348, 22, 1, 34),  -- leaf-blade lv34
    (389, 38900, 38, 22, 1, 43),  -- double-edge lv43
    (389, 38900, 452, 22, 1, 52),  -- wood-hammer lv52
    (389, 38900, 838, 22, 1, 57),  -- headlong-rush lv57
    -- #390 Chimchar
    (390, 39000, 33, 22, 1, 1),  -- tackle lv1
    (390, 39000, 52, 22, 1, 6),  -- ember lv6
    (390, 39000, 129, 22, 1, 11),  -- swift lv11
    (390, 39000, 172, 22, 1, 18),  -- flame-wheel lv18
    (390, 39000, 417, 22, 1, 25),  -- nasty-plot lv25
    (390, 39000, 53, 22, 1, 34),  -- flamethrower lv34
    (390, 39000, 38, 22, 1, 43),  -- double-edge lv43
    -- #391 Monferno
    (391, 39100, 33, 22, 1, 1),  -- tackle lv1
    (391, 39100, 52, 22, 1, 6),  -- ember lv6
    (391, 39100, 129, 22, 1, 11),  -- swift lv11
    (391, 39100, 183, 22, 1, 16),  -- mach-punch lv16
    (391, 39100, 172, 22, 1, 18),  -- flame-wheel lv18
    (391, 39100, 417, 22, 1, 25),  -- nasty-plot lv25
    (391, 39100, 53, 22, 1, 34),  -- flamethrower lv34
    (391, 39100, 38, 22, 1, 43),  -- double-edge lv43
    -- #392 Infernape
    (392, 39200, 33, 22, 1, 1),  -- tackle lv1
    (392, 39200, 52, 22, 1, 6),  -- ember lv6
    (392, 39200, 129, 22, 1, 11),  -- swift lv11
    (392, 39200, 183, 22, 1, 16),  -- mach-punch lv16
    (392, 39200, 172, 22, 1, 18),  -- flame-wheel lv18
    (392, 39200, 417, 22, 1, 25),  -- nasty-plot lv25
    (392, 39200, 53, 22, 1, 34),  -- flamethrower lv34
    (392, 39200, 38, 22, 1, 43),  -- double-edge lv43
    (392, 39200, 833, 22, 1, 46),  -- raging-fury lv46
    (392, 39200, 394, 22, 1, 52),  -- flare-blitz lv52
    (392, 39200, 370, 22, 1, 57),  -- close-combat lv57
    -- #393 Piplup
    (393, 39300, 33, 22, 1, 1),  -- tackle lv1
    (393, 39300, 145, 22, 1, 6),  -- bubble lv6
    (393, 39300, 332, 22, 1, 11),  -- aerial-ace lv11
    (393, 39300, 352, 22, 1, 18),  -- water-pulse lv18
    (393, 39300, 355, 22, 1, 25),  -- roost lv25
    (393, 39300, 710, 22, 1, 34),  -- liquidation lv34
    (393, 39300, 38, 22, 1, 43),  -- double-edge lv43
    -- #394 Prinplup
    (394, 39400, 33, 22, 1, 1),  -- tackle lv1
    (394, 39400, 145, 22, 1, 6),  -- bubble lv6
    (394, 39400, 332, 22, 1, 11),  -- aerial-ace lv11
    (394, 39400, 352, 22, 1, 18),  -- water-pulse lv18
    (394, 39400, 355, 22, 1, 25),  -- roost lv25
    (394, 39400, 710, 22, 1, 34),  -- liquidation lv34
    (394, 39400, 38, 22, 1, 43),  -- double-edge lv43
    -- #395 Empoleon
    (395, 39500, 33, 22, 1, 1),  -- tackle lv1
    (395, 39500, 145, 22, 1, 6),  -- bubble lv6
    (395, 39500, 332, 22, 1, 11),  -- aerial-ace lv11
    (395, 39500, 352, 22, 1, 18),  -- water-pulse lv18
    (395, 39500, 355, 22, 1, 25),  -- roost lv25
    (395, 39500, 710, 22, 1, 34),  -- liquidation lv34
    (395, 39500, 38, 22, 1, 43),  -- double-edge lv43
    (395, 39500, 56, 22, 1, 52),  -- hydro-pump lv52
    (395, 39500, 834, 22, 1, 57),  -- wave-crash lv57
    (395, 39500, 430, 22, 7, 0),  -- flash-cannon evo
    -- #396 Starly
    (396, 39600, 16, 22, 1, 1),  -- gust lv1
    (396, 39600, 98, 22, 1, 5),  -- quick-attack lv5
    (396, 39600, 332, 22, 1, 9),  -- aerial-ace lv9
    (396, 39600, 403, 22, 1, 15),  -- air-slash lv15
    (396, 39600, 355, 22, 1, 21),  -- roost lv21
    (396, 39600, 38, 22, 1, 29),  -- double-edge lv29
    (396, 39600, 413, 22, 1, 37),  -- brave-bird lv37
    (396, 39600, 416, 22, 1, 47),  -- giga-impact lv47
    -- #397 Staravia
    (397, 39700, 16, 22, 1, 1),  -- gust lv1
    (397, 39700, 98, 22, 1, 5),  -- quick-attack lv5
    (397, 39700, 332, 22, 1, 9),  -- aerial-ace lv9
    (397, 39700, 403, 22, 1, 15),  -- air-slash lv15
    (397, 39700, 355, 22, 1, 21),  -- roost lv21
    (397, 39700, 38, 22, 1, 29),  -- double-edge lv29
    (397, 39700, 413, 22, 1, 37),  -- brave-bird lv37
    (397, 39700, 416, 22, 1, 47),  -- giga-impact lv47
    -- #398 Staraptor
    (398, 39800, 16, 22, 1, 1),  -- gust lv1
    (398, 39800, 98, 22, 1, 5),  -- quick-attack lv5
    (398, 39800, 332, 22, 1, 9),  -- aerial-ace lv9
    (398, 39800, 403, 22, 1, 15),  -- air-slash lv15
    (398, 39800, 355, 22, 1, 21),  -- roost lv21
    (398, 39800, 38, 22, 1, 29),  -- double-edge lv29
    (398, 39800, 413, 22, 1, 37),  -- brave-bird lv37
    (398, 39800, 416, 22, 1, 47),  -- giga-impact lv47
    (398, 39800, 370, 22, 7, 0),  -- close-combat evo
    -- #399 Bidoof
    (399, 39900, 205, 22, 1, 1),  -- rollout lv1
    (399, 39900, 33, 22, 1, 5),  -- tackle lv5
    (399, 39900, 44, 22, 1, 10),  -- bite lv10
    (399, 39900, 156, 22, 1, 16),  -- rest lv16
    (399, 39900, 242, 22, 1, 23),  -- crunch lv23
    (399, 39900, 14, 22, 1, 31),  -- swords-dance lv31
    (399, 39900, 38, 22, 1, 40),  -- double-edge lv40
    -- #400 Bibarel
    (400, 40000, 205, 22, 1, 1),  -- rollout lv1
    (400, 40000, 33, 22, 1, 5),  -- tackle lv5
    (400, 40000, 44, 22, 1, 10),  -- bite lv10
    (400, 40000, 156, 22, 1, 16),  -- rest lv16
    (400, 40000, 242, 22, 1, 23),  -- crunch lv23
    (400, 40000, 401, 22, 1, 23),  -- aqua-tail lv23
    (400, 40000, 14, 22, 1, 31),  -- swords-dance lv31
    (400, 40000, 38, 22, 1, 40),  -- double-edge lv40
    (400, 40000, 352, 22, 7, 0),  -- water-pulse evo
    -- #401 Kricketot
    (401, 40100, 71, 22, 1, 1),  -- absorb lv1
    (401, 40100, 33, 22, 1, 5),  -- tackle lv5
    -- #402 Kricketune
    (402, 40200, 71, 22, 1, 1),  -- absorb lv1
    (402, 40200, 33, 22, 1, 5),  -- tackle lv5
    (402, 40200, 332, 22, 1, 9),  -- aerial-ace lv9
    (402, 40200, 163, 22, 1, 15),  -- slash lv15
    (402, 40200, 400, 22, 1, 21),  -- night-slash lv21
    (402, 40200, 404, 22, 1, 29),  -- x-scissor lv29
    (402, 40200, 14, 22, 1, 37),  -- swords-dance lv37
    (402, 40200, 405, 22, 1, 47),  -- bug-buzz lv47
    -- #403 Shinx
    (403, 40300, 98, 22, 1, 1),  -- quick-attack lv1
    (403, 40300, 84, 22, 1, 5),  -- thunder-shock lv5
    (403, 40300, 44, 22, 1, 9),  -- bite lv9
    (403, 40300, 422, 22, 1, 15),  -- thunder-fang lv15
    (403, 40300, 86, 22, 1, 21),  -- thunder-wave lv21
    (403, 40300, 242, 22, 1, 29),  -- crunch lv29
    (403, 40300, 528, 22, 1, 37),  -- wild-charge lv37
    (403, 40300, 87, 22, 1, 47),  -- thunder lv47
    -- #404 Luxio
    (404, 40400, 98, 22, 1, 1),  -- quick-attack lv1
    (404, 40400, 84, 22, 1, 5),  -- thunder-shock lv5
    (404, 40400, 44, 22, 1, 9),  -- bite lv9
    (404, 40400, 422, 22, 1, 15),  -- thunder-fang lv15
    (404, 40400, 86, 22, 1, 21),  -- thunder-wave lv21
    (404, 40400, 242, 22, 1, 29),  -- crunch lv29
    (404, 40400, 528, 22, 1, 37),  -- wild-charge lv37
    (404, 40400, 87, 22, 1, 47),  -- thunder lv47
    -- #405 Luxray
    (405, 40500, 98, 22, 1, 1),  -- quick-attack lv1
    (405, 40500, 84, 22, 1, 5),  -- thunder-shock lv5
    (405, 40500, 44, 22, 1, 9),  -- bite lv9
    (405, 40500, 422, 22, 1, 15),  -- thunder-fang lv15
    (405, 40500, 86, 22, 1, 21),  -- thunder-wave lv21
    (405, 40500, 242, 22, 1, 29),  -- crunch lv29
    (405, 40500, 528, 22, 1, 37),  -- wild-charge lv37
    (405, 40500, 87, 22, 1, 47),  -- thunder lv47
    -- #406 Budew
    (406, 40600, 40, 22, 1, 1),  -- poison-sting lv1
    (406, 40600, 71, 22, 1, 6),  -- absorb lv6
    (406, 40600, 77, 22, 1, 11),  -- poison-powder lv11
    (406, 40600, 78, 22, 1, 18),  -- stun-spore lv18
    (406, 40600, 474, 22, 1, 25),  -- venoshock lv25
    (406, 40600, 398, 22, 1, 34),  -- poison-jab lv34
    (406, 40600, 412, 22, 1, 43),  -- energy-ball lv43
    (406, 40600, 80, 22, 1, 52),  -- petal-dance lv52
    -- #407 Roserade
    (407, 40700, 40, 22, 1, 1),  -- poison-sting lv1
    (407, 40700, 71, 22, 1, 6),  -- absorb lv6
    (407, 40700, 77, 22, 1, 11),  -- poison-powder lv11
    (407, 40700, 78, 22, 1, 18),  -- stun-spore lv18
    (407, 40700, 474, 22, 1, 25),  -- venoshock lv25
    (407, 40700, 398, 22, 1, 34),  -- poison-jab lv34
    (407, 40700, 412, 22, 1, 43),  -- energy-ball lv43
    (407, 40700, 80, 22, 1, 52),  -- petal-dance lv52
    -- #408 Cranidos
    (408, 40800, 33, 22, 1, 1),  -- tackle lv1
    (408, 40800, 246, 22, 1, 5),  -- ancient-power lv5
    (408, 40800, 44, 22, 1, 9),  -- bite lv9
    (408, 40800, 157, 22, 1, 15),  -- rock-slide lv15
    (408, 40800, 442, 22, 1, 21),  -- iron-head lv21
    (408, 40800, 242, 22, 1, 29),  -- crunch lv29
    (408, 40800, 38, 22, 1, 37),  -- double-edge lv37
    (408, 40800, 457, 22, 1, 47),  -- head-smash lv47
    -- #409 Rampardos
    (409, 40900, 33, 22, 1, 1),  -- tackle lv1
    (409, 40900, 246, 22, 1, 5),  -- ancient-power lv5
    (409, 40900, 44, 22, 1, 9),  -- bite lv9
    (409, 40900, 157, 22, 1, 15),  -- rock-slide lv15
    (409, 40900, 442, 22, 1, 21),  -- iron-head lv21
    (409, 40900, 242, 22, 1, 29),  -- crunch lv29
    (409, 40900, 38, 22, 1, 37),  -- double-edge lv37
    (409, 40900, 457, 22, 1, 47),  -- head-smash lv47
    -- #410 Shieldon
    (410, 41000, 33, 22, 1, 1),  -- tackle lv1
    (410, 41000, 246, 22, 1, 5),  -- ancient-power lv5
    (410, 41000, 334, 22, 1, 9),  -- iron-defense lv9
    (410, 41000, 157, 22, 1, 15),  -- rock-slide lv15
    (410, 41000, 442, 22, 1, 21),  -- iron-head lv21
    (410, 41000, 414, 22, 1, 29),  -- earth-power lv29
    (410, 41000, 446, 22, 1, 37),  -- stealth-rock lv37
    (410, 41000, 38, 22, 1, 47),  -- double-edge lv47
    -- #411 Bastiodon
    (411, 41100, 33, 22, 1, 1),  -- tackle lv1
    (411, 41100, 246, 22, 1, 5),  -- ancient-power lv5
    (411, 41100, 334, 22, 1, 9),  -- iron-defense lv9
    (411, 41100, 157, 22, 1, 15),  -- rock-slide lv15
    (411, 41100, 442, 22, 1, 21),  -- iron-head lv21
    (411, 41100, 414, 22, 1, 29),  -- earth-power lv29
    (411, 41100, 446, 22, 1, 37),  -- stealth-rock lv37
    (411, 41100, 38, 22, 1, 47),  -- double-edge lv47
    -- #412 Burmy
    (412, 41200, 522, 22, 1, 1),  -- struggle-bug lv1
    -- #413 Wormadam
    (413, 41300, 522, 22, 1, 1),  -- struggle-bug lv1
    (413, 41300, 16, 22, 1, 6),  -- gust lv6
    (413, 41300, 93, 22, 1, 11),  -- confusion lv11
    (413, 41300, 318, 22, 1, 18),  -- silver-wind lv18
    (413, 41300, 412, 22, 1, 25),  -- energy-ball lv25
    (413, 41300, 94, 22, 1, 34),  -- psychic lv34
    (413, 41300, 405, 22, 1, 43),  -- bug-buzz lv43
    (413, 41300, 63, 22, 6, NULL),  -- hyper-beam tutor
    (413, 41300, 94, 22, 6, NULL),  -- psychic tutor
    (413, 41300, 156, 22, 6, NULL),  -- rest tutor
    (413, 41300, 247, 22, 6, NULL),  -- shadow-ball tutor
    (413, 41300, 345, 22, 6, NULL),  -- magical-leaf tutor
    (413, 41300, 412, 22, 6, NULL),  -- energy-ball tutor
    (413, 41300, 416, 22, 6, NULL),  -- giga-impact tutor
    -- #414 Mothim
    (414, 41400, 522, 22, 1, 1),  -- struggle-bug lv1
    (414, 41400, 16, 22, 1, 6),  -- gust lv6
    (414, 41400, 93, 22, 1, 11),  -- confusion lv11
    (414, 41400, 318, 22, 1, 18),  -- silver-wind lv18
    (414, 41400, 403, 22, 1, 25),  -- air-slash lv25
    (414, 41400, 94, 22, 1, 34),  -- psychic lv34
    (414, 41400, 405, 22, 1, 43),  -- bug-buzz lv43
    -- #415 Combee
    (415, 41500, 16, 22, 1, 1),  -- gust lv1
    (415, 41500, 522, 22, 1, 6),  -- struggle-bug lv6
    -- #416 Vespiquen
    (416, 41600, 16, 22, 1, 1),  -- gust lv1
    (416, 41600, 522, 22, 1, 6),  -- struggle-bug lv6
    (416, 41600, 42, 22, 1, 11),  -- pin-missile lv11
    (416, 41600, 318, 22, 1, 18),  -- silver-wind lv18
    (416, 41600, 163, 22, 1, 25),  -- slash lv25
    (416, 41600, 403, 22, 1, 29),  -- air-slash lv29
    (416, 41600, 408, 22, 1, 34),  -- power-gem lv34
    (416, 41600, 405, 22, 1, 43),  -- bug-buzz lv43
    (416, 41600, 105, 22, 1, 52),  -- recover lv52
    -- #417 Pachirisu
    (417, 41700, 98, 22, 1, 1),  -- quick-attack lv1
    (417, 41700, 84, 22, 1, 5),  -- thunder-shock lv5
    (417, 41700, 44, 22, 1, 9),  -- bite lv9
    (417, 41700, 209, 22, 1, 15),  -- spark lv15
    (417, 41700, 608, 22, 1, 21),  -- baby-doll-eyes lv21
    (417, 41700, 242, 22, 1, 29),  -- crunch lv29
    (417, 41700, 86, 22, 1, 37),  -- thunder-wave lv37
    (417, 41700, 87, 22, 1, 47),  -- thunder lv47
    -- #418 Buizel
    (418, 41800, 98, 22, 1, 1),  -- quick-attack lv1
    (418, 41800, 453, 22, 1, 6),  -- aqua-jet lv6
    (418, 41800, 129, 22, 1, 11),  -- swift lv11
    (418, 41800, 352, 22, 1, 18),  -- water-pulse lv18
    (418, 41800, 458, 22, 1, 25),  -- double-hit lv25
    (418, 41800, 401, 22, 1, 34),  -- aqua-tail lv34
    (418, 41800, 56, 22, 1, 43),  -- hydro-pump lv43
    -- #419 Floatzel
    (419, 41900, 98, 22, 1, 1),  -- quick-attack lv1
    (419, 41900, 453, 22, 1, 6),  -- aqua-jet lv6
    (419, 41900, 129, 22, 1, 11),  -- swift lv11
    (419, 41900, 352, 22, 1, 18),  -- water-pulse lv18
    (419, 41900, 458, 22, 1, 25),  -- double-hit lv25
    (419, 41900, 242, 22, 1, 30),  -- crunch lv30
    (419, 41900, 401, 22, 1, 34),  -- aqua-tail lv34
    (419, 41900, 56, 22, 1, 43),  -- hydro-pump lv43
    -- #420 Cherubi
    (420, 42000, 71, 22, 1, 1),  -- absorb lv1
    (420, 42000, 33, 22, 1, 5),  -- tackle lv5
    (420, 42000, 78, 22, 1, 9),  -- stun-spore lv9
    (420, 42000, 577, 22, 1, 15),  -- draining-kiss lv15
    (420, 42000, 412, 22, 1, 21),  -- energy-ball lv21
    (420, 42000, 79, 22, 1, 29),  -- sleep-powder lv29
    (420, 42000, 38, 22, 1, 37),  -- double-edge lv37
    (420, 42000, 80, 22, 1, 47),  -- petal-dance lv47
    -- #421 Cherrim
    (421, 42100, 71, 22, 1, 1),  -- absorb lv1
    (421, 42100, 33, 22, 1, 5),  -- tackle lv5
    (421, 42100, 78, 22, 1, 9),  -- stun-spore lv9
    (421, 42100, 577, 22, 1, 15),  -- draining-kiss lv15
    (421, 42100, 412, 22, 1, 21),  -- energy-ball lv21
    (421, 42100, 79, 22, 1, 29),  -- sleep-powder lv29
    (421, 42100, 38, 22, 1, 37),  -- double-edge lv37
    (421, 42100, 80, 22, 1, 47),  -- petal-dance lv47
    -- #422 Shellos
    (422, 42200, 189, 22, 1, 1),  -- mud-slap lv1
    (422, 42200, 33, 22, 1, 5),  -- tackle lv5
    (422, 42200, 352, 22, 1, 9),  -- water-pulse lv9
    (422, 42200, 246, 22, 1, 15),  -- ancient-power lv15
    (422, 42200, 426, 22, 1, 21),  -- mud-bomb lv21
    (422, 42200, 414, 22, 1, 29),  -- earth-power lv29
    (422, 42200, 105, 22, 1, 37),  -- recover lv37
    (422, 42200, 56, 22, 1, 47),  -- hydro-pump lv47
    -- #423 Gastrodon
    (423, 42300, 189, 22, 1, 1),  -- mud-slap lv1
    (423, 42300, 33, 22, 1, 5),  -- tackle lv5
    (423, 42300, 352, 22, 1, 9),  -- water-pulse lv9
    (423, 42300, 246, 22, 1, 15),  -- ancient-power lv15
    (423, 42300, 426, 22, 1, 21),  -- mud-bomb lv21
    (423, 42300, 414, 22, 1, 29),  -- earth-power lv29
    (423, 42300, 105, 22, 1, 37),  -- recover lv37
    (423, 42300, 56, 22, 1, 47),  -- hydro-pump lv47
    -- #424 Ambipom
    (424, 42400, 98, 22, 1, 1),  -- quick-attack lv1
    (424, 42400, 417, 22, 1, 6),  -- nasty-plot lv6
    (424, 42400, 129, 22, 1, 11),  -- swift lv11
    (424, 42400, 426, 22, 1, 18),  -- mud-bomb lv18
    (424, 42400, 458, 22, 1, 25),  -- double-hit lv25
    (424, 42400, 231, 22, 1, 34),  -- iron-tail lv34
    (424, 42400, 38, 22, 1, 43),  -- double-edge lv43
    -- #425 Drifloon
    (425, 42500, 93, 22, 1, 1),  -- confusion lv1
    (425, 42500, 95, 22, 1, 5),  -- hypnosis lv5
    (425, 42500, 310, 22, 1, 9),  -- astonish lv9
    (425, 42500, 347, 22, 1, 15),  -- calm-mind lv15
    (425, 42500, 506, 22, 1, 21),  -- hex lv21
    (425, 42500, 595, 22, 1, 25),  -- mystical-fire lv25
    (425, 42500, 326, 22, 1, 29),  -- extrasensory lv29
    (425, 42500, 247, 22, 1, 37),  -- shadow-ball lv37
    (425, 42500, 120, 22, 1, 47),  -- self-destruct lv47
    -- #426 Drifblim
    (426, 42600, 93, 22, 1, 1),  -- confusion lv1
    (426, 42600, 95, 22, 1, 5),  -- hypnosis lv5
    (426, 42600, 310, 22, 1, 9),  -- astonish lv9
    (426, 42600, 347, 22, 1, 15),  -- calm-mind lv15
    (426, 42600, 506, 22, 1, 21),  -- hex lv21
    (426, 42600, 595, 22, 1, 25),  -- mystical-fire lv25
    (426, 42600, 326, 22, 1, 29),  -- extrasensory lv29
    (426, 42600, 247, 22, 1, 37),  -- shadow-ball lv37
    (426, 42600, 120, 22, 1, 47),  -- self-destruct lv47
    -- #427 Buneary
    (427, 42700, 98, 22, 1, 1),  -- quick-attack lv1
    (427, 42700, 608, 22, 1, 5),  -- baby-doll-eyes lv5
    (427, 42700, 129, 22, 1, 10),  -- swift lv10
    (427, 42700, 577, 22, 1, 16),  -- draining-kiss lv16
    (427, 42700, 458, 22, 1, 23),  -- double-hit lv23
    (427, 42700, 583, 22, 1, 31),  -- play-rough lv31
    (427, 42700, 38, 22, 1, 40),  -- double-edge lv40
    -- #428 Lopunny
    (428, 42800, 98, 22, 1, 1),  -- quick-attack lv1
    (428, 42800, 183, 22, 1, 1),  -- mach-punch lv1
    (428, 42800, 608, 22, 1, 5),  -- baby-doll-eyes lv5
    (428, 42800, 129, 22, 1, 10),  -- swift lv10
    (428, 42800, 577, 22, 1, 16),  -- draining-kiss lv16
    (428, 42800, 458, 22, 1, 23),  -- double-hit lv23
    (428, 42800, 583, 22, 1, 31),  -- play-rough lv31
    (428, 42800, 38, 22, 1, 40),  -- double-edge lv40
    (428, 42800, 370, 22, 1, 40),  -- close-combat lv40
    -- #429 Mismagius
    (429, 42900, 425, 22, 1, 1),  -- shadow-sneak lv1
    (429, 42900, 93, 22, 1, 6),  -- confusion lv6
    (429, 42900, 95, 22, 1, 11),  -- hypnosis lv11
    (429, 42900, 506, 22, 1, 18),  -- hex lv18
    (429, 42900, 326, 22, 1, 25),  -- extrasensory lv25
    (429, 42900, 408, 22, 1, 34),  -- power-gem lv34
    (429, 42900, 247, 22, 1, 43),  -- shadow-ball lv43
    -- #430 Honchkrow
    (430, 43000, 16, 22, 1, 1),  -- gust lv1
    (430, 43000, 555, 22, 1, 6),  -- snarl lv6
    (430, 43000, 355, 22, 1, 11),  -- roost lv11
    (430, 43000, 332, 22, 1, 18),  -- aerial-ace lv18
    (430, 43000, 400, 22, 1, 25),  -- night-slash lv25
    (430, 43000, 403, 22, 1, 30),  -- air-slash lv30
    (430, 43000, 417, 22, 1, 34),  -- nasty-plot lv34
    (430, 43000, 399, 22, 1, 43),  -- dark-pulse lv43
    (430, 43000, 413, 22, 1, 52),  -- brave-bird lv52
    -- #431 Glameow
    (431, 43100, 33, 22, 1, 1),  -- tackle lv1
    (431, 43100, 95, 22, 1, 5),  -- hypnosis lv5
    (431, 43100, 417, 22, 1, 10),  -- nasty-plot lv10
    (431, 43100, 163, 22, 1, 16),  -- slash lv16
    (431, 43100, 400, 22, 1, 23),  -- night-slash lv23
    (431, 43100, 583, 22, 1, 31),  -- play-rough lv31
    (431, 43100, 38, 22, 1, 40),  -- double-edge lv40
    -- #432 Purugly
    (432, 43200, 33, 22, 1, 1),  -- tackle lv1
    (432, 43200, 95, 22, 1, 5),  -- hypnosis lv5
    (432, 43200, 417, 22, 1, 10),  -- nasty-plot lv10
    (432, 43200, 163, 22, 1, 16),  -- slash lv16
    (432, 43200, 400, 22, 1, 23),  -- night-slash lv23
    (432, 43200, 583, 22, 1, 31),  -- play-rough lv31
    (432, 43200, 38, 22, 1, 40),  -- double-edge lv40
    -- #433 Chingling
    (433, 43300, 33, 22, 1, 1),  -- tackle lv1
    (433, 43300, 93, 22, 1, 6),  -- confusion lv6
    (433, 43300, 466, 22, 1, 11),  -- ominous-wind lv11
    (433, 43300, 95, 22, 1, 18),  -- hypnosis lv18
    (433, 43300, 326, 22, 1, 25),  -- extrasensory lv25
    (433, 43300, 105, 22, 1, 34),  -- recover lv34
    (433, 43300, 38, 22, 1, 43),  -- double-edge lv43
    -- #434 Stunky
    (434, 43400, 33, 22, 1, 1),  -- tackle lv1
    (434, 43400, 491, 22, 1, 6),  -- acid-spray lv6
    (434, 43400, 139, 22, 1, 11),  -- poison-gas lv11
    (434, 43400, 474, 22, 1, 18),  -- venoshock lv18
    (434, 43400, 400, 22, 1, 25),  -- night-slash lv25
    (434, 43400, 398, 22, 1, 34),  -- poison-jab lv34
    (434, 43400, 38, 22, 1, 43),  -- double-edge lv43
    -- #435 Skuntank
    (435, 43500, 33, 22, 1, 1),  -- tackle lv1
    (435, 43500, 491, 22, 1, 6),  -- acid-spray lv6
    (435, 43500, 139, 22, 1, 11),  -- poison-gas lv11
    (435, 43500, 474, 22, 1, 18),  -- venoshock lv18
    (435, 43500, 400, 22, 1, 25),  -- night-slash lv25
    (435, 43500, 53, 22, 1, 34),  -- flamethrower lv34
    (435, 43500, 398, 22, 1, 34),  -- poison-jab lv34
    (435, 43500, 38, 22, 1, 43),  -- double-edge lv43
    -- #436 Bronzor
    (436, 43600, 33, 22, 1, 1),  -- tackle lv1
    (436, 43600, 93, 22, 1, 6),  -- confusion lv6
    (436, 43600, 334, 22, 1, 11),  -- iron-defense lv11
    (436, 43600, 506, 22, 1, 18),  -- hex lv18
    (436, 43600, 95, 22, 1, 25),  -- hypnosis lv25
    (436, 43600, 430, 22, 1, 34),  -- flash-cannon lv34
    (436, 43600, 326, 22, 1, 43),  -- extrasensory lv43
    -- #437 Bronzong
    (437, 43700, 33, 22, 1, 1),  -- tackle lv1
    (437, 43700, 93, 22, 1, 6),  -- confusion lv6
    (437, 43700, 334, 22, 1, 11),  -- iron-defense lv11
    (437, 43700, 506, 22, 1, 18),  -- hex lv18
    (437, 43700, 95, 22, 1, 25),  -- hypnosis lv25
    (437, 43700, 430, 22, 1, 34),  -- flash-cannon lv34
    (437, 43700, 326, 22, 1, 43),  -- extrasensory lv43
    -- #438 Bonsly
    (438, 43800, 205, 22, 1, 1),  -- rollout lv1
    (438, 43800, 33, 22, 1, 5),  -- tackle lv5
    (438, 43800, 446, 22, 1, 9),  -- stealth-rock lv9
    (438, 43800, 157, 22, 1, 15),  -- rock-slide lv15
    (438, 43800, 334, 22, 1, 21),  -- iron-defense lv21
    (438, 43800, 102, 22, 1, 29),  -- mimic lv29
    (438, 43800, 38, 22, 1, 37),  -- double-edge lv37
    (438, 43800, 457, 22, 1, 47),  -- head-smash lv47
    -- #439 Mime-Jr
    (439, 43900, 93, 22, 1, 1),  -- confusion lv1
    (439, 43900, 95, 22, 1, 6),  -- hypnosis lv6
    (439, 43900, 334, 22, 1, 11),  -- iron-defense lv11
    (439, 43900, 428, 22, 1, 18),  -- zen-headbutt lv18
    (439, 43900, 102, 22, 1, 25),  -- mimic lv25
    (439, 43900, 94, 22, 1, 34),  -- psychic lv34
    (439, 43900, 347, 22, 1, 43),  -- calm-mind lv43
    -- #440 Happiny
    (440, 44000, 33, 22, 1, 1),  -- tackle lv1
    (440, 44000, 584, 22, 1, 6),  -- fairy-wind lv6
    (440, 44000, 608, 22, 1, 11),  -- baby-doll-eyes lv11
    (440, 44000, 577, 22, 1, 18),  -- draining-kiss lv18
    (440, 44000, 347, 22, 1, 25),  -- calm-mind lv25
    (440, 44000, 135, 22, 1, 34),  -- soft-boiled lv34
    (440, 44000, 38, 22, 1, 43),  -- double-edge lv43
    -- #441 Chatot
    (441, 44100, 16, 22, 1, 1),  -- gust lv1
    (441, 44100, 129, 22, 1, 6),  -- swift lv6
    (441, 44100, 314, 22, 1, 11),  -- air-cutter lv11
    (441, 44100, 355, 22, 1, 18),  -- roost lv18
    (441, 44100, 403, 22, 1, 25),  -- air-slash lv25
    (441, 44100, 102, 22, 1, 30),  -- mimic lv30
    (441, 44100, 417, 22, 1, 34),  -- nasty-plot lv34
    (441, 44100, 583, 22, 1, 43),  -- play-rough lv43
    (441, 44100, 542, 22, 1, 52),  -- hurricane lv52
    -- #442 Spiritomb
    (442, 44200, 425, 22, 1, 1),  -- shadow-sneak lv1
    (442, 44200, 95, 22, 1, 6),  -- hypnosis lv6
    (442, 44200, 506, 22, 1, 11),  -- hex lv11
    (442, 44200, 417, 22, 1, 18),  -- nasty-plot lv18
    (442, 44200, 326, 22, 1, 25),  -- extrasensory lv25
    (442, 44200, 399, 22, 1, 34),  -- dark-pulse lv34
    (442, 44200, 247, 22, 1, 43),  -- shadow-ball lv43
    -- #443 Gible
    (443, 44300, 33, 22, 1, 1),  -- tackle lv1
    (443, 44300, 239, 22, 1, 5),  -- twister lv5
    (443, 44300, 523, 22, 1, 9),  -- bulldoze lv9
    (443, 44300, 163, 22, 1, 15),  -- slash lv15
    (443, 44300, 337, 22, 1, 21),  -- dragon-claw lv21
    (443, 44300, 414, 22, 1, 29),  -- earth-power lv29
    (443, 44300, 38, 22, 1, 37),  -- double-edge lv37
    (443, 44300, 200, 22, 1, 47),  -- outrage lv47
    -- #444 Gabite
    (444, 44400, 33, 22, 1, 1),  -- tackle lv1
    (444, 44400, 239, 22, 1, 5),  -- twister lv5
    (444, 44400, 523, 22, 1, 9),  -- bulldoze lv9
    (444, 44400, 163, 22, 1, 15),  -- slash lv15
    (444, 44400, 337, 22, 1, 21),  -- dragon-claw lv21
    (444, 44400, 414, 22, 1, 29),  -- earth-power lv29
    (444, 44400, 38, 22, 1, 37),  -- double-edge lv37
    (444, 44400, 200, 22, 1, 47),  -- outrage lv47
    -- #445 Garchomp
    (445, 44500, 33, 22, 1, 1),  -- tackle lv1
    (445, 44500, 239, 22, 1, 5),  -- twister lv5
    (445, 44500, 523, 22, 1, 9),  -- bulldoze lv9
    (445, 44500, 163, 22, 1, 15),  -- slash lv15
    (445, 44500, 337, 22, 1, 21),  -- dragon-claw lv21
    (445, 44500, 414, 22, 1, 29),  -- earth-power lv29
    (445, 44500, 38, 22, 1, 37),  -- double-edge lv37
    (445, 44500, 200, 22, 1, 47),  -- outrage lv47
    -- #446 Munchlax
    (446, 44600, 205, 22, 1, 1),  -- rollout lv1
    (446, 44600, 33, 22, 1, 5),  -- tackle lv5
    (446, 44600, 156, 22, 1, 9),  -- rest lv9
    (446, 44600, 523, 22, 1, 15),  -- bulldoze lv15
    (446, 44600, 44, 22, 1, 21),  -- bite lv21
    (446, 44600, 428, 22, 1, 29),  -- zen-headbutt lv29
    (446, 44600, 667, 22, 1, 37),  -- high-horsepower lv37
    (446, 44600, 38, 22, 1, 46),  -- double-edge lv46
    (446, 44600, 416, 22, 1, 57),  -- giga-impact lv57
    -- #447 Riolu
    (447, 44700, 249, 22, 1, 1),  -- rock-smash lv1
    (447, 44700, 418, 22, 1, 5),  -- bullet-punch lv5
    (447, 44700, 44, 22, 1, 9),  -- bite lv9
    (447, 44700, 334, 22, 1, 15),  -- iron-defense lv15
    (447, 44700, 396, 22, 1, 21),  -- aura-sphere lv21
    (447, 44700, 242, 22, 1, 29),  -- crunch lv29
    (447, 44700, 339, 22, 1, 37),  -- bulk-up lv37
    (447, 44700, 370, 22, 1, 47),  -- close-combat lv47
    -- #448 Lucario
    (448, 44800, 249, 22, 1, 1),  -- rock-smash lv1
    (448, 44800, 418, 22, 1, 5),  -- bullet-punch lv5
    (448, 44800, 44, 22, 1, 9),  -- bite lv9
    (448, 44800, 334, 22, 1, 15),  -- iron-defense lv15
    (448, 44800, 183, 22, 1, 19),  -- mach-punch lv19
    (448, 44800, 396, 22, 1, 21),  -- aura-sphere lv21
    (448, 44800, 242, 22, 1, 29),  -- crunch lv29
    (448, 44800, 339, 22, 1, 37),  -- bulk-up lv37
    (448, 44800, 406, 22, 1, 40),  -- dragon-pulse lv40
    (448, 44800, 370, 22, 1, 47),  -- close-combat lv47
    -- #449 Hippopotas
    (449, 44900, 33, 22, 1, 1),  -- tackle lv1
    (449, 44900, 156, 22, 1, 6),  -- rest lv6
    (449, 44900, 44, 22, 1, 11),  -- bite lv11
    (449, 44900, 426, 22, 1, 18),  -- mud-bomb lv18
    (449, 44900, 242, 22, 1, 25),  -- crunch lv25
    (449, 44900, 667, 22, 1, 34),  -- high-horsepower lv34
    (449, 44900, 38, 22, 1, 43),  -- double-edge lv43
    -- #450 Hippowdon
    (450, 45000, 33, 22, 1, 1),  -- tackle lv1
    (450, 45000, 156, 22, 1, 6),  -- rest lv6
    (450, 45000, 44, 22, 1, 11),  -- bite lv11
    (450, 45000, 426, 22, 1, 18),  -- mud-bomb lv18
    (450, 45000, 242, 22, 1, 25),  -- crunch lv25
    (450, 45000, 667, 22, 1, 34),  -- high-horsepower lv34
    (450, 45000, 38, 22, 1, 43),  -- double-edge lv43
    -- #451 Skorupi
    (451, 45100, 40, 22, 1, 1),  -- poison-sting lv1
    (451, 45100, 44, 22, 1, 6),  -- bite lv6
    (451, 45100, 474, 22, 1, 11),  -- venoshock lv11
    (451, 45100, 440, 22, 1, 18),  -- cross-poison lv18
    (451, 45100, 14, 22, 1, 25),  -- swords-dance lv25
    (451, 45100, 404, 22, 1, 34),  -- x-scissor lv34
    (451, 45100, 242, 22, 1, 43),  -- crunch lv43
    -- #452 Drapion
    (452, 45200, 40, 22, 1, 1),  -- poison-sting lv1
    (452, 45200, 44, 22, 1, 6),  -- bite lv6
    (452, 45200, 474, 22, 1, 11),  -- venoshock lv11
    (452, 45200, 440, 22, 1, 18),  -- cross-poison lv18
    (452, 45200, 14, 22, 1, 25),  -- swords-dance lv25
    (452, 45200, 404, 22, 1, 34),  -- x-scissor lv34
    (452, 45200, 242, 22, 1, 43),  -- crunch lv43
    -- #453 Croagunk
    (453, 45300, 40, 22, 1, 1),  -- poison-sting lv1
    (453, 45300, 249, 22, 1, 5),  -- rock-smash lv5
    (453, 45300, 426, 22, 1, 9),  -- mud-bomb lv9
    (453, 45300, 474, 22, 1, 15),  -- venoshock lv15
    (453, 45300, 417, 22, 1, 21),  -- nasty-plot lv21
    (453, 45300, 398, 22, 1, 29),  -- poison-jab lv29
    (453, 45300, 414, 22, 1, 37),  -- earth-power lv37
    (453, 45300, 370, 22, 1, 47),  -- close-combat lv47
    -- #454 Toxicroak
    (454, 45400, 40, 22, 1, 1),  -- poison-sting lv1
    (454, 45400, 249, 22, 1, 5),  -- rock-smash lv5
    (454, 45400, 426, 22, 1, 9),  -- mud-bomb lv9
    (454, 45400, 474, 22, 1, 15),  -- venoshock lv15
    (454, 45400, 417, 22, 1, 21),  -- nasty-plot lv21
    (454, 45400, 398, 22, 1, 29),  -- poison-jab lv29
    (454, 45400, 414, 22, 1, 37),  -- earth-power lv37
    (454, 45400, 370, 22, 1, 47),  -- close-combat lv47
    -- #455 Carnivine
    (455, 45500, 71, 22, 1, 1),  -- absorb lv1
    (455, 45500, 491, 22, 1, 6),  -- acid-spray lv6
    (455, 45500, 44, 22, 1, 11),  -- bite lv11
    (455, 45500, 78, 22, 1, 18),  -- stun-spore lv18
    (455, 45500, 242, 22, 1, 25),  -- crunch lv25
    (455, 45500, 79, 22, 1, 34),  -- sleep-powder lv34
    (455, 45500, 412, 22, 1, 43),  -- energy-ball lv43
    -- #456 Finneon
    (456, 45600, 145, 22, 1, 1),  -- bubble lv1
    (456, 45600, 16, 22, 1, 6),  -- gust lv6
    (456, 45600, 352, 22, 1, 11),  -- water-pulse lv11
    (456, 45600, 318, 22, 1, 18),  -- silver-wind lv18
    (456, 45600, 403, 22, 1, 25),  -- air-slash lv25
    (456, 45600, 355, 22, 1, 34),  -- roost lv34
    (456, 45600, 56, 22, 1, 43),  -- hydro-pump lv43
    -- #457 Lumineon
    (457, 45700, 145, 22, 1, 1),  -- bubble lv1
    (457, 45700, 16, 22, 1, 6),  -- gust lv6
    (457, 45700, 352, 22, 1, 11),  -- water-pulse lv11
    (457, 45700, 318, 22, 1, 18),  -- silver-wind lv18
    (457, 45700, 403, 22, 1, 25),  -- air-slash lv25
    (457, 45700, 355, 22, 1, 34),  -- roost lv34
    (457, 45700, 56, 22, 1, 43),  -- hydro-pump lv43
    -- #458 Mantyke
    (458, 45800, 33, 22, 1, 1),  -- tackle lv1
    (458, 45800, 145, 22, 1, 5),  -- bubble lv5
    (458, 45800, 332, 22, 1, 9),  -- aerial-ace lv9
    (458, 45800, 352, 22, 1, 15),  -- water-pulse lv15
    (458, 45800, 403, 22, 1, 21),  -- air-slash lv21
    (458, 45800, 355, 22, 1, 29),  -- roost lv29
    (458, 45800, 56, 22, 1, 37),  -- hydro-pump lv37
    (458, 45800, 38, 22, 1, 47),  -- double-edge lv47
    -- #459 Snover
    (459, 45900, 181, 22, 1, 1),  -- powder-snow lv1
    (459, 45900, 670, 22, 1, 6),  -- leafage lv6
    (459, 45900, 420, 22, 1, 11),  -- ice-shard lv11
    (459, 45900, 556, 22, 1, 18),  -- icicle-crash lv18
    (459, 45900, 412, 22, 1, 25),  -- energy-ball lv25
    (459, 45900, 59, 22, 1, 34),  -- blizzard lv34
    (459, 45900, 452, 22, 1, 43),  -- wood-hammer lv43
    -- #460 Abomasnow
    (460, 46000, 181, 22, 1, 1),  -- powder-snow lv1
    (460, 46000, 670, 22, 1, 6),  -- leafage lv6
    (460, 46000, 420, 22, 1, 11),  -- ice-shard lv11
    (460, 46000, 556, 22, 1, 18),  -- icicle-crash lv18
    (460, 46000, 412, 22, 1, 25),  -- energy-ball lv25
    (460, 46000, 59, 22, 1, 34),  -- blizzard lv34
    (460, 46000, 452, 22, 1, 43),  -- wood-hammer lv43
    -- #461 Weavile
    (461, 46100, 98, 22, 1, 1),  -- quick-attack lv1
    (461, 46100, 420, 22, 1, 6),  -- ice-shard lv6
    (461, 46100, 129, 22, 1, 11),  -- swift lv11
    (461, 46100, 163, 22, 1, 18),  -- slash lv18
    (461, 46100, 398, 22, 1, 25),  -- poison-jab lv25
    (461, 46100, 14, 22, 1, 34),  -- swords-dance lv34
    (461, 46100, 400, 22, 1, 38),  -- night-slash lv38
    (461, 46100, 59, 22, 1, 43),  -- blizzard lv43
    -- #462 Magnezone
    (462, 46200, 84, 22, 1, 1),  -- thunder-shock lv1
    (462, 46200, 33, 22, 1, 6),  -- tackle lv6
    (462, 46200, 86, 22, 1, 11),  -- thunder-wave lv11
    (462, 46200, 209, 22, 1, 18),  -- spark lv18
    (462, 46200, 161, 22, 1, 25),  -- tri-attack lv25
    (462, 46200, 430, 22, 1, 25),  -- flash-cannon lv25
    (462, 46200, 85, 22, 1, 34),  -- thunderbolt lv34
    (462, 46200, 87, 22, 1, 43),  -- thunder lv43
    -- #463 Lickilicky
    (463, 46300, 33, 22, 1, 1),  -- tackle lv1
    (463, 46300, 156, 22, 1, 6),  -- rest lv6
    (463, 46300, 523, 22, 1, 11),  -- bulldoze lv11
    (463, 46300, 428, 22, 1, 18),  -- zen-headbutt lv18
    (463, 46300, 38, 22, 1, 25),  -- double-edge lv25
    (463, 46300, 205, 22, 1, 34),  -- rollout lv34
    (463, 46300, 416, 22, 1, 43),  -- giga-impact lv43
    -- #464 Rhyperior
    (464, 46400, 33, 22, 1, 1),  -- tackle lv1
    (464, 46400, 523, 22, 1, 6),  -- bulldoze lv6
    (464, 46400, 249, 22, 1, 11),  -- rock-smash lv11
    (464, 46400, 446, 22, 1, 18),  -- stealth-rock lv18
    (464, 46400, 157, 22, 1, 25),  -- rock-slide lv25
    (464, 46400, 667, 22, 1, 34),  -- high-horsepower lv34
    (464, 46400, 38, 22, 1, 43),  -- double-edge lv43
    (464, 46400, 416, 22, 1, 52),  -- giga-impact lv52
    -- #465 Tangrowth
    (465, 46500, 71, 22, 1, 1),  -- absorb lv1
    (465, 46500, 78, 22, 1, 6),  -- stun-spore lv6
    (465, 46500, 77, 22, 1, 11),  -- poison-powder lv11
    (465, 46500, 491, 22, 1, 15),  -- acid-spray lv15
    (465, 46500, 458, 22, 1, 18),  -- double-hit lv18
    (465, 46500, 412, 22, 1, 25),  -- energy-ball lv25
    (465, 46500, 246, 22, 1, 34),  -- ancient-power lv34
    (465, 46500, 79, 22, 1, 43),  -- sleep-powder lv43
    (465, 46500, 188, 22, 1, 52),  -- sludge-bomb lv52
    -- #466 Electivire
    (466, 46600, 84, 22, 1, 1),  -- thunder-shock lv1
    (466, 46600, 98, 22, 1, 6),  -- quick-attack lv6
    (466, 46600, 209, 22, 1, 11),  -- spark lv11
    (466, 46600, 86, 22, 1, 18),  -- thunder-wave lv18
    (466, 46600, 9, 22, 1, 25),  -- thunder-punch lv25
    (466, 46600, 85, 22, 1, 34),  -- thunderbolt lv34
    (466, 46600, 87, 22, 1, 43),  -- thunder lv43
    -- #467 Magmortar
    (467, 46700, 52, 22, 1, 1),  -- ember lv1
    (467, 46700, 33, 22, 1, 6),  -- tackle lv6
    (467, 46700, 172, 22, 1, 11),  -- flame-wheel lv11
    (467, 46700, 139, 22, 1, 18),  -- poison-gas lv18
    (467, 46700, 7, 22, 1, 25),  -- fire-punch lv25
    (467, 46700, 53, 22, 1, 34),  -- flamethrower lv34
    (467, 46700, 126, 22, 1, 43),  -- fire-blast lv43
    -- #468 Togekiss
    (468, 46800, 33, 22, 1, 1),  -- tackle lv1
    (468, 46800, 584, 22, 1, 6),  -- fairy-wind lv6
    (468, 46800, 314, 22, 1, 11),  -- air-cutter lv11
    (468, 46800, 577, 22, 1, 11),  -- draining-kiss lv11
    (468, 46800, 347, 22, 1, 18),  -- calm-mind lv18
    (468, 46800, 403, 22, 1, 25),  -- air-slash lv25
    (468, 46800, 608, 22, 1, 25),  -- baby-doll-eyes lv25
    (468, 46800, 326, 22, 1, 34),  -- extrasensory lv34
    (468, 46800, 585, 22, 1, 43),  -- moonblast lv43
    -- #469 Yanmega
    (469, 46900, 98, 22, 1, 1),  -- quick-attack lv1
    (469, 46900, 16, 22, 1, 6),  -- gust lv6
    (469, 46900, 318, 22, 1, 11),  -- silver-wind lv11
    (469, 46900, 95, 22, 1, 18),  -- hypnosis lv18
    (469, 46900, 403, 22, 1, 25),  -- air-slash lv25
    (469, 46900, 246, 22, 1, 34),  -- ancient-power lv34
    (469, 46900, 242, 22, 1, 43),  -- crunch lv43
    (469, 46900, 405, 22, 1, 43),  -- bug-buzz lv43
    -- #470 Leafeon
    (470, 47000, 33, 22, 1, 1),  -- tackle lv1
    (470, 47000, 98, 22, 1, 6),  -- quick-attack lv6
    (470, 47000, 129, 22, 1, 11),  -- swift lv11
    (470, 47000, 608, 22, 1, 18),  -- baby-doll-eyes lv18
    (470, 47000, 102, 22, 1, 25),  -- mimic lv25
    (470, 47000, 348, 22, 1, 25),  -- leaf-blade lv25
    (470, 47000, 347, 22, 1, 34),  -- calm-mind lv34
    (470, 47000, 38, 22, 1, 43),  -- double-edge lv43
    (470, 47000, 670, 22, 7, 0),  -- leafage evo
    -- #471 Glaceon
    (471, 47100, 33, 22, 1, 1),  -- tackle lv1
    (471, 47100, 98, 22, 1, 6),  -- quick-attack lv6
    (471, 47100, 129, 22, 1, 11),  -- swift lv11
    (471, 47100, 608, 22, 1, 18),  -- baby-doll-eyes lv18
    (471, 47100, 58, 22, 1, 25),  -- ice-beam lv25
    (471, 47100, 102, 22, 1, 25),  -- mimic lv25
    (471, 47100, 347, 22, 1, 34),  -- calm-mind lv34
    (471, 47100, 38, 22, 1, 43),  -- double-edge lv43
    (471, 47100, 181, 22, 7, 0),  -- powder-snow evo
    -- #472 Gliscor
    (472, 47200, 40, 22, 1, 1),  -- poison-sting lv1
    (472, 47200, 98, 22, 1, 6),  -- quick-attack lv6
    (472, 47200, 332, 22, 1, 11),  -- aerial-ace lv11
    (472, 47200, 426, 22, 1, 18),  -- mud-bomb lv18
    (472, 47200, 42, 22, 1, 20),  -- pin-missile lv20
    (472, 47200, 163, 22, 1, 25),  -- slash lv25
    (472, 47200, 14, 22, 1, 30),  -- swords-dance lv30
    (472, 47200, 398, 22, 1, 34),  -- poison-jab lv34
    (472, 47200, 404, 22, 1, 43),  -- x-scissor lv43
    (472, 47200, 414, 22, 1, 52),  -- earth-power lv52
    -- #473 Mamoswine
    (473, 47300, 33, 22, 1, 1),  -- tackle lv1
    (473, 47300, 420, 22, 1, 6),  -- ice-shard lv6
    (473, 47300, 523, 22, 1, 11),  -- bulldoze lv11
    (473, 47300, 556, 22, 1, 18),  -- icicle-crash lv18
    (473, 47300, 667, 22, 1, 25),  -- high-horsepower lv25
    (473, 47300, 246, 22, 1, 34),  -- ancient-power lv34
    (473, 47300, 59, 22, 1, 43),  -- blizzard lv43
    (473, 47300, 38, 22, 1, 52),  -- double-edge lv52
    -- #474 Porygon-Z
    (474, 47400, 33, 22, 1, 1),  -- tackle lv1
    (474, 47400, 84, 22, 1, 5),  -- thunder-shock lv5
    (474, 47400, 86, 22, 1, 9),  -- thunder-wave lv9
    (474, 47400, 209, 22, 1, 15),  -- spark lv15
    (474, 47400, 161, 22, 1, 21),  -- tri-attack lv21
    (474, 47400, 85, 22, 1, 29),  -- thunderbolt lv29
    (474, 47400, 105, 22, 1, 37),  -- recover lv37
    (474, 47400, 63, 22, 1, 47),  -- hyper-beam lv47
    -- #475 Gallade
    (475, 47500, 93, 22, 1, 1),  -- confusion lv1
    (475, 47500, 100, 22, 1, 6),  -- teleport lv6
    (475, 47500, 577, 22, 1, 11),  -- draining-kiss lv11
    (475, 47500, 95, 22, 1, 18),  -- hypnosis lv18
    (475, 47500, 427, 22, 1, 18),  -- psycho-cut lv18
    (475, 47500, 347, 22, 1, 25),  -- calm-mind lv25
    (475, 47500, 14, 22, 1, 30),  -- swords-dance lv30
    (475, 47500, 94, 22, 1, 34),  -- psychic lv34
    (475, 47500, 348, 22, 1, 43),  -- leaf-blade lv43
    (475, 47500, 370, 22, 1, 52),  -- close-combat lv52
    (475, 47500, 163, 22, 7, 0),  -- slash evo
    -- #476 Probopass
    (476, 47600, 33, 22, 1, 1),  -- tackle lv1
    (476, 47600, 86, 22, 1, 6),  -- thunder-wave lv6
    (476, 47600, 209, 22, 1, 11),  -- spark lv11
    (476, 47600, 334, 22, 1, 18),  -- iron-defense lv18
    (476, 47600, 157, 22, 1, 25),  -- rock-slide lv25
    (476, 47600, 161, 22, 1, 34),  -- tri-attack lv34
    (476, 47600, 408, 22, 1, 34),  -- power-gem lv34
    (476, 47600, 430, 22, 1, 38),  -- flash-cannon lv38
    (476, 47600, 414, 22, 1, 43),  -- earth-power lv43
    -- #477 Dusknoir
    (477, 47700, 71, 22, 1, 1),  -- absorb lv1
    (477, 47700, 425, 22, 1, 6),  -- shadow-sneak lv6
    (477, 47700, 506, 22, 1, 11),  -- hex lv11
    (477, 47700, 141, 22, 1, 18),  -- leech-life lv18
    (477, 47700, 399, 22, 1, 25),  -- dark-pulse lv25
    (477, 47700, 247, 22, 1, 34),  -- shadow-ball lv34
    (477, 47700, 94, 22, 1, 43),  -- psychic lv43
    -- #478 Froslass
    (478, 47800, 181, 22, 1, 1),  -- powder-snow lv1
    (478, 47800, 420, 22, 1, 6),  -- ice-shard lv6
    (478, 47800, 44, 22, 1, 11),  -- bite lv11
    (478, 47800, 423, 22, 1, 18),  -- ice-fang lv18
    (478, 47800, 506, 22, 1, 18),  -- hex lv18
    (478, 47800, 242, 22, 1, 25),  -- crunch lv25
    (478, 47800, 247, 22, 1, 25),  -- shadow-ball lv25
    (478, 47800, 556, 22, 1, 34),  -- icicle-crash lv34
    (478, 47800, 59, 22, 1, 43),  -- blizzard lv43
    -- #479 Rotom
    (479, 47900, 84, 22, 1, 1),  -- thunder-shock lv1
    (479, 47900, 451, 22, 1, 6),  -- charge-beam lv6
    (479, 47900, 506, 22, 1, 11),  -- hex lv11
    (479, 47900, 86, 22, 1, 18),  -- thunder-wave lv18
    (479, 47900, 247, 22, 1, 25),  -- shadow-ball lv25
    (479, 47900, 85, 22, 1, 34),  -- thunderbolt lv34
    (479, 47900, 87, 22, 1, 43),  -- thunder lv43
    -- #480 Uxie
    (480, 48000, 93, 22, 1, 1),  -- confusion lv1
    (480, 48000, 129, 22, 1, 6),  -- swift lv6
    (480, 48000, 458, 22, 1, 12),  -- double-hit lv12
    (480, 48000, 156, 22, 1, 19),  -- rest lv19
    (480, 48000, 326, 22, 1, 27),  -- extrasensory lv27
    (480, 48000, 161, 22, 1, 32),  -- tri-attack lv32
    (480, 48000, 347, 22, 1, 36),  -- calm-mind lv36
    (480, 48000, 832, 22, 1, 46),  -- mystical-power lv46
    (480, 48000, 95, 22, 1, 57),  -- hypnosis lv57
    -- #481 Mesprit
    (481, 48100, 93, 22, 1, 1),  -- confusion lv1
    (481, 48100, 129, 22, 1, 6),  -- swift lv6
    (481, 48100, 458, 22, 1, 12),  -- double-hit lv12
    (481, 48100, 156, 22, 1, 19),  -- rest lv19
    (481, 48100, 326, 22, 1, 27),  -- extrasensory lv27
    (481, 48100, 161, 22, 1, 32),  -- tri-attack lv32
    (481, 48100, 347, 22, 1, 36),  -- calm-mind lv36
    (481, 48100, 832, 22, 1, 46),  -- mystical-power lv46
    (481, 48100, 105, 22, 1, 57),  -- recover lv57
    -- #482 Azelf
    (482, 48200, 93, 22, 1, 1),  -- confusion lv1
    (482, 48200, 129, 22, 1, 6),  -- swift lv6
    (482, 48200, 458, 22, 1, 12),  -- double-hit lv12
    (482, 48200, 156, 22, 1, 19),  -- rest lv19
    (482, 48200, 326, 22, 1, 27),  -- extrasensory lv27
    (482, 48200, 161, 22, 1, 32),  -- tri-attack lv32
    (482, 48200, 417, 22, 1, 36),  -- nasty-plot lv36
    (482, 48200, 832, 22, 1, 46),  -- mystical-power lv46
    (482, 48200, 120, 22, 1, 57),  -- self-destruct lv57
    -- #483 Dialga
    (483, 48300, 239, 22, 1, 1),  -- twister lv1
    (483, 48300, 246, 22, 1, 6),  -- ancient-power lv6
    (483, 48300, 163, 22, 1, 12),  -- slash lv12
    (483, 48300, 337, 22, 1, 19),  -- dragon-claw lv19
    (483, 48300, 408, 22, 1, 27),  -- power-gem lv27
    (483, 48300, 406, 22, 1, 36),  -- dragon-pulse lv36
    (483, 48300, 414, 22, 1, 42),  -- earth-power lv42
    (483, 48300, 231, 22, 1, 47),  -- iron-tail lv47
    (483, 48300, 430, 22, 1, 55),  -- flash-cannon lv55
    (483, 48300, 459, 22, 1, 60),  -- roar-of-time lv60
    -- #484 Palkia
    (484, 48400, 239, 22, 1, 1),  -- twister lv1
    (484, 48400, 246, 22, 1, 6),  -- ancient-power lv6
    (484, 48400, 163, 22, 1, 12),  -- slash lv12
    (484, 48400, 337, 22, 1, 19),  -- dragon-claw lv19
    (484, 48400, 408, 22, 1, 27),  -- power-gem lv27
    (484, 48400, 406, 22, 1, 36),  -- dragon-pulse lv36
    (484, 48400, 414, 22, 1, 42),  -- earth-power lv42
    (484, 48400, 401, 22, 1, 47),  -- aqua-tail lv47
    (484, 48400, 56, 22, 1, 55),  -- hydro-pump lv55
    (484, 48400, 460, 22, 1, 60),  -- spacial-rend lv60
    -- #485 Heatran
    (485, 48500, 52, 22, 1, 1),  -- ember lv1
    (485, 48500, 334, 22, 1, 6),  -- iron-defense lv6
    (485, 48500, 246, 22, 1, 12),  -- ancient-power lv12
    (485, 48500, 424, 22, 1, 19),  -- fire-fang lv19
    (485, 48500, 442, 22, 1, 27),  -- iron-head lv27
    (485, 48500, 242, 22, 1, 36),  -- crunch lv36
    (485, 48500, 414, 22, 1, 46),  -- earth-power lv46
    (485, 48500, 463, 22, 1, 57),  -- magma-storm lv57
    -- #486 Regigigas
    (486, 48600, 33, 22, 1, 1),  -- tackle lv1
    (486, 48600, 249, 22, 1, 6),  -- rock-smash lv6
    (486, 48600, 523, 22, 1, 12),  -- bulldoze lv12
    (486, 48600, 246, 22, 1, 19),  -- ancient-power lv19
    (486, 48600, 428, 22, 1, 27),  -- zen-headbutt lv27
    (486, 48600, 442, 22, 1, 36),  -- iron-head lv36
    (486, 48600, 462, 22, 1, 46),  -- crush-grip lv46
    (486, 48600, 416, 22, 1, 57),  -- giga-impact lv57
    -- #488 Cresselia
    (488, 48800, 33, 22, 1, 1),  -- tackle lv1
    (488, 48800, 93, 22, 1, 6),  -- confusion lv6
    (488, 48800, 163, 22, 1, 12),  -- slash lv12
    (488, 48800, 427, 22, 1, 19),  -- psycho-cut lv19
    (488, 48800, 105, 22, 1, 27),  -- recover lv27
    (488, 48800, 94, 22, 1, 36),  -- psychic lv36
    (488, 48800, 585, 22, 1, 46),  -- moonblast lv46
    (488, 48800, 849, 22, 1, 57),  -- lunar-blessing lv57
    -- #489 Phione
    (489, 48900, 145, 22, 1, 1),  -- bubble lv1
    (489, 48900, 93, 22, 1, 6),  -- confusion lv6
    (489, 48900, 352, 22, 1, 12),  -- water-pulse lv12
    (489, 48900, 151, 22, 1, 19),  -- acid-armor lv19
    (489, 48900, 428, 22, 1, 27),  -- zen-headbutt lv27
    (489, 48900, 585, 22, 1, 36),  -- moonblast lv36
    (489, 48900, 850, 22, 1, 46),  -- take-heart lv46
    (489, 48900, 56, 22, 1, 57),  -- hydro-pump lv57
    -- #490 Manaphy
    (490, 49000, 145, 22, 1, 1),  -- bubble lv1
    (490, 49000, 93, 22, 1, 6),  -- confusion lv6
    (490, 49000, 352, 22, 1, 12),  -- water-pulse lv12
    (490, 49000, 151, 22, 1, 19),  -- acid-armor lv19
    (490, 49000, 428, 22, 1, 27),  -- zen-headbutt lv27
    (490, 49000, 585, 22, 1, 36),  -- moonblast lv36
    (490, 49000, 850, 22, 1, 46),  -- take-heart lv46
    (490, 49000, 56, 22, 1, 57),  -- hydro-pump lv57
    -- #491 Darkrai
    (491, 49100, 425, 22, 1, 1),  -- shadow-sneak lv1
    (491, 49100, 95, 22, 1, 6),  -- hypnosis lv6
    (491, 49100, 506, 22, 1, 12),  -- hex lv12
    (491, 49100, 417, 22, 1, 19),  -- nasty-plot lv19
    (491, 49100, 399, 22, 1, 27),  -- dark-pulse lv27
    (491, 49100, 247, 22, 1, 36),  -- shadow-ball lv36
    (491, 49100, 94, 22, 1, 46),  -- psychic lv46
    (491, 49100, 464, 22, 1, 57),  -- dark-void lv57
    -- #492 Shaymin
    (492, 49200, 670, 22, 1, 1),  -- leafage lv1
    (492, 49200, 98, 22, 1, 6),  -- quick-attack lv6
    (492, 49200, 79, 22, 1, 12),  -- sleep-powder lv12
    (492, 49200, 403, 22, 1, 19),  -- air-slash lv19
    (492, 49200, 105, 22, 1, 27),  -- recover lv27
    (492, 49200, 412, 22, 1, 36),  -- energy-ball lv36
    (492, 49200, 414, 22, 1, 46),  -- earth-power lv46
    (492, 49200, 465, 22, 1, 57),  -- seed-flare lv57
    (492, 49200, 63, 22, 6, NULL),  -- hyper-beam tutor
    (492, 49200, 94, 22, 6, NULL),  -- psychic tutor
    (492, 49200, 129, 22, 6, NULL),  -- swift tutor
    (492, 49200, 156, 22, 6, NULL),  -- rest tutor
    (492, 49200, 332, 22, 6, NULL),  -- aerial-ace tutor
    (492, 49200, 345, 22, 6, NULL),  -- magical-leaf tutor
    (492, 49200, 412, 22, 6, NULL),  -- energy-ball tutor
    (492, 49200, 414, 22, 6, NULL),  -- earth-power tutor
    (492, 49200, 416, 22, 6, NULL),  -- giga-impact tutor
    (492, 49200, 428, 22, 6, NULL),  -- zen-headbutt tutor
    (492, 49200, 466, 22, 6, NULL),  -- ominous-wind tutor
    (492, 49200, 583, 22, 6, NULL),  -- play-rough tutor
    (492, 49200, 605, 22, 6, NULL),  -- dazzling-gleam tutor
    (492, 49200, 608, 22, 6, NULL),  -- baby-doll-eyes tutor
    -- #493 Arceus
    (493, 49300, 98, 22, 1, 1),  -- quick-attack lv1
    (493, 49300, 93, 22, 1, 6),  -- confusion lv6
    (493, 49300, 246, 22, 1, 12),  -- ancient-power lv12
    (493, 49300, 347, 22, 1, 19),  -- calm-mind lv19
    (493, 49300, 105, 22, 1, 27),  -- recover lv27
    (493, 49300, 326, 22, 1, 36),  -- extrasensory lv36
    (493, 49300, 449, 22, 1, 46),  -- judgment lv46
    (493, 49300, 63, 22, 1, 57),  -- hyper-beam lv57
    -- #501 Oshawott
    (501, 50100, 33, 22, 1, 1),  -- tackle lv1
    (501, 50100, 453, 22, 1, 6),  -- aqua-jet lv6
    (501, 50100, 14, 22, 1, 11),  -- swords-dance lv11
    (501, 50100, 352, 22, 1, 18),  -- water-pulse lv18
    (501, 50100, 163, 22, 1, 25),  -- slash lv25
    (501, 50100, 401, 22, 1, 34),  -- aqua-tail lv34
    (501, 50100, 56, 22, 1, 43),  -- hydro-pump lv43
    -- #502 Dewott
    (502, 50200, 33, 22, 1, 1),  -- tackle lv1
    (502, 50200, 453, 22, 1, 6),  -- aqua-jet lv6
    (502, 50200, 14, 22, 1, 11),  -- swords-dance lv11
    (502, 50200, 352, 22, 1, 18),  -- water-pulse lv18
    (502, 50200, 163, 22, 1, 25),  -- slash lv25
    (502, 50200, 401, 22, 1, 34),  -- aqua-tail lv34
    (502, 50200, 56, 22, 1, 43),  -- hydro-pump lv43
    -- #548 Petilil
    (548, 54800, 71, 22, 1, 1),  -- absorb lv1
    (548, 54800, 670, 22, 1, 5),  -- leafage lv5
    (548, 54800, 78, 22, 1, 9),  -- stun-spore lv9
    (548, 54800, 77, 22, 1, 15),  -- poison-powder lv15
    (548, 54800, 412, 22, 1, 21),  -- energy-ball lv21
    (548, 54800, 79, 22, 1, 29),  -- sleep-powder lv29
    (548, 54800, 105, 22, 1, 37),  -- recover lv37
    (548, 54800, 437, 22, 1, 47),  -- leaf-storm lv47
    -- #627 Rufflet
    (627, 62700, 98, 22, 1, 1),  -- quick-attack lv1
    (627, 62700, 332, 22, 1, 6),  -- aerial-ace lv6
    (627, 62700, 239, 22, 1, 11),  -- twister lv11
    (627, 62700, 163, 22, 1, 18),  -- slash lv18
    (627, 62700, 403, 22, 1, 20),  -- air-slash lv20
    (627, 62700, 355, 22, 1, 25),  -- roost lv25
    (627, 62700, 38, 22, 1, 34),  -- double-edge lv34
    (627, 62700, 413, 22, 1, 43),  -- brave-bird lv43
    -- #641 Tornadus
    (641, 64100, 33, 22, 1, 1),  -- tackle lv1
    (641, 64100, 44, 22, 1, 7),  -- bite lv7
    (641, 64100, 239, 22, 1, 11),  -- twister lv11
    (641, 64100, 314, 22, 1, 14),  -- air-cutter lv14
    (641, 64100, 417, 22, 1, 22),  -- nasty-plot lv22
    (641, 64100, 326, 22, 1, 31),  -- extrasensory lv31
    (641, 64100, 242, 22, 1, 41),  -- crunch lv41
    (641, 64100, 542, 22, 1, 47),  -- hurricane lv47
    (641, 64100, 846, 22, 1, 52),  -- bleakwind-storm lv52
    -- #642 Thundurus
    (642, 64200, 33, 22, 1, 1),  -- tackle lv1
    (642, 64200, 44, 22, 1, 7),  -- bite lv7
    (642, 64200, 239, 22, 1, 11),  -- twister lv11
    (642, 64200, 209, 22, 1, 14),  -- spark lv14
    (642, 64200, 417, 22, 1, 22),  -- nasty-plot lv22
    (642, 64200, 326, 22, 1, 31),  -- extrasensory lv31
    (642, 64200, 242, 22, 1, 41),  -- crunch lv41
    (642, 64200, 87, 22, 1, 47),  -- thunder lv47
    (642, 64200, 847, 22, 1, 52),  -- wildbolt-storm lv52
    -- #645 Landorus
    (645, 64500, 33, 22, 1, 1),  -- tackle lv1
    (645, 64500, 44, 22, 1, 7),  -- bite lv7
    (645, 64500, 239, 22, 1, 11),  -- twister lv11
    (645, 64500, 523, 22, 1, 14),  -- bulldoze lv14
    (645, 64500, 339, 22, 1, 22),  -- bulk-up lv22
    (645, 64500, 326, 22, 1, 31),  -- extrasensory lv31
    (645, 64500, 242, 22, 1, 41),  -- crunch lv41
    (645, 64500, 414, 22, 1, 47),  -- earth-power lv47
    (645, 64500, 848, 22, 1, 52),  -- sandsear-storm lv52
    -- #700 Sylveon
    (700, 70000, 33, 22, 1, 1),  -- tackle lv1
    (700, 70000, 98, 22, 1, 6),  -- quick-attack lv6
    (700, 70000, 129, 22, 1, 11),  -- swift lv11
    (700, 70000, 608, 22, 1, 18),  -- baby-doll-eyes lv18
    (700, 70000, 102, 22, 1, 25),  -- mimic lv25
    (700, 70000, 583, 22, 1, 25),  -- play-rough lv25
    (700, 70000, 347, 22, 1, 34),  -- calm-mind lv34
    (700, 70000, 38, 22, 1, 43),  -- double-edge lv43
    (700, 70000, 584, 22, 7, 0),  -- fairy-wind evo
    -- #704 Goomy
    (704, 70400, 145, 22, 1, 1),  -- bubble lv1
    (704, 70400, 491, 22, 1, 6),  -- acid-spray lv6
    (704, 70400, 151, 22, 1, 11),  -- acid-armor lv11
    (704, 70400, 352, 22, 1, 18),  -- water-pulse lv18
    (704, 70400, 406, 22, 1, 25),  -- dragon-pulse lv25
    (704, 70400, 842, 22, 1, 34),  -- shelter lv34
    (704, 70400, 56, 22, 1, 43),  -- hydro-pump lv43
    -- #712 Bergmite
    (712, 71200, 33, 22, 1, 1),  -- tackle lv1
    (712, 71200, 181, 22, 1, 5),  -- powder-snow lv5
    (712, 71200, 420, 22, 1, 9),  -- ice-shard lv9
    (712, 71200, 44, 22, 1, 15),  -- bite lv15
    (712, 71200, 334, 22, 1, 21),  -- iron-defense lv21
    (712, 71200, 242, 22, 1, 29),  -- crunch lv29
    (712, 71200, 59, 22, 1, 37),  -- blizzard lv37
    (712, 71200, 38, 22, 1, 47),  -- double-edge lv47
    -- #722 Rowlet
    (722, 72200, 16, 22, 1, 1),  -- gust lv1
    (722, 72200, 670, 22, 1, 6),  -- leafage lv6
    (722, 72200, 355, 22, 1, 11),  -- roost lv11
    (722, 72200, 332, 22, 1, 18),  -- aerial-ace lv18
    (722, 72200, 345, 22, 1, 21),  -- magical-leaf lv21
    (722, 72200, 403, 22, 1, 25),  -- air-slash lv25
    (722, 72200, 348, 22, 1, 34),  -- leaf-blade lv34
    (722, 72200, 437, 22, 1, 43),  -- leaf-storm lv43
    -- #723 Dartrix
    (723, 72300, 16, 22, 1, 1),  -- gust lv1
    (723, 72300, 670, 22, 1, 6),  -- leafage lv6
    (723, 72300, 355, 22, 1, 11),  -- roost lv11
    (723, 72300, 332, 22, 1, 18),  -- aerial-ace lv18
    (723, 72300, 345, 22, 1, 21),  -- magical-leaf lv21
    (723, 72300, 403, 22, 1, 25),  -- air-slash lv25
    (723, 72300, 348, 22, 1, 34),  -- leaf-blade lv34
    (723, 72300, 437, 22, 1, 43),  -- leaf-storm lv43
    -- #899 Wyrdeer
    (899, 89900, 33, 22, 1, 1),  -- tackle lv1
    (899, 89900, 93, 22, 1, 5),  -- confusion lv5
    (899, 89900, 95, 22, 1, 9),  -- hypnosis lv9
    (899, 89900, 347, 22, 1, 15),  -- calm-mind lv15
    (899, 89900, 828, 22, 1, 21),  -- psyshield-bash lv21
    (899, 89900, 326, 22, 1, 29),  -- extrasensory lv29
    (899, 89900, 428, 22, 1, 37),  -- zen-headbutt lv37
    (899, 89900, 38, 22, 1, 47),  -- double-edge lv47
    -- #900 Kleavor
    (900, 90000, 98, 22, 1, 1),  -- quick-attack lv1
    (900, 90000, 318, 22, 1, 6),  -- silver-wind lv6
    (900, 90000, 332, 22, 1, 11),  -- aerial-ace lv11
    (900, 90000, 446, 22, 1, 14),  -- stealth-rock lv14
    (900, 90000, 458, 22, 1, 14),  -- double-hit lv14
    (900, 90000, 403, 22, 1, 18),  -- air-slash lv18
    (900, 90000, 14, 22, 1, 25),  -- swords-dance lv25
    (900, 90000, 830, 22, 1, 29),  -- stone-axe lv29
    (900, 90000, 404, 22, 1, 34),  -- x-scissor lv34
    (900, 90000, 370, 22, 1, 43),  -- close-combat lv43
    -- #901 Ursaluna
    (901, 90100, 33, 22, 1, 1),  -- tackle lv1
    (901, 90100, 608, 22, 1, 6),  -- baby-doll-eyes lv6
    (901, 90100, 523, 22, 1, 11),  -- bulldoze lv11
    (901, 90100, 163, 22, 1, 18),  -- slash lv18
    (901, 90100, 583, 22, 1, 25),  -- play-rough lv25
    (901, 90100, 667, 22, 1, 34),  -- high-horsepower lv34
    (901, 90100, 38, 22, 1, 43),  -- double-edge lv43
    (901, 90100, 838, 22, 1, 43),  -- headlong-rush lv43
    -- #902 Basculegion
    (902, 90200, 33, 22, 1, 1),  -- tackle lv1
    (902, 90200, 453, 22, 1, 6),  -- aqua-jet lv6
    (902, 90200, 44, 22, 1, 11),  -- bite lv11
    (902, 90200, 506, 22, 1, 11),  -- hex lv11
    (902, 90200, 428, 22, 1, 18),  -- zen-headbutt lv18
    (902, 90200, 242, 22, 1, 25),  -- crunch lv25
    (902, 90200, 247, 22, 1, 25),  -- shadow-ball lv25
    (902, 90200, 834, 22, 1, 34),  -- wave-crash lv34
    (902, 90200, 38, 22, 1, 43),  -- double-edge lv43
    -- #903 Sneasler
    (903, 90300, 98, 22, 1, 1),  -- quick-attack lv1
    (903, 90300, 249, 22, 1, 6),  -- rock-smash lv6
    (903, 90300, 129, 22, 1, 11),  -- swift lv11
    (903, 90300, 827, 22, 1, 11),  -- dire-claw lv11
    (903, 90300, 163, 22, 1, 18),  -- slash lv18
    (903, 90300, 398, 22, 1, 25),  -- poison-jab lv25
    (903, 90300, 14, 22, 1, 34),  -- swords-dance lv34
    (903, 90300, 370, 22, 1, 43),  -- close-combat lv43
    -- #904 Overqwil
    (904, 90400, 40, 22, 1, 1),  -- poison-sting lv1
    (904, 90400, 191, 22, 1, 5),  -- spikes lv5
    (904, 90400, 42, 22, 1, 9),  -- pin-missile lv9
    (904, 90400, 839, 22, 1, 15),  -- barb-barrage lv15
    (904, 90400, 352, 22, 1, 21),  -- water-pulse lv21
    (904, 90400, 399, 22, 1, 26),  -- dark-pulse lv26
    (904, 90400, 398, 22, 1, 29),  -- poison-jab lv29
    (904, 90400, 401, 22, 1, 37),  -- aqua-tail lv37
    (904, 90400, 38, 22, 1, 47),  -- double-edge lv47
    (904, 90400, 120, 22, 1, 57),  -- self-destruct lv57
    -- #905 Enamorus
    (905, 90500, 33, 22, 1, 1),  -- tackle lv1
    (905, 90500, 44, 22, 1, 7),  -- bite lv7
    (905, 90500, 239, 22, 1, 11),  -- twister lv11
    (905, 90500, 577, 22, 1, 14),  -- draining-kiss lv14
    (905, 90500, 334, 22, 1, 22),  -- iron-defense lv22
    (905, 90500, 326, 22, 1, 31),  -- extrasensory lv31
    (905, 90500, 242, 22, 1, 41),  -- crunch lv41
    (905, 90500, 585, 22, 1, 47),  -- moonblast lv47
    (905, 90500, 831, 22, 1, 52);  -- springtide-storm lv52
