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
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 24 (Scarlet / Violet — The Teal Mask)
-- Kitakami story with Ogerpon. Kieran and Carmine are key characters.
-- No gym badges. No starter choice.
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (1400, 24, NULL, 1, 2, 'arrive-kitakami', 'Arrive in Kitakami', 'Arrive at Mossui Town in Kitakami.', 1, FALSE),
    (1401, 24, NULL, 1, 2, 'festival-of-masks', 'Festival of Masks', 'Attend the Festival of Masks.', 2, FALSE),
    (1402, 24, NULL, 1, 1, 'kieran-battle-1', 'Kieran Battle 1', 'Defeat Kieran in the first battle.', 3, FALSE),
    (1403, 24, NULL, 1, 2, 'loyal-three-quest', 'Loyal Three Quest', 'Confront the Loyal Three at the shrines.', 4, FALSE),
    (1404, 24, NULL, 1, 1, 'kieran-battle-2', 'Kieran Battle 2', 'Defeat Kieran in the final battle.', 5, FALSE),
    -- Pokémon
    (1405, 24, NULL, 3, 3, 'ogerpon', 'Ogerpon', 'Encounter Ogerpon at the Dreaded Den.', 1, TRUE),
    (1406, 24, NULL, 3, 3, 'bloodmoon-ursaluna', 'Bloodmoon Ursaluna', 'Encounter Bloodmoon Ursaluna in Kitakami Wilds.', 2, TRUE);