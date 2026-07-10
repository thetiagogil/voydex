-- ============================================================================
-- Table: tracking.mainline_milestone_decision_options
-- Static options for decision mainline_milestones.
-- ============================================================================
CREATE TABLE tracking.mainline_milestone_decision_options (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    milestone_id integer NOT NULL REFERENCES tracking.mainline_milestones (id) ON UPDATE CASCADE ON DELETE CASCADE,
    slug text NOT NULL,
    label text NOT NULL,
    description text,
    pokemon_species_id integer,
    pokemon_form_id integer,
    item_id integer REFERENCES reference.items (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    sort_order integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT mainline_milestone_decision_options_id_positive_check CHECK (id > 0),
    CONSTRAINT mainline_milestone_decision_options_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 120),
    CONSTRAINT mainline_milestone_decision_options_label_length_check CHECK (CHAR_LENGTH(BTRIM(label)) BETWEEN 1 AND 200),
    CONSTRAINT mainline_milestone_decision_options_description_length_check CHECK (description IS NULL OR CHAR_LENGTH(BTRIM(description)) BETWEEN 1 AND 2000),
    CONSTRAINT mainline_milestone_decision_options_pokemon_pair_check CHECK ((pokemon_species_id IS NULL AND pokemon_form_id IS NULL) OR (pokemon_species_id IS NOT NULL AND pokemon_form_id IS NOT NULL)),
    CONSTRAINT mainline_milestone_decision_options_pokemon_form_fkey FOREIGN KEY (pokemon_species_id, pokemon_form_id) REFERENCES reference.pokemon_forms (species_id, id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mainline_milestone_decision_options_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT mainline_milestone_decision_options_id_milestone_unique UNIQUE (id, milestone_id),
    CONSTRAINT mainline_milestone_decision_options_milestone_slug_unique UNIQUE (milestone_id, slug),
    CONSTRAINT mainline_milestone_decision_options_milestone_sort_order_unique UNIQUE (milestone_id, sort_order)
);

CREATE INDEX mainline_milestone_decision_options_milestone_idx ON tracking.mainline_milestone_decision_options (milestone_id);

CREATE INDEX mainline_milestone_decision_options_pokemon_form_idx ON tracking.mainline_milestone_decision_options (pokemon_species_id, pokemon_form_id)
WHERE
    pokemon_species_id IS NOT NULL;

CREATE INDEX mainline_milestone_decision_options_item_idx ON tracking.mainline_milestone_decision_options (item_id)
WHERE
    item_id IS NOT NULL;

COMMENT ON TABLE tracking.mainline_milestone_decision_options IS 'Static options for curated decision mainline_milestones. User choices live in gameplay.';

COMMENT ON COLUMN tracking.mainline_milestone_decision_options.pokemon_species_id IS 'Optional Pokémon species associated with this decision option, such as a starter or fossil restoration result.';

COMMENT ON COLUMN tracking.mainline_milestone_decision_options.pokemon_form_id IS 'Optional Pokémon form associated with this decision option. Must be paired with pokemon_species_id.';

COMMENT ON COLUMN tracking.mainline_milestone_decision_options.item_id IS 'Optional item associated with this decision option, such as the chosen fossil item.';
