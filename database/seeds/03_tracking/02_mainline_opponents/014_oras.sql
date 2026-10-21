-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Omega Ruby / Alpha Sapphire, Fossil, Delta Episode, and First partner Pokémon pages.
-- Scope: Pokémon Omega Ruby / Alpha Sapphire major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Omega Ruby / Alpha Sapphire major fights. Game-specific rows are scoped where the source game changes the opponent.
-- ============================================================================

INSERT INTO tracking.mainline_opponents (
  id,
  version_group_id,
  game_id,
  slug,
  name,
  opponent_role,
  primary_type_id,
  secondary_type_id,
  sprite_slug,
  sort_order
) VALUES
  -- Roxanne
  (14001, 14, NULL, 'roxanne', 'Roxanne', 'gym-leader', 13, NULL, 'roxanne', 1),
  -- Brawly
  (14002, 14, NULL, 'brawly', 'Brawly', 'gym-leader', 7, NULL, 'brawly', 2),
  -- Wattson
  (14003, 14, NULL, 'wattson', 'Wattson', 'gym-leader', 4, NULL, 'wattson', 3),
  -- Flannery
  (14004, 14, NULL, 'flannery', 'Flannery', 'gym-leader', 2, NULL, 'flannery', 4),
  -- Norman
  (14005, 14, NULL, 'norman', 'Norman', 'gym-leader', 1, NULL, 'norman', 5),
  -- Winona
  (14006, 14, NULL, 'winona', 'Winona', 'gym-leader', 10, NULL, 'winona', 6),
  -- Tate & Liza
  (14007, 14, NULL, 'tate-liza', 'Tate & Liza', 'gym-leader', 11, NULL, 'tate-liza', 7),
  -- Wallace
  (14008, 14, NULL, 'wallace', 'Wallace', 'gym-leader', 3, NULL, 'wallace', 8),
  -- Sidney
  (14009, 14, NULL, 'sidney', 'Sidney', 'elite-four', 16, NULL, 'sidney', 9),
  -- Phoebe
  (14010, 14, NULL, 'phoebe', 'Phoebe', 'elite-four', 14, NULL, 'phoebe', 10),
  -- Glacia
  (14011, 14, NULL, 'glacia', 'Glacia', 'elite-four', 6, NULL, 'glacia', 11),
  -- Drake
  (14012, 14, NULL, 'drake', 'Drake', 'elite-four', 15, NULL, 'drake', 12),
  -- Steven
  (14013, 14, NULL, 'steven', 'Steven', 'champion', 17, NULL, 'steven', 13),
  -- Zinnia
  (14014, 14, NULL, 'zinnia', 'Zinnia', 'boss', 15, NULL, 'zinnia', 14),
  -- May / Brendan (rival)
  (14015, 14, NULL, 'may-brendan', 'May / Brendan', 'rival', NULL, NULL, 'may', 15),
  -- Wally (rival)
  (14016, 14, NULL, 'wally', 'Wally', 'rival', NULL, NULL, 'wally', 16),
  -- Maxie (boss, omega-ruby)
  (14017, 14, 23, 'maxie', 'Maxie', 'boss', NULL, NULL, 'maxie', 1),
  -- Archie (boss, alpha-sapphire)
  (14018, 14, 24, 'archie', 'Archie', 'boss', NULL, NULL, 'archie', 1);
