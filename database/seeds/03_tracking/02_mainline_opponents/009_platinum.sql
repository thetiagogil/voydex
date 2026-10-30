-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and Platinum pages.
-- Cross-check: Pokémon Platinum source page.
-- Legendary encounters: Serebii, cross-checked with Pokémon Database and the pret disassemblies.
-- Galactic Commanders (Mars, Jupiter, Saturn): the pret pokeplatinum trainer data,
-- which names each battle's place, cross-checked with Bulbapedia's trainer pages.
-- Scope: Pokémon Platinum major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Platinum major fights.
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
  (9001, 9, NULL, 'roark', 'Roark', 'gym-leader', 13, NULL, 'roark', 1),
  -- Gardenia
  (9002, 9, NULL, 'gardenia', 'Gardenia', 'gym-leader', 5, NULL, 'gardenia', 2),
  -- Fantina
  (9003, 9, NULL, 'fantina', 'Fantina', 'gym-leader', 14, NULL, 'fantina', 3),
  -- Maylene
  (9004, 9, NULL, 'maylene', 'Maylene', 'gym-leader', 7, NULL, 'maylene', 4),
  -- Crasher Wake
  (9005, 9, NULL, 'crasher-wake', 'Crasher Wake', 'gym-leader', 3, NULL, 'crasher-wake', 5),
  -- Byron
  (9006, 9, NULL, 'byron', 'Byron', 'gym-leader', 17, NULL, 'byron', 6),
  -- Candice
  (9007, 9, NULL, 'candice', 'Candice', 'gym-leader', 6, NULL, 'candice', 7),
  -- Volkner
  (9008, 9, NULL, 'volkner', 'Volkner', 'gym-leader', 4, NULL, 'volkner', 8),
  -- Aaron
  (9009, 9, NULL, 'aaron', 'Aaron', 'elite-four', 12, NULL, 'aaron', 9),
  -- Bertha
  (9010, 9, NULL, 'bertha', 'Bertha', 'elite-four', 9, NULL, 'bertha', 10),
  -- Flint
  (9011, 9, NULL, 'flint', 'Flint', 'elite-four', 2, NULL, 'flint', 11),
  -- Lucian
  (9012, 9, NULL, 'lucian', 'Lucian', 'elite-four', 11, NULL, 'lucian', 12),
  -- Cynthia
  (9013, 9, NULL, 'cynthia', 'Cynthia', 'champion', NULL, NULL, 'cynthia', 13),
  -- Barry (rival)
  (9014, 9, NULL, 'barry', 'Barry', 'rival', NULL, NULL, 'barry', 14),
  -- Cyrus (boss)
  (9015, 9, NULL, 'cyrus', 'Cyrus', 'boss', NULL, NULL, 'cyrus', 15),
  -- Giratina (boss)
  (9016, 9, NULL, 'giratina', 'Giratina', 'boss', 14, 15, 'giratina', 16),
  -- Uxie (boss)
  (9017, 9, NULL, 'uxie', 'Uxie', 'boss', 11, NULL, 'uxie', 17),
  -- Azelf (boss)
  (9018, 9, NULL, 'azelf', 'Azelf', 'boss', 11, NULL, 'azelf', 18),
  -- Mesprit (boss)
  (9019, 9, NULL, 'mesprit', 'Mesprit', 'boss', 11, NULL, 'mesprit', 19),
  -- Heatran (boss)
  (9020, 9, NULL, 'heatran', 'Heatran', 'boss', 2, 17, 'heatran', 20),
  -- Cresselia (boss)
  (9021, 9, NULL, 'cresselia', 'Cresselia', 'boss', 11, NULL, 'cresselia', 21),
  -- Regigigas (boss)
  (9022, 9, NULL, 'regigigas', 'Regigigas', 'boss', 1, NULL, 'regigigas', 22),
  -- Dialga (boss)
  (9023, 9, NULL, 'dialga', 'Dialga', 'boss', 17, 15, 'dialga', 23),
  -- Palkia (boss)
  (9024, 9, NULL, 'palkia', 'Palkia', 'boss', 3, 15, 'palkia', 24),
  -- Articuno (boss)
  (9025, 9, NULL, 'articuno', 'Articuno', 'boss', 6, 10, 'articuno', 25),
  -- Zapdos (boss)
  (9026, 9, NULL, 'zapdos', 'Zapdos', 'boss', 4, 10, 'zapdos', 26),
  -- Moltres (boss)
  (9027, 9, NULL, 'moltres', 'Moltres', 'boss', 2, 10, 'moltres', 27),
  -- Mars (boss; Team Galactic Commander)
  (9028, 9, NULL, 'mars', 'Mars', 'boss', NULL, NULL, 'mars', 28),
  -- Jupiter (boss; Team Galactic Commander)
  (9029, 9, NULL, 'jupiter', 'Jupiter', 'boss', NULL, NULL, 'jupiter', 29),
  -- Saturn (boss; Team Galactic Commander)
  (9030, 9, NULL, 'saturn', 'Saturn', 'boss', NULL, NULL, 'saturn', 30),
  -- Mars & Jupiter (boss; the Multi Battle with Barry at Spear Pillar)
  (9031, 9, NULL, 'mars-jupiter', 'Mars & Jupiter', 'boss', NULL, NULL, 'mars', 31);
