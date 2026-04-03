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
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (1350, 20, NULL, 1, 2, 'arrive-crown-tundra', 'Arrive in the Crown Tundra', 'Arrive at Freezington in the Crown Tundra.', 1, FALSE),
    (1351, 20, NULL, 1, 1, 'peony-battle', 'Peony Battle', 'Defeat Peony at Freezington.', 2, FALSE),
    (1352, 20, NULL, 1, 2, 'calyrex-quest', 'Calyrex Quest', 'Reunite Calyrex with its steed.', 3, FALSE),
    (1353, 20, NULL, 1, 2, 'regi-temples', 'Regi Temples', 'Complete the Regi temple puzzles.', 4, FALSE),
    (1354, 20, NULL, 1, 2, 'galarian-birds', 'Galarian Birds', 'Complete the Galarian legendary birds quest.', 5, FALSE),
    -- Pokémon
    (1355, 20, NULL, 3, 3, 'calyrex', 'Calyrex', 'Encounter Calyrex at the Crown Shrine.', 1, TRUE),
    (1356, 20, NULL, 3, 3, 'regieleki-regidrago', 'Regieleki / Regidrago', 'Encounter Regieleki or Regidrago in the Split-Decision Ruins.', 2, TRUE),
    (1357, 20, NULL, 3, 3, 'galarian-articuno', 'Galarian Articuno', 'Encounter Galarian Articuno.', 3, TRUE),
    (1358, 20, NULL, 3, 3, 'galarian-zapdos', 'Galarian Zapdos', 'Encounter Galarian Zapdos.', 4, TRUE),
    (1359, 20, NULL, 3, 3, 'galarian-moltres', 'Galarian Moltres', 'Encounter Galarian Moltres.', 5, TRUE),
    -- Choices
    (1360, 20, NULL, 5, 5, 'steed-choice', 'Steed Choice', 'Choose Glastrier or Spectrier for Calyrex.', 1, FALSE),
    (1361, 20, NULL, 5, 5, 'regi-choice', 'Regi Choice', 'Choose Regieleki or Regidrago.', 2, FALSE);