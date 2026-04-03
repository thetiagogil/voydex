-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (bdsp, VG 21)
-- ============================================================================
INSERT INTO
    progress.item_pokemon_refs (progress_item_id, species_id, form_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 21 AND game_id = 33 AND slug = 'dialga'), 483, 48300), -- dialga → Dialga
    ((SELECT id FROM progress.items WHERE version_group_id = 21 AND game_id = 34 AND slug = 'palkia'), 484, 48400), -- palkia → Palkia
    ((SELECT id FROM progress.items WHERE version_group_id = 21 AND game_id IS NULL AND slug = 'heatran'), 485, 48500), -- heatran → Heatran
    ((SELECT id FROM progress.items WHERE version_group_id = 21 AND game_id IS NULL AND slug = 'giratina'), 487, 48700), -- giratina → Giratina
    ((SELECT id FROM progress.items WHERE version_group_id = 21 AND game_id IS NULL AND slug = 'regigigas'), 486, 48600), -- regigigas → Regigigas
    ((SELECT id FROM progress.items WHERE version_group_id = 21 AND game_id IS NULL AND slug = 'cresselia'), 488, 48800);

-- cresselia → Cresselia