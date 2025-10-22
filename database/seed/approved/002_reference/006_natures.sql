-- Generated from PokeAPI (/nature)
-- Generated at: 2025-10-19T16:12:33.173Z
WITH
    n AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('hardy', 'Hardy', 'generation-iii', NULL, NULL, NULL, NULL),
                    ('bold', 'Bold', 'generation-iii', 'defense', 'attack', 'sour', NULL),
                    ('modest', 'Modest', 'generation-iii', 'special-attack', 'attack', 'dry', NULL),
                    ('calm', 'Calm', 'generation-iii', 'special-defense', 'attack', 'bitter', NULL),
                    ('timid', 'Timid', 'generation-iii', 'speed', 'attack', 'sweet', NULL),
                    ('lonely', 'Lonely', 'generation-iii', 'attack', 'defense', 'spicy', NULL),
                    ('docile', 'Docile', 'generation-iii', NULL, NULL, NULL, NULL),
                    ('mild', 'Mild', 'generation-iii', 'special-attack', 'defense', 'dry', NULL),
                    ('gentle', 'Gentle', 'generation-iii', 'special-defense', 'defense', 'bitter', NULL),
                    ('hasty', 'Hasty', 'generation-iii', 'speed', 'defense', 'sweet', NULL),
                    ('adamant', 'Adamant', 'generation-iii', 'attack', 'special-attack', 'spicy', NULL),
                    ('impish', 'Impish', 'generation-iii', 'defense', 'special-attack', 'sour', NULL),
                    ('bashful', 'Bashful', 'generation-iii', NULL, NULL, NULL, NULL),
                    ('careful', 'Careful', 'generation-iii', 'special-defense', 'special-attack', 'bitter', NULL),
                    ('rash', 'Rash', 'generation-iii', 'special-attack', 'special-defense', 'dry', NULL),
                    ('jolly', 'Jolly', 'generation-iii', 'speed', 'special-attack', 'sweet', NULL),
                    ('naughty', 'Naughty', 'generation-iii', 'attack', 'special-defense', 'spicy', NULL),
                    ('lax', 'Lax', 'generation-iii', 'defense', 'special-defense', 'sour', NULL),
                    ('quirky', 'Quirky', 'generation-iii', NULL, NULL, NULL, NULL),
                    ('naive', 'Naive', 'generation-iii', 'speed', 'special-defense', 'sweet', NULL),
                    ('brave', 'Brave', 'generation-iii', 'attack', 'speed', 'spicy', NULL),
                    ('relaxed', 'Relaxed', 'generation-iii', 'defense', 'speed', 'sour', NULL),
                    ('quiet', 'Quiet', 'generation-iii', 'special-attack', 'speed', 'dry', NULL),
                    ('sassy', 'Sassy', 'generation-iii', 'special-defense', 'speed', 'bitter', NULL),
                    ('serious', 'Serious', 'generation-iii', NULL, NULL, NULL, NULL)
            ) AS n (slug, name, generation_slug, increased_stat, decreased_stat, liked_flavor, disliked_flavor)
    )
INSERT INTO
    dex.natures (slug, name, generation_introduced_id, increased_stat, decreased_stat, liked_flavor, disliked_flavor)
SELECT
    n.slug,
    n.name,
    gen.id,
    CASE
        WHEN n.increased_stat IS NULL THEN NULL
        ELSE CAST(n.increased_stat AS dex.stat_name)
    END,
    CASE
        WHEN n.decreased_stat IS NULL THEN NULL
        ELSE CAST(n.decreased_stat AS dex.stat_name)
    END,
    CASE
        WHEN n.liked_flavor IS NULL THEN NULL
        ELSE CAST(n.liked_flavor AS dex.berry_flavor)
    END,
    CASE
        WHEN n.disliked_flavor IS NULL THEN NULL
        ELSE CAST(n.disliked_flavor AS dex.berry_flavor)
    END
FROM
    n
    JOIN meta.generations gen ON gen.slug = n.generation_slug ON CONFLICT (slug) DO NOTHING;