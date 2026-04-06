-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.items
-- Scope: version-group-specific (swsh-ct, VG 20)
-- Version Group: 20 (Sword / Shield — The Crown Tundra)
-- Calyrex + steed choice (Glastrier or Spectrier).
-- Regi temples and Galarian legendary birds.
-- Dynamax Adventures for older legendaries (optional).
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
            (20, NULL::INTEGER, 'main-story', 'story-checkpoint', 'arrive-crown-tundra', 'Arrive in the Crown Tundra', 'Arrive at Freezington in the Crown Tundra.', 1, FALSE),
            (20, NULL, 'main-story', 'story-battle', 'peony-battle', 'Peony Battle', 'Defeat Peony at Freezington.', 2, FALSE),
            (20, NULL, 'main-story', 'story-checkpoint', 'calyrex-quest', 'Calyrex Quest', 'Reunite Calyrex with its steed.', 3, FALSE),
            (20, NULL, 'main-story', 'story-checkpoint', 'regi-temples', 'Regi Temples', 'Complete the Regi temple puzzles.', 4, FALSE),
            (20, NULL, 'main-story', 'story-checkpoint', 'galarian-birds', 'Galarian Birds', 'Complete the Galarian legendary birds quest.', 5, FALSE),
            (20, NULL, 'pokemon', 'pokemon-milestone', 'calyrex', 'Calyrex', 'Encounter Calyrex at the Crown Shrine.', 1, TRUE),
            (20, NULL, 'pokemon', 'pokemon-milestone', 'regieleki-regidrago', 'Regieleki / Regidrago', 'Encounter Regieleki or Regidrago in the Split-Decision Ruins.', 2, TRUE),
            (20, NULL, 'pokemon', 'pokemon-milestone', 'galarian-articuno', 'Galarian Articuno', 'Encounter Galarian Articuno.', 3, TRUE),
            (20, NULL, 'pokemon', 'pokemon-milestone', 'galarian-zapdos', 'Galarian Zapdos', 'Encounter Galarian Zapdos.', 4, TRUE),
            (20, NULL, 'pokemon', 'pokemon-milestone', 'galarian-moltres', 'Galarian Moltres', 'Encounter Galarian Moltres.', 5, TRUE),
            (20, NULL, 'choices', 'decision', 'steed-choice', 'Steed Choice', 'Choose Glastrier or Spectrier for Calyrex.', 1, FALSE),
            (20, NULL, 'choices', 'decision', 'regi-choice', 'Regi Choice', 'Choose Regieleki or Regidrago.', 2, FALSE)
    )
INSERT INTO
    tracking.items (
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
    JOIN tracking.categories c ON c.slug = s.category_slug
    JOIN tracking.item_types t ON t.slug = s.item_type_slug;
