-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Mega Stone and individual Mega Stone item pages.
-- Cross-check: Serebii item location pages and PokemonDB Mega Evolution pages where available.
-- Machine-readable sanity: PokeAPI item IDs.
-- Scope note: Mega Stones are held items kept for Pokémon biography and future battle-form support.
-- Effect summaries: own-words summaries of each held item's behaviour in recent games, checked against Bulbapedia and Serebii item pages.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: Mega Stone catalog rows.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order, effect_summary)
VALUES
  -- Venusaurite
  (263, 'venusaurite', 'Venusaurite', 7, 6, 698, 263, 'Lets Venusaur Mega Evolve into Mega Venusaur during battle.'),
  -- Charizardite X
  (264, 'charizardite-x', 'Charizardite X', 7, 6, 699, 264, 'Lets Charizard Mega Evolve into Mega Charizard X during battle.'),
  -- Charizardite Y
  (265, 'charizardite-y', 'Charizardite Y', 7, 6, 717, 265, 'Lets Charizard Mega Evolve into Mega Charizard Y during battle.'),
  -- Blastoisinite
  (266, 'blastoisinite', 'Blastoisinite', 7, 6, 700, 266, 'Lets Blastoise Mega Evolve into Mega Blastoise during battle.'),
  -- Beedrillite
  (267, 'beedrillite', 'Beedrillite', 7, 6, 811, 267, 'Lets Beedrill Mega Evolve into Mega Beedrill during battle.'),
  -- Pidgeotite
  (268, 'pidgeotite', 'Pidgeotite', 7, 6, 803, 268, 'Lets Pidgeot Mega Evolve into Mega Pidgeot during battle.'),
  -- Alakazite
  (269, 'alakazite', 'Alakazite', 7, 6, 718, 269, 'Lets Alakazam Mega Evolve into Mega Alakazam during battle.'),
  -- Slowbronite
  (270, 'slowbronite', 'Slowbronite', 7, 6, 801, 270, 'Lets Slowbro Mega Evolve into Mega Slowbro during battle.'),
  -- Gengarite
  (271, 'gengarite', 'Gengarite', 7, 6, 695, 271, 'Lets Gengar Mega Evolve into Mega Gengar during battle.'),
  -- Kangaskhanite
  (272, 'kangaskhanite', 'Kangaskhanite', 7, 6, 714, 272, 'Lets Kangaskhan Mega Evolve into Mega Kangaskhan during battle.'),
  -- Pinsirite
  (273, 'pinsirite', 'Pinsirite', 7, 6, 710, 273, 'Lets Pinsir Mega Evolve into Mega Pinsir during battle.'),
  -- Gyaradosite
  (274, 'gyaradosite', 'Gyaradosite', 7, 6, 715, 274, 'Lets Gyarados Mega Evolve into Mega Gyarados during battle.'),
  -- Aerodactylite
  (275, 'aerodactylite', 'Aerodactylite', 7, 6, 711, 275, 'Lets Aerodactyl Mega Evolve into Mega Aerodactyl during battle.'),
  -- Mewtwonite X
  (276, 'mewtwonite-x', 'Mewtwonite X', 7, 6, 701, 276, 'Lets Mewtwo Mega Evolve into Mega Mewtwo X during battle.'),
  -- Mewtwonite Y
  (277, 'mewtwonite-y', 'Mewtwonite Y', 7, 6, 702, 277, 'Lets Mewtwo Mega Evolve into Mega Mewtwo Y during battle.'),
  -- Ampharosite
  (278, 'ampharosite', 'Ampharosite', 7, 6, 697, 278, 'Lets Ampharos Mega Evolve into Mega Ampharos during battle.'),
  -- Steelixite
  (279, 'steelixite', 'Steelixite', 7, 6, 802, 279, 'Lets Steelix Mega Evolve into Mega Steelix during battle.'),
  -- Scizorite
  (280, 'scizorite', 'Scizorite', 7, 6, 709, 280, 'Lets Scizor Mega Evolve into Mega Scizor during battle.'),
  -- Heracronite
  (281, 'heracronite', 'Heracronite', 7, 6, 719, 281, 'Lets Heracross Mega Evolve into Mega Heracross during battle.'),
  -- Houndoominite
  (282, 'houndoominite', 'Houndoominite', 7, 6, 705, 282, 'Lets Houndoom Mega Evolve into Mega Houndoom during battle.'),
  -- Tyranitarite
  (283, 'tyranitarite', 'Tyranitarite', 7, 6, 708, 283, 'Lets Tyranitar Mega Evolve into Mega Tyranitar during battle.'),
  -- Sceptilite
  (284, 'sceptilite', 'Sceptilite', 7, 6, 794, 284, 'Lets Sceptile Mega Evolve into Mega Sceptile during battle.'),
  -- Blazikenite
  (285, 'blazikenite', 'Blazikenite', 7, 6, 703, 285, 'Lets Blaziken Mega Evolve into Mega Blaziken during battle.'),
  -- Swampertite
  (286, 'swampertite', 'Swampertite', 7, 6, 793, 286, 'Lets Swampert Mega Evolve into Mega Swampert during battle.'),
  -- Gardevoirite
  (287, 'gardevoirite', 'Gardevoirite', 7, 6, 696, 287, 'Lets Gardevoir Mega Evolve into Mega Gardevoir during battle.'),
  -- Sablenite
  (288, 'sablenite', 'Sablenite', 7, 6, 795, 288, 'Lets Sableye Mega Evolve into Mega Sableye during battle.'),
  -- Mawilite
  (289, 'mawilite', 'Mawilite', 7, 6, 720, 289, 'Lets Mawile Mega Evolve into Mega Mawile during battle.'),
  -- Aggronite
  (290, 'aggronite', 'Aggronite', 7, 6, 706, 290, 'Lets Aggron Mega Evolve into Mega Aggron during battle.'),
  -- Medichamite
  (291, 'medichamite', 'Medichamite', 7, 6, 704, 291, 'Lets Medicham Mega Evolve into Mega Medicham during battle.'),
  -- Manectite
  (292, 'manectite', 'Manectite', 7, 6, 721, 292, 'Lets Manectric Mega Evolve into Mega Manectric during battle.'),
  -- Sharpedonite
  (293, 'sharpedonite', 'Sharpedonite', 7, 6, 800, 293, 'Lets Sharpedo Mega Evolve into Mega Sharpedo during battle.'),
  -- Cameruptite
  (294, 'cameruptite', 'Cameruptite', 7, 6, 808, 294, 'Lets Camerupt Mega Evolve into Mega Camerupt during battle.'),
  -- Altarianite
  (295, 'altarianite', 'Altarianite', 7, 6, 796, 295, 'Lets Altaria Mega Evolve into Mega Altaria during battle.'),
  -- Banettite
  (296, 'banettite', 'Banettite', 7, 6, 707, 296, 'Lets Banette Mega Evolve into Mega Banette during battle.'),
  -- Absolite
  (297, 'absolite', 'Absolite', 7, 6, 716, 297, 'Lets Absol Mega Evolve into Mega Absol during battle.'),
  -- Glalitite
  (298, 'glalitite', 'Glalitite', 7, 6, 804, 298, 'Lets Glalie Mega Evolve into Mega Glalie during battle.'),
  -- Salamencite
  (299, 'salamencite', 'Salamencite', 7, 6, 810, 299, 'Lets Salamence Mega Evolve into Mega Salamence during battle.'),
  -- Metagrossite
  (300, 'metagrossite', 'Metagrossite', 7, 6, 799, 300, 'Lets Metagross Mega Evolve into Mega Metagross during battle.'),
  -- Latiasite
  (301, 'latiasite', 'Latiasite', 7, 6, 760, 301, 'Lets Latias Mega Evolve into Mega Latias during battle.'),
  -- Latiosite
  (302, 'latiosite', 'Latiosite', 7, 6, 761, 302, 'Lets Latios Mega Evolve into Mega Latios during battle.'),
  -- Lopunnite
  (303, 'lopunnite', 'Lopunnite', 7, 6, 809, 303, 'Lets Lopunny Mega Evolve into Mega Lopunny during battle.'),
  -- Garchompite
  (304, 'garchompite', 'Garchompite', 7, 6, 722, 304, 'Lets Garchomp Mega Evolve into Mega Garchomp during battle.'),
  -- Lucarionite
  (305, 'lucarionite', 'Lucarionite', 7, 6, 712, 305, 'Lets Lucario Mega Evolve into Mega Lucario during battle.'),
  -- Abomasite
  (306, 'abomasite', 'Abomasite', 7, 6, 713, 306, 'Lets Abomasnow Mega Evolve into Mega Abomasnow during battle.'),
  -- Galladite
  (307, 'galladite', 'Galladite', 7, 6, 797, 307, 'Lets Gallade Mega Evolve into Mega Gallade during battle.'),
  -- Audinite
  (308, 'audinite', 'Audinite', 7, 6, 798, 308, 'Lets Audino Mega Evolve into Mega Audino during battle.'),
  -- Diancite
  (309, 'diancite', 'Diancite', 7, 6, 805, 309, 'Lets Diancie Mega Evolve into Mega Diancie during battle.'),
  -- Clefablite
  (458, 'clefablite', 'Clefablite', 7, 9, 2559, 458, 'Lets Clefable Mega Evolve into Mega Clefable during battle.'),
  -- Victreebelite
  (459, 'victreebelite', 'Victreebelite', 7, 9, 2560, 459, 'Lets Victreebel Mega Evolve into Mega Victreebel during battle.'),
  -- Starminite
  (460, 'starminite', 'Starminite', 7, 9, 2561, 460, 'Lets Starmie Mega Evolve into Mega Starmie during battle.'),
  -- Dragoninite
  (461, 'dragoninite', 'Dragoninite', 7, 9, 2562, 461, 'Lets Dragonite Mega Evolve into Mega Dragonite during battle.'),
  -- Meganiumite
  (462, 'meganiumite', 'Meganiumite', 7, 9, 2563, 462, 'Lets Meganium Mega Evolve into Mega Meganium during battle.'),
  -- Feraligite
  (463, 'feraligite', 'Feraligite', 7, 9, 2564, 463, 'Lets Feraligatr Mega Evolve into Mega Feraligatr during battle.'),
  -- Skarmorite
  (464, 'skarmorite', 'Skarmorite', 7, 9, 2565, 464, 'Lets Skarmory Mega Evolve into Mega Skarmory during battle.'),
  -- Froslassite
  (465, 'froslassite', 'Froslassite', 7, 9, 2566, 465, 'Lets Froslass Mega Evolve into Mega Froslass during battle.'),
  -- Heatranite
  (466, 'heatranite', 'Heatranite', 7, 9, 2567, 466, 'Lets Heatran Mega Evolve into Mega Heatran during battle.'),
  -- Darkranite
  (467, 'darkranite', 'Darkranite', 7, 9, 2568, 467, 'Lets Darkrai Mega Evolve into Mega Darkrai during battle.'),
  -- Emboarite
  (468, 'emboarite', 'Emboarite', 7, 9, 2569, 468, 'Lets Emboar Mega Evolve into Mega Emboar during battle.'),
  -- Excadrite
  (469, 'excadrite', 'Excadrite', 7, 9, 2570, 469, 'Lets Excadrill Mega Evolve into Mega Excadrill during battle.'),
  -- Scolipite
  (470, 'scolipite', 'Scolipite', 7, 9, 2571, 470, 'Lets Scolipede Mega Evolve into Mega Scolipede during battle.'),
  -- Scraftinite
  (471, 'scraftinite', 'Scraftinite', 7, 9, 2572, 471, 'Lets Scrafty Mega Evolve into Mega Scrafty during battle.'),
  -- Eelektrossite
  (472, 'eelektrossite', 'Eelektrossite', 7, 9, 2573, 472, 'Lets Eelektross Mega Evolve into Mega Eelektross during battle.'),
  -- Chandelurite
  (473, 'chandelurite', 'Chandelurite', 7, 9, 2574, 473, 'Lets Chandelure Mega Evolve into Mega Chandelure during battle.'),
  -- Chesnaughtite
  (474, 'chesnaughtite', 'Chesnaughtite', 7, 9, 2575, 474, 'Lets Chesnaught Mega Evolve into Mega Chesnaught during battle.'),
  -- Delphoxite
  (475, 'delphoxite', 'Delphoxite', 7, 9, 2576, 475, 'Lets Delphox Mega Evolve into Mega Delphox during battle.'),
  -- Greninjite
  (476, 'greninjite', 'Greninjite', 7, 9, 2577, 476, 'Lets Greninja Mega Evolve into Mega Greninja during battle.'),
  -- Pyroarite
  (477, 'pyroarite', 'Pyroarite', 7, 9, 2578, 477, 'Lets Pyroar Mega Evolve into Mega Pyroar during battle.'),
  -- Floettite
  (478, 'floettite', 'Floettite', 7, 9, 2579, 478, 'Lets Eternal Flower Floette Mega Evolve into Mega Floette during battle.'),
  -- Malamarite
  (479, 'malamarite', 'Malamarite', 7, 9, 2580, 479, 'Lets Malamar Mega Evolve into Mega Malamar during battle.'),
  -- Barbaracite
  (480, 'barbaracite', 'Barbaracite', 7, 9, 2581, 480, 'Lets Barbaracle Mega Evolve into Mega Barbaracle during battle.'),
  -- Dragalgite
  (481, 'dragalgite', 'Dragalgite', 7, 9, 2582, 481, 'Lets Dragalge Mega Evolve into Mega Dragalge during battle.'),
  -- Hawluchanite
  (482, 'hawluchanite', 'Hawluchanite', 7, 9, 2583, 482, 'Lets Hawlucha Mega Evolve into Mega Hawlucha during battle.'),
  -- Zygardite
  (483, 'zygardite', 'Zygardite', 7, 9, 2584, 483, 'Lets Zygarde Mega Evolve into Mega Zygarde during battle.'),
  -- Drampanite
  (484, 'drampanite', 'Drampanite', 7, 9, 2585, 484, 'Lets Drampa Mega Evolve into Mega Drampa during battle.'),
  -- Zeraorite
  (485, 'zeraorite', 'Zeraorite', 7, 9, 2586, 485, 'Lets Zeraora Mega Evolve into Mega Zeraora during battle.'),
  -- Falinksite
  (486, 'falinksite', 'Falinksite', 7, 9, 2587, 486, 'Lets Falinks Mega Evolve into Mega Falinks during battle.'),
  -- Raichunite X
  (487, 'raichunite-x', 'Raichunite X', 7, 9, 2635, 487, 'Lets Raichu Mega Evolve into Mega Raichu X during battle.'),
  -- Raichunite Y
  (488, 'raichunite-y', 'Raichunite Y', 7, 9, 2636, 488, 'Lets Raichu Mega Evolve into Mega Raichu Y during battle.'),
  -- Chimechite
  (489, 'chimechite', 'Chimechite', 7, 9, 2637, 489, 'Lets Chimecho Mega Evolve into Mega Chimecho during battle.'),
  -- Absolite Z
  (490, 'absolite-z', 'Absolite Z', 7, 9, 2638, 490, 'Lets Absol Mega Evolve into Mega Absol Z during battle.'),
  -- Staraptite
  (491, 'staraptite', 'Staraptite', 7, 9, 2639, 491, 'Lets Staraptor Mega Evolve into Mega Staraptor during battle.'),
  -- Garchompite Z
  (492, 'garchompite-z', 'Garchompite Z', 7, 9, 2640, 492, 'Lets Garchomp Mega Evolve into Mega Garchomp Z during battle.'),
  -- Lucarionite Z
  (493, 'lucarionite-z', 'Lucarionite Z', 7, 9, 2641, 493, 'Lets Lucario Mega Evolve into Mega Lucario Z during battle.'),
  -- Golurkite
  (494, 'golurkite', 'Golurkite', 7, 9, 2642, 494, 'Lets Golurk Mega Evolve into Mega Golurk during battle.'),
  -- Meowsticite
  (495, 'meowsticite', 'Meowsticite', 7, 9, 2643, 495, 'Lets Meowstic Mega Evolve into Mega Meowstic during battle.'),
  -- Crabominite
  (496, 'crabominite', 'Crabominite', 7, 9, 2644, 496, 'Lets Crabominable Mega Evolve into Mega Crabominable during battle.'),
  -- Golisopite
  (497, 'golisopite', 'Golisopite', 7, 9, 2645, 497, 'Lets Golisopod Mega Evolve into Mega Golisopod during battle.'),
  -- Magearnite
  (498, 'magearnite', 'Magearnite', 7, 9, 2646, 498, 'Lets Magearna Mega Evolve into Mega Magearna during battle.'),
  -- Scovillainite
  (499, 'scovillainite', 'Scovillainite', 7, 9, 2647, 499, 'Lets Scovillain Mega Evolve into Mega Scovillain during battle.'),
  -- Baxcalibrite
  (500, 'baxcalibrite', 'Baxcalibrite', 7, 9, 2648, 500, 'Lets Baxcalibur Mega Evolve into Mega Baxcalibur during battle.'),
  -- Tatsugirinite
  (501, 'tatsugirinite', 'Tatsugirinite', 7, 9, 2649, 501, 'Lets Tatsugiri Mega Evolve into Mega Tatsugiri during battle.'),
  -- Glimmoranite
  (502, 'glimmoranite', 'Glimmoranite', 7, 9, 2650, 502, 'Lets Glimmora Mega Evolve into Mega Glimmora during battle.');
