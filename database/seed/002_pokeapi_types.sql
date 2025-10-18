-- Generated from PokeAPI (/type)
-- Skipped slugs: unknown, stellar
-- generation_introduced_id is derived from the PokeAPI generation field when present.
-- Generated at: 2025-10-18T15:23:23.979Z

INSERT INTO dex.types (id, slug, name, generation_introduced_id) VALUES
(1, 'normal', 'Normal', 1),
(2, 'fighting', 'Fighting', 1),
(3, 'flying', 'Flying', 1),
(4, 'poison', 'Poison', 1),
(5, 'ground', 'Ground', 1),
(6, 'rock', 'Rock', 1),
(7, 'bug', 'Bug', 1),
(8, 'ghost', 'Ghost', 1),
(9, 'steel', 'Steel', 2),
(10, 'fire', 'Fire', 1),
(11, 'water', 'Water', 1),
(12, 'grass', 'Grass', 1),
(13, 'electric', 'Electric', 1),
(14, 'psychic', 'Psychic', 1),
(15, 'ice', 'Ice', 1),
(16, 'dragon', 'Dragon', 1),
(17, 'dark', 'Dark', 2),
(18, 'fairy', 'Fairy', 6)
ON CONFLICT (id) DO NOTHING;
