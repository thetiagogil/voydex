-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii The Crown Tundra Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Scope: Pokémon The Crown Tundra first-battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each The Crown Tundra opponent uses the first time you battle them, by
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
  -- Calyrex (chose Glastrier) 1: Calyrex (Ice Rider) Lv. 80
  (20002, 20, NULL, 200003, 'glastrier', NULL, NULL, 1, 898, 89801, 80),
  -- Calyrex (chose Spectrier) 1: Calyrex (Shadow Rider) Lv. 80
  (20002, 20, NULL, 200003, 'spectrier', NULL, NULL, 1, 898, 89802, 80);
