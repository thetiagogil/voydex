-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Brilliant Diamond / Shining Pearl, Badge, Elite Four, Champion, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon Brilliant Diamond / Shining Pearl major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Brilliant Diamond / Shining Pearl major fights. Game-specific rows are scoped where the source game changes the opponent.
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
  -- Roark
  (21001, 21, NULL, 'roark', 'Roark', 'gym-leader', 13, NULL, 'roark', 'Oreburgh City', 1),
  -- Gardenia
  (21002, 21, NULL, 'gardenia', 'Gardenia', 'gym-leader', 5, NULL, 'gardenia', 'Eterna City', 2),
  -- Maylene
  (21003, 21, NULL, 'maylene', 'Maylene', 'gym-leader', 7, NULL, 'maylene', 'Veilstone City', 3),
  -- Crasher Wake
  (21004, 21, NULL, 'crasher-wake', 'Crasher Wake', 'gym-leader', 3, NULL, 'crasher-wake', 'Pastoria City', 4),
  -- Fantina
  (21005, 21, NULL, 'fantina', 'Fantina', 'gym-leader', 14, NULL, 'fantina', 'Hearthome City', 5),
  -- Byron
  (21006, 21, NULL, 'byron', 'Byron', 'gym-leader', 17, NULL, 'byron', 'Canalave City', 6),
  -- Candice
  (21007, 21, NULL, 'candice', 'Candice', 'gym-leader', 6, NULL, 'candice', 'Snowpoint City', 7),
  -- Volkner
  (21008, 21, NULL, 'volkner', 'Volkner', 'gym-leader', 4, NULL, 'volkner', 'Sunyshore City', 8),
  -- Aaron
  (21009, 21, NULL, 'aaron', 'Aaron', 'elite-four', 12, NULL, 'aaron', NULL, 9),
  -- Bertha
  (21010, 21, NULL, 'bertha', 'Bertha', 'elite-four', 9, NULL, 'bertha', NULL, 10),
  -- Flint
  (21011, 21, NULL, 'flint', 'Flint', 'elite-four', 2, NULL, 'flint', NULL, 11),
  -- Lucian
  (21012, 21, NULL, 'lucian', 'Lucian', 'elite-four', 11, NULL, 'lucian', NULL, 12),
  -- Cynthia
  (21013, 21, NULL, 'cynthia', 'Cynthia', 'champion', NULL, NULL, 'cynthia', 'Pokémon League', 13),
  -- Barry (rival)
  (21014, 21, NULL, 'barry', 'Barry', 'rival', NULL, NULL, 'barry', NULL, 14),
  -- Cyrus (boss)
  (21015, 21, NULL, 'cyrus', 'Cyrus', 'boss', NULL, NULL, 'cyrus', NULL, 15),
  -- Dialga (boss, brilliant-diamond)
  (21016, 21, 33, 'dialga', 'Dialga', 'boss', 17, 15, 'dialga', NULL, 1),
  -- Palkia (boss, shining-pearl)
  (21017, 21, 34, 'palkia', 'Palkia', 'boss', 3, 15, 'palkia', NULL, 1),
  -- Uxie (boss)
  (21018, 21, NULL, 'uxie', 'Uxie', 'boss', 11, NULL, 'uxie', NULL, 16),
  -- Azelf (boss)
  (21019, 21, NULL, 'azelf', 'Azelf', 'boss', 11, NULL, 'azelf', NULL, 17),
  -- Mesprit (boss)
  (21020, 21, NULL, 'mesprit', 'Mesprit', 'boss', 11, NULL, 'mesprit', NULL, 18),
  -- Giratina (boss)
  (21021, 21, NULL, 'giratina', 'Giratina', 'boss', 14, 15, 'giratina', NULL, 19),
  -- Cresselia (boss)
  (21022, 21, NULL, 'cresselia', 'Cresselia', 'boss', 11, NULL, 'cresselia', NULL, 20),
  -- Heatran (boss)
  (21023, 21, NULL, 'heatran', 'Heatran', 'boss', 2, 17, 'heatran', NULL, 21),
  -- Regigigas (boss)
  (21024, 21, NULL, 'regigigas', 'Regigigas', 'boss', 1, NULL, 'regigigas', NULL, 22),
  -- Regirock (boss)
  (21025, 21, NULL, 'regirock', 'Regirock', 'boss', 13, NULL, 'regirock', NULL, 23),
  -- Regice (boss)
  (21026, 21, NULL, 'regice', 'Regice', 'boss', 6, NULL, 'regice', NULL, 24),
  -- Registeel (boss)
  (21027, 21, NULL, 'registeel', 'Registeel', 'boss', 17, NULL, 'registeel', NULL, 25),
  -- Raikou (boss, brilliant-diamond)
  (21028, 21, 33, 'raikou', 'Raikou', 'boss', 4, NULL, 'raikou', NULL, 2),
  -- Entei (boss, brilliant-diamond)
  (21029, 21, 33, 'entei', 'Entei', 'boss', 2, NULL, 'entei', NULL, 3),
  -- Suicune (boss, brilliant-diamond)
  (21030, 21, 33, 'suicune', 'Suicune', 'boss', 3, NULL, 'suicune', NULL, 4),
  -- Articuno (boss, shining-pearl)
  (21031, 21, 34, 'articuno', 'Articuno', 'boss', 6, 10, 'articuno', NULL, 2),
  -- Zapdos (boss, shining-pearl)
  (21032, 21, 34, 'zapdos', 'Zapdos', 'boss', 4, 10, 'zapdos', NULL, 3),
  -- Moltres (boss, shining-pearl)
  (21033, 21, 34, 'moltres', 'Moltres', 'boss', 2, 10, 'moltres', NULL, 4),
  -- Latias (boss)
  (21034, 21, NULL, 'latias', 'Latias', 'boss', 15, 11, 'latias', NULL, 26),
  -- Latios (boss)
  (21035, 21, NULL, 'latios', 'Latios', 'boss', 15, 11, 'latios', NULL, 27),
  -- Ho-Oh (boss, brilliant-diamond)
  (21036, 21, 33, 'ho-oh', 'Ho-Oh', 'boss', 2, 10, 'ho-oh', NULL, 5),
  -- Lugia (boss, shining-pearl)
  (21037, 21, 34, 'lugia', 'Lugia', 'boss', 11, 10, 'lugia', NULL, 5),
  -- Kyogre (boss)
  (21038, 21, NULL, 'kyogre', 'Kyogre', 'boss', 3, NULL, 'kyogre', NULL, 28),
  -- Groudon (boss)
  (21039, 21, NULL, 'groudon', 'Groudon', 'boss', 9, NULL, 'groudon', NULL, 29),
  -- Rayquaza (boss)
  (21040, 21, NULL, 'rayquaza', 'Rayquaza', 'boss', 15, 10, 'rayquaza', NULL, 30),
  -- Mewtwo (boss)
  (21041, 21, NULL, 'mewtwo', 'Mewtwo', 'boss', 11, NULL, 'mewtwo', NULL, 31),
  -- Mars (boss; Team Galactic Commander)
  (21042, 21, NULL, 'mars', 'Mars', 'boss', NULL, NULL, 'mars', NULL, 32),
  -- Jupiter (boss; Team Galactic Commander)
  (21043, 21, NULL, 'jupiter', 'Jupiter', 'boss', NULL, NULL, 'jupiter', NULL, 33),
  -- Saturn (boss; Team Galactic Commander)
  (21044, 21, NULL, 'saturn', 'Saturn', 'boss', NULL, NULL, 'saturn', NULL, 34),
  -- Mars & Jupiter (boss; the Multi Battle with Barry at Spear Pillar)
  (21045, 21, NULL, 'mars-jupiter', 'Mars & Jupiter', 'boss', NULL, NULL, 'mars', NULL, 35);
