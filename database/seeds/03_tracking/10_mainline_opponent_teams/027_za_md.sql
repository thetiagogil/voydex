-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Mega Dimension Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Rogue Mega and Primal battles: cross-checked with Bulbapedia's Rogue Mega Evolution page.
-- Battle forms: Darkrai, Heatran and Rayquaza are fought as Rogue Megas and
-- Groudon and Kyogre as Rogue Primals, so each is stored in that form (Darkrai's
-- first phase is its base form; the Mega phase decides the matchup). The rogue
-- Mega Absol Z, Staraptor, Tatsugiri and Meowstic are stored as their Mega with
-- no held stone. Hyperspace shows them at Lv. 105 to 200, above Voydex's
-- Lv. 100 cap, so every Hyperspace catch is stored at the level the game's
-- data-mined encounter table gives it (Tatsugiri Curly Form, Meowstic male).
-- Held items: Bulbapedia names no held item for these wild battles, so they hold nothing.
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
  level,
  held_item_id
) VALUES
  -- Darkrai 1: Mega Darkrai Lv. 85
  (270003, 27001, 27, NULL, NULL, NULL, NULL, NULL, 1, 491, 49101, 85, NULL),
  -- Groudon 1: Primal Groudon Lv. 80
  (270004, 27002, 27, NULL, NULL, NULL, NULL, NULL, 1, 383, 38301, 80, NULL),
  -- Kyogre 1: Primal Kyogre Lv. 80
  (270005, 27003, 27, NULL, NULL, NULL, NULL, NULL, 1, 382, 38201, 80, NULL),
  -- Rayquaza 1: Mega Rayquaza Lv. 85
  (270006, 27004, 27, NULL, NULL, NULL, NULL, NULL, 1, 384, 38401, 85, NULL),
  -- Heatran, Rogue Mega Darkrai 1: Mega Heatran Lv. 80
  (270003, 27005, 27, NULL, NULL, NULL, NULL, NULL, 1, 485, 48501, 80, NULL),
  -- Genesect, Collecting Four Drives 1: Genesect Lv. 60
  (270007, 27006, 27, NULL, NULL, NULL, NULL, NULL, 1, 649, 64900, 60, NULL),
  -- Marshadow, The Stealthy Shadow 1: Marshadow Lv. 80
  (270008, 27007, 27, NULL, NULL, NULL, NULL, NULL, 1, 802, 80200, 80, NULL),
  -- Meltan, Dreams of Meltan 1: Meltan Lv. 70
  (270009, 27008, 27, NULL, NULL, NULL, NULL, NULL, 1, 808, 80800, 70, NULL),
  -- Volcanion, Volcanion Unleashed 1: Volcanion Lv. 80
  (270010, 27009, 27, NULL, NULL, NULL, NULL, NULL, 1, 721, 72100, 80, NULL),
  -- Hoopa, The Djinn Unbound 1: Hoopa (Unbound) Lv. 80
  (270011, 27010, 27, NULL, NULL, NULL, NULL, NULL, 1, 720, 72001, 80, NULL),
  -- Rogue Mega Absol Z, Rogue Mega Absol Z 1: Mega Absol Z Lv. 75
  (270012, 27011, 27, NULL, NULL, NULL, NULL, NULL, 1, 359, 35902, 75, NULL),
  -- Rogue Mega Staraptor, Rogue Mega Staraptor 1: Mega Staraptor Lv. 75
  (270013, 27012, 27, NULL, NULL, NULL, NULL, NULL, 1, 398, 39801, 75, NULL),
  -- Rogue Mega Tatsugiri, Rogue Mega Tatsugiri 1: Mega Tatsugiri Lv. 75
  (270014, 27013, 27, NULL, NULL, NULL, NULL, NULL, 1, 978, 97803, 75, NULL),
  -- Rogue Mega Meowstic, Rogue Mega Meowstic 1: Mega Meowstic Lv. 75
  (270015, 27014, 27, NULL, NULL, NULL, NULL, NULL, 1, 678, 67802, 75, NULL);
