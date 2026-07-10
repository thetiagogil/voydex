-- ============================================================================
-- Table: tracking.mainline_milestone_pokemon_refs
-- Pokémon references attached to milestone definitions.
-- ============================================================================
CREATE TABLE tracking.mainline_milestone_pokemon_refs (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    milestone_id integer NOT NULL REFERENCES tracking.mainline_milestones (id) ON UPDATE CASCADE ON DELETE CASCADE,
    species_id integer NOT NULL REFERENCES reference.pokemon_species (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    form_id integer,
    relation_kind text NOT NULL,
    sort_order integer NOT NULL,
    notes text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT mainline_milestone_pokemon_refs_id_positive_check CHECK (id > 0),
    CONSTRAINT mainline_milestone_pokemon_refs_form_fkey FOREIGN KEY (species_id, form_id) REFERENCES reference.pokemon_forms (species_id, id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mainline_milestone_pokemon_refs_relation_kind_format_check CHECK (relation_kind = LOWER(relation_kind) AND relation_kind ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(relation_kind) <= 80),
    CONSTRAINT mainline_milestone_pokemon_refs_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT mainline_milestone_pokemon_refs_notes_length_check CHECK (notes IS NULL OR CHAR_LENGTH(BTRIM(notes)) BETWEEN 1 AND 1000)
);

CREATE UNIQUE INDEX mainline_milestone_pokemon_refs_species_unique ON tracking.mainline_milestone_pokemon_refs (milestone_id, species_id, relation_kind)
WHERE
    form_id IS NULL;

CREATE UNIQUE INDEX mainline_milestone_pokemon_refs_form_unique ON tracking.mainline_milestone_pokemon_refs (milestone_id, species_id, form_id, relation_kind)
WHERE
    form_id IS NOT NULL;

CREATE UNIQUE INDEX mainline_milestone_pokemon_refs_sort_order_unique ON tracking.mainline_milestone_pokemon_refs (milestone_id, sort_order);

CREATE INDEX mainline_milestone_pokemon_refs_species_idx ON tracking.mainline_milestone_pokemon_refs (species_id);

CREATE INDEX mainline_milestone_pokemon_refs_form_idx ON tracking.mainline_milestone_pokemon_refs (form_id)
WHERE
    form_id IS NOT NULL;

COMMENT ON TABLE tracking.mainline_milestone_pokemon_refs IS 'Static Pokémon references related to milestone definitions, such as legendary, starter, gift, or opponent-team context.';
