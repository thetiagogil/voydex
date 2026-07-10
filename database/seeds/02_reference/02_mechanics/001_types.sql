-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia type pages.
-- Cross-check: PokemonDB and PokeAPI snapshots for ID/name sanity only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon elemental type identity rows.
-- ============================================================================
INSERT INTO reference.types (id, slug, name, introduced_generation_id, sort_order)
VALUES
  -- Normal
  (1, 'normal', 'Normal', 1, 1),
  -- Fire
  (2, 'fire', 'Fire', 1, 2),
  -- Water
  (3, 'water', 'Water', 1, 3),
  -- Electric
  (4, 'electric', 'Electric', 1, 4),
  -- Grass
  (5, 'grass', 'Grass', 1, 5),
  -- Ice
  (6, 'ice', 'Ice', 1, 6),
  -- Fighting
  (7, 'fighting', 'Fighting', 1, 7),
  -- Poison
  (8, 'poison', 'Poison', 1, 8),
  -- Ground
  (9, 'ground', 'Ground', 1, 9),
  -- Flying
  (10, 'flying', 'Flying', 1, 10),
  -- Psychic
  (11, 'psychic', 'Psychic', 1, 11),
  -- Bug
  (12, 'bug', 'Bug', 1, 12),
  -- Rock
  (13, 'rock', 'Rock', 1, 13),
  -- Ghost
  (14, 'ghost', 'Ghost', 1, 14),
  -- Dragon
  (15, 'dragon', 'Dragon', 1, 15),
  -- Dark
  (16, 'dark', 'Dark', 2, 16),
  -- Steel
  (17, 'steel', 'Steel', 2, 17),
  -- Fairy
  (18, 'fairy', 'Fairy', 6, 18);
