-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (hgss, VG 10)
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
            (10, NULL::INTEGER, 'falkner', 'Falkner', 'gym_leader', 10, NULL::INTEGER, NULL::TEXT, 1),
            (10, NULL, 'bugsy', 'Bugsy', 'gym_leader', 12, NULL, NULL, 2),
            (10, NULL, 'whitney', 'Whitney', 'gym_leader', 1, NULL, NULL, 3),
            (10, NULL, 'morty', 'Morty', 'gym_leader', 14, NULL, NULL, 4),
            (10, NULL, 'chuck', 'Chuck', 'gym_leader', 7, NULL, NULL, 5),
            (10, NULL, 'jasmine', 'Jasmine', 'gym_leader', 17, NULL, NULL, 6),
            (10, NULL, 'pryce', 'Pryce', 'gym_leader', 6, NULL, NULL, 7),
            (10, NULL, 'clair', 'Clair', 'gym_leader', 15, NULL, NULL, 8),
            (10, NULL, 'will', 'Will', 'elite_four', 11, NULL, NULL, 9),
            (10, NULL, 'koga', 'Koga', 'elite_four', 8, NULL, NULL, 10),
            (10, NULL, 'bruno', 'Bruno', 'elite_four', 7, NULL, NULL, 11),
            (10, NULL, 'karen', 'Karen', 'elite_four', 16, NULL, NULL, 12),
            (10, NULL, 'lance', 'Lance', 'champion', 15, NULL, NULL, 13),
            (10, NULL, 'lt-surge-kanto', 'Lt. Surge', 'gym_leader', 4, NULL, NULL, 14),
            (10, NULL, 'sabrina-kanto', 'Sabrina', 'gym_leader', 11, NULL, NULL, 15),
            (10, NULL, 'erika-kanto', 'Erika', 'gym_leader', 5, NULL, NULL, 16),
            (10, NULL, 'janine', 'Janine', 'gym_leader', 8, NULL, NULL, 17),
            (10, NULL, 'misty-kanto', 'Misty', 'gym_leader', 3, NULL, NULL, 18),
            (10, NULL, 'brock-kanto', 'Brock', 'gym_leader', 13, NULL, NULL, 19),
            (10, NULL, 'blaine-kanto', 'Blaine', 'gym_leader', 2, NULL, NULL, 20),
            (10, NULL, 'blue-kanto', 'Blue', 'gym_leader', NULL, NULL, NULL, 21),
            (10, NULL, 'red', 'Red', 'champion', NULL, NULL, NULL, 22)
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
