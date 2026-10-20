-- ============================================================================
-- Table: gameplay.mainline_play_challenge_rules
-- Challenge/rule links attached to mainline_plays.
-- ============================================================================
CREATE TABLE gameplay.mainline_play_challenge_rules (
    play_id uuid NOT NULL REFERENCES gameplay.mainline_plays (id) ON UPDATE CASCADE ON DELETE CASCADE,
    challenge_rule_id uuid NOT NULL REFERENCES gameplay.mainline_challenge_rules (id) ON UPDATE CASCADE ON DELETE CASCADE,
    config_override jsonb,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_challenge_rules_primary_key PRIMARY KEY (play_id, challenge_rule_id),
    CONSTRAINT play_challenge_rules_config_override_object_check CHECK (config_override IS NULL OR jsonb_typeof(config_override) = 'object')
);

CREATE INDEX play_challenge_rules_challenge_rule_idx ON gameplay.mainline_play_challenge_rules (challenge_rule_id);

COMMENT ON TABLE gameplay.mainline_play_challenge_rules IS 'Rules applied to a play, with optional structured override config.';

COMMENT ON COLUMN gameplay.mainline_play_challenge_rules.config_override IS 'This play''s values for the options its rule offers (keys of the rule''s config), such as Monotype''s type_id.';

CREATE FUNCTION private.enforce_play_challenge_rule_scope ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SECURITY DEFINER
    SET search_path = ''
    AS $$
DECLARE
    play_user_id uuid;
    play_generation_id integer;
    rule_user_id uuid;
    rule_config jsonb;
    option_key text;
    option_value jsonb;
BEGIN
    SELECT
        mainline_plays.user_id,
        version_groups.generation_id
    INTO
        play_user_id,
        play_generation_id
    FROM
        gameplay.mainline_plays
        JOIN reference.version_groups ON version_groups.id = mainline_plays.version_group_id
    WHERE
        mainline_plays.id = NEW.play_id;
    SELECT
        mainline_challenge_rules.user_id,
        mainline_challenge_rules.config
    INTO
        rule_user_id,
        rule_config
    FROM
        gameplay.mainline_challenge_rules
    WHERE
        mainline_challenge_rules.id = NEW.challenge_rule_id;
    IF play_user_id IS NULL THEN
        RAISE EXCEPTION 'Unknown play_id %', NEW.play_id
            USING ERRCODE = '23503';
    END IF;
    IF NOT EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_challenge_rules
        WHERE
            mainline_challenge_rules.id = NEW.challenge_rule_id) THEN
    RAISE EXCEPTION 'Unknown challenge_rule_id %', NEW.challenge_rule_id
        USING ERRCODE = '23503';
END IF;
    IF rule_user_id IS NOT NULL AND rule_user_id <> play_user_id THEN
        RAISE EXCEPTION 'Challenge rule % does not belong to the owner of play %', NEW.challenge_rule_id, NEW.play_id
            USING ERRCODE = '23514';
    END IF;
    -- A Play only sets the options its rule offers (the rule's config keys),
    -- each as the same kind of value as the rule's default; an option whose
    -- default is null (Monotype's type) takes a number.
    FOR option_key,
    option_value IN
    SELECT
        options.key,
        options.value
    FROM
        jsonb_each(COALESCE(NEW.config_override, '{}'::jsonb)) AS options LOOP
        IF NOT rule_config ? option_key THEN
            RAISE EXCEPTION 'Challenge rule % has no option %', NEW.challenge_rule_id, option_key USING ERRCODE = '23514';
END IF;
    IF jsonb_typeof(option_value) <> 'null' AND jsonb_typeof(option_value) <> COALESCE(NULLIF (jsonb_typeof(rule_config -> option_key), 'null'), 'number') THEN
        RAISE EXCEPTION 'Option % of challenge rule % must be a %', option_key, NEW.challenge_rule_id, COALESCE(NULLIF (jsonb_typeof(rule_config -> option_key), 'null'), 'number')
            USING ERRCODE = '23514';
    END IF;
    -- A type option names a type that exists in the Play's game.
    IF option_key = 'type_id' AND jsonb_typeof(option_value) = 'number' AND NOT EXISTS (
        SELECT
            1
        FROM
            reference.types
        WHERE
            types.id::numeric = option_value::text::numeric AND types.introduced_generation_id <= play_generation_id) THEN
        RAISE EXCEPTION 'Type % is not in the game of play %', option_value, NEW.play_id
            USING ERRCODE = '23514';
    END IF;
    -- A reuse option is one of the reuse scopes, narrowest to broadest.
    IF option_key = 'reuse_scope' AND option_value #>> '{}' NOT IN ('form', 'species', 'evolution_family') THEN
        RAISE EXCEPTION 'Reuse scope % is not one Voydex knows', option_value
            USING ERRCODE = '23514';
    END IF;
END LOOP;
    -- A rule with a type (Monotype) is kept only with its type picked.
    IF rule_config ? 'type_id' AND jsonb_typeof(COALESCE(NEW.config_override -> 'type_id', 'null'::jsonb)) <> 'number' THEN
        RAISE EXCEPTION 'Challenge rule % needs a type', NEW.challenge_rule_id
            USING ERRCODE = '23514';
    END IF;
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.enforce_play_challenge_rule_scope () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.enforce_play_challenge_rule_scope () FROM anon;

REVOKE ALL ON FUNCTION private.enforce_play_challenge_rule_scope () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.enforce_play_challenge_rule_scope () TO service_role;

CREATE TRIGGER enforce_play_challenge_rule_scope
    BEFORE INSERT OR UPDATE OF play_id,
    challenge_rule_id,
    config_override ON gameplay.mainline_play_challenge_rules
    FOR EACH ROW
    EXECUTE FUNCTION private.enforce_play_challenge_rule_scope ();

COMMENT ON FUNCTION private.enforce_play_challenge_rule_scope () IS 'Allows predefined challenge rules for any play and custom challenge rules only for mainline_plays owned by the same user, and checks the options a play sets against its rule: known keys, matching value kinds, a known reuse scope, and a type, required where the rule has one, that exists in the play''s game.';
