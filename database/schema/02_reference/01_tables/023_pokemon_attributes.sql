-- ============================================================================
-- Table: reference.pokemon_attributes
-- Generation-aware Pokémon form mechanics and base stats.
-- ============================================================================
CREATE TABLE reference.pokemon_attributes (
    species_id integer NOT NULL,
    form_id integer NOT NULL,
    generation_start_id integer NOT NULL REFERENCES reference.generations (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    primary_type_id integer NOT NULL REFERENCES reference.types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    secondary_type_id integer REFERENCES reference.types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    primary_ability_id integer REFERENCES reference.abilities (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    secondary_ability_id integer REFERENCES reference.abilities (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    hidden_ability_id integer REFERENCES reference.abilities (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    primary_egg_group_id integer REFERENCES reference.egg_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    secondary_egg_group_id integer REFERENCES reference.egg_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    base_hp integer NOT NULL,
    base_attack integer NOT NULL,
    base_defense integer NOT NULL,
    base_special_attack integer NOT NULL,
    base_special_defense integer NOT NULL,
    base_speed integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT pokemon_attributes_primary_key PRIMARY KEY (species_id, form_id, generation_start_id),
    CONSTRAINT pokemon_attributes_form_fkey FOREIGN KEY (species_id, form_id) REFERENCES reference.pokemon_forms (species_id, id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT pokemon_attributes_type_distinct_check CHECK (secondary_type_id IS NULL OR secondary_type_id <> primary_type_id),
    CONSTRAINT pokemon_attributes_ability_presence_check CHECK ((secondary_ability_id IS NULL OR primary_ability_id IS NOT NULL) AND (hidden_ability_id IS NULL OR primary_ability_id IS NOT NULL)),
    CONSTRAINT pokemon_attributes_ability_distinct_check CHECK ((secondary_ability_id IS NULL OR primary_ability_id IS NULL OR secondary_ability_id <> primary_ability_id) AND (hidden_ability_id IS NULL OR primary_ability_id IS NULL OR hidden_ability_id <> primary_ability_id) AND (hidden_ability_id IS NULL OR secondary_ability_id IS NULL OR hidden_ability_id <> secondary_ability_id)),
    CONSTRAINT pokemon_attributes_egg_group_presence_check CHECK (secondary_egg_group_id IS NULL OR primary_egg_group_id IS NOT NULL),
    CONSTRAINT pokemon_attributes_egg_group_distinct_check CHECK (secondary_egg_group_id IS NULL OR secondary_egg_group_id <> primary_egg_group_id),
    CONSTRAINT pokemon_attributes_egg_group_generation_check CHECK ((generation_start_id = 1 AND primary_egg_group_id IS NULL AND secondary_egg_group_id IS NULL) OR (generation_start_id >= 2 AND primary_egg_group_id IS NOT NULL)),
    CONSTRAINT pokemon_attributes_ability_generation_check CHECK ((generation_start_id < 3 AND primary_ability_id IS NULL AND secondary_ability_id IS NULL AND hidden_ability_id IS NULL) OR (generation_start_id >= 3 AND primary_ability_id IS NOT NULL AND (generation_start_id >= 5 OR hidden_ability_id IS NULL)) OR (generation_start_id >= 9 AND primary_ability_id IS NULL AND secondary_ability_id IS NULL AND hidden_ability_id IS NULL)),
    CONSTRAINT pokemon_attributes_base_stats_check CHECK (base_hp BETWEEN 1 AND 255 AND base_attack BETWEEN 1 AND 255 AND base_defense BETWEEN 1 AND 255 AND base_special_attack BETWEEN 1 AND 255 AND base_special_defense BETWEEN 1 AND 255 AND base_speed BETWEEN 1 AND 255)
);

COMMENT ON TABLE reference.pokemon_attributes IS 'Pokémon form types, abilities, egg groups, and base stats by generation change point.';

COMMENT ON COLUMN reference.pokemon_attributes.generation_start_id IS 'First generation where this mechanics row applies.';

COMMENT ON COLUMN reference.pokemon_attributes.primary_ability_id IS 'Required from Generation III. NULL from Generation IX only for a form that has no ability in its games, such as a Mega introduced in Legends: Z-A, which has no abilities.';
