-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (swsh, VG 18)
-- ============================================================================
INSERT INTO
    progress.item_pokemon_refs (progress_item_id, species_id, form_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id = 31 AND slug = 'zacian'), 888, 88800), -- zacian → Zacian
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id = 32 AND slug = 'zamazenta'), 889, 88900), -- zamazenta → Zamazenta
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'eternatus'), 890, 89000);

-- eternatus → Eternatus