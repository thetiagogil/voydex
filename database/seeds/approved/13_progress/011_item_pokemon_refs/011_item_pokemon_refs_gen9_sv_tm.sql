-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (sv-tm, VG 24)
-- ============================================================================
INSERT INTO
    progress.item_pokemon_refs (progress_item_id, species_id, form_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 24 AND game_id IS NULL AND slug = 'ogerpon'), 1017, 101700), -- ogerpon → Ogerpon
    ((SELECT id FROM progress.items WHERE version_group_id = 24 AND game_id IS NULL AND slug = 'bloodmoon-ursaluna'), 901, 90101);

-- bloodmoon-ursaluna → Ursaluna (Bloodmoon)