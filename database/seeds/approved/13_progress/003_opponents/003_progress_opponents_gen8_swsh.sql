-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (swsh, VG 18)
-- ============================================================================
INSERT INTO
    progress.opponents (version_group_id, game_id, slug, name, opponent_role, specialty_type_1_id, sprite_url, sort_order)
VALUES
    -- Gym Leaders (shared)
    (
        18,
        NULL,
        'milo',
        'Milo',
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
        1
    ),
    (
        18,
        NULL,
        'nessa',
        'Nessa',
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
        18,
        NULL,
        'kabu',
        'Kabu',
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
        3
    ),
    -- Gym Leaders (version-exclusive)
    (
        18,
        31,
        'bea',
        'Bea',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'fighting'
        ),
        NULL,
        4
    ),
    (
        18,
        32,
        'allister',
        'Allister',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'ghost'
        ),
        NULL,
        4
    ),
    -- Shared
    (
        18,
        NULL,
        'opal',
        'Opal',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'fairy'
        ),
        NULL,
        5
    ),
    -- Version-exclusive
    (
        18,
        31,
        'gordie',
        'Gordie',
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
        6
    ),
    (
        18,
        32,
        'melony',
        'Melony',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'ice'
        ),
        NULL,
        6
    ),
    -- Shared
    (
        18,
        NULL,
        'piers',
        'Piers',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'dark'
        ),
        NULL,
        7
    ),
    (
        18,
        NULL,
        'raihan',
        'Raihan',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'dragon'
        ),
        NULL,
        8
    ),
    -- Champion
    (18, NULL, 'leon', 'Leon', 'champion', NULL, NULL, 9);