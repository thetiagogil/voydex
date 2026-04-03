-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (sv-id, VG 25)
-- ============================================================================
INSERT INTO
    progress.opponents (version_group_id, game_id, slug, name, opponent_role, specialty_type_1_id, sprite_url, sort_order)
VALUES
    -- BB League Elite Four
    (
        25,
        NULL,
        'crispin',
        'Crispin',
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
        1
    ),
    (
        25,
        NULL,
        'amarys',
        'Amarys',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'steel'
        ),
        NULL,
        2
    ),
    (
        25,
        NULL,
        'lacey',
        'Lacey',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'fairy'
        ),
        NULL,
        3
    ),
    (
        25,
        NULL,
        'drayton',
        'Drayton',
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
        4
    ),
    -- Champion
    (25, NULL, 'kieran', 'Kieran', 'champion', NULL, NULL, 5);