-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Mega Dimension Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Scope: Pokémon Mega Dimension Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Mega Dimension opponent uses in each Story battle, by
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
  -- Darkrai 1: Darkrai Lv. 85
  (270003, 27001, 27, NULL, NULL, NULL, NULL, NULL, 1, 491, 49100, 85),
  -- Groudon 1: Groudon Lv. 80
  (270004, 27002, 27, NULL, NULL, NULL, NULL, NULL, 1, 383, 38300, 80),
  -- Kyogre 1: Kyogre Lv. 80
  (270005, 27003, 27, NULL, NULL, NULL, NULL, NULL, 1, 382, 38200, 80),
  -- Rayquaza 1: Rayquaza Lv. 85
  (270006, 27004, 27, NULL, NULL, NULL, NULL, NULL, 1, 384, 38400, 85);
