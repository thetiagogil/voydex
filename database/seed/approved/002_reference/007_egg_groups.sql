-- Generated from PokeAPI (/egg-group)
-- Generated at: 2025-10-19T16:12:44.295Z
WITH
    e AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('monster', 'Monster', 'generation-ii'),
                    ('water1', 'Water1', 'generation-ii'),
                    ('bug', 'Bug', 'generation-ii'),
                    ('flying', 'Flying', 'generation-ii'),
                    ('ground', 'Ground', 'generation-ii'),
                    ('fairy', 'Fairy', 'generation-ii'),
                    ('plant', 'Plant', 'generation-ii'),
                    ('humanshape', 'Humanshape', 'generation-ii'),
                    ('water3', 'Water3', 'generation-ii'),
                    ('mineral', 'Mineral', 'generation-ii'),
                    ('indeterminate', 'Indeterminate', 'generation-ii'),
                    ('water2', 'Water2', 'generation-ii'),
                    ('ditto', 'Ditto', 'generation-ii'),
                    ('dragon', 'Dragon', 'generation-ii'),
                    ('no-eggs', 'No Eggs', 'generation-ii')
            ) AS e (slug, name, generation_slug)
    )
INSERT INTO
    dex.egg_groups (slug, name, generation_introduced_id)
SELECT
    e.slug,
    e.name,
    gen.id
FROM
    e
    JOIN meta.generations gen ON gen.slug = e.generation_slug ON CONFLICT (slug) DO NOTHING;