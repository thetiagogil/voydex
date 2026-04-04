-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (crystal, VG 4)
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
            (4, NULL::INTEGER, 'falkner', 'Falkner', 'gym_leader', 10, NULL::INTEGER, NULL::TEXT, 1),
            (4, NULL, 'bugsy', 'Bugsy', 'gym_leader', 12, NULL, NULL, 2),
            (4, NULL, 'whitney', 'Whitney', 'gym_leader', 1, NULL, NULL, 3),
            (4, NULL, 'morty', 'Morty', 'gym_leader', 14, NULL, NULL, 4),
            (4, NULL, 'chuck', 'Chuck', 'gym_leader', 7, NULL, NULL, 5),
            (4, NULL, 'jasmine', 'Jasmine', 'gym_leader', 17, NULL, NULL, 6),
            (4, NULL, 'pryce', 'Pryce', 'gym_leader', 6, NULL, NULL, 7),
            (4, NULL, 'clair', 'Clair', 'gym_leader', 15, NULL, NULL, 8),
            (4, NULL, 'will', 'Will', 'elite_four', 11, NULL, NULL, 9),
            (4, NULL, 'koga', 'Koga', 'elite_four', 8, NULL, NULL, 10),
            (4, NULL, 'bruno', 'Bruno', 'elite_four', 7, NULL, NULL, 11),
            (4, NULL, 'karen', 'Karen', 'elite_four', 16, NULL, NULL, 12),
            (4, NULL, 'lance', 'Lance', 'champion', 15, NULL, NULL, 13),
            (4, NULL, 'lt-surge-kanto', 'Lt. Surge', 'gym_leader', 4, NULL, NULL, 14),
            (4, NULL, 'sabrina-kanto', 'Sabrina', 'gym_leader', 11, NULL, NULL, 15),
            (4, NULL, 'erika-kanto', 'Erika', 'gym_leader', 5, NULL, NULL, 16),
            (4, NULL, 'janine', 'Janine', 'gym_leader', 8, NULL, NULL, 17),
            (4, NULL, 'misty-kanto', 'Misty', 'gym_leader', 3, NULL, NULL, 18),
            (4, NULL, 'brock-kanto', 'Brock', 'gym_leader', 13, NULL, NULL, 19),
            (4, NULL, 'blaine-kanto', 'Blaine', 'gym_leader', 2, NULL, NULL, 20),
            (4, NULL, 'blue-kanto', 'Blue', 'gym_leader', NULL, NULL, NULL, 21),
            (4, NULL, 'red', 'Red', 'champion', NULL, NULL, NULL, 22)
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
