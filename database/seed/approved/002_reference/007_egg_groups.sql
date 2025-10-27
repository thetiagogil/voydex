-- Generated from PokeAPI (/egg-group)
-- Generated at: 2025-10-19T16:12:44.295Z
WITH
    e AS (
        SELECT
            *
        FROM
            (
                VALUES
                    (1, 'mineral', 'Mineral', 'generation-ii'),
                    (2, 'amorphous', 'Amorphous', 'generation-ii'),
                    (3, 'grass', 'Grass', 'generation-ii'),
                    (4, 'water-3', 'Water3', 'generation-ii'),
                    (5, 'water-2', 'Water2', 'generation-ii'),
                    (6, 'water-1', 'Water1', 'generation-ii'),
                    (7, 'bug', 'Bug', 'generation-ii'),
                    (8, 'dragon', 'Dragon', 'generation-ii'),
                    (9, 'flying', 'Flying', 'generation-ii'),
                    (10, 'field', 'Field', 'generation-ii'),
                    (11, 'human-like', 'Human-Like', 'generation-ii'),
                    (12, 'fairy', 'Fairy', 'generation-ii'),
                    (13, 'monster', 'Monster', 'generation-ii'),
                    (14, 'ditto', 'Ditto', 'generation-ii'),
                    (15, 'no-eggs-discovered', 'No Eggs Discovered', 'generation-ii')
            ) AS e (id, slug, name, generation_slug)
    )
INSERT INTO
    dex.egg_groups (id, slug, name, generation_introduced_id)
SELECT
    e.id,
    e.slug,
    e.name,
    gen.id
FROM
    e
    JOIN meta.generations gen ON gen.slug = e.generation_slug ON CONFLICT (slug) DO NOTHING;