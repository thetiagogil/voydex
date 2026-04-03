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
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 25 (Scarlet / Violet — The Indigo Disk)
-- Blueberry Academy and BB League Elite Four.
-- Kieran is the BB League Champion. Terapagos in Area Zero Underdepths.
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (1430, 25, NULL, 1, 2, 'arrive-blueberry', 'Arrive at Blueberry Academy', 'Arrive at the Blueberry Academy in Unova.', 1, FALSE),
    (1431, 25, NULL, 1, 1, 'bb-elite-four-crispin', 'BB Elite Four Crispin', 'Defeat Crispin of the BB League Elite Four.', 2, FALSE),
    (1432, 25, NULL, 1, 1, 'bb-elite-four-amarys', 'BB Elite Four Amarys', 'Defeat Amarys of the BB League Elite Four.', 3, FALSE),
    (1433, 25, NULL, 1, 1, 'bb-elite-four-lacey', 'BB Elite Four Lacey', 'Defeat Lacey of the BB League Elite Four.', 4, FALSE),
    (1434, 25, NULL, 1, 1, 'bb-elite-four-drayton', 'BB Elite Four Drayton', 'Defeat Drayton of the BB League Elite Four.', 5, FALSE),
    (1435, 25, NULL, 1, 1, 'bb-champion-kieran', 'BB Champion Kieran', 'Defeat BB League Champion Kieran.', 6, FALSE),
    (1436, 25, NULL, 1, 2, 'area-zero-underdepths', 'Area Zero Underdepths', 'Explore the Area Zero Underdepths.', 7, FALSE),
    -- Pokémon
    (1437, 25, NULL, 3, 3, 'terapagos', 'Terapagos', 'Encounter Terapagos in the Area Zero Underdepths.', 1, TRUE),
    (1438, 25, NULL, 3, 3, 'pecharunt', 'Pecharunt', 'Encounter Pecharunt in the Epilogue.', 2, TRUE);