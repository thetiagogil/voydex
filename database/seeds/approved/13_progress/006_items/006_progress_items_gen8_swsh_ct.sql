-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (swsh-ct, VG 20)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 20 (Sword / Shield — The Crown Tundra)
-- Calyrex + steed choice (Glastrier or Spectrier).
-- Regi temples and Galarian legendary birds.
-- Dynamax Adventures for older legendaries (optional).
INSERT INTO
    progress.items (version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (20, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'arrive-crown-tundra', 'Arrive in the Crown Tundra', 'Arrive at Freezington in the Crown Tundra.', 1, FALSE),
    (20, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'peony-battle', 'Peony Battle', 'Defeat Peony at Freezington.', 2, FALSE),
    (20, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'calyrex-quest', 'Calyrex Quest', 'Reunite Calyrex with its steed.', 3, FALSE),
    (20, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'regi-temples', 'Regi Temples', 'Complete the Regi temple puzzles.', 4, FALSE),
    (20, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'galarian-birds', 'Galarian Birds', 'Complete the Galarian legendary birds quest.', 5, FALSE),
    -- Pokémon
    (20, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'calyrex', 'Calyrex', 'Encounter Calyrex at the Crown Shrine.', 1, TRUE),
    (20, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'regieleki-regidrago', 'Regieleki / Regidrago', 'Encounter Regieleki or Regidrago in the Split-Decision Ruins.', 2, TRUE),
    (20, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'galarian-articuno', 'Galarian Articuno', 'Encounter Galarian Articuno.', 3, TRUE),
    (20, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'galarian-zapdos', 'Galarian Zapdos', 'Encounter Galarian Zapdos.', 4, TRUE),
    (20, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'galarian-moltres', 'Galarian Moltres', 'Encounter Galarian Moltres.', 5, TRUE),
    -- Choices
    (20, NULL, (SELECT id FROM progress.categories WHERE slug = 'choices'), (SELECT id FROM progress.item_types WHERE slug = 'critical-choice'), 'steed-choice', 'Steed Choice', 'Choose Glastrier or Spectrier for Calyrex.', 1, FALSE),
    (20, NULL, (SELECT id FROM progress.categories WHERE slug = 'choices'), (SELECT id FROM progress.item_types WHERE slug = 'critical-choice'), 'regi-choice', 'Regi Choice', 'Choose Regieleki or Regidrago.', 2, FALSE);