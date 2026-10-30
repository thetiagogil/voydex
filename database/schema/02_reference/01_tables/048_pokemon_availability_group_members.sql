-- ============================================================================
-- Table: reference.pokemon_availability_group_members
-- The species and forms of each availability group.
-- ============================================================================
CREATE TABLE reference.pokemon_availability_group_members (
    group_id integer NOT NULL REFERENCES reference.pokemon_availability_groups (id) ON UPDATE CASCADE ON DELETE CASCADE,
    species_id integer NOT NULL,
    form_id integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT pokemon_availability_group_members_pkey PRIMARY KEY (group_id, form_id),
    CONSTRAINT pokemon_availability_group_members_form_fkey FOREIGN KEY (species_id, form_id) REFERENCES reference.pokemon_forms (species_id, id) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE INDEX pokemon_availability_group_members_species_form_idx ON reference.pokemon_availability_group_members (species_id, form_id);

COMMENT ON TABLE reference.pokemon_availability_group_members IS 'Members of an availability group, by form: a team holding two of them can''t be built in one save.';
