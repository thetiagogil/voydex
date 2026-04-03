-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (rs, VG 5)
-- ============================================================================
INSERT INTO
    progress.item_pokemon_refs (progress_item_id, species_id, form_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 5 AND game_id = 7 AND slug = 'groudon'), 383, 38300), -- groudon → Groudon
    ((SELECT id FROM progress.items WHERE version_group_id = 5 AND game_id = 8 AND slug = 'kyogre'), 382, 38200), -- kyogre → Kyogre
    ((SELECT id FROM progress.items WHERE version_group_id = 5 AND game_id IS NULL AND slug = 'rayquaza'), 384, 38400), -- rayquaza → Rayquaza
    ((SELECT id FROM progress.items WHERE version_group_id = 5 AND game_id IS NULL AND slug = 'regirock'), 377, 37700), -- regirock → Regirock
    ((SELECT id FROM progress.items WHERE version_group_id = 5 AND game_id IS NULL AND slug = 'regice'), 378, 37800), -- regice → Regice
    ((SELECT id FROM progress.items WHERE version_group_id = 5 AND game_id IS NULL AND slug = 'registeel'), 379, 37900);

-- registeel → Registeel