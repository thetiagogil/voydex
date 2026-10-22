-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Terastal phenomenon and Stellar type pages.
-- Cross-check: Serebii Scarlet / Violet Terastal and The Indigo Disk pages.
-- Scope note: every type is a Tera Type from Scarlet / Violet, with the same id as its type;
-- Stellar arrives with The Indigo Disk and has no matching type.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 9
-- Table: reference.tera_types
-- Scope: the 18 types and Stellar.
INSERT INTO reference.tera_types (id, slug, name, type_id, introduced_version_group_id, sort_order)
VALUES
  -- Normal
  (1, 'normal', 'Normal', 1, 23, 1),
  -- Fire
  (2, 'fire', 'Fire', 2, 23, 2),
  -- Water
  (3, 'water', 'Water', 3, 23, 3),
  -- Electric
  (4, 'electric', 'Electric', 4, 23, 4),
  -- Grass
  (5, 'grass', 'Grass', 5, 23, 5),
  -- Ice
  (6, 'ice', 'Ice', 6, 23, 6),
  -- Fighting
  (7, 'fighting', 'Fighting', 7, 23, 7),
  -- Poison
  (8, 'poison', 'Poison', 8, 23, 8),
  -- Ground
  (9, 'ground', 'Ground', 9, 23, 9),
  -- Flying
  (10, 'flying', 'Flying', 10, 23, 10),
  -- Psychic
  (11, 'psychic', 'Psychic', 11, 23, 11),
  -- Bug
  (12, 'bug', 'Bug', 12, 23, 12),
  -- Rock
  (13, 'rock', 'Rock', 13, 23, 13),
  -- Ghost
  (14, 'ghost', 'Ghost', 14, 23, 14),
  -- Dragon
  (15, 'dragon', 'Dragon', 15, 23, 15),
  -- Dark
  (16, 'dark', 'Dark', 16, 23, 16),
  -- Steel
  (17, 'steel', 'Steel', 17, 23, 17),
  -- Fairy
  (18, 'fairy', 'Fairy', 18, 23, 18),
  -- Stellar (The Indigo Disk)
  (19, 'stellar', 'Stellar', NULL, 25, 19);
