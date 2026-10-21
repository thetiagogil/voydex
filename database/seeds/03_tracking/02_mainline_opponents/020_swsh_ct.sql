-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Crown Tundra, Crown Tundra expedition, Calyrex, and Legendary clue pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and GamerGuides.
-- Scope: Pokémon The Crown Tundra major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for The Crown Tundra major fights. Game-specific rows are scoped where the source game changes the opponent.
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
  -- Peony
  (20001, 20, NULL, 'peony', 'Peony', 'boss', 17, NULL, 'peony', 1),
  -- Calyrex
  (20002, 20, NULL, 'calyrex', 'Calyrex', 'boss', 11, 5, 'calyrex', 2),
  -- Glastrier (boss)
  (20003, 20, NULL, 'glastrier', 'Glastrier', 'boss', 6, NULL, 'glastrier', 3),
  -- Spectrier (boss)
  (20004, 20, NULL, 'spectrier', 'Spectrier', 'boss', 14, NULL, 'spectrier', 4),
  -- Registeel (boss)
  (20005, 20, NULL, 'registeel', 'Registeel', 'boss', 17, NULL, 'registeel', 5),
  -- Regirock (boss)
  (20006, 20, NULL, 'regirock', 'Regirock', 'boss', 13, NULL, 'regirock', 6),
  -- Regice (boss)
  (20007, 20, NULL, 'regice', 'Regice', 'boss', 6, NULL, 'regice', 7),
  -- Regieleki (boss)
  (20008, 20, NULL, 'regieleki', 'Regieleki', 'boss', 4, NULL, 'regieleki', 8),
  -- Regidrago (boss)
  (20009, 20, NULL, 'regidrago', 'Regidrago', 'boss', 15, NULL, 'regidrago', 9),
  -- Galarian Articuno (boss)
  (20010, 20, NULL, 'galarian-articuno', 'Galarian Articuno', 'boss', 11, 10, 'galarian-articuno', 10),
  -- Galarian Zapdos (boss)
  (20011, 20, NULL, 'galarian-zapdos', 'Galarian Zapdos', 'boss', 7, 10, 'galarian-zapdos', 11),
  -- Galarian Moltres (boss)
  (20012, 20, NULL, 'galarian-moltres', 'Galarian Moltres', 'boss', 16, 10, 'galarian-moltres', 12),
  -- Cobalion (boss)
  (20013, 20, NULL, 'cobalion', 'Cobalion', 'boss', 17, 7, 'cobalion', 13),
  -- Terrakion (boss)
  (20014, 20, NULL, 'terrakion', 'Terrakion', 'boss', 13, 7, 'terrakion', 14),
  -- Virizion (boss)
  (20015, 20, NULL, 'virizion', 'Virizion', 'boss', 5, 7, 'virizion', 15),
  -- Keldeo (boss)
  (20016, 20, NULL, 'keldeo', 'Keldeo', 'boss', 3, 7, 'keldeo', 16);
