-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii The Indigo Disk Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Scope: Pokémon The Indigo Disk first-battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each The Indigo Disk opponent uses the first time you battle them, by
-- slot. A team that depends on your starter is given once per starter.
-- ============================================================================

INSERT INTO tracking.mainline_opponent_team_members (
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
  (25001, 25, NULL, NULL, NULL, NULL, NULL, 1, 479, 47901, 77),
  -- Crispin 2: Talonflame Lv. 77
  (25001, 25, NULL, NULL, NULL, NULL, NULL, 2, 663, 66300, 77),
  -- Crispin 3: Exeggutor Lv. 78
  (25001, 25, NULL, NULL, NULL, NULL, NULL, 3, 103, 10300, 78),
  -- Crispin 4: Camerupt Lv. 78
  (25001, 25, NULL, NULL, NULL, NULL, NULL, 4, 323, 32300, 78),
  -- Crispin 5: Magmortar Lv. 78
  (25001, 25, NULL, NULL, NULL, NULL, NULL, 5, 467, 46700, 78),
  -- Crispin 6: Blaziken Lv. 79
  (25001, 25, NULL, NULL, NULL, NULL, NULL, 6, 257, 25700, 79),
  -- Amarys 1: Skarmory Lv. 78
  (25002, 25, NULL, NULL, NULL, NULL, NULL, 1, 227, 22700, 78),
  -- Amarys 2: Alolan Dugtrio Lv. 78
  (25002, 25, NULL, NULL, NULL, NULL, NULL, 2, 51, 5101, 78),
  -- Amarys 3: Scizor Lv. 79
  (25002, 25, NULL, NULL, NULL, NULL, NULL, 3, 212, 21200, 79),
  -- Amarys 4: Reuniclus Lv. 79
  (25002, 25, NULL, NULL, NULL, NULL, NULL, 4, 579, 57900, 79),
  -- Amarys 5: Empoleon Lv. 79
  (25002, 25, NULL, NULL, NULL, NULL, NULL, 5, 395, 39500, 79),
  -- Amarys 6: Metagross Lv. 80
  (25002, 25, NULL, NULL, NULL, NULL, NULL, 6, 376, 37600, 80),
  -- Lacey 1: Whimsicott Lv. 78
  (25003, 25, NULL, NULL, NULL, NULL, NULL, 1, 547, 54700, 78),
  -- Lacey 2: Granbull Lv. 78
  (25003, 25, NULL, NULL, NULL, NULL, NULL, 2, 210, 21000, 78),
  -- Lacey 3: Primarina Lv. 79
  (25003, 25, NULL, NULL, NULL, NULL, NULL, 3, 730, 73000, 79),
  -- Lacey 4: Galarian Slowbro Lv. 79
  (25003, 25, NULL, NULL, NULL, NULL, NULL, 4, 80, 8002, 79),
  -- Lacey 5: Alcremie Lv. 79
  (25003, 25, NULL, NULL, NULL, NULL, NULL, 5, 869, 86900, 79),
  -- Lacey 6: Excadrill Lv. 80
  (25003, 25, NULL, NULL, NULL, NULL, NULL, 6, 530, 53000, 80),
  -- Drayton 1: Dragonite Lv. 78
  (25004, 25, NULL, NULL, NULL, NULL, NULL, 1, 149, 14900, 78),
  -- Drayton 2: Flygon Lv. 78
  (25004, 25, NULL, NULL, NULL, NULL, NULL, 2, 330, 33000, 78),
  -- Drayton 3: Haxorus Lv. 79
  (25004, 25, NULL, NULL, NULL, NULL, NULL, 3, 612, 61200, 79),
  -- Drayton 4: Sceptile Lv. 79
  (25004, 25, NULL, NULL, NULL, NULL, NULL, 4, 254, 25400, 79),
  -- Drayton 5: Kingdra Lv. 79
  (25004, 25, NULL, NULL, NULL, NULL, NULL, 5, 230, 23000, 79),
  -- Drayton 6: Archaludon Lv. 80
  (25004, 25, NULL, NULL, NULL, NULL, NULL, 6, 1018, 101800, 80),
  -- Kieran 1: Politoed Lv. 80
  (25005, 25, NULL, NULL, NULL, NULL, NULL, 1, 186, 18600, 80),
  -- Kieran 2: Dragonite Lv. 80
  (25005, 25, NULL, NULL, NULL, NULL, NULL, 2, 149, 14900, 80),
  -- Kieran 3: Grimmsnarl Lv. 81
  (25005, 25, NULL, NULL, NULL, NULL, NULL, 3, 861, 86100, 81),
  -- Kieran 4: Porygon-Z Lv. 81
  (25005, 25, NULL, NULL, NULL, NULL, NULL, 4, 474, 47400, 81),
  -- Kieran 5: Incineroar Lv. 81
  (25005, 25, NULL, NULL, NULL, NULL, NULL, 5, 727, 72700, 81),
  -- Kieran 6: Hydrapple Lv. 82
  (25005, 25, NULL, NULL, NULL, NULL, NULL, 6, 1019, 101900, 82),
  -- Terapagos 1: Terapagos Lv. 85
  (25006, 25, NULL, NULL, NULL, NULL, NULL, 1, 1024, 102400, 85),
  -- Pecharunt 1: Pecharunt Lv. 88
  (25007, 25, NULL, NULL, NULL, NULL, NULL, 1, 1025, 102500, 88);
