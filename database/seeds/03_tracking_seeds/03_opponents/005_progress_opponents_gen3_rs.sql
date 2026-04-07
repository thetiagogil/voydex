-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.opponents
-- Scope: version-group-specific (rs, VG 5)
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
            (5, NULL::INTEGER, 'roxanne', 'Roxanne', 'gym_leader', 13, NULL::INTEGER, NULL::TEXT, 1),
            (5, NULL, 'brawly', 'Brawly', 'gym_leader', 7, NULL, NULL, 2),
            (5, NULL, 'wattson', 'Wattson', 'gym_leader', 4, NULL, NULL, 3),
            (5, NULL, 'flannery', 'Flannery', 'gym_leader', 2, NULL, NULL, 4),
            (5, NULL, 'norman', 'Norman', 'gym_leader', 1, NULL, NULL, 5),
            (5, NULL, 'winona', 'Winona', 'gym_leader', 10, NULL, NULL, 6),
            (5, NULL, 'tate-and-liza', 'Tate & Liza', 'gym_leader', 11, NULL, NULL, 7),
            (5, NULL, 'wallace', 'Wallace', 'gym_leader', 3, NULL, NULL, 8),
            (5, NULL, 'sidney', 'Sidney', 'elite_four', 16, NULL, NULL, 9),
            (5, NULL, 'phoebe', 'Phoebe', 'elite_four', 14, NULL, NULL, 10),
            (5, NULL, 'glacia', 'Glacia', 'elite_four', 6, NULL, NULL, 11),
            (5, NULL, 'drake', 'Drake', 'elite_four', 15, NULL, NULL, 12),
            (5, NULL, 'steven', 'Steven', 'champion', 17, NULL, NULL, 13)
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
