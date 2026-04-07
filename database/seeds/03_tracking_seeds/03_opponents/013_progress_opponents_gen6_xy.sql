-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.opponents
-- Scope: version-group-specific (xy, VG 13)
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
            (13, NULL::INTEGER, 'viola', 'Viola', 'gym_leader', 12, NULL::INTEGER, NULL::TEXT, 1),
            (13, NULL, 'grant', 'Grant', 'gym_leader', 13, NULL, NULL, 2),
            (13, NULL, 'korrina', 'Korrina', 'gym_leader', 7, NULL, NULL, 3),
            (13, NULL, 'ramos', 'Ramos', 'gym_leader', 5, NULL, NULL, 4),
            (13, NULL, 'clemont', 'Clemont', 'gym_leader', 4, NULL, NULL, 5),
            (13, NULL, 'valerie', 'Valerie', 'gym_leader', 18, NULL, NULL, 6),
            (13, NULL, 'olympia', 'Olympia', 'gym_leader', 11, NULL, NULL, 7),
            (13, NULL, 'wulfric', 'Wulfric', 'gym_leader', 6, NULL, NULL, 8),
            (13, NULL, 'malva', 'Malva', 'elite_four', 2, NULL, NULL, 9),
            (13, NULL, 'siebold', 'Siebold', 'elite_four', 3, NULL, NULL, 10),
            (13, NULL, 'wikstrom', 'Wikstrom', 'elite_four', 17, NULL, NULL, 11),
            (13, NULL, 'drasna', 'Drasna', 'elite_four', 15, NULL, NULL, 12),
            (13, NULL, 'diantha', 'Diantha', 'champion', NULL, NULL, NULL, 13)
    )
INSERT INTO
    tracking.opponents (
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
    opponent_role::tracking.opponent_role,
    specialty_type_1_id,
    specialty_type_2_id,
    sprite_url,
    sort_order
FROM
    seed_data;
