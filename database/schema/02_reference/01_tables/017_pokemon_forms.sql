-- ============================================================================
-- Table: reference.pokemon_forms
-- Concrete Pokémon form identities.
-- ============================================================================
CREATE TABLE reference.pokemon_forms (
    id integer PRIMARY KEY,
    species_id integer NOT NULL REFERENCES reference.pokemon_species (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    slug text NOT NULL UNIQUE,
    name text NOT NULL,
    introduced_generation_id integer NOT NULL REFERENCES reference.generations (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    is_default boolean NOT NULL DEFAULT FALSE,
    form_order integer NOT NULL,
    height_decimeters integer,
    weight_hectograms integer,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT pokemon_forms_id_positive_check CHECK (id > 0),
    CONSTRAINT pokemon_forms_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 160),
    CONSTRAINT pokemon_forms_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 160),
    CONSTRAINT pokemon_forms_form_order_positive_check CHECK (form_order > 0),
    CONSTRAINT pokemon_forms_height_positive_check CHECK (height_decimeters IS NULL OR height_decimeters > 0),
    CONSTRAINT pokemon_forms_weight_positive_check CHECK (weight_hectograms IS NULL OR weight_hectograms > 0),
    CONSTRAINT pokemon_forms_species_id_unique UNIQUE (species_id, id),
    CONSTRAINT pokemon_forms_species_order_unique UNIQUE (species_id, form_order)
);

CREATE UNIQUE INDEX pokemon_forms_one_default_per_species_unique ON reference.pokemon_forms (species_id)
WHERE
    is_default;

COMMENT ON TABLE reference.pokemon_forms IS 'Concrete Pokémon form identities used by team builder, planning, and display.';

COMMENT ON COLUMN reference.pokemon_forms.height_decimeters IS 'Pokémon height in decimeters, matching canonical game data units.';

COMMENT ON COLUMN reference.pokemon_forms.weight_hectograms IS 'Pokémon weight in hectograms, matching canonical game data units.';
