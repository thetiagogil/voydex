-- ============================================================================
-- Table: reference.growth_rates
-- The six experience curves a species levels along.
-- ============================================================================
CREATE TABLE reference.growth_rates (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    level_100_experience integer NOT NULL,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT growth_rates_id_positive_check CHECK (id > 0),
    CONSTRAINT growth_rates_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT growth_rates_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 80),
    CONSTRAINT growth_rates_level_100_experience_check CHECK (level_100_experience BETWEEN 1 AND 2000000),
    CONSTRAINT growth_rates_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE reference.growth_rates IS 'The experience curves (Fast to Fluctuating) a species levels along, with the total experience level 100 takes on each.';

COMMENT ON COLUMN reference.growth_rates.level_100_experience IS 'Total experience at level 100 on this curve, as the games count it.';
