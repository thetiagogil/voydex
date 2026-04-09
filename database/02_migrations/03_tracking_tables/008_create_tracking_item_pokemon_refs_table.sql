-- ============================================================================
-- Table: tracking.item_pokemon_refs
-- Links tracking milestones to specific Pokémon species/forms.
-- One tracking item can reference multiple Pokémon (e.g. legendary trio).
-- ============================================================================
CREATE TABLE
    tracking.item_pokemon_refs (
        -- Composite primary key
        tracking_item_id INTEGER NOT NULL REFERENCES tracking.items (id) ON DELETE CASCADE,
        species_id INTEGER NOT NULL REFERENCES reference.pokemon_species (id),
        form_id INTEGER NOT NULL REFERENCES reference.pokemon_forms (id),
        PRIMARY KEY (tracking_item_id, species_id, form_id)
    );

-- Comments
COMMENT ON TABLE tracking.item_pokemon_refs IS 'Links tracking items to specific Pokémon. One item can reference multiple Pokémon.';