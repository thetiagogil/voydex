WITH
    m AS (
        SELECT
            *
        FROM
            (
                VALUES
                    -- Power changes
                    ('dig', 'generation-ii', NULL, 'ground', 60, 100, 10, 0, 'physical'),
                    ('double-edge', 'generation-ii', NULL, 'normal', 120, 100, 15, 0, 'physical'),
                    ('explosion', 'generation-ii', NULL, 'normal', 250, 100, 5, 0, 'physical'),
                    ('self-destruct', 'generation-ii', NULL, 'normal', 200, 100, 5, 0, 'physical'),
                    ('wing-attack', 'generation-ii', NULL, 'flying', 60, 100, 35, 0, 'physical'),
                    -- Accuracy changes
                    ('bide', 'generation-ii', NULL, 'normal', NULL, 100, 10, 1, 'physical'),
                    ('blizzard', 'generation-ii', NULL, 'ice', 110, 70, 5, 0, 'special'),
                    ('rock-throw', 'generation-ii', NULL, 'rock', 50, 90, 15, 0, 'physical'),
                    ('whirlwind', 'generation-ii', NULL, 'normal', NULL, 100, 20, -1, 'status'), -- Priority change too
                    -- PP changes
                    ('struggle', 'generation-ii', NULL, 'normal', 50, NULL, 1, 0, 'physical'),
                    -- Type changes
                    ('bite', 'generation-ii', NULL, 'dark', 60, 100, 25, 0, 'special'),
                    ('gust', 'generation-ii', NULL, 'flying', 40, 100, 35, 0, 'special'),
                    ('karate-chop', 'generation-ii', NULL, 'fighting', 50, 100, 25, 0, 'physical'),
                    ('sand-attack', 'generation-ii', NULL, 'ground', NULL, 100, 15, 0, 'status'),
                    -- Priority changes
                    ('roar', 'generation-ii', NULL, 'normal', NULL, NULL, 20, -1, 'status'),
            ) AS m (move_slug, generation_start_slug, version_group_start_slug, type_slug, power, accuracy, pp, priority, damage_class)
    )
INSERT INTO
    meta.move_attributes (move_id, generation_start_id, version_group_start_id, type_id, power, accuracy, pp, priority, damage_class)
SELECT
    mv.id,
    gen.id,
    vg.id,
    typ.id,
    m.power,
    m.accuracy,
    m.pp,
    m.priority,
    CASE
        WHEN m.damage_class IS NULL THEN NULL
        ELSE CAST(m.damage_class AS meta.move_damage_class)
    END
FROM
    m
    LEFT JOIN meta.moves mv ON mv.slug = m.move_slug
    JOIN meta.generations gen ON gen.slug = m.generation_start_slug
    LEFT JOIN meta.version_groups vg ON vg.slug = m.version_group_start_slug
    LEFT JOIN meta.types typ ON typ.slug = m.type_slug ON CONFLICT (move_id, generation_start_id, version_group_start_id) DO NOTHING;