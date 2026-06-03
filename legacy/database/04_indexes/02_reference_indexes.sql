-- ============================================================================
-- Secondary Indexes: reference schema
-- Performance indexes applied AFTER seeding. Not required for data integrity.
-- Run: db:index or db:index:reference | Drop: db:index:drop or db:index:drop:reference
-- ============================================================================
-- pokemon_attributes
CREATE INDEX IF NOT EXISTS idx_pokemon_attrs_lookup ON reference.pokemon_attributes (species_id, form_id, generation_start_id DESC);

-- move_attributes
CREATE INDEX IF NOT EXISTS idx_move_attrs_move_gen_desc ON reference.move_attributes (move_id, generation_start_id DESC);

-- pokemon_availability
CREATE INDEX IF NOT EXISTS idx_pokemon_avail_species_vg ON reference.pokemon_availability (species_id, version_group_id);

-- move_availability
CREATE INDEX IF NOT EXISTS idx_move_avail_move ON reference.move_availability (move_id);

-- item_availability
CREATE INDEX IF NOT EXISTS idx_item_avail_item ON reference.item_availability (item_id);

-- pokemon_learnsets
CREATE INDEX IF NOT EXISTS idx_learnsets_species_form_vg ON reference.pokemon_learnsets (species_id, form_id, version_group_id);