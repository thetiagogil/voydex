-- ============================================================================
-- Table: planning.mainline_team_plan_members
-- Planned Pokémon targets for a team plan.
-- ============================================================================
CREATE TABLE planning.mainline_team_plan_members (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid (),
    team_plan_id uuid NOT NULL REFERENCES planning.mainline_team_plans (id) ON UPDATE CASCADE ON DELETE CASCADE,
    slot integer NOT NULL,
    target_species_id integer NOT NULL REFERENCES reference.pokemon_species (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    target_form_id integer NOT NULL,
    notes text,
    gender text,
    nature_id integer REFERENCES reference.natures (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    ability_id integer REFERENCES reference.abilities (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    held_item_id integer REFERENCES reference.items (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT team_plan_members_target_form_fkey FOREIGN KEY (target_species_id, target_form_id) REFERENCES reference.pokemon_forms (species_id, id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT team_plan_members_id_plan_unique UNIQUE (id, team_plan_id),
    CONSTRAINT team_plan_members_plan_slot_unique UNIQUE (team_plan_id, slot),
    CONSTRAINT team_plan_members_slot_range_check CHECK (slot BETWEEN 1 AND 6),
    CONSTRAINT team_plan_members_gender_check CHECK (gender IS NULL OR gender IN ('male', 'female', 'genderless')),
    CONSTRAINT team_plan_members_notes_length_check CHECK (notes IS NULL OR CHAR_LENGTH(BTRIM(notes)) BETWEEN 1 AND 5000)
);

CREATE TRIGGER set_team_plan_members_updated_at
    BEFORE UPDATE ON planning.mainline_team_plan_members
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

CREATE INDEX team_plan_members_target_identity_idx ON planning.mainline_team_plan_members (target_species_id, target_form_id);

CREATE INDEX team_plan_members_plan_idx ON planning.mainline_team_plan_members (team_plan_id);

CREATE INDEX team_plan_members_nature_idx ON planning.mainline_team_plan_members (nature_id)
WHERE
    nature_id IS NOT NULL;

CREATE INDEX team_plan_members_ability_idx ON planning.mainline_team_plan_members (ability_id)
WHERE
    ability_id IS NOT NULL;

CREATE INDEX team_plan_members_held_item_idx ON planning.mainline_team_plan_members (held_item_id)
WHERE
    held_item_id IS NOT NULL;

COMMENT ON TABLE planning.mainline_team_plan_members IS 'Ordered planned Pokémon targets. Every member is a primary target; species and form are required while build preferences are optional.';

COMMENT ON COLUMN planning.mainline_team_plan_members.gender IS 'Optional planned gender. NULL means the plan does not constrain gender.';
