-- The device leaves out the learnset indexes only the server needs and
-- keeps one small lookup by form and version group (see
-- src/platform/local-db/device-trims.sql): with every game's learnsets, the
-- device database is about 110 MB smaller.
DROP INDEX reference.pokemon_learnsets_vg_unique, reference.pokemon_learnsets_game_unique, reference.pokemon_learnsets_form_scope_lookup_idx, reference.pokemon_learnsets_move_scope_lookup_idx, reference.pokemon_learnsets_method_scope_lookup_idx, reference.pokemon_learnsets_source_item_lookup_idx, reference.pokemon_learnsets_move_machine_lookup_idx;

ALTER TABLE reference.pokemon_learnsets
    DROP CONSTRAINT pokemon_learnsets_pkey;

CREATE INDEX pokemon_learnsets_form_lookup_idx ON reference.pokemon_learnsets (form_id, version_group_id);
