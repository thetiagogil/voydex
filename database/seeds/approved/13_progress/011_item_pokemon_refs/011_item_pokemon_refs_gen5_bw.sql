-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (bw, VG 11)
-- ============================================================================
INSERT INTO
    progress.item_pokemon_refs (progress_item_id, species_id, form_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id = 17 AND slug = 'reshiram'), 643, 64300), -- reshiram → Reshiram
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id = 18 AND slug = 'zekrom'), 644, 64400), -- zekrom → Zekrom
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'kyurem'), 646, 64600), -- kyurem → Kyurem
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'cobalion'), 638, 63800), -- cobalion → Cobalion
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'terrakion'), 639, 63900), -- terrakion → Terrakion
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'virizion'), 640, 64000);

-- virizion → Virizion