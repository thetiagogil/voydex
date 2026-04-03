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
    progress.items (version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (24, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'arrive-kitakami', 'Arrive in Kitakami', 'Arrive at Mossui Town in Kitakami.', 1, FALSE),
    (24, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'festival-of-masks', 'Festival of Masks', 'Attend the Festival of Masks.', 2, FALSE),
    (24, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'kieran-battle-1', 'Kieran Battle 1', 'Defeat Kieran in the first battle.', 3, FALSE),
    (24, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'loyal-three-quest', 'Loyal Three Quest', 'Confront the Loyal Three at the shrines.', 4, FALSE),
    (24, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'kieran-battle-2', 'Kieran Battle 2', 'Defeat Kieran in the final battle.', 5, FALSE),
    -- Pokémon
    (24, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'ogerpon', 'Ogerpon', 'Encounter Ogerpon at the Dreaded Den.', 1, TRUE),
    (24, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'bloodmoon-ursaluna', 'Bloodmoon Ursaluna', 'Encounter Bloodmoon Ursaluna in Kitakami Wilds.', 2, TRUE);