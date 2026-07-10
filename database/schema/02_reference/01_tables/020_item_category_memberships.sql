-- ============================================================================
-- Table: reference.item_category_memberships
-- Many-to-many memberships for Pokémon-relevant item categories.
-- ============================================================================
CREATE TABLE reference.item_category_memberships (
    item_id integer NOT NULL REFERENCES reference.items (id) ON UPDATE CASCADE ON DELETE CASCADE,
    category_id integer NOT NULL REFERENCES reference.item_categories (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT item_category_memberships_primary_key PRIMARY KEY (item_id, category_id)
);

COMMENT ON TABLE reference.item_category_memberships IS 'Many-to-many category memberships for items with overlapping mechanics or UI grouping.';
