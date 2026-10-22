-- ============================================================================
-- Table: reference.items
-- Reduced Pokémon-relevant item catalog.
-- ============================================================================
CREATE TABLE reference.items (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL,
    primary_category_id integer NOT NULL REFERENCES reference.item_categories (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    introduced_generation_id integer NOT NULL REFERENCES reference.generations (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    external_id integer UNIQUE,
    sort_order integer NOT NULL UNIQUE,
    effect_summary text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT items_id_positive_check CHECK (id > 0),
    CONSTRAINT items_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 120),
    CONSTRAINT items_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 160),
    CONSTRAINT items_external_id_positive_check CHECK (external_id IS NULL OR external_id > 0),
    CONSTRAINT items_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT items_effect_summary_length_check CHECK (effect_summary IS NULL OR CHAR_LENGTH(BTRIM(effect_summary)) BETWEEN 1 AND 500)
);

COMMENT ON TABLE reference.items IS 'Reduced item catalog for held items, evolution/form mechanics, fossils, Poke Balls, and Pokémon biography.';

COMMENT ON COLUMN reference.items.primary_category_id IS 'Default UI grouping. Full category membership lives in reference.item_category_memberships.';

COMMENT ON COLUMN reference.items.external_id IS 'Optional source-specific item ID for audit cross-reference.';

COMMENT ON COLUMN reference.items.effect_summary IS 'Short plain-words summary of what the item does when a Pokémon holds it in recent games. Seeded for every held item; NULL for items that are never held.';
