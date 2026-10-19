-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Mega Stone and individual Mega Stone item pages.
-- Cross-check: Serebii item location pages and PokemonDB Mega Evolution pages where available.
-- Machine-readable sanity: PokeAPI item IDs.
-- Scope note: Mega Stones are held items kept for Pokémon biography and future battle-form support.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: Mega Stone catalog rows.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order)
VALUES
  -- Venusaurite
  (263, 'venusaurite', 'Venusaurite', 7, 6, 698, 263),
  -- Charizardite X
  (264, 'charizardite-x', 'Charizardite X', 7, 6, 699, 264),
  -- Charizardite Y
  (265, 'charizardite-y', 'Charizardite Y', 7, 6, 717, 265),
  -- Blastoisinite
  (266, 'blastoisinite', 'Blastoisinite', 7, 6, 700, 266),
  -- Beedrillite
  (267, 'beedrillite', 'Beedrillite', 7, 6, 811, 267),
  -- Pidgeotite
  (268, 'pidgeotite', 'Pidgeotite', 7, 6, 803, 268),
  -- Alakazite
  (269, 'alakazite', 'Alakazite', 7, 6, 718, 269),
  -- Slowbronite
  (270, 'slowbronite', 'Slowbronite', 7, 6, 801, 270),
  -- Gengarite
  (271, 'gengarite', 'Gengarite', 7, 6, 695, 271),
  -- Kangaskhanite
  (272, 'kangaskhanite', 'Kangaskhanite', 7, 6, 714, 272),
  -- Pinsirite
  (273, 'pinsirite', 'Pinsirite', 7, 6, 710, 273),
  -- Gyaradosite
  (274, 'gyaradosite', 'Gyaradosite', 7, 6, 715, 274),
  -- Aerodactylite
  (275, 'aerodactylite', 'Aerodactylite', 7, 6, 711, 275),
  -- Mewtwonite X
  (276, 'mewtwonite-x', 'Mewtwonite X', 7, 6, 701, 276),
  -- Mewtwonite Y
  (277, 'mewtwonite-y', 'Mewtwonite Y', 7, 6, 702, 277),
  -- Ampharosite
  (278, 'ampharosite', 'Ampharosite', 7, 6, 697, 278),
  -- Steelixite
  (279, 'steelixite', 'Steelixite', 7, 6, 802, 279),
  -- Scizorite
  (280, 'scizorite', 'Scizorite', 7, 6, 709, 280),
  -- Heracronite
  (281, 'heracronite', 'Heracronite', 7, 6, 719, 281),
  -- Houndoominite
  (282, 'houndoominite', 'Houndoominite', 7, 6, 705, 282),
  -- Tyranitarite
  (283, 'tyranitarite', 'Tyranitarite', 7, 6, 708, 283),
  -- Sceptilite
  (284, 'sceptilite', 'Sceptilite', 7, 6, 794, 284),
  -- Blazikenite
  (285, 'blazikenite', 'Blazikenite', 7, 6, 703, 285),
  -- Swampertite
  (286, 'swampertite', 'Swampertite', 7, 6, 793, 286),
  -- Gardevoirite
  (287, 'gardevoirite', 'Gardevoirite', 7, 6, 696, 287),
  -- Sablenite
  (288, 'sablenite', 'Sablenite', 7, 6, 795, 288),
  -- Mawilite
  (289, 'mawilite', 'Mawilite', 7, 6, 720, 289),
  -- Aggronite
  (290, 'aggronite', 'Aggronite', 7, 6, 706, 290),
  -- Medichamite
  (291, 'medichamite', 'Medichamite', 7, 6, 704, 291),
  -- Manectite
  (292, 'manectite', 'Manectite', 7, 6, 721, 292),
  -- Sharpedonite
  (293, 'sharpedonite', 'Sharpedonite', 7, 6, 800, 293),
  -- Cameruptite
  (294, 'cameruptite', 'Cameruptite', 7, 6, 808, 294),
  -- Altarianite
  (295, 'altarianite', 'Altarianite', 7, 6, 796, 295),
  -- Banettite
  (296, 'banettite', 'Banettite', 7, 6, 707, 296),
  -- Absolite
  (297, 'absolite', 'Absolite', 7, 6, 716, 297),
  -- Glalitite
  (298, 'glalitite', 'Glalitite', 7, 6, 804, 298),
  -- Salamencite
  (299, 'salamencite', 'Salamencite', 7, 6, 810, 299),
  -- Metagrossite
  (300, 'metagrossite', 'Metagrossite', 7, 6, 799, 300),
  -- Latiasite
  (301, 'latiasite', 'Latiasite', 7, 6, 760, 301),
  -- Latiosite
  (302, 'latiosite', 'Latiosite', 7, 6, 761, 302),
  -- Lopunnite
  (303, 'lopunnite', 'Lopunnite', 7, 6, 809, 303),
  -- Garchompite
  (304, 'garchompite', 'Garchompite', 7, 6, 722, 304),
  -- Lucarionite
  (305, 'lucarionite', 'Lucarionite', 7, 6, 712, 305),
  -- Abomasite
  (306, 'abomasite', 'Abomasite', 7, 6, 713, 306),
  -- Galladite
  (307, 'galladite', 'Galladite', 7, 6, 797, 307),
  -- Audinite
  (308, 'audinite', 'Audinite', 7, 6, 798, 308),
  -- Diancite
  (309, 'diancite', 'Diancite', 7, 6, 805, 309),
  -- Clefablite
  (458, 'clefablite', 'Clefablite', 7, 9, 2559, 458),
  -- Victreebelite
  (459, 'victreebelite', 'Victreebelite', 7, 9, 2560, 459),
  -- Starminite
  (460, 'starminite', 'Starminite', 7, 9, 2561, 460),
  -- Dragoninite
  (461, 'dragoninite', 'Dragoninite', 7, 9, 2562, 461),
  -- Meganiumite
  (462, 'meganiumite', 'Meganiumite', 7, 9, 2563, 462),
  -- Feraligite
  (463, 'feraligite', 'Feraligite', 7, 9, 2564, 463),
  -- Skarmorite
  (464, 'skarmorite', 'Skarmorite', 7, 9, 2565, 464),
  -- Froslassite
  (465, 'froslassite', 'Froslassite', 7, 9, 2566, 465),
  -- Heatranite
  (466, 'heatranite', 'Heatranite', 7, 9, 2567, 466),
  -- Darkranite
  (467, 'darkranite', 'Darkranite', 7, 9, 2568, 467),
  -- Emboarite
  (468, 'emboarite', 'Emboarite', 7, 9, 2569, 468),
  -- Excadrite
  (469, 'excadrite', 'Excadrite', 7, 9, 2570, 469),
  -- Scolipite
  (470, 'scolipite', 'Scolipite', 7, 9, 2571, 470),
  -- Scraftinite
  (471, 'scraftinite', 'Scraftinite', 7, 9, 2572, 471),
  -- Eelektrossite
  (472, 'eelektrossite', 'Eelektrossite', 7, 9, 2573, 472),
  -- Chandelurite
  (473, 'chandelurite', 'Chandelurite', 7, 9, 2574, 473),
  -- Chesnaughtite
  (474, 'chesnaughtite', 'Chesnaughtite', 7, 9, 2575, 474),
  -- Delphoxite
  (475, 'delphoxite', 'Delphoxite', 7, 9, 2576, 475),
  -- Greninjite
  (476, 'greninjite', 'Greninjite', 7, 9, 2577, 476),
  -- Pyroarite
  (477, 'pyroarite', 'Pyroarite', 7, 9, 2578, 477),
  -- Floettite
  (478, 'floettite', 'Floettite', 7, 9, 2579, 478),
  -- Malamarite
  (479, 'malamarite', 'Malamarite', 7, 9, 2580, 479),
  -- Barbaracite
  (480, 'barbaracite', 'Barbaracite', 7, 9, 2581, 480),
  -- Dragalgite
  (481, 'dragalgite', 'Dragalgite', 7, 9, 2582, 481),
  -- Hawluchanite
  (482, 'hawluchanite', 'Hawluchanite', 7, 9, 2583, 482),
  -- Zygardite
  (483, 'zygardite', 'Zygardite', 7, 9, 2584, 483),
  -- Drampanite
  (484, 'drampanite', 'Drampanite', 7, 9, 2585, 484),
  -- Zeraorite
  (485, 'zeraorite', 'Zeraorite', 7, 9, 2586, 485),
  -- Falinksite
  (486, 'falinksite', 'Falinksite', 7, 9, 2587, 486),
  -- Raichunite X
  (487, 'raichunite-x', 'Raichunite X', 7, 9, 2635, 487),
  -- Raichunite Y
  (488, 'raichunite-y', 'Raichunite Y', 7, 9, 2636, 488),
  -- Chimechite
  (489, 'chimechite', 'Chimechite', 7, 9, 2637, 489),
  -- Absolite Z
  (490, 'absolite-z', 'Absolite Z', 7, 9, 2638, 490),
  -- Staraptite
  (491, 'staraptite', 'Staraptite', 7, 9, 2639, 491),
  -- Garchompite Z
  (492, 'garchompite-z', 'Garchompite Z', 7, 9, 2640, 492),
  -- Lucarionite Z
  (493, 'lucarionite-z', 'Lucarionite Z', 7, 9, 2641, 493),
  -- Golurkite
  (494, 'golurkite', 'Golurkite', 7, 9, 2642, 494),
  -- Meowsticite
  (495, 'meowsticite', 'Meowsticite', 7, 9, 2643, 495),
  -- Crabominite
  (496, 'crabominite', 'Crabominite', 7, 9, 2644, 496),
  -- Golisopite
  (497, 'golisopite', 'Golisopite', 7, 9, 2645, 497),
  -- Magearnite
  (498, 'magearnite', 'Magearnite', 7, 9, 2646, 498),
  -- Scovillainite
  (499, 'scovillainite', 'Scovillainite', 7, 9, 2647, 499),
  -- Baxcalibrite
  (500, 'baxcalibrite', 'Baxcalibrite', 7, 9, 2648, 500),
  -- Tatsugirinite
  (501, 'tatsugirinite', 'Tatsugirinite', 7, 9, 2649, 501),
  -- Glimmoranite
  (502, 'glimmoranite', 'Glimmoranite', 7, 9, 2650, 502);
