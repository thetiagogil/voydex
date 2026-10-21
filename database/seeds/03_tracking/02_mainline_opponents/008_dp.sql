-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and Diamond / Pearl pages.
-- Cross-check: Pokémon Diamond / Pearl source page.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and data-mined game data.
-- Scope: Pokémon Diamond / Pearl major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Diamond / Pearl major fights.
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
  -- Roark
  (8001, 8, NULL, 'roark', 'Roark', 'gym-leader', 13, NULL, 'roark', 1),
  -- Gardenia
  (8002, 8, NULL, 'gardenia', 'Gardenia', 'gym-leader', 5, NULL, 'gardenia', 2),
  -- Maylene
  (8003, 8, NULL, 'maylene', 'Maylene', 'gym-leader', 7, NULL, 'maylene', 3),
  -- Crasher Wake
  (8004, 8, NULL, 'crasher-wake', 'Crasher Wake', 'gym-leader', 3, NULL, 'crasher-wake', 4),
  -- Fantina
  (8005, 8, NULL, 'fantina', 'Fantina', 'gym-leader', 14, NULL, 'fantina', 5),
  -- Byron
  (8006, 8, NULL, 'byron', 'Byron', 'gym-leader', 17, NULL, 'byron', 6),
  -- Candice
  (8007, 8, NULL, 'candice', 'Candice', 'gym-leader', 6, NULL, 'candice', 7),
  -- Volkner
  (8008, 8, NULL, 'volkner', 'Volkner', 'gym-leader', 4, NULL, 'volkner', 8),
  -- Aaron
  (8009, 8, NULL, 'aaron', 'Aaron', 'elite-four', 12, NULL, 'aaron', 9),
  -- Bertha
  (8010, 8, NULL, 'bertha', 'Bertha', 'elite-four', 9, NULL, 'bertha', 10),
  -- Flint
  (8011, 8, NULL, 'flint', 'Flint', 'elite-four', 2, NULL, 'flint', 11),
  -- Lucian
  (8012, 8, NULL, 'lucian', 'Lucian', 'elite-four', 11, NULL, 'lucian', 12),
  -- Cynthia
  (8013, 8, NULL, 'cynthia', 'Cynthia', 'champion', NULL, NULL, 'cynthia', 13),
  -- Barry (rival)
  (8014, 8, NULL, 'barry', 'Barry', 'rival', NULL, NULL, 'barry', 14),
  -- Cyrus (boss)
  (8015, 8, NULL, 'cyrus', 'Cyrus', 'boss', NULL, NULL, 'cyrus', 15),
  -- Dialga (boss, diamond)
  (8016, 8, 12, 'dialga', 'Dialga', 'boss', 17, 15, 'dialga', 1),
  -- Palkia (boss, pearl)
  (8017, 8, 13, 'palkia', 'Palkia', 'boss', 3, 15, 'palkia', 1),
  -- Uxie (boss)
  (8018, 8, NULL, 'uxie', 'Uxie', 'boss', 11, NULL, 'uxie', 16),
  -- Azelf (boss)
  (8019, 8, NULL, 'azelf', 'Azelf', 'boss', 11, NULL, 'azelf', 17),
  -- Mesprit (boss)
  (8020, 8, NULL, 'mesprit', 'Mesprit', 'boss', 11, NULL, 'mesprit', 18),
  -- Giratina (boss)
  (8021, 8, NULL, 'giratina', 'Giratina', 'boss', 14, 15, 'giratina', 19),
  -- Cresselia (boss)
  (8022, 8, NULL, 'cresselia', 'Cresselia', 'boss', 11, NULL, 'cresselia', 20),
  -- Regigigas (boss)
  (8023, 8, NULL, 'regigigas', 'Regigigas', 'boss', 1, NULL, 'regigigas', 21),
  -- Heatran (boss)
  (8024, 8, NULL, 'heatran', 'Heatran', 'boss', 2, 17, 'heatran', 22);
