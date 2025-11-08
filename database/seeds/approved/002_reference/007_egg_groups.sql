WITH
    xxx AS (
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
            ) AS xxx (id, slug, name, generation_slug)
    )
INSERT INTO
    dex.egg_groups (id, slug, name, generation_introduced_id)
SELECT
    xxx.id,
    xxx.slug,
    xxx.name,
    gen.id
FROM
    xxx
    JOIN meta.generations gen ON gen.slug = xxx.generation_slug ON CONFLICT (slug) DO NOTHING;