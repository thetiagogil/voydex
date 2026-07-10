-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product definition.
-- Cross-check: Bulbapedia and official Pokémon region history.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon world region rows used by mainline game metadata.
-- ============================================================================
INSERT INTO reference.regions (id, slug, name, sort_order)
VALUES
  -- Kanto
  (1, 'kanto', 'Kanto', 1),
  -- Johto
  (2, 'johto', 'Johto', 2),
  -- Hoenn
  (3, 'hoenn', 'Hoenn', 3),
  -- Sinnoh
  (4, 'sinnoh', 'Sinnoh', 4),
  -- Unova
  (5, 'unova', 'Unova', 5),
  -- Kalos
  (6, 'kalos', 'Kalos', 6),
  -- Alola
  (7, 'alola', 'Alola', 7),
  -- Galar
  (8, 'galar', 'Galar', 8),
  -- Hisui
  (9, 'hisui', 'Hisui', 9),
  -- Paldea
  (10, 'paldea', 'Paldea', 10);
