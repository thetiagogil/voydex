-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (sm, VG 15)
-- ============================================================================
INSERT INTO
    progress.opponents (version_group_id, game_id, slug, name, opponent_role, specialty_type_1_id, sprite_url, sort_order)
VALUES
    -- Trial Captains
    (
        15,
        NULL,
        'ilima',
        'Ilima',
        'trial_captain',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'normal'
        ),
        NULL,
        1
    ),
    (
        15,
        NULL,
        'lana',
        'Lana',
        'trial_captain',
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
        15,
        NULL,
        'kiawe',
        'Kiawe',
        'trial_captain',
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
    (
        15,
        NULL,
        'mallow',
        'Mallow',
        'trial_captain',
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
        15,
        NULL,
        'sophocles',
        'Sophocles',
        'trial_captain',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'electric'
        ),
        NULL,
        5
    ),
    (
        15,
        NULL,
        'acerola',
        'Acerola',
        'trial_captain',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'ghost'
        ),
        NULL,
        6
    ),
    -- Kahunas
    (
        15,
        NULL,
        'hala',
        'Hala',
        'kahuna',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'fighting'
        ),
        NULL,
        7
    ),
    (
        15,
        NULL,
        'olivia',
        'Olivia',
        'kahuna',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'rock'
        ),
        NULL,
        8
    ),
    (
        15,
        NULL,
        'nanu',
        'Nanu',
        'kahuna',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'dark'
        ),
        NULL,
        9
    ),
    (
        15,
        NULL,
        'hapu',
        'Hapu',
        'kahuna',
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
    -- Elite Four
    (
        15,
        NULL,
        'hala-e4',
        'Hala',
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
        11
    ),
    (
        15,
        NULL,
        'olivia-e4',
        'Olivia',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'rock'
        ),
        NULL,
        12
    ),
    (
        15,
        NULL,
        'acerola-e4',
        'Acerola',
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
        13
    ),
    (
        15,
        NULL,
        'kahili',
        'Kahili',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'flying'
        ),
        NULL,
        14
    ),
    -- Champion
    (15, NULL, 'kukui', 'Professor Kukui', 'champion', NULL, NULL, 15);