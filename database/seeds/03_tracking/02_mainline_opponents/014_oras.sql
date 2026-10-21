-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Omega Ruby / Alpha Sapphire, Fossil, Delta Episode, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii.
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
  (14018, 14, 24, 'archie', 'Archie', 'boss', NULL, NULL, 'archie', 1),
  -- Groudon (boss, omega-ruby)
  (14019, 14, 23, 'groudon', 'Groudon', 'boss', 9, NULL, 'groudon', 2),
  -- Kyogre (boss, alpha-sapphire)
  (14020, 14, 24, 'kyogre', 'Kyogre', 'boss', 3, NULL, 'kyogre', 2),
  -- Rayquaza (boss)
  (14021, 14, NULL, 'rayquaza', 'Rayquaza', 'boss', 15, 10, 'rayquaza', 17),
  -- Deoxys (boss)
  (14022, 14, NULL, 'deoxys', 'Deoxys', 'boss', 11, NULL, 'deoxys', 18),
  -- Regirock (boss)
  (14023, 14, NULL, 'regirock', 'Regirock', 'boss', 13, NULL, 'regirock', 19),
  -- Regice (boss)
  (14024, 14, NULL, 'regice', 'Regice', 'boss', 6, NULL, 'regice', 20),
  -- Registeel (boss)
  (14025, 14, NULL, 'registeel', 'Registeel', 'boss', 17, NULL, 'registeel', 21),
  -- Heatran (boss)
  (14026, 14, NULL, 'heatran', 'Heatran', 'boss', 2, 17, 'heatran', 22),
  -- Ho-Oh (boss, omega-ruby)
  (14027, 14, 23, 'ho-oh', 'Ho-Oh', 'boss', 2, 10, 'ho-oh', 3),
  -- Lugia (boss, alpha-sapphire)
  (14028, 14, 24, 'lugia', 'Lugia', 'boss', 11, 10, 'lugia', 3),
  -- Cresselia (boss)
  (14029, 14, NULL, 'cresselia', 'Cresselia', 'boss', 11, NULL, 'cresselia', 23),
  -- Tornadus (boss, omega-ruby)
  (14030, 14, 23, 'tornadus', 'Tornadus', 'boss', 10, NULL, 'tornadus', 4),
  -- Thundurus (boss, alpha-sapphire)
  (14031, 14, 24, 'thundurus', 'Thundurus', 'boss', 4, 10, 'thundurus', 4),
  -- Landorus (boss)
  (14032, 14, NULL, 'landorus', 'Landorus', 'boss', 9, 10, 'landorus', 24),
  -- Regigigas (boss)
  (14033, 14, NULL, 'regigigas', 'Regigigas', 'boss', 1, NULL, 'regigigas', 25),
  -- Raikou (boss)
  (14034, 14, NULL, 'raikou', 'Raikou', 'boss', 4, NULL, 'raikou', 26),
  -- Entei (boss)
  (14035, 14, NULL, 'entei', 'Entei', 'boss', 2, NULL, 'entei', 27),
  -- Suicune (boss)
  (14036, 14, NULL, 'suicune', 'Suicune', 'boss', 3, NULL, 'suicune', 28),
  -- Uxie (boss)
  (14037, 14, NULL, 'uxie', 'Uxie', 'boss', 11, NULL, 'uxie', 29),
  -- Mesprit (boss)
  (14038, 14, NULL, 'mesprit', 'Mesprit', 'boss', 11, NULL, 'mesprit', 30),
  -- Azelf (boss)
  (14039, 14, NULL, 'azelf', 'Azelf', 'boss', 11, NULL, 'azelf', 31),
  -- Palkia (boss, omega-ruby)
  (14040, 14, 23, 'palkia', 'Palkia', 'boss', 3, 15, 'palkia', 5),
  -- Dialga (boss, alpha-sapphire)
  (14041, 14, 24, 'dialga', 'Dialga', 'boss', 17, 15, 'dialga', 5),
  -- Giratina (boss)
  (14042, 14, NULL, 'giratina', 'Giratina', 'boss', 14, 15, 'giratina', 32),
  -- Cobalion (boss)
  (14043, 14, NULL, 'cobalion', 'Cobalion', 'boss', 17, 7, 'cobalion', 33),
  -- Terrakion (boss)
  (14044, 14, NULL, 'terrakion', 'Terrakion', 'boss', 13, 7, 'terrakion', 34),
  -- Virizion (boss)
  (14045, 14, NULL, 'virizion', 'Virizion', 'boss', 5, 7, 'virizion', 35),
  -- Reshiram (boss, omega-ruby)
  (14046, 14, 23, 'reshiram', 'Reshiram', 'boss', 15, 2, 'reshiram', 6),
  -- Zekrom (boss, alpha-sapphire)
  (14047, 14, 24, 'zekrom', 'Zekrom', 'boss', 15, 4, 'zekrom', 6),
  -- Kyurem (boss)
  (14048, 14, NULL, 'kyurem', 'Kyurem', 'boss', 15, 6, 'kyurem', 36);
