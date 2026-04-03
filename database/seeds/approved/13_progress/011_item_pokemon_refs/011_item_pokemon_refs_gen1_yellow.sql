-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (yellow, VG 2)
-- ============================================================================
INSERT INTO
    progress.item_pokemon_refs (progress_item_id, species_id, form_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 2 AND game_id IS NULL AND slug = 'snorlax'), 143, 14300), -- snorlax → Snorlax
    ((SELECT id FROM progress.items WHERE version_group_id = 2 AND game_id IS NULL AND slug = 'articuno'), 144, 14400), -- articuno → Articuno
    ((SELECT id FROM progress.items WHERE version_group_id = 2 AND game_id IS NULL AND slug = 'zapdos'), 145, 14500), -- zapdos → Zapdos
    ((SELECT id FROM progress.items WHERE version_group_id = 2 AND game_id IS NULL AND slug = 'moltres'), 146, 14600), -- moltres → Moltres
    ((SELECT id FROM progress.items WHERE version_group_id = 2 AND game_id IS NULL AND slug = 'mewtwo'), 150, 15000);

-- mewtwo → Mewtwo