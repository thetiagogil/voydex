-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia egg group pages.
-- Cross-check: PokemonDB egg group data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon egg group identity rows.
-- ============================================================================
INSERT INTO reference.egg_groups (id, slug, name, introduced_generation_id, sort_order)
VALUES
  -- Monster
  (1, 'monster', 'Monster', 2, 1),
  -- Water 1
  (2, 'water-1', 'Water 1', 2, 2),
  -- Water 2
  (3, 'water-2', 'Water 2', 2, 3),
  -- Water 3
  (4, 'water-3', 'Water 3', 2, 4),
  -- Bug
  (5, 'bug', 'Bug', 2, 5),
  -- Flying
  (6, 'flying', 'Flying', 2, 6),
  -- Field
  (7, 'field', 'Field', 2, 7),
  -- Fairy
  (8, 'fairy', 'Fairy', 2, 8),
  -- Grass
  (9, 'grass', 'Grass', 2, 9),
  -- Human-Like
  (10, 'human-like', 'Human-Like', 2, 10),
  -- Mineral
  (11, 'mineral', 'Mineral', 2, 11),
  -- Amorphous
  (12, 'amorphous', 'Amorphous', 2, 12),
  -- Dragon
  (13, 'dragon', 'Dragon', 2, 13),
  -- Ditto
  (14, 'ditto', 'Ditto', 2, 14),
  -- Undiscovered
  (15, 'undiscovered', 'Undiscovered', 2, 15);
