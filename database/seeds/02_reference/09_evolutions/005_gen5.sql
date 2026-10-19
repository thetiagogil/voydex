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
-- Generation 5 evolution edge rows grouped by when the edge/form/method
-- entered the source model.
-- Table: reference.pokemon_evolution_edges
-- ============================================================================

INSERT INTO reference.pokemon_evolution_edges (from_species_id, from_form_id, to_species_id, to_form_id, version_group_id, introduced_generation_id, evolution_method_id, minimum_level, item_id, held_item_id, known_move_id, known_type_id, gender, time_of_day, location_label, condition_summary, condition_data, sort_order)
VALUES
  -- Magneton -> Magnezone
  (82, 8200, 462, 46200, NULL, 5, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chargestone Cave', 'at Chargestone Cave', '{"source_trigger":"level-up","location":"chargestone-cave"}', 250),
  -- Eevee -> Leafeon
  (133, 13300, 470, 47000, NULL, 5, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pinwheel Forest', 'at Pinwheel Forest', '{"source_trigger":"level-up","location":"pinwheel-forest"}', 251),
  -- Eevee -> Glaceon
  (133, 13300, 471, 47100, NULL, 5, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Twist Mountain', 'at Twist Mountain', '{"source_trigger":"level-up","location":"twist-mountain"}', 252),
  -- Nosepass -> Probopass
  (299, 29900, 476, 47600, NULL, 5, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chargestone Cave', 'at Chargestone Cave', '{"source_trigger":"level-up","location":"chargestone-cave"}', 253),
  -- Feebas -> Milotic
  (349, 34900, 350, 35000, NULL, 5, 3, NULL, NULL, 86, NULL, NULL, NULL, NULL, NULL, 'trade holding Prism Scale', '{"source_trigger":"trade","held_item":"prism-scale"}', 254),
  -- Snivy -> Servine
  (495, 49500, 496, 49600, NULL, 5, 1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 17', '{"source_trigger":"level-up"}', 255),
  -- Servine -> Serperior
  (496, 49600, 497, 49700, NULL, 5, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 256),
  -- Tepig -> Pignite
  (498, 49800, 499, 49900, NULL, 5, 1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 17', '{"source_trigger":"level-up"}', 257),
  -- Pignite -> Emboar
  (499, 49900, 500, 50000, NULL, 5, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 258),
  -- Oshawott -> Dewott
  (501, 50100, 502, 50200, NULL, 5, 1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 17', '{"source_trigger":"level-up"}', 259),
  -- Dewott -> Samurott
  (502, 50200, 503, 50300, NULL, 5, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 260),
  -- Patrat -> Watchog
  (504, 50400, 505, 50500, NULL, 5, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20', '{"source_trigger":"level-up"}', 261),
  -- Lillipup -> Herdier
  (506, 50600, 507, 50700, NULL, 5, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 262),
  -- Herdier -> Stoutland
  (507, 50700, 508, 50800, NULL, 5, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 32', '{"source_trigger":"level-up"}', 263),
  -- Purrloin -> Liepard
  (509, 50900, 510, 51000, NULL, 5, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20', '{"source_trigger":"level-up"}', 264),
  -- Pansage -> Simisage
  (511, 51100, 512, 51200, NULL, 5, 2, NULL, 67, NULL, NULL, NULL, NULL, NULL, NULL, 'use Leaf Stone', '{"source_trigger":"use-item","item":"leaf-stone"}', 265),
  -- Pansear -> Simisear
  (513, 51300, 514, 51400, NULL, 5, 2, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, 'use Fire Stone', '{"source_trigger":"use-item","item":"fire-stone"}', 266),
  -- Panpour -> Simipour
  (515, 51500, 516, 51600, NULL, 5, 2, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, 'use Water Stone', '{"source_trigger":"use-item","item":"water-stone"}', 267),
  -- Munna -> Musharna
  (517, 51700, 518, 51800, NULL, 5, 2, NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, 'use Moon Stone', '{"source_trigger":"use-item","item":"moon-stone"}', 268),
  -- Pidove -> Tranquill
  (519, 51900, 520, 52000, NULL, 5, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 21', '{"source_trigger":"level-up"}', 269),
  -- Tranquill -> Unfezant
  (520, 52000, 521, 52100, NULL, 5, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 32', '{"source_trigger":"level-up"}', 270),
  -- Blitzle -> Zebstrika
  (522, 52200, 523, 52300, NULL, 5, 1, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 27', '{"source_trigger":"level-up"}', 271),
  -- Roggenrola -> Boldore
  (524, 52400, 525, 52500, NULL, 5, 1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 25', '{"source_trigger":"level-up"}', 272),
  -- Boldore -> Gigalith
  (525, 52500, 526, 52600, NULL, 5, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"source_trigger":"trade"}', 273),
  -- Woobat -> Swoobat
  (527, 52700, 528, 52800, NULL, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'friendship 220+', '{"source_trigger":"level-up","min_happiness":220}', 274),
  -- Drilbur -> Excadrill
  (529, 52900, 530, 53000, NULL, 5, 1, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 31', '{"source_trigger":"level-up"}', 275),
  -- Timburr -> Gurdurr
  (532, 53200, 533, 53300, NULL, 5, 1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 25', '{"source_trigger":"level-up"}', 276),
  -- Gurdurr -> Conkeldurr
  (533, 53300, 534, 53400, NULL, 5, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"source_trigger":"trade"}', 277),
  -- Tympole -> Palpitoad
  (535, 53500, 536, 53600, NULL, 5, 1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 25', '{"source_trigger":"level-up"}', 278),
  -- Palpitoad -> Seismitoad
  (536, 53600, 537, 53700, NULL, 5, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 279),
  -- Sewaddle -> Swadloon
  (540, 54000, 541, 54100, NULL, 5, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20', '{"source_trigger":"level-up"}', 280),
  -- Swadloon -> Leavanny
  (541, 54100, 542, 54200, NULL, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'friendship 220+', '{"source_trigger":"level-up","min_happiness":220}', 281),
  -- Venipede -> Whirlipede
  (543, 54300, 544, 54400, NULL, 5, 1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 22', '{"source_trigger":"level-up"}', 282),
  -- Whirlipede -> Scolipede
  (544, 54400, 545, 54500, NULL, 5, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 283),
  -- Cottonee -> Whimsicott
  (546, 54600, 547, 54700, NULL, 5, 2, NULL, 68, NULL, NULL, NULL, NULL, NULL, NULL, 'use Sun Stone', '{"source_trigger":"use-item","item":"sun-stone"}', 284),
  -- Petilil -> Lilligant
  (548, 54800, 549, 54900, NULL, 5, 2, NULL, 68, NULL, NULL, NULL, NULL, NULL, NULL, 'use Sun Stone', '{"source_trigger":"use-item","item":"sun-stone"}', 285),
  -- Sandile -> Krokorok
  (551, 55100, 552, 55200, NULL, 5, 1, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 29', '{"source_trigger":"level-up"}', 286),
  -- Krokorok -> Krookodile
  (552, 55200, 553, 55300, NULL, 5, 1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 40', '{"source_trigger":"level-up"}', 287),
  -- Darumaka -> Darmanitan
  (554, 55400, 555, 55500, NULL, 5, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 35', '{"source_trigger":"level-up"}', 288),
  -- Dwebble -> Crustle
  (557, 55700, 558, 55800, NULL, 5, 1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 34', '{"source_trigger":"level-up"}', 289),
  -- Scraggy -> Scrafty
  (559, 55900, 560, 56000, NULL, 5, 1, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 39', '{"source_trigger":"level-up"}', 290),
  -- Yamask -> Cofagrigus
  (562, 56200, 563, 56300, NULL, 5, 1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 34', '{"source_trigger":"level-up"}', 291),
  -- Tirtouga -> Carracosta
  (564, 56400, 565, 56500, NULL, 5, 1, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 37', '{"source_trigger":"level-up"}', 292),
  -- Archen -> Archeops
  (566, 56600, 567, 56700, NULL, 5, 1, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 37', '{"source_trigger":"level-up"}', 293),
  -- Trubbish -> Garbodor
  (568, 56800, 569, 56900, NULL, 5, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 294),
  -- Zorua -> Zoroark
  (570, 57000, 571, 57100, NULL, 5, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 295),
  -- Minccino -> Cinccino
  (572, 57200, 573, 57300, NULL, 5, 2, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, 'use Shiny Stone', '{"source_trigger":"use-item","item":"shiny-stone"}', 296),
  -- Gothita -> Gothorita
  (574, 57400, 575, 57500, NULL, 5, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 32', '{"source_trigger":"level-up"}', 297),
  -- Gothorita -> Gothitelle
  (575, 57500, 576, 57600, NULL, 5, 1, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 41', '{"source_trigger":"level-up"}', 298),
  -- Solosis -> Duosion
  (577, 57700, 578, 57800, NULL, 5, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 32', '{"source_trigger":"level-up"}', 299),
  -- Duosion -> Reuniclus
  (578, 57800, 579, 57900, NULL, 5, 1, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 41', '{"source_trigger":"level-up"}', 300),
  -- Ducklett -> Swanna
  (580, 58000, 581, 58100, NULL, 5, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 35', '{"source_trigger":"level-up"}', 301),
  -- Vanillite -> Vanillish
  (582, 58200, 583, 58300, NULL, 5, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 35', '{"source_trigger":"level-up"}', 302),
  -- Vanillish -> Vanilluxe
  (583, 58300, 584, 58400, NULL, 5, 1, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 47', '{"source_trigger":"level-up"}', 303),
  -- Deerling -> Sawsbuck
  (585, 58500, 586, 58600, NULL, 5, 1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 34', '{"source_trigger":"level-up"}', 304),
  -- Karrablast -> Escavalier
  (588, 58800, 589, 58900, NULL, 5, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'trade for Shelmet', '{"source_trigger":"trade","trade_species":"shelmet"}', 305),
  -- Foongus -> Amoonguss
  (590, 59000, 591, 59100, NULL, 5, 1, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 39', '{"source_trigger":"level-up"}', 306),
  -- Frillish -> Jellicent
  (592, 59200, 593, 59300, NULL, 5, 1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 40', '{"source_trigger":"level-up"}', 307),
  -- Joltik -> Galvantula
  (595, 59500, 596, 59600, NULL, 5, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 308),
  -- Ferroseed -> Ferrothorn
  (597, 59700, 598, 59800, NULL, 5, 1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 40', '{"source_trigger":"level-up"}', 309),
  -- Klink -> Klang
  (599, 59900, 600, 60000, NULL, 5, 1, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 38', '{"source_trigger":"level-up"}', 310),
  -- Klang -> Klinklang
  (600, 60000, 601, 60100, NULL, 5, 1, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 49', '{"source_trigger":"level-up"}', 311),
  -- Tynamo -> Eelektrik
  (602, 60200, 603, 60300, NULL, 5, 1, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 39', '{"source_trigger":"level-up"}', 312),
  -- Eelektrik -> Eelektross
  (603, 60300, 604, 60400, NULL, 5, 2, NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, 'use Thunder Stone', '{"source_trigger":"use-item","item":"thunder-stone"}', 313),
  -- Elgyem -> Beheeyem
  (605, 60500, 606, 60600, NULL, 5, 1, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 42', '{"source_trigger":"level-up"}', 314),
  -- Litwick -> Lampent
  (607, 60700, 608, 60800, NULL, 5, 1, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 41', '{"source_trigger":"level-up"}', 315),
  -- Lampent -> Chandelure
  (608, 60800, 609, 60900, NULL, 5, 2, NULL, 76, NULL, NULL, NULL, NULL, NULL, NULL, 'use Dusk Stone', '{"source_trigger":"use-item","item":"dusk-stone"}', 316),
  -- Axew -> Fraxure
  (610, 61000, 611, 61100, NULL, 5, 1, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 38', '{"source_trigger":"level-up"}', 317),
  -- Fraxure -> Haxorus
  (611, 61100, 612, 61200, NULL, 5, 1, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 48', '{"source_trigger":"level-up"}', 318),
  -- Cubchoo -> Beartic
  (613, 61300, 614, 61400, NULL, 5, 1, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 37', '{"source_trigger":"level-up"}', 319),
  -- Shelmet -> Accelgor
  (616, 61600, 617, 61700, NULL, 5, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'trade for Karrablast', '{"source_trigger":"trade","trade_species":"karrablast"}', 320),
  -- Mienfoo -> Mienshao
  (619, 61900, 620, 62000, NULL, 5, 1, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 50', '{"source_trigger":"level-up"}', 321),
  -- Golett -> Golurk
  (622, 62200, 623, 62300, NULL, 5, 1, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 43', '{"source_trigger":"level-up"}', 322),
  -- Pawniard -> Bisharp
  (624, 62400, 625, 62500, NULL, 5, 1, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 52', '{"source_trigger":"level-up"}', 323),
  -- Rufflet -> Braviary
  (627, 62700, 628, 62800, NULL, 5, 1, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 54', '{"source_trigger":"level-up"}', 324),
  -- Vullaby -> Mandibuzz
  (629, 62900, 630, 63000, NULL, 5, 1, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 54', '{"source_trigger":"level-up"}', 325),
  -- Deino -> Zweilous
  (633, 63300, 634, 63400, NULL, 5, 1, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 50', '{"source_trigger":"level-up"}', 326),
  -- Zweilous -> Hydreigon
  (634, 63400, 635, 63500, NULL, 5, 1, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 64', '{"source_trigger":"level-up"}', 327),
  -- Larvesta -> Volcarona
  (636, 63600, 637, 63700, NULL, 5, 1, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 59', '{"source_trigger":"level-up"}', 328);

-- ============================================================================
