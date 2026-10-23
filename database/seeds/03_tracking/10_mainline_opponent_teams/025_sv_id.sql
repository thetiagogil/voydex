-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii The Indigo Disk Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Carmine's lead pair: the game's trainer data, matching Serebii.
-- Carmine, Kieran, Nemona and Arven & Penny battles: Bulbapedia, cross-checked with Serebii.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Blueberry League and Pecharunt: cross-checked with Bulbapedia; Kieran's slot order is Bulbapedia's.
-- Terapagos: cross-checked with Prima Games.
-- Battle forms: Tera Shift puts Terapagos in its Terastal Form in every battle; the
-- final battle is against its Stellar Form.
-- Scope: Pokémon The Indigo Disk Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each The Indigo Disk opponent uses in each Story battle, by
-- slot. A team that depends on your starter is given once per starter.
-- ============================================================================

INSERT INTO tracking.mainline_opponent_team_members (
  milestone_id,
  opponent_id,
  version_group_id,
  game_id,
  decision_milestone_id,
  decision_option_slug,
  variant_slug,
  variant_label,
  slot,
  species_id,
  form_id,
  level,
  held_item_id,
  tera_type_id,
  dynamaxes
) VALUES
  -- Crispin 1: Rotom (Heat) Lv. 77
  (250002, 25001, 25, NULL, NULL, NULL, NULL, NULL, 1, 479, 47901, 77, NULL, NULL, FALSE),
  -- Crispin 2: Talonflame Lv. 77
  (250002, 25001, 25, NULL, NULL, NULL, NULL, NULL, 2, 663, 66300, 77, NULL, NULL, FALSE),
  -- Crispin 3: Exeggutor Lv. 78
  (250002, 25001, 25, NULL, NULL, NULL, NULL, NULL, 3, 103, 10300, 78, NULL, NULL, FALSE),
  -- Crispin 4: Camerupt Lv. 78
  (250002, 25001, 25, NULL, NULL, NULL, NULL, NULL, 4, 323, 32300, 78, NULL, NULL, FALSE),
  -- Crispin 5: Magmortar Lv. 78
  (250002, 25001, 25, NULL, NULL, NULL, NULL, NULL, 5, 467, 46700, 78, NULL, NULL, FALSE),
  -- Crispin 6: Blaziken Lv. 79, Tera Fire, holds Assault Vest
  (250002, 25001, 25, NULL, NULL, NULL, NULL, NULL, 6, 257, 25700, 79, 373, 2, FALSE),
  -- Amarys 1: Skarmory Lv. 78
  (250003, 25002, 25, NULL, NULL, NULL, NULL, NULL, 1, 227, 22700, 78, NULL, NULL, FALSE),
  -- Amarys 2: Alolan Dugtrio Lv. 78
  (250003, 25002, 25, NULL, NULL, NULL, NULL, NULL, 2, 51, 5101, 78, NULL, NULL, FALSE),
  -- Amarys 3: Scizor Lv. 79
  (250003, 25002, 25, NULL, NULL, NULL, NULL, NULL, 3, 212, 21200, 79, NULL, NULL, FALSE),
  -- Amarys 4: Reuniclus Lv. 79
  (250003, 25002, 25, NULL, NULL, NULL, NULL, NULL, 4, 579, 57900, 79, NULL, NULL, FALSE),
  -- Amarys 5: Empoleon Lv. 79
  (250003, 25002, 25, NULL, NULL, NULL, NULL, NULL, 5, 395, 39500, 79, NULL, NULL, FALSE),
  -- Amarys 6: Metagross Lv. 80, Tera Steel, holds Expert Belt
  (250003, 25002, 25, NULL, NULL, NULL, NULL, NULL, 6, 376, 37600, 80, 391, 17, FALSE),
  -- Lacey 1: Whimsicott Lv. 78
  (250004, 25003, 25, NULL, NULL, NULL, NULL, NULL, 1, 547, 54700, 78, NULL, NULL, FALSE),
  -- Lacey 2: Granbull Lv. 78
  (250004, 25003, 25, NULL, NULL, NULL, NULL, NULL, 2, 210, 21000, 78, NULL, NULL, FALSE),
  -- Lacey 3: Primarina Lv. 79
  (250004, 25003, 25, NULL, NULL, NULL, NULL, NULL, 3, 730, 73000, 79, NULL, NULL, FALSE),
  -- Lacey 4: Galarian Slowbro Lv. 79
  (250004, 25003, 25, NULL, NULL, NULL, NULL, NULL, 4, 80, 8002, 79, NULL, NULL, FALSE),
  -- Lacey 5: Alcremie (Ruby Swirl) Lv. 79
  (250004, 25003, 25, NULL, NULL, NULL, NULL, NULL, 5, 869, 86907, 79, NULL, NULL, FALSE),
  -- Lacey 6: Excadrill Lv. 80, Tera Fairy, holds Assault Vest
  (250004, 25003, 25, NULL, NULL, NULL, NULL, NULL, 6, 530, 53000, 80, 373, 18, FALSE),
  -- Drayton 1: Dragonite Lv. 78
  (250005, 25004, 25, NULL, NULL, NULL, NULL, NULL, 1, 149, 14900, 78, NULL, NULL, FALSE),
  -- Drayton 2: Flygon Lv. 78
  (250005, 25004, 25, NULL, NULL, NULL, NULL, NULL, 2, 330, 33000, 78, NULL, NULL, FALSE),
  -- Drayton 3: Haxorus Lv. 79
  (250005, 25004, 25, NULL, NULL, NULL, NULL, NULL, 3, 612, 61200, 79, NULL, NULL, FALSE),
  -- Drayton 4: Sceptile Lv. 79
  (250005, 25004, 25, NULL, NULL, NULL, NULL, NULL, 4, 254, 25400, 79, NULL, NULL, FALSE),
  -- Drayton 5: Kingdra Lv. 79
  (250005, 25004, 25, NULL, NULL, NULL, NULL, NULL, 5, 230, 23000, 79, NULL, NULL, FALSE),
  -- Drayton 6: Archaludon Lv. 80, Tera Dragon, holds Assault Vest
  (250005, 25004, 25, NULL, NULL, NULL, NULL, NULL, 6, 1018, 101800, 80, 373, 15, FALSE),
  -- Kieran 1: Dragonite Lv. 80
  (250006, 25005, 25, NULL, NULL, NULL, NULL, NULL, 1, 149, 14900, 80, NULL, NULL, FALSE),
  -- Kieran 2: Politoed Lv. 80
  (250006, 25005, 25, NULL, NULL, NULL, NULL, NULL, 2, 186, 18600, 80, NULL, NULL, FALSE),
  -- Kieran 3: Porygon-Z Lv. 81
  (250006, 25005, 25, NULL, NULL, NULL, NULL, NULL, 3, 474, 47400, 81, NULL, NULL, FALSE),
  -- Kieran 4: Grimmsnarl Lv. 81
  (250006, 25005, 25, NULL, NULL, NULL, NULL, NULL, 4, 861, 86100, 81, NULL, NULL, FALSE),
  -- Kieran 5: Incineroar Lv. 81
  (250006, 25005, 25, NULL, NULL, NULL, NULL, NULL, 5, 727, 72700, 81, NULL, NULL, FALSE),
  -- Kieran 6: Hydrapple Lv. 82, Tera Fighting, holds Assault Vest
  (250006, 25005, 25, NULL, NULL, NULL, NULL, NULL, 6, 1019, 101900, 82, 373, 7, FALSE),
  -- Terapagos 1: Terapagos (Stellar Form) Lv. 85, Tera Stellar
  (250008, 25006, 25, NULL, NULL, NULL, NULL, NULL, 1, 1024, 102402, 85, NULL, 19, FALSE),
  -- Pecharunt 1: Pecharunt Lv. 88
  (250009, 25007, 25, NULL, NULL, NULL, NULL, NULL, 1, 1025, 102500, 88, NULL, NULL, FALSE),
  -- Carmine, Arrive at Blueberry Academy 1: Mightyena Lv. 74
  (250001, 25008, 25, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 74, NULL, NULL, FALSE),
  -- Carmine, Arrive at Blueberry Academy 2: Toucannon Lv. 74
  (250001, 25008, 25, NULL, NULL, NULL, NULL, NULL, 2, 733, 73300, 74, NULL, NULL, FALSE),
  -- Carmine, Arrive at Blueberry Academy 3: Scrafty Lv. 74
  (250001, 25008, 25, NULL, NULL, NULL, NULL, NULL, 3, 560, 56000, 74, NULL, NULL, FALSE),
  -- Carmine, Arrive at Blueberry Academy 4: Sinistcha Lv. 75, Tera Grass, holds Occa Berry
  (250001, 25008, 25, NULL, NULL, NULL, NULL, NULL, 4, 1013, 101300, 75, 213, 5, FALSE),
  -- Kieran, Terapagos Battle 1: Terapagos (Terastal Form) Lv. 85
  (250008, 25009, 25, NULL, NULL, NULL, NULL, NULL, 1, 1024, 102401, 85, NULL, NULL, FALSE),
  -- Arven & Penny, Mochi Mayhem 1: Greedent Lv. 82
  (250009, 25010, 25, NULL, NULL, NULL, NULL, NULL, 1, 820, 82000, 82, NULL, NULL, FALSE),
  -- Arven & Penny, Mochi Mayhem 2: Cloyster Lv. 82
  (250009, 25010, 25, NULL, NULL, NULL, NULL, NULL, 2, 91, 9100, 82, NULL, NULL, FALSE),
  -- Arven & Penny, Mochi Mayhem 3: Mabosstiff Lv. 83
  (250009, 25010, 25, NULL, NULL, NULL, NULL, NULL, 3, 943, 94300, 83, NULL, NULL, FALSE),
  -- Arven & Penny, Mochi Mayhem 4: Umbreon Lv. 84
  (250009, 25010, 25, NULL, NULL, NULL, NULL, NULL, 4, 197, 19700, 84, NULL, NULL, FALSE),
  -- Arven & Penny, Mochi Mayhem 5: Leafeon Lv. 84
  (250009, 25010, 25, NULL, NULL, NULL, NULL, NULL, 5, 470, 47000, 84, NULL, NULL, FALSE),
  -- Arven & Penny, Mochi Mayhem 6: Sylveon Lv. 85
  (250009, 25010, 25, NULL, NULL, NULL, NULL, NULL, 6, 700, 70000, 85, NULL, NULL, FALSE),
  -- Nemona (You chose Sprigatito in Scarlet / Violet), Mochi Mayhem 1: Lycanroc Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-sprigatito', 'You chose Sprigatito in Scarlet / Violet', 1, 745, 74500, 86, NULL, NULL, FALSE),
  -- Nemona (You chose Sprigatito in Scarlet / Violet), Mochi Mayhem 2: Kommo-o Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-sprigatito', 'You chose Sprigatito in Scarlet / Violet', 2, 784, 78400, 86, NULL, NULL, FALSE),
  -- Nemona (You chose Sprigatito in Scarlet / Violet), Mochi Mayhem 3: Goodra Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-sprigatito', 'You chose Sprigatito in Scarlet / Violet', 3, 706, 70600, 86, NULL, NULL, FALSE),
  -- Nemona (You chose Sprigatito in Scarlet / Violet), Mochi Mayhem 4: Ribombee Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-sprigatito', 'You chose Sprigatito in Scarlet / Violet', 4, 743, 74300, 86, NULL, NULL, FALSE),
  -- Nemona (You chose Sprigatito in Scarlet / Violet), Mochi Mayhem 5: Pawmot Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-sprigatito', 'You chose Sprigatito in Scarlet / Violet', 5, 923, 92300, 86, NULL, NULL, FALSE),
  -- Nemona (You chose Sprigatito in Scarlet / Violet), Mochi Mayhem 6: Quaquaval Lv. 87, Tera Fighting
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-sprigatito', 'You chose Sprigatito in Scarlet / Violet', 6, 914, 91400, 87, NULL, 7, FALSE),
  -- Nemona (You chose Fuecoco in Scarlet / Violet), Mochi Mayhem 1: Lycanroc Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-fuecoco', 'You chose Fuecoco in Scarlet / Violet', 1, 745, 74500, 86, NULL, NULL, FALSE),
  -- Nemona (You chose Fuecoco in Scarlet / Violet), Mochi Mayhem 2: Kommo-o Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-fuecoco', 'You chose Fuecoco in Scarlet / Violet', 2, 784, 78400, 86, NULL, NULL, FALSE),
  -- Nemona (You chose Fuecoco in Scarlet / Violet), Mochi Mayhem 3: Goodra Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-fuecoco', 'You chose Fuecoco in Scarlet / Violet', 3, 706, 70600, 86, NULL, NULL, FALSE),
  -- Nemona (You chose Fuecoco in Scarlet / Violet), Mochi Mayhem 4: Milotic Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-fuecoco', 'You chose Fuecoco in Scarlet / Violet', 4, 350, 35000, 86, NULL, NULL, FALSE),
  -- Nemona (You chose Fuecoco in Scarlet / Violet), Mochi Mayhem 5: Pawmot Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-fuecoco', 'You chose Fuecoco in Scarlet / Violet', 5, 923, 92300, 86, NULL, NULL, FALSE),
  -- Nemona (You chose Fuecoco in Scarlet / Violet), Mochi Mayhem 6: Meowscarada Lv. 87, Tera Dark
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-fuecoco', 'You chose Fuecoco in Scarlet / Violet', 6, 908, 90800, 87, NULL, 16, FALSE),
  -- Nemona (You chose Quaxly in Scarlet / Violet), Mochi Mayhem 1: Lycanroc Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-quaxly', 'You chose Quaxly in Scarlet / Violet', 1, 745, 74500, 86, NULL, NULL, FALSE),
  -- Nemona (You chose Quaxly in Scarlet / Violet), Mochi Mayhem 2: Kommo-o Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-quaxly', 'You chose Quaxly in Scarlet / Violet', 2, 784, 78400, 86, NULL, NULL, FALSE),
  -- Nemona (You chose Quaxly in Scarlet / Violet), Mochi Mayhem 3: Goodra Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-quaxly', 'You chose Quaxly in Scarlet / Violet', 3, 706, 70600, 86, NULL, NULL, FALSE),
  -- Nemona (You chose Quaxly in Scarlet / Violet), Mochi Mayhem 4: Dusknoir Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-quaxly', 'You chose Quaxly in Scarlet / Violet', 4, 477, 47700, 86, NULL, NULL, FALSE),
  -- Nemona (You chose Quaxly in Scarlet / Violet), Mochi Mayhem 5: Pawmot Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-quaxly', 'You chose Quaxly in Scarlet / Violet', 5, 923, 92300, 86, NULL, NULL, FALSE),
  -- Nemona (You chose Quaxly in Scarlet / Violet), Mochi Mayhem 6: Skeledirge Lv. 87, Tera Ghost
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-quaxly', 'You chose Quaxly in Scarlet / Violet', 6, 911, 91100, 87, NULL, 14, FALSE),
  -- Meloetta, Coastal Biome 1: Meloetta Lv. 70
  (250010, 25012, 25, NULL, NULL, NULL, NULL, NULL, 1, 648, 64800, 70, NULL, NULL, FALSE),
  -- Gouging Fire, Perrin's Paradox Photos 1: Gouging Fire Lv. 75
  (250011, 25013, 25, NULL, NULL, NULL, NULL, NULL, 1, 1020, 102000, 75, NULL, NULL, FALSE),
  -- Raging Bolt, Perrin's Paradox Photos 1: Raging Bolt Lv. 75
  (250011, 25014, 25, NULL, NULL, NULL, NULL, NULL, 1, 1021, 102100, 75, NULL, NULL, FALSE),
  -- Iron Crown, Perrin's Paradox Photos 1: Iron Crown Lv. 75
  (250011, 25015, 25, NULL, NULL, NULL, NULL, NULL, 1, 1023, 102300, 75, NULL, NULL, FALSE),
  -- Iron Boulder, Perrin's Paradox Photos 1: Iron Boulder Lv. 75
  (250011, 25016, 25, NULL, NULL, NULL, NULL, NULL, 1, 1022, 102200, 75, NULL, NULL, FALSE),
  -- Articuno, Snacksworth's Legendary Treats 1: Articuno Lv. 70
  (250012, 25017, 25, NULL, NULL, NULL, NULL, NULL, 1, 144, 14400, 70, NULL, NULL, FALSE),
  -- Zapdos, Snacksworth's Legendary Treats 1: Zapdos Lv. 70
  (250012, 25018, 25, NULL, NULL, NULL, NULL, NULL, 1, 145, 14500, 70, NULL, NULL, FALSE),
  -- Moltres, Snacksworth's Legendary Treats 1: Moltres Lv. 70
  (250012, 25019, 25, NULL, NULL, NULL, NULL, NULL, 1, 146, 14600, 70, NULL, NULL, FALSE),
  -- Raikou, Snacksworth's Legendary Treats 1: Raikou Lv. 70
  (250012, 25020, 25, NULL, NULL, NULL, NULL, NULL, 1, 243, 24300, 70, NULL, NULL, FALSE),
  -- Entei, Snacksworth's Legendary Treats 1: Entei Lv. 70
  (250012, 25021, 25, NULL, NULL, NULL, NULL, NULL, 1, 244, 24400, 70, NULL, NULL, FALSE),
  -- Suicune, Snacksworth's Legendary Treats 1: Suicune Lv. 70
  (250012, 25022, 25, NULL, NULL, NULL, NULL, NULL, 1, 245, 24500, 70, NULL, NULL, FALSE),
  -- Ho-Oh, Snacksworth's Legendary Treats 1: Ho-Oh Lv. 70
  (250012, 25023, 25, NULL, NULL, NULL, NULL, NULL, 1, 250, 25000, 70, NULL, NULL, FALSE),
  -- Latios, Snacksworth's Legendary Treats 1: Latios Lv. 70
  (250012, 25024, 25, NULL, NULL, NULL, NULL, NULL, 1, 381, 38100, 70, NULL, NULL, FALSE),
  -- Groudon, Snacksworth's Legendary Treats 1: Groudon Lv. 70
  (250012, 25025, 25, NULL, NULL, NULL, NULL, NULL, 1, 383, 38300, 70, NULL, NULL, FALSE),
  -- Reshiram, Snacksworth's Legendary Treats 1: Reshiram Lv. 70
  (250012, 25026, 25, NULL, NULL, NULL, NULL, NULL, 1, 643, 64300, 70, NULL, NULL, FALSE),
  -- Solgaleo, Snacksworth's Legendary Treats 1: Solgaleo Lv. 70
  (250012, 25027, 25, NULL, NULL, NULL, NULL, NULL, 1, 791, 79100, 70, NULL, NULL, FALSE),
  -- Glastrier, Snacksworth's Legendary Treats 1: Glastrier Lv. 70
  (250012, 25028, 25, NULL, NULL, NULL, NULL, NULL, 1, 896, 89600, 70, NULL, NULL, FALSE),
  -- Lugia, Snacksworth's Legendary Treats 1: Lugia Lv. 70
  (250012, 25029, 25, NULL, NULL, NULL, NULL, NULL, 1, 249, 24900, 70, NULL, NULL, FALSE),
  -- Latias, Snacksworth's Legendary Treats 1: Latias Lv. 70
  (250012, 25030, 25, NULL, NULL, NULL, NULL, NULL, 1, 380, 38000, 70, NULL, NULL, FALSE),
  -- Kyogre, Snacksworth's Legendary Treats 1: Kyogre Lv. 70
  (250012, 25031, 25, NULL, NULL, NULL, NULL, NULL, 1, 382, 38200, 70, NULL, NULL, FALSE),
  -- Cobalion, Snacksworth's Legendary Treats 1: Cobalion Lv. 70
  (250012, 25032, 25, NULL, NULL, NULL, NULL, NULL, 1, 638, 63800, 70, NULL, NULL, FALSE),
  -- Terrakion, Snacksworth's Legendary Treats 1: Terrakion Lv. 70
  (250012, 25033, 25, NULL, NULL, NULL, NULL, NULL, 1, 639, 63900, 70, NULL, NULL, FALSE),
  -- Virizion, Snacksworth's Legendary Treats 1: Virizion Lv. 70
  (250012, 25034, 25, NULL, NULL, NULL, NULL, NULL, 1, 640, 64000, 70, NULL, NULL, FALSE),
  -- Zekrom, Snacksworth's Legendary Treats 1: Zekrom Lv. 70
  (250012, 25035, 25, NULL, NULL, NULL, NULL, NULL, 1, 644, 64400, 70, NULL, NULL, FALSE),
  -- Lunala, Snacksworth's Legendary Treats 1: Lunala Lv. 70
  (250012, 25036, 25, NULL, NULL, NULL, NULL, NULL, 1, 792, 79200, 70, NULL, NULL, FALSE),
  -- Spectrier, Snacksworth's Legendary Treats 1: Spectrier Lv. 70
  (250012, 25037, 25, NULL, NULL, NULL, NULL, NULL, 1, 897, 89700, 70, NULL, NULL, FALSE),
  -- Rayquaza, Snacksworth's Legendary Treats 1: Rayquaza Lv. 70
  (250012, 25038, 25, NULL, NULL, NULL, NULL, NULL, 1, 384, 38400, 70, NULL, NULL, FALSE),
  -- Kyurem, Snacksworth's Legendary Treats 1: Kyurem Lv. 70
  (250012, 25039, 25, NULL, NULL, NULL, NULL, NULL, 1, 646, 64600, 70, NULL, NULL, FALSE),
  -- Necrozma, Snacksworth's Legendary Treats 1: Necrozma Lv. 70
  (250012, 25040, 25, NULL, NULL, NULL, NULL, NULL, 1, 800, 80000, 70, NULL, NULL, FALSE),
  -- Kubfu, Snacksworth's Legendary Treats 1: Kubfu Lv. 30
  (250012, 25041, 25, NULL, NULL, NULL, NULL, NULL, 1, 891, 89100, 30, NULL, NULL, FALSE);
