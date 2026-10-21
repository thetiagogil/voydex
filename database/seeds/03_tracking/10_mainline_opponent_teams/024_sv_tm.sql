-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii The Teal Mask Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Scope: Pokémon The Teal Mask first-battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each The Teal Mask opponent uses the first time you battle them, by
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
  -- Kieran 1: Sentret Lv. 12
  (24001, 24, NULL, NULL, NULL, NULL, NULL, 1, 161, 16100, 12),
  -- Kieran 2: Yanma Lv. 12
  (24001, 24, NULL, NULL, NULL, NULL, NULL, 2, 193, 19300, 12),
  -- The Loyal Three 1: Okidogi Lv. 35
  (24002, 24, NULL, NULL, NULL, NULL, NULL, 1, 1014, 101400, 35),
  -- The Loyal Three 2: Munkidori Lv. 35
  (24002, 24, NULL, NULL, NULL, NULL, NULL, 2, 1015, 101500, 35),
  -- The Loyal Three 3: Fezandipiti Lv. 35
  (24002, 24, NULL, NULL, NULL, NULL, NULL, 3, 1016, 101600, 35),
  -- Ogerpon 1: Ogerpon (Hearthflame Mask) Lv. 20
  (24003, 24, NULL, NULL, NULL, NULL, NULL, 1, 1017, 101702, 20),
  -- Ogerpon 2: Ogerpon (Wellspring Mask) Lv. 20
  (24003, 24, NULL, NULL, NULL, NULL, NULL, 2, 1017, 101701, 20),
  -- Ogerpon 3: Ogerpon (Cornerstone Mask) Lv. 20
  (24003, 24, NULL, NULL, NULL, NULL, NULL, 3, 1017, 101703, 20),
  -- Ogerpon 4: Ogerpon Lv. 20
  (24003, 24, NULL, NULL, NULL, NULL, NULL, 4, 1017, 101700, 20),
  -- Bloodmoon Ursaluna 1: Ursaluna (Bloodmoon) Lv. 70
  (24004, 24, NULL, NULL, NULL, NULL, NULL, 1, 901, 90101, 70);
