-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (bw, VG 11)
-- ============================================================================
INSERT INTO
    progress.opponents (version_group_id, game_id, slug, name, opponent_role, specialty_type_1_id, sprite_url, sort_order)
VALUES
    (11, NULL, 'cilan-chili-cress', 'Cilan / Chili / Cress', 'gym_leader', NULL, NULL, 1),
    (
        11,
        NULL,
        'lenora',
        'Lenora',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'normal'
        ),
        NULL,
        2
    ),
    (
        11,
        NULL,
        'burgh',
        'Burgh',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'bug'
        ),
        NULL,
        3
    ),
    (
        11,
        NULL,
        'elesa',
        'Elesa',
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
        4
    ),
    (
        11,
        NULL,
        'clay',
        'Clay',
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
        5
    ),
    (
        11,
        NULL,
        'skyla',
        'Skyla',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'flying'
        ),
        NULL,
        6
    ),
    (
        11,
        NULL,
        'brycen',
        'Brycen',
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
        11,
        NULL,
        'drayden',
        'Drayden',
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
    (
        11,
        NULL,
        'shauntal',
        'Shauntal',
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
        9
    ),
    (
        11,
        NULL,
        'grimsley',
        'Grimsley',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'dark'
        ),
        NULL,
        10
    ),
    (
        11,
        NULL,
        'caitlin',
        'Caitlin',
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
        11
    ),
    (
        11,
        NULL,
        'marshal',
        'Marshal',
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
        12
    ),
    (11, NULL, 'n', 'N', 'story_boss', NULL, NULL, 13),
    (11, NULL, 'ghetsis', 'Ghetsis', 'story_boss', NULL, NULL, 14),
    (
        11,
        NULL,
        'alder',
        'Alder',
        'champion',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'bug'
        ),
        NULL,
        15
    );