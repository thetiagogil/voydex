-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (oras, VG 14)
-- ============================================================================
INSERT INTO
    progress.item_pokemon_refs (progress_item_id, species_id, form_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id = 23 AND slug = 'groudon'), 383, 38300), -- groudon → Groudon
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id = 24 AND slug = 'kyogre'), 382, 38200), -- kyogre → Kyogre
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'rayquaza'), 384, 38400), -- rayquaza → Rayquaza
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'deoxys'), 386, 38600);

-- deoxys → Deoxys