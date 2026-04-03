-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (lgpe, VG 17)
-- ============================================================================
INSERT INTO
    progress.opponents (version_group_id, game_id, slug, name, opponent_role, specialty_type_1_id, sprite_url, sort_order)
VALUES
    -- Gym Leaders
    (
        17,
        NULL,
        'brock',
        'Brock',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'rock'
        ),
        NULL,
        1
    ),
    (
        17,
        NULL,
        'misty',
        'Misty',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'water'
        ),
        NULL,
        2
    ),
    (
        17,
        NULL,
        'lt-surge',
        'Lt. Surge',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'electric'
        ),
        NULL,
        3
    ),
    (
        17,
        NULL,
        'erika',
        'Erika',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'grass'
        ),
        NULL,
        4
    ),
    (
        17,
        NULL,
        'koga',
        'Koga',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'poison'
        ),
        NULL,
        5
    ),
    (
        17,
        NULL,
        'sabrina',
        'Sabrina',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'psychic'
        ),
        NULL,
        6
    ),
    (
        17,
        NULL,
        'blaine',
        'Blaine',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'fire'
        ),
        NULL,
        7
    ),
    (
        17,
        NULL,
        'giovanni',
        'Giovanni',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'ground'
        ),
        NULL,
        8
    ),
    -- Elite Four
    (
        17,
        NULL,
        'lorelei',
        'Lorelei',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'ice'
        ),
        NULL,
        9
    ),
    (
        17,
        NULL,
        'bruno',
        'Bruno',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'fighting'
        ),
        NULL,
        10
    ),
    (
        17,
        NULL,
        'agatha',
        'Agatha',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'ghost'
        ),
        NULL,
        11
    ),
    (
        17,
        NULL,
        'lance',
        'Lance',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'dragon'
        ),
        NULL,
        12
    ),
    -- Champion
    (17, NULL, 'rival', 'Trace', 'champion', NULL, NULL, 13),
    -- Story Boss
    (17, NULL, 'blue', 'Blue', 'story_boss', NULL, NULL, 14);