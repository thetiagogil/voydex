-- Generated from PokeAPI (/egg-group)
-- Skipped slugs: unknown, stellar
-- Generated at: 2025-10-18T16:10:39.899Z

INSERT INTO dex.egg_groups (id, slug, name, generation_introduced_id) VALUES
(1, 'monster', 'Monster', 1),
(2, 'water1', 'Water1', 1),
(3, 'bug', 'Bug', 1),
(4, 'flying', 'Flying', 1),
(5, 'ground', 'Ground', 1),
(6, 'fairy', 'Fairy', 1),
(7, 'plant', 'Plant', 1),
(8, 'humanshape', 'Humanshape', 1),
(9, 'water3', 'Water3', 1),
(10, 'mineral', 'Mineral', 1),
(11, 'indeterminate', 'Indeterminate', 1),
(12, 'water2', 'Water2', 1),
(13, 'ditto', 'Ditto', 1),
(14, 'dragon', 'Dragon', 1),
(15, 'no-eggs', 'No Eggs', 1)
ON CONFLICT (id) DO NOTHING;
