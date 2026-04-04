-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (oras, VG 14)
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
            (14, NULL::INTEGER, 'roxanne', 'Roxanne', 'gym_leader', 13, NULL::INTEGER, NULL::TEXT, 1),
            (14, NULL, 'brawly', 'Brawly', 'gym_leader', 7, NULL, NULL, 2),
            (14, NULL, 'wattson', 'Wattson', 'gym_leader', 4, NULL, NULL, 3),
            (14, NULL, 'flannery', 'Flannery', 'gym_leader', 2, NULL, NULL, 4),
            (14, NULL, 'norman', 'Norman', 'gym_leader', 1, NULL, NULL, 5),
            (14, NULL, 'winona', 'Winona', 'gym_leader', 10, NULL, NULL, 6),
            (14, NULL, 'tate-and-liza', 'Tate & Liza', 'gym_leader', 11, NULL, NULL, 7),
            (14, NULL, 'wallace', 'Wallace', 'gym_leader', 3, NULL, NULL, 8),
            (14, NULL, 'sidney', 'Sidney', 'elite_four', 16, NULL, NULL, 9),
            (14, NULL, 'phoebe', 'Phoebe', 'elite_four', 14, NULL, NULL, 10),
            (14, NULL, 'glacia', 'Glacia', 'elite_four', 6, NULL, NULL, 11),
            (14, NULL, 'drake', 'Drake', 'elite_four', 15, NULL, NULL, 12),
            (14, NULL, 'steven', 'Steven', 'champion', 17, NULL, NULL, 13)
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
