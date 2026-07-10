-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product definition.
-- Cross-check: Bulbapedia and official Pokémon release history.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon generation rows used by games, mechanics timelines, and Pokémon data.
-- ============================================================================
INSERT INTO reference.generations (id, slug, name, start_year, sort_order)
VALUES
  -- Generation I
  (1, 'generation-1', 'Generation I', 1996, 1),
  -- Generation II
  (2, 'generation-2', 'Generation II', 1999, 2),
  -- Generation III
  (3, 'generation-3', 'Generation III', 2002, 3),
  -- Generation IV
  (4, 'generation-4', 'Generation IV', 2006, 4),
  -- Generation V
  (5, 'generation-5', 'Generation V', 2010, 5),
  -- Generation VI
  (6, 'generation-6', 'Generation VI', 2013, 6),
  -- Generation VII
  (7, 'generation-7', 'Generation VII', 2016, 7),
  -- Generation VIII
  (8, 'generation-8', 'Generation VIII', 2019, 8),
  -- Generation IX
  (9, 'generation-9', 'Generation IX', 2022, 9);
