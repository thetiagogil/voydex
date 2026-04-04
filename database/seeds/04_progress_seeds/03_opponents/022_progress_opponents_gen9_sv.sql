-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (sv, VG 23)
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
            (23, NULL::INTEGER, 'katy', 'Katy', 'gym_leader', 12, NULL::INTEGER, NULL::TEXT, 1),
            (23, NULL, 'brassius', 'Brassius', 'gym_leader', 5, NULL, NULL, 2),
            (23, NULL, 'iono', 'Iono', 'gym_leader', 4, NULL, NULL, 3),
            (23, NULL, 'kofu', 'Kofu', 'gym_leader', 3, NULL, NULL, 4),
            (23, NULL, 'larry', 'Larry', 'gym_leader', 1, NULL, NULL, 5),
            (23, NULL, 'ryme', 'Ryme', 'gym_leader', 14, NULL, NULL, 6),
            (23, NULL, 'tulip', 'Tulip', 'gym_leader', 11, NULL, NULL, 7),
            (23, NULL, 'grusha', 'Grusha', 'gym_leader', 6, NULL, NULL, 8),
            (23, NULL, 'giacomo', 'Giacomo', 'team_star_boss', 16, NULL, NULL, 9),
            (23, NULL, 'mela', 'Mela', 'team_star_boss', 2, NULL, NULL, 10),
            (23, NULL, 'atticus', 'Atticus', 'team_star_boss', 8, NULL, NULL, 11),
            (23, NULL, 'ortega', 'Ortega', 'team_star_boss', 18, NULL, NULL, 12),
            (23, NULL, 'eri', 'Eri', 'team_star_boss', 7, NULL, NULL, 13),
            (23, NULL, 'rika', 'Rika', 'elite_four', 9, NULL, NULL, 14),
            (23, NULL, 'poppy', 'Poppy', 'elite_four', 17, NULL, NULL, 15),
            (23, NULL, 'larry-e4', 'Larry', 'elite_four', 10, NULL, NULL, 16),
            (23, NULL, 'hassel', 'Hassel', 'elite_four', 15, NULL, NULL, 17),
            (23, NULL, 'geeta', 'Geeta', 'champion', NULL, NULL, NULL, 18),
            (23, NULL, 'nemona', 'Nemona', 'champion', NULL, NULL, NULL, 19),
            (23, NULL, 'professor-ai', 'The Professor', 'story_boss', NULL, NULL, NULL, 20)
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
