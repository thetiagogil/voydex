-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (xy, VG 13)
-- ============================================================================
INSERT INTO
    progress.item_pokemon_refs (progress_item_id, species_id, form_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id = 21 AND slug = 'xerneas'), 716, 71600), -- xerneas → Xerneas
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id = 22 AND slug = 'yveltal'), 717, 71700), -- yveltal → Yveltal
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'zygarde'), 718, 71800), -- zygarde → Zygarde
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'mewtwo'), 150, 15000);

-- mewtwo → Mewtwo