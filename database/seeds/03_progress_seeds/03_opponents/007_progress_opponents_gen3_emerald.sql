-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (emerald, VG 6)
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
            (6, NULL::INTEGER, 'roxanne', 'Roxanne', 'gym_leader', 13, NULL::INTEGER, NULL::TEXT, 1),
            (6, NULL, 'brawly', 'Brawly', 'gym_leader', 7, NULL, NULL, 2),
            (6, NULL, 'wattson', 'Wattson', 'gym_leader', 4, NULL, NULL, 3),
            (6, NULL, 'flannery', 'Flannery', 'gym_leader', 2, NULL, NULL, 4),
            (6, NULL, 'norman', 'Norman', 'gym_leader', 1, NULL, NULL, 5),
            (6, NULL, 'winona', 'Winona', 'gym_leader', 10, NULL, NULL, 6),
            (6, NULL, 'tate-and-liza', 'Tate & Liza', 'gym_leader', 11, NULL, NULL, 7),
            (6, NULL, 'juan', 'Juan', 'gym_leader', 3, NULL, NULL, 8),
            (6, NULL, 'sidney', 'Sidney', 'elite_four', 16, NULL, NULL, 9),
            (6, NULL, 'phoebe', 'Phoebe', 'elite_four', 14, NULL, NULL, 10),
            (6, NULL, 'glacia', 'Glacia', 'elite_four', 6, NULL, NULL, 11),
            (6, NULL, 'drake', 'Drake', 'elite_four', 15, NULL, NULL, 12),
            (6, NULL, 'wallace', 'Wallace', 'champion', 3, NULL, NULL, 13)
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
    opponent_role::progress.opponent_role,
    specialty_type_1_id,
    specialty_type_2_id,
    sprite_url,
    sort_order
FROM
    seed_data;
