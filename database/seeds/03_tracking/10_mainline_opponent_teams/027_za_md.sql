-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Mega Dimension Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Rogue Mega and Primal battles: cross-checked with Bulbapedia's Rogue Mega Evolution page.
-- Battle forms: Darkrai, Heatran and Rayquaza are fought as Rogue Megas and
-- Groudon and Kyogre as Rogue Primals, so each is stored in that form (Darkrai's
-- first phase is its base form; the Mega phase decides the matchup).
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
  -- Darkrai 1: Mega Darkrai Lv. 85
  (270003, 27001, 27, NULL, NULL, NULL, NULL, NULL, 1, 491, 49101, 85),
  -- Groudon 1: Primal Groudon Lv. 80
  (270004, 27002, 27, NULL, NULL, NULL, NULL, NULL, 1, 383, 38301, 80),
  -- Kyogre 1: Primal Kyogre Lv. 80
  (270005, 27003, 27, NULL, NULL, NULL, NULL, NULL, 1, 382, 38201, 80),
  -- Rayquaza 1: Mega Rayquaza Lv. 85
  (270006, 27004, 27, NULL, NULL, NULL, NULL, NULL, 1, 384, 38401, 85),
  -- Heatran, Rogue Mega Darkrai 1: Mega Heatran Lv. 80
  (270003, 27005, 27, NULL, NULL, NULL, NULL, NULL, 1, 485, 48501, 80),
  -- Genesect, Collecting Four Drives 1: Genesect Lv. 60
  (270007, 27006, 27, NULL, NULL, NULL, NULL, NULL, 1, 649, 64900, 60),
  -- Marshadow, The Stealthy Shadow 1: Marshadow Lv. 80
  (270008, 27007, 27, NULL, NULL, NULL, NULL, NULL, 1, 802, 80200, 80),
  -- Meltan, Dreams of Meltan 1: Meltan Lv. 70
  (270009, 27008, 27, NULL, NULL, NULL, NULL, NULL, 1, 808, 80800, 70),
  -- Volcanion, Volcanion Unleashed 1: Volcanion Lv. 80
  (270010, 27009, 27, NULL, NULL, NULL, NULL, NULL, 1, 721, 72100, 80),
  -- Hoopa, The Djinn Unbound 1: Hoopa (Unbound) Lv. 80
  (270011, 27010, 27, NULL, NULL, NULL, NULL, NULL, 1, 720, 72001, 80);
