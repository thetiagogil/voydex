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

CREATE FUNCTION private.enforce_play_challenge_rule_scope ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SECURITY DEFINER
    SET search_path = ''
    AS $$
DECLARE
    play_user_id uuid;
    rule_user_id uuid;
BEGIN
    SELECT
        mainline_plays.user_id
    INTO
        play_user_id
    FROM
        gameplay.mainline_plays
    WHERE
        mainline_plays.id = NEW.play_id;
    SELECT
        mainline_challenge_rules.user_id
    INTO
        rule_user_id
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
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.enforce_play_challenge_rule_scope () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.enforce_play_challenge_rule_scope () FROM anon;

REVOKE ALL ON FUNCTION private.enforce_play_challenge_rule_scope () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.enforce_play_challenge_rule_scope () TO service_role;

CREATE TRIGGER enforce_play_challenge_rule_scope
    BEFORE INSERT OR UPDATE OF play_id,
    challenge_rule_id ON gameplay.mainline_play_challenge_rules
    FOR EACH ROW
    EXECUTE FUNCTION private.enforce_play_challenge_rule_scope ();

COMMENT ON FUNCTION private.enforce_play_challenge_rule_scope () IS 'Allows predefined challenge rules for any play and custom challenge rules only for mainline_plays owned by the same user.';
