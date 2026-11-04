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
  place,
  sort_order
) VALUES
  -- Roxanne
  (7001, 7, NULL, 'roxanne', 'Roxanne', 'gym-leader', 13, NULL, 'roxanne', 'Rustboro City', 1),
  -- Brawly
  (7002, 7, NULL, 'brawly', 'Brawly', 'gym-leader', 7, NULL, 'brawly', 'Dewford Town', 2),
  -- Wattson
  (7003, 7, NULL, 'wattson', 'Wattson', 'gym-leader', 4, NULL, NULL, 'Mauville City', 3),
  -- Flannery
  (7004, 7, NULL, 'flannery', 'Flannery', 'gym-leader', 2, NULL, 'flannery', 'Lavaridge Town', 4),
  -- Norman
  (7005, 7, NULL, 'norman', 'Norman', 'gym-leader', 1, NULL, 'norman', 'Petalburg City', 5),
  -- Winona
  (7006, 7, NULL, 'winona', 'Winona', 'gym-leader', 10, NULL, 'winona', 'Fortree City', 6),
  -- Tate & Liza
  (7007, 7, NULL, 'tate-liza', 'Tate & Liza', 'gym-leader', 11, NULL, 'tate-liza', 'Mossdeep City', 7),
  -- Juan
  (7008, 7, NULL, 'juan', 'Juan', 'gym-leader', 3, NULL, NULL, 'Sootopolis City', 8),
  -- Sidney
  (7009, 7, NULL, 'sidney', 'Sidney', 'elite-four', 16, NULL, 'sidney', NULL, 9),
  -- Phoebe
  (7010, 7, NULL, 'phoebe', 'Phoebe', 'elite-four', 14, NULL, 'phoebe', NULL, 10),
  -- Glacia
  (7011, 7, NULL, 'glacia', 'Glacia', 'elite-four', 6, NULL, 'glacia', NULL, 11),
  -- Drake
  (7012, 7, NULL, 'drake', 'Drake', 'elite-four', 15, NULL, 'drake', NULL, 12),
  -- Wallace
  (7013, 7, NULL, 'wallace', 'Wallace', 'champion', 3, NULL, 'wallace', 'Ever Grande City', 13),
  -- Steven
  (7014, 7, NULL, 'steven', 'Steven', 'boss', 17, NULL, 'steven', NULL, 14),
  -- May / Brendan (rival)
  (7015, 7, NULL, 'may-brendan', 'May / Brendan', 'rival', NULL, NULL, 'may-brendan', NULL, 15),
  -- Wally (rival)
  (7016, 7, NULL, 'wally', 'Wally', 'rival', NULL, NULL, 'wally', NULL, 16),
  -- Maxie (boss)
  (7017, 7, NULL, 'maxie', 'Maxie', 'boss', NULL, NULL, 'maxie', NULL, 17),
  -- Maxie & Tabitha (boss)
  (7018, 7, NULL, 'maxie-tabitha', 'Maxie & Tabitha', 'boss', NULL, NULL, 'maxie-tabitha', NULL, 18),
  -- Archie (boss)
  (7019, 7, NULL, 'archie', 'Archie', 'boss', NULL, NULL, 'archie', NULL, 19),
  -- Regirock (boss)
  (7020, 7, NULL, 'regirock', 'Regirock', 'boss', 13, NULL, NULL, NULL, 20),
  -- Regice (boss)
  (7021, 7, NULL, 'regice', 'Regice', 'boss', 6, NULL, NULL, NULL, 21),
  -- Registeel (boss)
  (7022, 7, NULL, 'registeel', 'Registeel', 'boss', 17, NULL, NULL, NULL, 22),
  -- Rayquaza (boss)
  (7023, 7, NULL, 'rayquaza', 'Rayquaza', 'boss', 15, 10, NULL, NULL, 23),
  -- Groudon (boss)
  (7024, 7, NULL, 'groudon', 'Groudon', 'boss', 9, NULL, NULL, NULL, 24),
  -- Kyogre (boss)
  (7025, 7, NULL, 'kyogre', 'Kyogre', 'boss', 3, NULL, NULL, NULL, 25),
  -- Latias (boss)
  (7026, 7, NULL, 'latias', 'Latias', 'boss', 15, 11, NULL, NULL, 26),
  -- Latios (boss)
  (7027, 7, NULL, 'latios', 'Latios', 'boss', 15, 11, NULL, NULL, 27),
  -- Tabitha (boss; Team Magma Admin)
  (7028, 7, NULL, 'tabitha', 'Tabitha', 'boss', NULL, NULL, 'tabitha', NULL, 28),
  -- Shelly (boss; Team Aqua Admin)
  (7029, 7, NULL, 'shelly', 'Shelly', 'boss', NULL, NULL, 'shelly', NULL, 29),
  -- Matt (boss; Team Aqua Admin)
  (7030, 7, NULL, 'matt', 'Matt', 'boss', NULL, NULL, 'matt', NULL, 30);
