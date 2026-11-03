-- ============================================================================
-- Table: reference.pokemon_species
-- National Dex Pokémon species identities.
-- ============================================================================
CREATE TABLE reference.pokemon_species (
    id integer PRIMARY KEY,
    national_number integer NOT NULL UNIQUE,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    introduced_generation_id integer NOT NULL REFERENCES reference.generations (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    evolution_family_id integer NOT NULL REFERENCES reference.evolution_families (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    color text,
    category text NOT NULL,
    female_ratio_eighths integer,
    egg_cycles integer NOT NULL,
    is_baby boolean NOT NULL DEFAULT FALSE,
    is_legendary boolean NOT NULL DEFAULT FALSE,
    is_mythical boolean NOT NULL DEFAULT FALSE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT pokemon_species_id_positive_check CHECK (id > 0),
    CONSTRAINT pokemon_species_national_number_positive_check CHECK (national_number > 0),
    CONSTRAINT pokemon_species_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 120),
    CONSTRAINT pokemon_species_id_family_unique UNIQUE (id, evolution_family_id),
    CONSTRAINT pokemon_species_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT pokemon_species_color_length_check CHECK (color IS NULL OR CHAR_LENGTH(BTRIM(color)) BETWEEN 1 AND 80),
    CONSTRAINT pokemon_species_category_length_check CHECK (CHAR_LENGTH(BTRIM(category)) BETWEEN 1 AND 80),
    CONSTRAINT pokemon_species_female_ratio_check CHECK (female_ratio_eighths IS NULL OR female_ratio_eighths BETWEEN 0 AND 8),
    CONSTRAINT pokemon_species_egg_cycles_check CHECK (egg_cycles BETWEEN 1 AND 255)
);

COMMENT ON TABLE reference.pokemon_species IS 'National Dex species identities used by Pokedex completion and Pokémon reuse checks.';

COMMENT ON COLUMN reference.pokemon_species.national_number IS 'National Pokedex number.';

COMMENT ON COLUMN reference.pokemon_species.evolution_family_id IS 'Evolution family used by broad Pokémon reuse checks.';

COMMENT ON COLUMN reference.pokemon_species.category IS 'The Pokédex category, as the games print it without the word Pokémon: Seed, Flame, Mouse.';

COMMENT ON COLUMN reference.pokemon_species.female_ratio_eighths IS 'How many of every eight are female (4 is an even split, 0 male only, 8 female only); NULL for a species with no gender.';

COMMENT ON COLUMN reference.pokemon_species.egg_cycles IS 'Egg cycles until its egg hatches, as the games count them.';
