-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Emerald, and Steven Stone pages.
-- Cross-check: Pokémon Emerald source page.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and the pret disassemblies.
-- Magma and Aqua Admins (Tabitha, Shelly, Matt): the pret pokeemerald decompilation's
-- trainer parties, cross-checked with Bulbapedia's trainer pages. Their Pokémon have
-- no set moves and get the game's default: the last four level-up moves to their
-- level, in the game's order. Shelly in the Seafloor Cavern is an ordinary trainer
-- the player can walk past, so her battle there is marked skippable.
-- Scope: Pokémon Emerald major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Emerald major fights.
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
  (7001, 7, NULL, 'roxanne', 'Roxanne', 'gym-leader', 13, NULL, 'roxanne', 1),
  -- Brawly
  (7002, 7, NULL, 'brawly', 'Brawly', 'gym-leader', 7, NULL, 'brawly', 2),
  -- Wattson
  (7003, 7, NULL, 'wattson', 'Wattson', 'gym-leader', 4, NULL, 'wattson', 3),
  -- Flannery
  (7004, 7, NULL, 'flannery', 'Flannery', 'gym-leader', 2, NULL, 'flannery', 4),
  -- Norman
  (7005, 7, NULL, 'norman', 'Norman', 'gym-leader', 1, NULL, 'norman', 5),
  -- Winona
  (7006, 7, NULL, 'winona', 'Winona', 'gym-leader', 10, NULL, 'winona', 6),
  -- Tate & Liza
  (7007, 7, NULL, 'tate-liza', 'Tate & Liza', 'gym-leader', 11, NULL, 'tate-liza', 7),
  -- Juan
  (7008, 7, NULL, 'juan', 'Juan', 'gym-leader', 3, NULL, 'juan', 8),
  -- Sidney
  (7009, 7, NULL, 'sidney', 'Sidney', 'elite-four', 16, NULL, 'sidney', 9),
  -- Phoebe
  (7010, 7, NULL, 'phoebe', 'Phoebe', 'elite-four', 14, NULL, 'phoebe', 10),
  -- Glacia
  (7011, 7, NULL, 'glacia', 'Glacia', 'elite-four', 6, NULL, 'glacia', 11),
  -- Drake
  (7012, 7, NULL, 'drake', 'Drake', 'elite-four', 15, NULL, 'drake', 12),
  -- Wallace
  (7013, 7, NULL, 'wallace', 'Wallace', 'champion', 3, NULL, 'wallace', 13),
  -- Steven
  (7014, 7, NULL, 'steven', 'Steven', 'boss', 17, NULL, 'steven', 14),
  -- May / Brendan (rival)
  (7015, 7, NULL, 'may-brendan', 'May / Brendan', 'rival', NULL, NULL, 'may', 15),
  -- Wally (rival)
  (7016, 7, NULL, 'wally', 'Wally', 'rival', NULL, NULL, 'wally', 16),
  -- Maxie (boss)
  (7017, 7, NULL, 'maxie', 'Maxie', 'boss', NULL, NULL, 'maxie', 17),
  -- Maxie & Tabitha (boss)
  (7018, 7, NULL, 'maxie-tabitha', 'Maxie & Tabitha', 'boss', NULL, NULL, 'maxie', 18),
  -- Archie (boss)
  (7019, 7, NULL, 'archie', 'Archie', 'boss', NULL, NULL, 'archie', 19),
  -- Regirock (boss)
  (7020, 7, NULL, 'regirock', 'Regirock', 'boss', 13, NULL, 'regirock', 20),
  -- Regice (boss)
  (7021, 7, NULL, 'regice', 'Regice', 'boss', 6, NULL, 'regice', 21),
  -- Registeel (boss)
  (7022, 7, NULL, 'registeel', 'Registeel', 'boss', 17, NULL, 'registeel', 22),
  -- Rayquaza (boss)
  (7023, 7, NULL, 'rayquaza', 'Rayquaza', 'boss', 15, 10, 'rayquaza', 23),
  -- Groudon (boss)
  (7024, 7, NULL, 'groudon', 'Groudon', 'boss', 9, NULL, 'groudon', 24),
  -- Kyogre (boss)
  (7025, 7, NULL, 'kyogre', 'Kyogre', 'boss', 3, NULL, 'kyogre', 25),
  -- Latias (boss)
  (7026, 7, NULL, 'latias', 'Latias', 'boss', 15, 11, 'latias', 26),
  -- Latios (boss)
  (7027, 7, NULL, 'latios', 'Latios', 'boss', 15, 11, 'latios', 27),
  -- Tabitha (boss; Team Magma Admin)
  (7028, 7, NULL, 'tabitha', 'Tabitha', 'boss', NULL, NULL, 'tabitha', 28),
  -- Shelly (boss; Team Aqua Admin)
  (7029, 7, NULL, 'shelly', 'Shelly', 'boss', NULL, NULL, 'shelly', 29),
  -- Matt (boss; Team Aqua Admin)
  (7030, 7, NULL, 'matt', 'Matt', 'boss', NULL, NULL, 'matt', 30);
