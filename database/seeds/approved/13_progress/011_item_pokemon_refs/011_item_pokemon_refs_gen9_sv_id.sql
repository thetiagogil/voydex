-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (sv-id, VG 25)
-- ============================================================================
INSERT INTO
    progress.item_pokemon_refs (progress_item_id, species_id, form_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 25 AND game_id IS NULL AND slug = 'terapagos'), 1024, 102400), -- terapagos → Terapagos
    ((SELECT id FROM progress.items WHERE version_group_id = 25 AND game_id IS NULL AND slug = 'pecharunt'), 1025, 102500);

-- pecharunt → Pecharunt