-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii The Isle of Armor Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Scope: Pokémon The Isle of Armor first-battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each The Isle of Armor opponent uses the first time you battle them, by
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
  -- Klara / Avery (Sword) 1: Skorupi Lv. 23
  (19001, 19, 31, NULL, NULL, NULL, NULL, 1, 451, 45100, 23),
  -- Klara / Avery (Sword) 2: Galarian Weezing Lv. 24
  (19001, 19, 31, NULL, NULL, NULL, NULL, 2, 110, 11001, 24),
  -- Klara / Avery (Sword) 3: Whirlipede Lv. 24
  (19001, 19, 31, NULL, NULL, NULL, NULL, 3, 544, 54400, 24),
  -- Klara / Avery (Sword) 4: Galarian Slowbro Lv. 25
  (19001, 19, 31, NULL, NULL, NULL, NULL, 4, 80, 8002, 25),
  -- Klara / Avery (Shield) 1: Galarian Ponyta Lv. 23
  (19001, 19, 32, NULL, NULL, NULL, NULL, 1, 77, 7701, 23),
  -- Klara / Avery (Shield) 2: Swoobat Lv. 24
  (19001, 19, 32, NULL, NULL, NULL, NULL, 2, 528, 52800, 24),
  -- Klara / Avery (Shield) 3: Kadabra Lv. 24
  (19001, 19, 32, NULL, NULL, NULL, NULL, 3, 64, 6400, 24),
  -- Klara / Avery (Shield) 4: Galarian Slowbro Lv. 25
  (19001, 19, 32, NULL, NULL, NULL, NULL, 4, 80, 8002, 25),
  -- Mustard (chose Tower of Darkness (Single Strike)) 1: Mienshao Lv. 73
  (19002, 19, NULL, 190005, 'tower-of-darkness', NULL, NULL, 1, 620, 62000, 73),
  -- Mustard (chose Tower of Darkness (Single Strike)) 2: Luxray Lv. 73
  (19002, 19, NULL, 190005, 'tower-of-darkness', NULL, NULL, 2, 405, 40500, 73),
  -- Mustard (chose Tower of Darkness (Single Strike)) 3: Lycanroc Lv. 75
  (19002, 19, NULL, 190005, 'tower-of-darkness', NULL, NULL, 3, 745, 74500, 75),
  -- Mustard (chose Tower of Darkness (Single Strike)) 4: Corviknight Lv. 74
  (19002, 19, NULL, 190005, 'tower-of-darkness', NULL, NULL, 4, 823, 82300, 74),
  -- Mustard (chose Tower of Darkness (Single Strike)) 5: Kommo-o Lv. 75
  (19002, 19, NULL, 190005, 'tower-of-darkness', NULL, NULL, 5, 784, 78400, 75),
  -- Mustard (chose Tower of Darkness (Single Strike)) 6: Urshifu (Rapid Strike) Lv. 75
  (19002, 19, NULL, 190005, 'tower-of-darkness', NULL, NULL, 6, 892, 89201, 75),
  -- Mustard (chose Tower of Waters (Rapid Strike)) 1: Mienshao Lv. 73
  (19002, 19, NULL, 190005, 'tower-of-waters', NULL, NULL, 1, 620, 62000, 73),
  -- Mustard (chose Tower of Waters (Rapid Strike)) 2: Luxray Lv. 73
  (19002, 19, NULL, 190005, 'tower-of-waters', NULL, NULL, 2, 405, 40500, 73),
  -- Mustard (chose Tower of Waters (Rapid Strike)) 3: Lycanroc Lv. 75
  (19002, 19, NULL, 190005, 'tower-of-waters', NULL, NULL, 3, 745, 74500, 75),
  -- Mustard (chose Tower of Waters (Rapid Strike)) 4: Corviknight Lv. 74
  (19002, 19, NULL, 190005, 'tower-of-waters', NULL, NULL, 4, 823, 82300, 74),
  -- Mustard (chose Tower of Waters (Rapid Strike)) 5: Kommo-o Lv. 75
  (19002, 19, NULL, 190005, 'tower-of-waters', NULL, NULL, 5, 784, 78400, 75),
  -- Mustard (chose Tower of Waters (Rapid Strike)) 6: Urshifu Lv. 75
  (19002, 19, NULL, 190005, 'tower-of-waters', NULL, NULL, 6, 892, 89200, 75);
