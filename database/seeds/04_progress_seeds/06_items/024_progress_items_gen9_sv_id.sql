-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (sv-id, VG 25)
-- Version Group: 25 (Scarlet / Violet — The Indigo Disk)
-- Blueberry Academy and BB League Elite Four.
-- Kieran is the BB League Champion. Terapagos in Area Zero Underdepths.
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
            (25, NULL::INTEGER, 'main-story', 'story-checkpoint', 'arrive-blueberry', 'Arrive at Blueberry Academy', 'Arrive at the Blueberry Academy in Unova.', 1, FALSE),
            (25, NULL, 'main-story', 'story-battle', 'bb-elite-four-crispin', 'BB Elite Four Crispin', 'Defeat Crispin of the BB League Elite Four.', 2, FALSE),
            (25, NULL, 'main-story', 'story-battle', 'bb-elite-four-amarys', 'BB Elite Four Amarys', 'Defeat Amarys of the BB League Elite Four.', 3, FALSE),
            (25, NULL, 'main-story', 'story-battle', 'bb-elite-four-lacey', 'BB Elite Four Lacey', 'Defeat Lacey of the BB League Elite Four.', 4, FALSE),
            (25, NULL, 'main-story', 'story-battle', 'bb-elite-four-drayton', 'BB Elite Four Drayton', 'Defeat Drayton of the BB League Elite Four.', 5, FALSE),
            (25, NULL, 'main-story', 'story-battle', 'bb-champion-kieran', 'BB Champion Kieran', 'Defeat BB League Champion Kieran.', 6, FALSE),
            (25, NULL, 'main-story', 'story-checkpoint', 'area-zero-underdepths', 'Area Zero Underdepths', 'Explore the Area Zero Underdepths.', 7, FALSE),
            (25, NULL, 'pokemon', 'pokemon-milestone', 'terapagos', 'Terapagos', 'Encounter Terapagos in the Area Zero Underdepths.', 1, TRUE),
            (25, NULL, 'pokemon', 'pokemon-milestone', 'pecharunt', 'Pecharunt', 'Encounter Pecharunt in the Epilogue.', 2, TRUE)
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
