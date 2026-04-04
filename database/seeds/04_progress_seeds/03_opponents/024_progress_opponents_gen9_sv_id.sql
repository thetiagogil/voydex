-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (sv-id, VG 25)
WITH
    seed_data (
        version_group_id,
        game_id,
        slug,
        name,
        opponent_role,
        specialty_type_1_id,
        specialty_type_2_id,
        sprite_url,
        sort_order
    ) AS (
        VALUES
            (25, NULL::INTEGER, 'crispin', 'Crispin', 'elite_four', 2, NULL::INTEGER, NULL::TEXT, 1),
            (25, NULL, 'amarys', 'Amarys', 'elite_four', 17, NULL, NULL, 2),
            (25, NULL, 'lacey', 'Lacey', 'elite_four', 18, NULL, NULL, 3),
            (25, NULL, 'drayton', 'Drayton', 'elite_four', 15, NULL, NULL, 4),
            (25, NULL, 'kieran', 'Kieran', 'champion', NULL, NULL, NULL, 5)
    )
INSERT INTO
    progress.opponents (
        version_group_id,
        game_id,
        slug,
        name,
        opponent_role,
        specialty_type_1_id,
        specialty_type_2_id,
        sprite_url,
        sort_order
    )
SELECT
    version_group_id,
    game_id,
    slug,
    name,
    opponent_role,
    specialty_type_1_id,
    specialty_type_2_id,
    sprite_url,
    sort_order
FROM
    seed_data;
