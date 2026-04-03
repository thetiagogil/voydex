-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (bdsp, VG 21)
-- ============================================================================
INSERT INTO
    progress.opponents (version_group_id, game_id, slug, name, opponent_role, specialty_type_1_id, sprite_url, sort_order)
VALUES
    -- Gym Leaders (DP order)
    (
        21,
        NULL,
        'roark',
        'Roark',
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
        21,
        NULL,
        'gardenia',
        'Gardenia',
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
        2
    ),
    (
        21,
        NULL,
        'maylene',
        'Maylene',
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
        3
    ),
    (
        21,
        NULL,
        'crasher-wake',
        'Crasher Wake',
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
        4
    ),
    (
        21,
        NULL,
        'fantina',
        'Fantina',
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
        5
    ),
    (
        21,
        NULL,
        'byron',
        'Byron',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'steel'
        ),
        NULL,
        6
    ),
    (
        21,
        NULL,
        'candice',
        'Candice',
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
        7
    ),
    (
        21,
        NULL,
        'volkner',
        'Volkner',
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
        8
    ),
    -- Elite Four
    (
        21,
        NULL,
        'aaron',
        'Aaron',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'bug'
        ),
        NULL,
        9
    ),
    (
        21,
        NULL,
        'bertha',
        'Bertha',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'ground'
        ),
        NULL,
        10
    ),
    (
        21,
        NULL,
        'flint',
        'Flint',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'fire'
        ),
        NULL,
        11
    ),
    (
        21,
        NULL,
        'lucian',
        'Lucian',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'psychic'
        ),
        NULL,
        12
    ),
    -- Champion
    (21, NULL, 'cynthia', 'Cynthia', 'champion', NULL, NULL, 13);