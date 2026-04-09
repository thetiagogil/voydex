-- ============================================================================
-- Table: reference.items
-- Curated catalog of trackable items (held items, berries, mega stones, etc.).
-- ============================================================================
CREATE TABLE
    reference.items (
        id INTEGER PRIMARY KEY,
        slug VARCHAR(50) NOT NULL UNIQUE,
        name VARCHAR(100) NOT NULL UNIQUE,
        category_id INTEGER NOT NULL REFERENCES reference.item_categories (id),
        introduced_generation_id INTEGER NOT NULL REFERENCES reference.generations (id),
        external_id INTEGER UNIQUE,
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ()
    );

-- Comments
COMMENT ON TABLE reference.items IS 'Curated item catalog. Scoped to held battle items, berries, mega stones, Z-crystals, pokeballs. TMs, fossils, medicine, key items excluded.';