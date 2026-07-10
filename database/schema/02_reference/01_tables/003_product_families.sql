-- ============================================================================
-- Table: reference.product_families
-- Pokémon product families.
-- ============================================================================
CREATE TABLE reference.product_families (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    description text NOT NULL,
    support_status text NOT NULL,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT product_families_id_positive_check CHECK (id > 0),
    CONSTRAINT product_families_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT product_families_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT product_families_description_length_check CHECK (CHAR_LENGTH(BTRIM(description)) BETWEEN 1 AND 1000),
    CONSTRAINT product_families_support_status_check CHECK (support_status IN ('active', 'planned', 'backlog')),
    CONSTRAINT product_families_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE reference.product_families IS 'Static Pokémon product families such as mainline, dungeon, Pokopia, GO, HOME, Ranger, and Sleep.';

COMMENT ON COLUMN reference.product_families.support_status IS 'Product family support state: active, planned, or backlog.';
