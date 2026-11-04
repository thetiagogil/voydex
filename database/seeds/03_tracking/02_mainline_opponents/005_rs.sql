-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge and Elite Four pages.
-- Cross-check: Pokémon Ruby / Sapphire source pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and the pret disassemblies.
-- Magma and Aqua Admins (Tabitha, Courtney, Matt, Shelly): the pret pokeruby
-- decompilation's trainer parties, cross-checked with Bulbapedia's trainer pages.
-- Their Pokémon have no set moves and get the game's default: the last four
-- level-up moves to their level, in the game's order; where Bulbapedia's reading
-- differs (Tabitha's Poochyena at Mt. Chimney) the game's own learnset wins.
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
  place,
  sort_order
) VALUES
  -- Roxanne
  (5001, 5, NULL, 'roxanne', 'Roxanne', 'gym-leader', 13, NULL, 'roxanne', 'Rustboro City', 1),
  -- Brawly
  (5002, 5, NULL, 'brawly', 'Brawly', 'gym-leader', 7, NULL, 'brawly', 'Dewford Town', 2),
  -- Wattson
  (5003, 5, NULL, 'wattson', 'Wattson', 'gym-leader', 4, NULL, NULL, 'Mauville City', 3),
  -- Flannery
  (5004, 5, NULL, 'flannery', 'Flannery', 'gym-leader', 2, NULL, 'flannery', 'Lavaridge Town', 4),
  -- Norman
  (5005, 5, NULL, 'norman', 'Norman', 'gym-leader', 1, NULL, 'norman', 'Petalburg City', 5),
  -- Winona
  (5006, 5, NULL, 'winona', 'Winona', 'gym-leader', 10, NULL, 'winona', 'Fortree City', 6),
  -- Tate & Liza
  (5007, 5, NULL, 'tate-liza', 'Tate & Liza', 'gym-leader', 11, NULL, 'tate-liza', 'Mossdeep City', 7),
  -- Wallace
  (5008, 5, NULL, 'wallace', 'Wallace', 'gym-leader', 3, NULL, 'wallace', 'Sootopolis City', 8),
  -- Sidney
  (5009, 5, NULL, 'sidney', 'Sidney', 'elite-four', 16, NULL, 'sidney', NULL, 9),
  -- Phoebe
  (5010, 5, NULL, 'phoebe', 'Phoebe', 'elite-four', 14, NULL, 'phoebe', NULL, 10),
  -- Glacia
  (5011, 5, NULL, 'glacia', 'Glacia', 'elite-four', 6, NULL, 'glacia', NULL, 11),
  -- Drake
  (5012, 5, NULL, 'drake', 'Drake', 'elite-four', 15, NULL, 'drake', NULL, 12),
  -- Steven
  (5013, 5, NULL, 'steven', 'Steven', 'champion', 17, NULL, 'steven', 'Ever Grande City', 13),
  -- May / Brendan (rival)
  (5014, 5, NULL, 'may-brendan', 'May / Brendan', 'rival', NULL, NULL, 'may-brendan', NULL, 14),
  -- Wally (rival)
  (5015, 5, NULL, 'wally', 'Wally', 'rival', NULL, NULL, 'wally', NULL, 15),
  -- Maxie (boss, ruby)
  (5016, 5, 7, 'maxie', 'Maxie', 'boss', NULL, NULL, 'maxie', NULL, 1),
  -- Archie (boss, sapphire)
  (5017, 5, 8, 'archie', 'Archie', 'boss', NULL, NULL, 'archie', NULL, 1),
  -- Groudon (boss, ruby)
  (5018, 5, 7, 'groudon', 'Groudon', 'boss', 9, NULL, NULL, NULL, 2),
  -- Kyogre (boss, sapphire)
  (5019, 5, 8, 'kyogre', 'Kyogre', 'boss', 3, NULL, NULL, NULL, 2),
  -- Regirock (boss)
  (5020, 5, NULL, 'regirock', 'Regirock', 'boss', 13, NULL, NULL, NULL, 16),
  -- Regice (boss)
  (5021, 5, NULL, 'regice', 'Regice', 'boss', 6, NULL, NULL, NULL, 17),
  -- Registeel (boss)
  (5022, 5, NULL, 'registeel', 'Registeel', 'boss', 17, NULL, NULL, NULL, 18),
  -- Rayquaza (boss)
  (5023, 5, NULL, 'rayquaza', 'Rayquaza', 'boss', 15, 10, NULL, NULL, 19),
  -- Latios (boss, ruby)
  (5024, 5, 7, 'latios', 'Latios', 'boss', 15, 11, NULL, NULL, 3),
  -- Latias (boss, sapphire)
  (5025, 5, 8, 'latias', 'Latias', 'boss', 15, 11, NULL, NULL, 3),
  -- Tabitha (boss, ruby; Team Magma Admin)
  (5026, 5, 7, 'tabitha', 'Tabitha', 'boss', NULL, NULL, 'tabitha', NULL, 4),
  -- Courtney (boss, ruby; Team Magma Admin)
  (5027, 5, 7, 'courtney', 'Courtney', 'boss', NULL, NULL, 'courtney', NULL, 5),
  -- Matt (boss, sapphire; Team Aqua Admin)
  (5028, 5, 8, 'matt', 'Matt', 'boss', NULL, NULL, 'matt', NULL, 4),
  -- Shelly (boss, sapphire; Team Aqua Admin)
  (5029, 5, 8, 'shelly', 'Shelly', 'boss', NULL, NULL, 'shelly', NULL, 5);
