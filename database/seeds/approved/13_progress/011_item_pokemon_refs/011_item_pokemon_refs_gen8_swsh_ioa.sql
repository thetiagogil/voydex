-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (swsh-ioa, VG 19)
-- ============================================================================
INSERT INTO
    progress.item_pokemon_refs (progress_item_id, species_id, form_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 19 AND game_id IS NULL AND slug = 'kubfu'), 891, 89100);

-- kubfu → Kubfu