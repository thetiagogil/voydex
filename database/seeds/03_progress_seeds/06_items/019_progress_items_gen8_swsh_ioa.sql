-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (swsh-ioa, VG 19)
-- Version Group: 19 (Sword / Shield — The Isle of Armor)
-- Kubfu evolves into one of two Urshifu forms via Tower choice.
-- Version-exclusive rival: Klara (Sword, game 31) / Avery (Shield, game 32).
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
            (19, NULL::INTEGER, 'main-story', 'story-checkpoint', 'arrive-isle-of-armor', 'Arrive on the Isle of Armor', 'Arrive at the Isle of Armor dojo.', 1, FALSE),
            (19, NULL, 'main-story', 'story-checkpoint', 'receive-kubfu', 'Receive Kubfu', 'Receive Kubfu from Mustard.', 2, FALSE),
            (19, NULL, 'main-story', 'story-battle', 'mustard-battle-1', 'Mustard Battle 1', 'Defeat Mustard in the first battle.', 3, FALSE),
            (19, NULL, 'main-story', 'story-checkpoint', 'tower-of-two-fists', 'Tower of Two Fists', 'Complete the Tower of Two Fists to evolve Kubfu.', 4, FALSE),
            (19, NULL, 'main-story', 'story-battle', 'mustard-battle-2', 'Mustard Battle 2', 'Defeat Mustard in the final battle.', 5, FALSE),
            (19, NULL, 'pokemon', 'pokemon-milestone', 'kubfu', 'Kubfu', 'Receive Kubfu from Mustard.', 1, FALSE),
            (19, NULL, 'collectibles', 'collectible', 'alolan-diglett', 'Alolan Diglett', 'Find all 150 Alolan Diglett across the Isle of Armor.', 1, TRUE),
            (19, NULL, 'choices', 'critical-choice', 'tower-choice', 'Tower Choice', 'Choose the Tower of Darkness or Tower of Waters.', 1, FALSE)
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
