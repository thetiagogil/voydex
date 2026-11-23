-- ============================================================================
-- Device trims
-- Runs on a new device after the change records; device update
-- 0007-slim-learnsets.sql does the same on a device that already has data.
-- The whole device database sits in memory while Voydex is open, and the
-- game data only ever changes by a release update, so the device leaves out
-- what only the server needs. The server, and the release build that checks
-- the seeds, keep all of it.
-- ============================================================================
-- Learnsets are most of the game data. The device asks one question of them:
-- what can this form learn in this version group. One small index answers
-- it; the uniqueness guards (the release build checks them), the lookups by
-- move, method, item and machine (server reads and deletes) and the ID's
-- own index (nothing reads a learnset by ID) only take room.
DROP INDEX reference.pokemon_learnsets_vg_unique, reference.pokemon_learnsets_game_unique, reference.pokemon_learnsets_form_scope_lookup_idx, reference.pokemon_learnsets_move_scope_lookup_idx, reference.pokemon_learnsets_method_scope_lookup_idx, reference.pokemon_learnsets_source_item_lookup_idx, reference.pokemon_learnsets_move_machine_lookup_idx;

ALTER TABLE reference.pokemon_learnsets
    DROP CONSTRAINT pokemon_learnsets_pkey;

CREATE INDEX pokemon_learnsets_form_lookup_idx ON reference.pokemon_learnsets (form_id, version_group_id);
