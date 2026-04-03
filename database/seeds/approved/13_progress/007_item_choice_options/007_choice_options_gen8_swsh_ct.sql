-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (swsh-ct, VG 20)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Steed Choice (item 1360)
    (315, 1360, 'glastrier', 'Glastrier', 896, 89600, 1),
    (316, 1360, 'spectrier', 'Spectrier', 897, 89700, 2),
    -- Regi Choice (item 1361)
    (317, 1361, 'regieleki', 'Regieleki', 894, 89400, 1),
    (318, 1361, 'regidrago', 'Regidrago', 895, 89500, 2);