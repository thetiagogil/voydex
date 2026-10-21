-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge and Elite Four pages.
-- Cross-check: Pokémon Ruby / Sapphire source pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and the pret disassemblies.
-- Scope: Pokémon Ruby / Sapphire major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Ruby / Sapphire major fights.
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
  (5001, 5, NULL, 'roxanne', 'Roxanne', 'gym-leader', 13, NULL, 'roxanne', 1),
  -- Brawly
  (5002, 5, NULL, 'brawly', 'Brawly', 'gym-leader', 7, NULL, 'brawly', 2),
  -- Wattson
  (5003, 5, NULL, 'wattson', 'Wattson', 'gym-leader', 4, NULL, 'wattson', 3),
  -- Flannery
  (5004, 5, NULL, 'flannery', 'Flannery', 'gym-leader', 2, NULL, 'flannery', 4),
  -- Norman
  (5005, 5, NULL, 'norman', 'Norman', 'gym-leader', 1, NULL, 'norman', 5),
  -- Winona
  (5006, 5, NULL, 'winona', 'Winona', 'gym-leader', 10, NULL, 'winona', 6),
  -- Tate & Liza
  (5007, 5, NULL, 'tate-liza', 'Tate & Liza', 'gym-leader', 11, NULL, 'tate-liza', 7),
  -- Wallace
  (5008, 5, NULL, 'wallace', 'Wallace', 'gym-leader', 3, NULL, 'wallace', 8),
  -- Sidney
  (5009, 5, NULL, 'sidney', 'Sidney', 'elite-four', 16, NULL, 'sidney', 9),
  -- Phoebe
  (5010, 5, NULL, 'phoebe', 'Phoebe', 'elite-four', 14, NULL, 'phoebe', 10),
  -- Glacia
  (5011, 5, NULL, 'glacia', 'Glacia', 'elite-four', 6, NULL, 'glacia', 11),
  -- Drake
  (5012, 5, NULL, 'drake', 'Drake', 'elite-four', 15, NULL, 'drake', 12),
  -- Steven
  (5013, 5, NULL, 'steven', 'Steven', 'champion', 17, NULL, 'steven', 13),
  -- May / Brendan (rival)
  (5014, 5, NULL, 'may-brendan', 'May / Brendan', 'rival', NULL, NULL, 'may', 14),
  -- Wally (rival)
  (5015, 5, NULL, 'wally', 'Wally', 'rival', NULL, NULL, 'wally', 15),
  -- Maxie (boss, ruby)
  (5016, 5, 7, 'maxie', 'Maxie', 'boss', NULL, NULL, 'maxie', 1),
  -- Archie (boss, sapphire)
  (5017, 5, 8, 'archie', 'Archie', 'boss', NULL, NULL, 'archie', 1),
  -- Groudon (boss, ruby)
  (5018, 5, 7, 'groudon', 'Groudon', 'boss', 9, NULL, 'groudon', 2),
  -- Kyogre (boss, sapphire)
  (5019, 5, 8, 'kyogre', 'Kyogre', 'boss', 3, NULL, 'kyogre', 2),
  -- Regirock (boss)
  (5020, 5, NULL, 'regirock', 'Regirock', 'boss', 13, NULL, 'regirock', 16),
  -- Regice (boss)
  (5021, 5, NULL, 'regice', 'Regice', 'boss', 6, NULL, 'regice', 17),
  -- Registeel (boss)
  (5022, 5, NULL, 'registeel', 'Registeel', 'boss', 17, NULL, 'registeel', 18),
  -- Rayquaza (boss)
  (5023, 5, NULL, 'rayquaza', 'Rayquaza', 'boss', 15, 10, 'rayquaza', 19),
  -- Latios (boss, ruby)
  (5024, 5, 7, 'latios', 'Latios', 'boss', 15, 11, 'latios', 3),
  -- Latias (boss, sapphire)
  (5025, 5, 8, 'latias', 'Latias', 'boss', 15, 11, 'latias', 3);
