-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (sv, VG 23)
-- ============================================================================
INSERT INTO
    progress.item_pokemon_refs (progress_item_id, species_id, form_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id = 36 AND slug = 'koraidon'), 1007, 100700), -- koraidon → Koraidon
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id = 37 AND slug = 'miraidon'), 1008, 100800);

-- miraidon → Miraidon