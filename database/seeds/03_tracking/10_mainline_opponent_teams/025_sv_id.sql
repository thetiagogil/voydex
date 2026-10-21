-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii The Indigo Disk Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Carmine's lead pair: the game's trainer data, matching Serebii.
-- Carmine, Kieran, Nemona and Arven & Penny battles: Bulbapedia, cross-checked with Serebii.
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
  level
) VALUES
  -- Crispin 1: Rotom (Heat) Lv. 77
  (250002, 25001, 25, NULL, NULL, NULL, NULL, NULL, 1, 479, 47901, 77),
  -- Crispin 2: Talonflame Lv. 77
  (250002, 25001, 25, NULL, NULL, NULL, NULL, NULL, 2, 663, 66300, 77),
  -- Crispin 3: Exeggutor Lv. 78
  (250002, 25001, 25, NULL, NULL, NULL, NULL, NULL, 3, 103, 10300, 78),
  -- Crispin 4: Camerupt Lv. 78
  (250002, 25001, 25, NULL, NULL, NULL, NULL, NULL, 4, 323, 32300, 78),
  -- Crispin 5: Magmortar Lv. 78
  (250002, 25001, 25, NULL, NULL, NULL, NULL, NULL, 5, 467, 46700, 78),
  -- Crispin 6: Blaziken Lv. 79
  (250002, 25001, 25, NULL, NULL, NULL, NULL, NULL, 6, 257, 25700, 79),
  -- Amarys 1: Skarmory Lv. 78
  (250003, 25002, 25, NULL, NULL, NULL, NULL, NULL, 1, 227, 22700, 78),
  -- Amarys 2: Alolan Dugtrio Lv. 78
  (250003, 25002, 25, NULL, NULL, NULL, NULL, NULL, 2, 51, 5101, 78),
  -- Amarys 3: Scizor Lv. 79
  (250003, 25002, 25, NULL, NULL, NULL, NULL, NULL, 3, 212, 21200, 79),
  -- Amarys 4: Reuniclus Lv. 79
  (250003, 25002, 25, NULL, NULL, NULL, NULL, NULL, 4, 579, 57900, 79),
  -- Amarys 5: Empoleon Lv. 79
  (250003, 25002, 25, NULL, NULL, NULL, NULL, NULL, 5, 395, 39500, 79),
  -- Amarys 6: Metagross Lv. 80
  (250003, 25002, 25, NULL, NULL, NULL, NULL, NULL, 6, 376, 37600, 80),
  -- Lacey 1: Whimsicott Lv. 78
  (250004, 25003, 25, NULL, NULL, NULL, NULL, NULL, 1, 547, 54700, 78),
  -- Lacey 2: Granbull Lv. 78
  (250004, 25003, 25, NULL, NULL, NULL, NULL, NULL, 2, 210, 21000, 78),
  -- Lacey 3: Primarina Lv. 79
  (250004, 25003, 25, NULL, NULL, NULL, NULL, NULL, 3, 730, 73000, 79),
  -- Lacey 4: Galarian Slowbro Lv. 79
  (250004, 25003, 25, NULL, NULL, NULL, NULL, NULL, 4, 80, 8002, 79),
  -- Lacey 5: Alcremie Lv. 79
  (250004, 25003, 25, NULL, NULL, NULL, NULL, NULL, 5, 869, 86900, 79),
  -- Lacey 6: Excadrill Lv. 80
  (250004, 25003, 25, NULL, NULL, NULL, NULL, NULL, 6, 530, 53000, 80),
  -- Drayton 1: Dragonite Lv. 78
  (250005, 25004, 25, NULL, NULL, NULL, NULL, NULL, 1, 149, 14900, 78),
  -- Drayton 2: Flygon Lv. 78
  (250005, 25004, 25, NULL, NULL, NULL, NULL, NULL, 2, 330, 33000, 78),
  -- Drayton 3: Haxorus Lv. 79
  (250005, 25004, 25, NULL, NULL, NULL, NULL, NULL, 3, 612, 61200, 79),
  -- Drayton 4: Sceptile Lv. 79
  (250005, 25004, 25, NULL, NULL, NULL, NULL, NULL, 4, 254, 25400, 79),
  -- Drayton 5: Kingdra Lv. 79
  (250005, 25004, 25, NULL, NULL, NULL, NULL, NULL, 5, 230, 23000, 79),
  -- Drayton 6: Archaludon Lv. 80
  (250005, 25004, 25, NULL, NULL, NULL, NULL, NULL, 6, 1018, 101800, 80),
  -- Kieran 1: Politoed Lv. 80
  (250006, 25005, 25, NULL, NULL, NULL, NULL, NULL, 1, 186, 18600, 80),
  -- Kieran 2: Dragonite Lv. 80
  (250006, 25005, 25, NULL, NULL, NULL, NULL, NULL, 2, 149, 14900, 80),
  -- Kieran 3: Grimmsnarl Lv. 81
  (250006, 25005, 25, NULL, NULL, NULL, NULL, NULL, 3, 861, 86100, 81),
  -- Kieran 4: Porygon-Z Lv. 81
  (250006, 25005, 25, NULL, NULL, NULL, NULL, NULL, 4, 474, 47400, 81),
  -- Kieran 5: Incineroar Lv. 81
  (250006, 25005, 25, NULL, NULL, NULL, NULL, NULL, 5, 727, 72700, 81),
  -- Kieran 6: Hydrapple Lv. 82
  (250006, 25005, 25, NULL, NULL, NULL, NULL, NULL, 6, 1019, 101900, 82),
  -- Terapagos 1: Terapagos Lv. 85
  (250008, 25006, 25, NULL, NULL, NULL, NULL, NULL, 1, 1024, 102400, 85),
  -- Pecharunt 1: Pecharunt Lv. 88
  (250009, 25007, 25, NULL, NULL, NULL, NULL, NULL, 1, 1025, 102500, 88),
  -- Carmine, Arrive at Blueberry Academy 1: Mightyena Lv. 74
  (250001, 25008, 25, NULL, NULL, NULL, NULL, NULL, 1, 262, 26200, 74),
  -- Carmine, Arrive at Blueberry Academy 2: Toucannon Lv. 74
  (250001, 25008, 25, NULL, NULL, NULL, NULL, NULL, 2, 733, 73300, 74),
  -- Carmine, Arrive at Blueberry Academy 3: Scrafty Lv. 74
  (250001, 25008, 25, NULL, NULL, NULL, NULL, NULL, 3, 560, 56000, 74),
  -- Carmine, Arrive at Blueberry Academy 4: Sinistcha Lv. 75
  (250001, 25008, 25, NULL, NULL, NULL, NULL, NULL, 4, 1013, 101300, 75),
  -- Kieran, Terapagos Battle 1: Terapagos Lv. 85
  (250008, 25009, 25, NULL, NULL, NULL, NULL, NULL, 1, 1024, 102400, 85),
  -- Arven & Penny, Mochi Mayhem 1: Greedent Lv. 82
  (250009, 25010, 25, NULL, NULL, NULL, NULL, NULL, 1, 820, 82000, 82),
  -- Arven & Penny, Mochi Mayhem 2: Cloyster Lv. 82
  (250009, 25010, 25, NULL, NULL, NULL, NULL, NULL, 2, 91, 9100, 82),
  -- Arven & Penny, Mochi Mayhem 3: Mabosstiff Lv. 83
  (250009, 25010, 25, NULL, NULL, NULL, NULL, NULL, 3, 943, 94300, 83),
  -- Arven & Penny, Mochi Mayhem 4: Umbreon Lv. 84
  (250009, 25010, 25, NULL, NULL, NULL, NULL, NULL, 4, 197, 19700, 84),
  -- Arven & Penny, Mochi Mayhem 5: Leafeon Lv. 84
  (250009, 25010, 25, NULL, NULL, NULL, NULL, NULL, 5, 470, 47000, 84),
  -- Arven & Penny, Mochi Mayhem 6: Sylveon Lv. 85
  (250009, 25010, 25, NULL, NULL, NULL, NULL, NULL, 6, 700, 70000, 85),
  -- Nemona (You chose Sprigatito in Scarlet / Violet), Mochi Mayhem 1: Lycanroc Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-sprigatito', 'You chose Sprigatito in Scarlet / Violet', 1, 745, 74500, 86),
  -- Nemona (You chose Sprigatito in Scarlet / Violet), Mochi Mayhem 2: Kommo-o Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-sprigatito', 'You chose Sprigatito in Scarlet / Violet', 2, 784, 78400, 86),
  -- Nemona (You chose Sprigatito in Scarlet / Violet), Mochi Mayhem 3: Goodra Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-sprigatito', 'You chose Sprigatito in Scarlet / Violet', 3, 706, 70600, 86),
  -- Nemona (You chose Sprigatito in Scarlet / Violet), Mochi Mayhem 4: Ribombee Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-sprigatito', 'You chose Sprigatito in Scarlet / Violet', 4, 743, 74300, 86),
  -- Nemona (You chose Sprigatito in Scarlet / Violet), Mochi Mayhem 5: Pawmot Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-sprigatito', 'You chose Sprigatito in Scarlet / Violet', 5, 923, 92300, 86),
  -- Nemona (You chose Sprigatito in Scarlet / Violet), Mochi Mayhem 6: Quaquaval Lv. 87
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-sprigatito', 'You chose Sprigatito in Scarlet / Violet', 6, 914, 91400, 87),
  -- Nemona (You chose Fuecoco in Scarlet / Violet), Mochi Mayhem 1: Lycanroc Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-fuecoco', 'You chose Fuecoco in Scarlet / Violet', 1, 745, 74500, 86),
  -- Nemona (You chose Fuecoco in Scarlet / Violet), Mochi Mayhem 2: Kommo-o Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-fuecoco', 'You chose Fuecoco in Scarlet / Violet', 2, 784, 78400, 86),
  -- Nemona (You chose Fuecoco in Scarlet / Violet), Mochi Mayhem 3: Goodra Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-fuecoco', 'You chose Fuecoco in Scarlet / Violet', 3, 706, 70600, 86),
  -- Nemona (You chose Fuecoco in Scarlet / Violet), Mochi Mayhem 4: Milotic Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-fuecoco', 'You chose Fuecoco in Scarlet / Violet', 4, 350, 35000, 86),
  -- Nemona (You chose Fuecoco in Scarlet / Violet), Mochi Mayhem 5: Pawmot Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-fuecoco', 'You chose Fuecoco in Scarlet / Violet', 5, 923, 92300, 86),
  -- Nemona (You chose Fuecoco in Scarlet / Violet), Mochi Mayhem 6: Meowscarada Lv. 87
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-fuecoco', 'You chose Fuecoco in Scarlet / Violet', 6, 908, 90800, 87),
  -- Nemona (You chose Quaxly in Scarlet / Violet), Mochi Mayhem 1: Lycanroc Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-quaxly', 'You chose Quaxly in Scarlet / Violet', 1, 745, 74500, 86),
  -- Nemona (You chose Quaxly in Scarlet / Violet), Mochi Mayhem 2: Kommo-o Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-quaxly', 'You chose Quaxly in Scarlet / Violet', 2, 784, 78400, 86),
  -- Nemona (You chose Quaxly in Scarlet / Violet), Mochi Mayhem 3: Goodra Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-quaxly', 'You chose Quaxly in Scarlet / Violet', 3, 706, 70600, 86),
  -- Nemona (You chose Quaxly in Scarlet / Violet), Mochi Mayhem 4: Dusknoir Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-quaxly', 'You chose Quaxly in Scarlet / Violet', 4, 477, 47700, 86),
  -- Nemona (You chose Quaxly in Scarlet / Violet), Mochi Mayhem 5: Pawmot Lv. 86
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-quaxly', 'You chose Quaxly in Scarlet / Violet', 5, 923, 92300, 86),
  -- Nemona (You chose Quaxly in Scarlet / Violet), Mochi Mayhem 6: Skeledirge Lv. 87
  (250009, 25011, 25, NULL, NULL, NULL, 'chose-quaxly', 'You chose Quaxly in Scarlet / Violet', 6, 911, 91100, 87);
