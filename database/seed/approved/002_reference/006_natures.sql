-- Generated from PokeAPI (/nature)
-- Generated at: 2025-10-19T16:12:33.173Z
WITH
    n AS (
        SELECT
            *
        FROM
            (
                VALUES
                    (1, 'hardy', 'Hardy', 'generation-iii', NULL, NULL, NULL, NULL),
                    (2, 'bold', 'Bold', 'generation-iii', 'defense', 'attack', 'sour', NULL),
                    (3, 'modest', 'Modest', 'generation-iii', 'special-attack', 'attack', 'dry', NULL),
                    (4, 'calm', 'Calm', 'generation-iii', 'special-defense', 'attack', 'bitter', NULL),
                    (5, 'timid', 'Timid', 'generation-iii', 'speed', 'attack', 'sweet', NULL),
                    (6, 'lonely', 'Lonely', 'generation-iii', 'attack', 'defense', 'spicy', NULL),
                    (7, 'docile', 'Docile', 'generation-iii', NULL, NULL, NULL, NULL),
                    (8, 'mild', 'Mild', 'generation-iii', 'special-attack', 'defense', 'dry', NULL),
                    (9, 'gentle', 'Gentle', 'generation-iii', 'special-defense', 'defense', 'bitter', NULL),
                    (10, 'hasty', 'Hasty', 'generation-iii', 'speed', 'defense', 'sweet', NULL),
                    (11, 'adamant', 'Adamant', 'generation-iii', 'attack', 'special-attack', 'spicy', NULL),
                    (12, 'impish', 'Impish', 'generation-iii', 'defense', 'special-attack', 'sour', NULL),
                    (13, 'bashful', 'Bashful', 'generation-iii', NULL, NULL, NULL, NULL),
                    (14, 'careful', 'Careful', 'generation-iii', 'special-defense', 'special-attack', 'bitter', NULL),
                    (15, 'rash', 'Rash', 'generation-iii', 'special-attack', 'special-defense', 'dry', NULL),
                    (16, 'jolly', 'Jolly', 'generation-iii', 'speed', 'special-attack', 'sweet', NULL),
                    (17, 'naughty', 'Naughty', 'generation-iii', 'attack', 'special-defense', 'spicy', NULL),
                    (18, 'lax', 'Lax', 'generation-iii', 'defense', 'special-defense', 'sour', NULL),
                    (19, 'quirky', 'Quirky', 'generation-iii', NULL, NULL, NULL, NULL),
                    (20, 'naive', 'Naive', 'generation-iii', 'speed', 'special-defense', 'sweet', NULL),
                    (21, 'brave', 'Brave', 'generation-iii', 'attack', 'speed', 'spicy', NULL),
                    (22, 'relaxed', 'Relaxed', 'generation-iii', 'defense', 'speed', 'sour', NULL),
                    (23, 'quiet', 'Quiet', 'generation-iii', 'special-attack', 'speed', 'dry', NULL),
                    (24, 'sassy', 'Sassy', 'generation-iii', 'special-defense', 'speed', 'bitter', NULL),
                    (25, 'serious', 'Serious', 'generation-iii', NULL, NULL, NULL, NULL)
            ) AS n (id, slug, name, generation_slug, increased_stat, decreased_stat, liked_flavor, disliked_flavor)
    )
INSERT INTO
    dex.natures (id, slug, name, generation_introduced_id, increased_stat, decreased_stat, liked_flavor, disliked_flavor)
SELECT
    n.id,
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