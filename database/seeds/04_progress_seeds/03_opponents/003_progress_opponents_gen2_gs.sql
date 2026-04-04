-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (gs, VG 3)
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
            (3, NULL::INTEGER, 'falkner', 'Falkner', 'gym_leader', 10, NULL::INTEGER, NULL::TEXT, 1),
            (3, NULL, 'bugsy', 'Bugsy', 'gym_leader', 12, NULL, NULL, 2),
            (3, NULL, 'whitney', 'Whitney', 'gym_leader', 1, NULL, NULL, 3),
            (3, NULL, 'morty', 'Morty', 'gym_leader', 14, NULL, NULL, 4),
            (3, NULL, 'chuck', 'Chuck', 'gym_leader', 7, NULL, NULL, 5),
            (3, NULL, 'jasmine', 'Jasmine', 'gym_leader', 17, NULL, NULL, 6),
            (3, NULL, 'pryce', 'Pryce', 'gym_leader', 6, NULL, NULL, 7),
            (3, NULL, 'clair', 'Clair', 'gym_leader', 15, NULL, NULL, 8),
            (3, NULL, 'will', 'Will', 'elite_four', 11, NULL, NULL, 9),
            (3, NULL, 'koga', 'Koga', 'elite_four', 8, NULL, NULL, 10),
            (3, NULL, 'bruno', 'Bruno', 'elite_four', 7, NULL, NULL, 11),
            (3, NULL, 'karen', 'Karen', 'elite_four', 16, NULL, NULL, 12),
            (3, NULL, 'lance', 'Lance', 'champion', 15, NULL, NULL, 13),
            (3, NULL, 'lt-surge-kanto', 'Lt. Surge', 'gym_leader', 4, NULL, NULL, 14),
            (3, NULL, 'sabrina-kanto', 'Sabrina', 'gym_leader', 11, NULL, NULL, 15),
            (3, NULL, 'erika-kanto', 'Erika', 'gym_leader', 5, NULL, NULL, 16),
            (3, NULL, 'janine', 'Janine', 'gym_leader', 8, NULL, NULL, 17),
            (3, NULL, 'misty-kanto', 'Misty', 'gym_leader', 3, NULL, NULL, 18),
            (3, NULL, 'brock-kanto', 'Brock', 'gym_leader', 13, NULL, NULL, 19),
            (3, NULL, 'blaine-kanto', 'Blaine', 'gym_leader', 2, NULL, NULL, 20),
            (3, NULL, 'blue-kanto', 'Blue', 'gym_leader', NULL, NULL, NULL, 21),
            (3, NULL, 'red', 'Red', 'champion', NULL, NULL, NULL, 22)
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
