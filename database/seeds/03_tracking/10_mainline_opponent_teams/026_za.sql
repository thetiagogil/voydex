-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Taunie and Urbain pages.
-- Cross-check: Serebii Legends: Z-A main mission pages.
-- Scope: Pokémon Legends: Z-A Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Legends: Z-A opponent uses in each Story battle, by
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
  -- Taunie / Urbain (chose Chikorita), Join Team MZ 1: Totodile Lv. 5
  (260003, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 1, 158, 15800, 5),
  -- Taunie / Urbain (chose Chikorita), Join Team MZ 2: Tepig Lv. 5
  (260003, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 2, 498, 49800, 5),
  -- Taunie / Urbain (chose Tepig), Join Team MZ 1: Chikorita Lv. 5
  (260003, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 1, 152, 15200, 5),
  -- Taunie / Urbain (chose Tepig), Join Team MZ 2: Totodile Lv. 5
  (260003, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 2, 158, 15800, 5),
  -- Taunie / Urbain (chose Totodile), Join Team MZ 1: Tepig Lv. 5
  (260003, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 1, 498, 49800, 5),
  -- Taunie / Urbain (chose Totodile), Join Team MZ 2: Chikorita Lv. 5
  (260003, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 2, 152, 15200, 5),
  -- Taunie / Urbain (chose Chikorita), Unlock Mega Evolution 1: Croconaw Lv. 25
  (260005, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 1, 159, 15900, 25),
  -- Taunie / Urbain (chose Chikorita), Unlock Mega Evolution 2: Pignite Lv. 25
  (260005, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 2, 499, 49900, 25),
  -- Taunie / Urbain (chose Chikorita), Unlock Mega Evolution 3: Manectric Lv. 26
  (260005, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 3, 310, 31000, 26),
  -- Taunie / Urbain (chose Tepig), Unlock Mega Evolution 1: Bayleef Lv. 25
  (260005, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 1, 153, 15300, 25),
  -- Taunie / Urbain (chose Tepig), Unlock Mega Evolution 2: Croconaw Lv. 25
  (260005, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 2, 159, 15900, 25),
  -- Taunie / Urbain (chose Tepig), Unlock Mega Evolution 3: Manectric Lv. 26
  (260005, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 3, 310, 31000, 26),
  -- Taunie / Urbain (chose Totodile), Unlock Mega Evolution 1: Pignite Lv. 25
  (260005, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 1, 499, 49900, 25),
  -- Taunie / Urbain (chose Totodile), Unlock Mega Evolution 2: Bayleef Lv. 25
  (260005, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 2, 153, 15300, 25),
  -- Taunie / Urbain (chose Totodile), Unlock Mega Evolution 3: Manectric Lv. 26
  (260005, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 3, 310, 31000, 26),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Chikorita), Stop the Ange Crisis 1: Meowstic (Female) Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 1, 678, 67801, 62),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Chikorita), Stop the Ange Crisis 2: Goodra Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 2, 706, 70600, 62),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Chikorita), Stop the Ange Crisis 3: Avalugg Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 3, 713, 71300, 62),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Chikorita), Stop the Ange Crisis 4: Feraligatr Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 4, 160, 16000, 63),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Chikorita), Stop the Ange Crisis 5: Manectric Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 5, 310, 31000, 63),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Chikorita), Stop the Ange Crisis 6: Emboar Lv. 64
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 6, 500, 50000, 64),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Tepig), Stop the Ange Crisis 1: Meowstic (Female) Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 1, 678, 67801, 62),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Tepig), Stop the Ange Crisis 2: Goodra Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 2, 706, 70600, 62),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Tepig), Stop the Ange Crisis 3: Avalugg Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 3, 713, 71300, 62),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Tepig), Stop the Ange Crisis 4: Meganium Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 4, 154, 15400, 63),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Tepig), Stop the Ange Crisis 5: Manectric Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 5, 310, 31000, 63),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Tepig), Stop the Ange Crisis 6: Feraligatr Lv. 64
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 6, 160, 16000, 64),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Totodile), Stop the Ange Crisis 1: Meowstic (Female) Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 1, 678, 67801, 62),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Totodile), Stop the Ange Crisis 2: Goodra Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 2, 706, 70600, 62),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Totodile), Stop the Ange Crisis 3: Avalugg Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 3, 713, 71300, 62),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Totodile), Stop the Ange Crisis 4: Emboar Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 4, 500, 50000, 63),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Totodile), Stop the Ange Crisis 5: Manectric Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 5, 310, 31000, 63),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Totodile), Stop the Ange Crisis 6: Meganium Lv. 64
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 6, 154, 15400, 64),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Chikorita), Stop the Ange Crisis 1: Meowstic Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 1, 678, 67800, 62),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Chikorita), Stop the Ange Crisis 2: Goodra Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 2, 706, 70600, 62),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Chikorita), Stop the Ange Crisis 3: Avalugg Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 3, 713, 71300, 62),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Chikorita), Stop the Ange Crisis 4: Feraligatr Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 4, 160, 16000, 63),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Chikorita), Stop the Ange Crisis 5: Manectric Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 5, 310, 31000, 63),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Chikorita), Stop the Ange Crisis 6: Emboar Lv. 64
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 6, 500, 50000, 64),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Tepig), Stop the Ange Crisis 1: Meowstic Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 1, 678, 67800, 62),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Tepig), Stop the Ange Crisis 2: Goodra Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 2, 706, 70600, 62),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Tepig), Stop the Ange Crisis 3: Avalugg Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 3, 713, 71300, 62),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Tepig), Stop the Ange Crisis 4: Meganium Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 4, 154, 15400, 63),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Tepig), Stop the Ange Crisis 5: Manectric Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 5, 310, 31000, 63),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Tepig), Stop the Ange Crisis 6: Feraligatr Lv. 64
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 6, 160, 16000, 64),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Totodile), Stop the Ange Crisis 1: Meowstic Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 1, 678, 67800, 62),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Totodile), Stop the Ange Crisis 2: Goodra Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 2, 706, 70600, 62),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Totodile), Stop the Ange Crisis 3: Avalugg Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 3, 713, 71300, 62),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Totodile), Stop the Ange Crisis 4: Emboar Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 4, 500, 50000, 63),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Totodile), Stop the Ange Crisis 5: Manectric Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 5, 310, 31000, 63),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Totodile), Stop the Ange Crisis 6: Meganium Lv. 64
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 6, 154, 15400, 64);
