-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (b2w2, VG 12)
-- ============================================================================
INSERT INTO
    progress.item_pokemon_refs (progress_item_id, species_id, form_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 12 AND game_id = 19 AND slug = 'black-kyurem'), 646, 64602), -- black-kyurem → Kyurem (Black)
    ((SELECT id FROM progress.items WHERE version_group_id = 12 AND game_id = 20 AND slug = 'white-kyurem'), 646, 64601), -- white-kyurem → Kyurem (White)
    ((SELECT id FROM progress.items WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'cobalion'), 638, 63800), -- cobalion → Cobalion
    ((SELECT id FROM progress.items WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'terrakion'), 639, 63900), -- terrakion → Terrakion
    ((SELECT id FROM progress.items WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'virizion'), 640, 64000), -- virizion → Virizion
    ((SELECT id FROM progress.items WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'heatran'), 485, 48500), -- heatran → Heatran
    ((SELECT id FROM progress.items WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'cresselia'), 488, 48800);

-- cresselia → Cresselia