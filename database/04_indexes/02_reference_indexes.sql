-- ============================================================================
-- Secondary Indexes: reference schema
-- Performance indexes applied AFTER seeding. Not required for data integrity.
-- Run: db:index or db:index:reference | Drop: db:index:drop or db:index:drop:reference
-- ============================================================================
-- version_groups
CREATE INDEX IF NOT EXISTS idx_version_groups_generation ON reference.version_groups (generation_id);

CREATE INDEX IF NOT EXISTS idx_version_groups_parent ON reference.version_groups (parent_version_group_id)
WHERE
    parent_version_group_id IS NOT NULL;

-- games
CREATE INDEX IF NOT EXISTS idx_games_generation ON reference.games (generation_id);

CREATE INDEX IF NOT EXISTS idx_games_region ON reference.games (region_id);

CREATE INDEX IF NOT EXISTS idx_games_version_group ON reference.games (version_group_id);

CREATE INDEX IF NOT EXISTS idx_games_type ON reference.games (type_id);

CREATE INDEX IF NOT EXISTS idx_games_generation_type ON reference.games (generation_id, type_id);

-- abilities
CREATE INDEX IF NOT EXISTS idx_abilities_introduced_generation ON reference.abilities (introduced_generation_id);

-- moves
CREATE INDEX IF NOT EXISTS idx_moves_introduced_generation ON reference.moves (introduced_generation_id);

-- pokemon_species
CREATE INDEX IF NOT EXISTS idx_pokemon_species_national_number ON reference.pokemon_species (national_number);

CREATE INDEX IF NOT EXISTS idx_pokemon_species_introduced_generation ON reference.pokemon_species (introduced_generation_id);

CREATE INDEX IF NOT EXISTS idx_pokemon_species_legendary ON reference.pokemon_species (id)
WHERE
    is_legendary = TRUE;

CREATE INDEX IF NOT EXISTS idx_pokemon_species_mythical ON reference.pokemon_species (id)
WHERE
    is_mythical = TRUE;

-- pokemon_forms
CREATE INDEX IF NOT EXISTS idx_pokemon_forms_species ON reference.pokemon_forms (species_id);

CREATE INDEX IF NOT EXISTS idx_pokemon_forms_introduced_generation ON reference.pokemon_forms (introduced_generation_id);

CREATE INDEX IF NOT EXISTS idx_pokemon_forms_default ON reference.pokemon_forms (species_id)
WHERE
    is_default = TRUE;

-- pokemon_attributes
CREATE INDEX IF NOT EXISTS idx_pokemon_attrs_lookup ON reference.pokemon_attributes (species_id, form_id, generation_start_id DESC);

CREATE INDEX IF NOT EXISTS idx_pokemon_attrs_form_gen ON reference.pokemon_attributes (form_id, generation_start_id DESC);

-- items
CREATE INDEX IF NOT EXISTS idx_items_category ON reference.items (category_id);

CREATE INDEX IF NOT EXISTS idx_items_introduced_generation ON reference.items (introduced_generation_id);

-- move_attributes
CREATE INDEX IF NOT EXISTS idx_move_attrs_move ON reference.move_attributes (move_id);

CREATE INDEX IF NOT EXISTS idx_move_attrs_generation ON reference.move_attributes (generation_start_id);

CREATE INDEX IF NOT EXISTS idx_move_attrs_type ON reference.move_attributes (type_id);

CREATE INDEX IF NOT EXISTS idx_move_attrs_move_gen_desc ON reference.move_attributes (move_id, generation_start_id DESC);

-- pokemon_availability
CREATE INDEX IF NOT EXISTS idx_pokemon_avail_species_vg ON reference.pokemon_availability (species_id, version_group_id);

CREATE INDEX IF NOT EXISTS idx_pokemon_avail_form_vg ON reference.pokemon_availability (form_id, version_group_id);

CREATE INDEX IF NOT EXISTS idx_pokemon_avail_vg ON reference.pokemon_availability (version_group_id);

CREATE INDEX IF NOT EXISTS idx_pokemon_avail_game ON reference.pokemon_availability (game_id)
WHERE
    game_id IS NOT NULL;

-- move_availability
CREATE INDEX IF NOT EXISTS idx_move_avail_move ON reference.move_availability (move_id);

CREATE INDEX IF NOT EXISTS idx_move_avail_vg ON reference.move_availability (version_group_id);

-- item_availability
CREATE INDEX IF NOT EXISTS idx_item_avail_item ON reference.item_availability (item_id);

CREATE INDEX IF NOT EXISTS idx_item_avail_vg ON reference.item_availability (version_group_id);

-- pokemon_learnsets
CREATE INDEX IF NOT EXISTS idx_learnsets_species_form_vg ON reference.pokemon_learnsets (species_id, form_id, version_group_id);

CREATE INDEX IF NOT EXISTS idx_learnsets_species_vg ON reference.pokemon_learnsets (species_id, version_group_id);

CREATE INDEX IF NOT EXISTS idx_learnsets_form_vg ON reference.pokemon_learnsets (form_id, version_group_id);

CREATE INDEX IF NOT EXISTS idx_learnsets_move_vg ON reference.pokemon_learnsets (move_id, version_group_id);

CREATE INDEX IF NOT EXISTS idx_learnsets_vg ON reference.pokemon_learnsets (version_group_id);

CREATE INDEX IF NOT EXISTS idx_learnsets_method ON reference.pokemon_learnsets (learn_method_id);

-- pokedex
CREATE INDEX IF NOT EXISTS idx_dexes_vg ON reference.pokedex (version_group_id);

-- pokedex_entries
CREATE INDEX IF NOT EXISTS idx_pokedex_entries_species ON reference.pokedex_entries (species_id);

CREATE INDEX IF NOT EXISTS idx_pokedex_entries_form ON reference.pokedex_entries (form_id);