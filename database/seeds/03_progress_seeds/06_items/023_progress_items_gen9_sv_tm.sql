-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (sv-tm, VG 24)
-- Version Group: 24 (Scarlet / Violet — The Teal Mask)
-- Kitakami story with Ogerpon. Kieran and Carmine are key characters.
-- No gym badges. No starter choice.
WITH
    seed_data (
        version_group_id,
        game_id,
        category_slug,
        item_type_slug,
        slug,
        name,
        description,
        sort_order,
        is_optional
    ) AS (
        VALUES
            (24, NULL::INTEGER, 'main-story', 'story-checkpoint', 'arrive-kitakami', 'Arrive in Kitakami', 'Arrive at Mossui Town in Kitakami.', 1, FALSE),
            (24, NULL, 'main-story', 'story-checkpoint', 'festival-of-masks', 'Festival of Masks', 'Attend the Festival of Masks.', 2, FALSE),
            (24, NULL, 'main-story', 'story-battle', 'kieran-battle-1', 'Kieran Battle 1', 'Defeat Kieran in the first battle.', 3, FALSE),
            (24, NULL, 'main-story', 'story-checkpoint', 'loyal-three-quest', 'Loyal Three Quest', 'Confront the Loyal Three at the shrines.', 4, FALSE),
            (24, NULL, 'main-story', 'story-battle', 'kieran-battle-2', 'Kieran Battle 2', 'Defeat Kieran in the final battle.', 5, FALSE),
            (24, NULL, 'pokemon', 'pokemon-milestone', 'ogerpon', 'Ogerpon', 'Encounter Ogerpon at the Dreaded Den.', 1, TRUE),
            (24, NULL, 'pokemon', 'pokemon-milestone', 'bloodmoon-ursaluna', 'Bloodmoon Ursaluna', 'Encounter Bloodmoon Ursaluna in Kitakami Wilds.', 2, TRUE)
    )
INSERT INTO
    progress.items (
        version_group_id,
        game_id,
        category_id,
        item_type_id,
        slug,
        name,
        description,
        sort_order,
        is_optional
    )
SELECT
    s.version_group_id,
    s.game_id,
    c.id,
    t.id,
    s.slug,
    s.name,
    s.description,
    s.sort_order,
    s.is_optional
FROM
    seed_data s
    JOIN progress.categories c ON c.slug = s.category_slug
    JOIN progress.item_types t ON t.slug = s.item_type_slug;
