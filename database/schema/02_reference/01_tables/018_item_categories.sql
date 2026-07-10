-- ============================================================================
-- Table: reference.item_categories
-- Pokémon-relevant item category lookup.
-- ============================================================================
CREATE TABLE reference.item_categories (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    description text NOT NULL,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT item_categories_id_positive_check CHECK (id > 0),
    CONSTRAINT item_categories_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:_[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT item_categories_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT item_categories_description_length_check CHECK (CHAR_LENGTH(BTRIM(description)) BETWEEN 1 AND 1000),
    CONSTRAINT item_categories_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE reference.item_categories IS 'Usage-based item categories for the reduced Pokémon-relevant item catalog.';

COMMENT ON COLUMN reference.item_categories.description IS 'Stable product-facing definition for this item category.';
