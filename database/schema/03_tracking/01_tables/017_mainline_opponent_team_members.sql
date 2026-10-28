-- ============================================================================
-- Table: tracking.mainline_opponent_team_members
-- The Pokémon each opponent uses in each Story battle, slot by slot.
-- ============================================================================
CREATE TABLE tracking.mainline_opponent_team_members (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    milestone_id integer NOT NULL,
    opponent_id integer NOT NULL,
    ally_opponent_id integer,
    version_group_id integer NOT NULL,
    game_id integer,
    decision_milestone_id integer,
    decision_option_slug text,
    variant_slug text,
    variant_label text,
    slot integer NOT NULL,
    species_id integer NOT NULL,
    form_id integer NOT NULL,
    level integer NOT NULL,
    held_item_id integer REFERENCES reference.items (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    tera_type_id integer REFERENCES reference.tera_types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    dynamaxes boolean NOT NULL DEFAULT FALSE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT mainline_opponent_team_members_id_positive_check CHECK (id > 0),
    CONSTRAINT mainline_opponent_team_members_battle_fkey FOREIGN KEY (milestone_id, opponent_id, version_group_id) REFERENCES tracking.mainline_milestone_opponent_refs (milestone_id, opponent_id, version_group_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT mainline_opponent_team_members_opponent_version_group_fkey FOREIGN KEY (opponent_id, version_group_id) REFERENCES tracking.mainline_opponents (id, version_group_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT mainline_opponent_team_members_ally_version_group_fkey FOREIGN KEY (ally_opponent_id, version_group_id) REFERENCES tracking.mainline_opponents (id, version_group_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT mainline_opponent_team_members_game_scope_fkey FOREIGN KEY (game_id, version_group_id) REFERENCES reference.game_content_scopes (game_id, version_group_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mainline_opponent_team_members_decision_option_fkey FOREIGN KEY (decision_milestone_id, decision_option_slug) REFERENCES tracking.mainline_milestone_decision_options (milestone_id, slug) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mainline_opponent_team_members_form_fkey FOREIGN KEY (species_id, form_id) REFERENCES reference.pokemon_forms (species_id, id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mainline_opponent_team_members_ally_not_opponent_check CHECK (ally_opponent_id IS NULL OR ally_opponent_id <> opponent_id),
    CONSTRAINT mainline_opponent_team_members_decision_pair_check CHECK ((decision_milestone_id IS NULL) = (decision_option_slug IS NULL)),
    CONSTRAINT mainline_opponent_team_members_variant_pair_check CHECK ((variant_slug IS NULL) = (variant_label IS NULL)),
    CONSTRAINT mainline_opponent_team_members_one_variant_kind_check CHECK (decision_milestone_id IS NULL OR variant_slug IS NULL),
    CONSTRAINT mainline_opponent_team_members_variant_slug_format_check CHECK (variant_slug IS NULL OR (variant_slug = LOWER(variant_slug) AND variant_slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(variant_slug) <= 80)),
    CONSTRAINT mainline_opponent_team_members_variant_label_length_check CHECK (variant_label IS NULL OR CHAR_LENGTH(BTRIM(variant_label)) BETWEEN 1 AND 120),
    CONSTRAINT mainline_opponent_team_members_slot_range_check CHECK (slot BETWEEN 1 AND 6),
    CONSTRAINT mainline_opponent_team_members_level_range_check CHECK (level BETWEEN 1 AND 100),
    CONSTRAINT mainline_opponent_team_members_one_mechanic_check CHECK (NOT (dynamaxes AND tera_type_id IS NOT NULL)),
    CONSTRAINT mainline_opponent_team_members_slot_unique UNIQUE NULLS NOT DISTINCT (milestone_id, opponent_id, ally_opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, slot)
);

CREATE INDEX mainline_opponent_team_members_opponent_idx ON tracking.mainline_opponent_team_members (opponent_id);

CREATE INDEX mainline_opponent_team_members_ally_opponent_idx ON tracking.mainline_opponent_team_members (ally_opponent_id)
WHERE
    ally_opponent_id IS NOT NULL;

CREATE INDEX mainline_opponent_team_members_version_group_game_idx ON tracking.mainline_opponent_team_members (version_group_id, game_id);

CREATE INDEX mainline_opponent_team_members_decision_option_idx ON tracking.mainline_opponent_team_members (decision_milestone_id, decision_option_slug)
WHERE
    decision_milestone_id IS NOT NULL;

CREATE INDEX mainline_opponent_team_members_form_idx ON tracking.mainline_opponent_team_members (species_id, form_id);

CREATE INDEX mainline_opponent_team_members_held_item_idx ON tracking.mainline_opponent_team_members (held_item_id)
WHERE
    held_item_id IS NOT NULL;

CREATE INDEX mainline_opponent_team_members_tera_type_idx ON tracking.mainline_opponent_team_members (tera_type_id)
WHERE
    tera_type_id IS NOT NULL;

COMMENT ON TABLE tracking.mainline_opponent_team_members IS 'Curated teams of mainline_opponents in each Story battle, and of any ally fighting beside the player there: one row per Pokémon, in slot order.';

COMMENT ON COLUMN tracking.mainline_opponent_team_members.milestone_id IS 'With opponent_id: the Story battle (a mainline_milestone_opponent_refs row) this team is for, so a rematch has its own team.';

COMMENT ON COLUMN tracking.mainline_opponent_team_members.ally_opponent_id IS 'Set when the row is not the opponent''s Pokémon but an ally''s, fighting beside the player against opponent_id in this battle (a Multi Battle partner). NULL for the opponent''s own team.';

COMMENT ON COLUMN tracking.mainline_opponent_team_members.game_id IS 'Set when a version-group-wide opponent uses a different team in each game of the version group in one battle; then every team of that opponent in that battle names its game, and it is the battle''s game when the story point belongs to one.';

COMMENT ON COLUMN tracking.mainline_opponent_team_members.decision_milestone_id IS 'With decision_option_slug: the Play choice (usually the starter) this team follows. A Play reads the team for the option it recorded.';

COMMENT ON COLUMN tracking.mainline_opponent_team_members.form_id IS 'The form it battles in: a Pokémon that Mega Evolves, reverts to its Primal form or Gigantamaxes in this battle is stored in that battle form.';

COMMENT ON COLUMN tracking.mainline_opponent_team_members.held_item_id IS 'What it holds in this battle, in games with held items: its Mega Stone, its Z-Crystal or any other item. NULL means Voydex does not have it.';

COMMENT ON COLUMN tracking.mainline_opponent_team_members.tera_type_id IS 'The Tera Type it Terastallizes into in this battle, in games with Terastal. NULL means it does not Terastallize. A form with a fixed Tera Type accepts only that one.';

COMMENT ON COLUMN tracking.mainline_opponent_team_members.dynamaxes IS 'It Dynamaxes in this battle, in games with Dynamax; a Gigantamax form always does.';

COMMENT ON COLUMN tracking.mainline_opponent_team_members.variant_slug IS 'With variant_label: a team that depends on something Voydex does not record (such as how an earlier battle went).';

CREATE FUNCTION private.enforce_mainline_opponent_team_member_scope ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SET search_path = ''
    AS $$
DECLARE
    opponent_game_id integer;
    ally_game_id integer;
    milestone_game_id integer;
    decision_version_group_id integer;
BEGIN
    SELECT
        mainline_opponents.game_id
    INTO
        opponent_game_id
    FROM
        tracking.mainline_opponents
    WHERE
        mainline_opponents.id = NEW.opponent_id;
    IF opponent_game_id IS NOT NULL AND NEW.game_id IS NOT NULL THEN
        RAISE EXCEPTION 'Opponent % already belongs to one game; its team cannot name another', NEW.opponent_id
            USING ERRCODE = '23514';
    END IF;
    SELECT
        mainline_milestones.game_id
    INTO
        milestone_game_id
    FROM
        tracking.mainline_milestones
    WHERE
        mainline_milestones.id = NEW.milestone_id;
    IF milestone_game_id IS NOT NULL AND NEW.game_id IS NOT NULL AND NEW.game_id <> milestone_game_id THEN
        RAISE EXCEPTION 'Story battle % belongs to game %; its team cannot name another', NEW.milestone_id, milestone_game_id
            USING ERRCODE = '23514';
    END IF;
    IF NEW.ally_opponent_id IS NOT NULL THEN
        SELECT
            mainline_opponents.game_id
        INTO
            ally_game_id
        FROM
            tracking.mainline_opponents
        WHERE
            mainline_opponents.id = NEW.ally_opponent_id;
        -- The battle's game: the row's, else its Story battle's, else its opponent's.
        IF ally_game_id IS NOT NULL AND COALESCE(NEW.game_id, milestone_game_id, opponent_game_id) IS DISTINCT FROM ally_game_id THEN
            RAISE EXCEPTION 'Ally % belongs to game %; it cannot fight beside the player in another game', NEW.ally_opponent_id, ally_game_id
                USING ERRCODE = '23514';
        END IF;
    END IF;
    IF NEW.decision_milestone_id IS NOT NULL THEN
        SELECT
            mainline_milestones.version_group_id
        INTO
            decision_version_group_id
        FROM
            tracking.mainline_milestones
        WHERE
            mainline_milestones.id = NEW.decision_milestone_id;
        IF decision_version_group_id IS DISTINCT FROM NEW.version_group_id THEN
            RAISE EXCEPTION 'Decision milestone % and opponent % belong to different version groups', NEW.decision_milestone_id, NEW.opponent_id
                USING ERRCODE = '23514';
        END IF;
    END IF;
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.enforce_mainline_opponent_team_member_scope () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.enforce_mainline_opponent_team_member_scope () FROM anon;

REVOKE ALL ON FUNCTION private.enforce_mainline_opponent_team_member_scope () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.enforce_mainline_opponent_team_member_scope () TO service_role;

CREATE TRIGGER enforce_mainline_opponent_team_member_scope
    BEFORE INSERT OR UPDATE OF milestone_id,
    opponent_id,
    ally_opponent_id,
    version_group_id,
    game_id,
    decision_milestone_id ON tracking.mainline_opponent_team_members
    FOR EACH ROW
    EXECUTE FUNCTION private.enforce_mainline_opponent_team_member_scope ();

CREATE TRIGGER enforce_mainline_opponent_team_member_fixed_tera_type
    BEFORE INSERT OR UPDATE OF tera_type_id,
    form_id ON tracking.mainline_opponent_team_members
    FOR EACH ROW
    EXECUTE FUNCTION private.enforce_fixed_tera_type ('form_id', 'tera_type_id');

COMMENT ON FUNCTION private.enforce_mainline_opponent_team_member_scope () IS 'Keeps an opponent team row, and an ally''s, in its opponent''s and its Story battle''s game, and in its version group.';
