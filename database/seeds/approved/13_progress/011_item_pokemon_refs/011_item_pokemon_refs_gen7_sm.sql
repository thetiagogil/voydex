-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (sm, VG 15)
-- ============================================================================
INSERT INTO
    progress.item_pokemon_refs (progress_item_id, species_id, form_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 15 AND game_id = 25 AND slug = 'solgaleo'), 791, 79100), -- solgaleo → Solgaleo
    ((SELECT id FROM progress.items WHERE version_group_id = 15 AND game_id = 26 AND slug = 'lunala'), 792, 79200), -- lunala → Lunala
    ((SELECT id FROM progress.items WHERE version_group_id = 15 AND game_id IS NULL AND slug = 'necrozma'), 800, 80000), -- necrozma → Necrozma
    ((SELECT id FROM progress.items WHERE version_group_id = 15 AND game_id IS NULL AND slug = 'tapu-koko'), 785, 78500);

-- tapu-koko → Tapu Koko