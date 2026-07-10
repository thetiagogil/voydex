-- ============================================================================
-- Table: planning.mainline_play_plan_member_links
-- Links planned team members to actual play Pokémon.
-- ============================================================================
CREATE TABLE planning.mainline_play_plan_member_links (
    play_plan_link_id uuid NOT NULL,
    play_id uuid NOT NULL,
    team_plan_id uuid NOT NULL,
    team_plan_member_id uuid NOT NULL,
    play_pokemon_id uuid,
    status_id integer NOT NULL REFERENCES planning.mainline_plan_member_link_statuses (id) ON UPDATE CASCADE ON DELETE RESTRICT DEFAULT 1,
    linked_at timestamptz,
    reached_at timestamptz,
    skipped_at timestamptz,
    notes text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_plan_member_links_primary_key PRIMARY KEY (play_plan_link_id, team_plan_member_id),
    CONSTRAINT play_plan_member_links_plan_link_fkey FOREIGN KEY (play_plan_link_id, play_id, team_plan_id) REFERENCES planning.mainline_play_plan_links (id, play_id, team_plan_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT play_plan_member_links_member_plan_fkey FOREIGN KEY (team_plan_member_id, team_plan_id) REFERENCES planning.mainline_team_plan_members (id, team_plan_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT play_plan_member_links_play_pokemon_play_fkey FOREIGN KEY (play_pokemon_id, play_id) REFERENCES gameplay.mainline_play_pokemon (id, play_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT play_plan_member_links_status_pokemon_check CHECK ((status_id = 1 AND play_pokemon_id IS NULL) OR (status_id IN (2, 3) AND play_pokemon_id IS NOT NULL) OR status_id = 4),
    CONSTRAINT play_plan_member_links_reached_after_linked_check CHECK (reached_at IS NULL OR linked_at IS NULL OR reached_at >= linked_at),
    CONSTRAINT play_plan_member_links_notes_length_check CHECK (notes IS NULL OR CHAR_LENGTH(BTRIM(notes)) BETWEEN 1 AND 5000)
);

CREATE TRIGGER set_play_plan_member_links_updated_at
    BEFORE UPDATE ON planning.mainline_play_plan_member_links
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

CREATE INDEX play_plan_member_links_play_pokemon_idx ON planning.mainline_play_plan_member_links (play_pokemon_id)
WHERE
    play_pokemon_id IS NOT NULL;

CREATE INDEX play_plan_member_links_play_pokemon_play_idx ON planning.mainline_play_plan_member_links (play_pokemon_id, play_id)
WHERE
    play_pokemon_id IS NOT NULL;

CREATE INDEX play_plan_member_links_status_idx ON planning.mainline_play_plan_member_links (status_id);

CREATE INDEX play_plan_member_links_plan_link_scope_idx ON planning.mainline_play_plan_member_links (play_plan_link_id, play_id, team_plan_id);

CREATE INDEX play_plan_member_links_member_plan_idx ON planning.mainline_play_plan_member_links (team_plan_member_id, team_plan_id);

COMMENT ON TABLE planning.mainline_play_plan_member_links IS 'Play-specific status and optional actual Pokémon link for a reusable plan member.';

COMMENT ON COLUMN planning.mainline_play_plan_member_links.play_id IS 'Duplicated from the play-plan link to enforce same-play integrity with play Pokémon.';

COMMENT ON COLUMN planning.mainline_play_plan_member_links.team_plan_id IS 'Duplicated from the play-plan link to enforce same-plan integrity with team plan members.';
