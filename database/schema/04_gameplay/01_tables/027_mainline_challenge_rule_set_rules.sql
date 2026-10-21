-- ============================================================================
-- Table: gameplay.mainline_challenge_rule_set_rules
-- The rules in each preset (they keep no order: a Play adds them all).
-- ============================================================================
CREATE TABLE gameplay.mainline_challenge_rule_set_rules (
    rule_set_id uuid NOT NULL REFERENCES gameplay.mainline_challenge_rule_sets (id) ON UPDATE CASCADE ON DELETE CASCADE,
    challenge_rule_id uuid NOT NULL REFERENCES gameplay.mainline_challenge_rules (id) ON UPDATE CASCADE ON DELETE CASCADE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT challenge_rule_set_rules_primary_key PRIMARY KEY (rule_set_id, challenge_rule_id)
);

CREATE INDEX challenge_rule_set_rules_challenge_rule_idx ON gameplay.mainline_challenge_rule_set_rules (challenge_rule_id);

COMMENT ON TABLE gameplay.mainline_challenge_rule_set_rules IS 'The rules in each preset; they keep no order, as a Play takes them all at once.';

CREATE FUNCTION private.enforce_challenge_rule_set_rule_scope ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SECURITY DEFINER
    SET search_path = ''
    AS $$
DECLARE
    set_found boolean;
    set_user_id uuid;
    rule_found boolean;
    rule_user_id uuid;
BEGIN
    SELECT
        TRUE,
        mainline_challenge_rule_sets.user_id
    INTO
        set_found,
        set_user_id
    FROM
        gameplay.mainline_challenge_rule_sets
    WHERE
        mainline_challenge_rule_sets.id = NEW.rule_set_id;
    SELECT
        TRUE,
        mainline_challenge_rules.user_id
    INTO
        rule_found,
        rule_user_id
    FROM
        gameplay.mainline_challenge_rules
    WHERE
        mainline_challenge_rules.id = NEW.challenge_rule_id;
    IF set_found IS NULL THEN
        RAISE EXCEPTION 'Unknown rule_set_id %', NEW.rule_set_id
            USING ERRCODE = '23503';
    END IF;
    IF rule_found IS NULL THEN
        RAISE EXCEPTION 'Unknown challenge_rule_id %', NEW.challenge_rule_id
            USING ERRCODE = '23503';
    END IF;
    -- Voydex's presets hold only Voydex's rules; yours hold Voydex's and yours.
    IF rule_user_id IS NOT NULL AND rule_user_id IS DISTINCT FROM set_user_id THEN
        RAISE EXCEPTION 'Challenge rule % does not belong to the owner of rule set %', NEW.challenge_rule_id, NEW.rule_set_id
            USING ERRCODE = '23514';
    END IF;
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.enforce_challenge_rule_set_rule_scope () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.enforce_challenge_rule_set_rule_scope () FROM anon;

REVOKE ALL ON FUNCTION private.enforce_challenge_rule_set_rule_scope () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.enforce_challenge_rule_set_rule_scope () TO service_role;

CREATE TRIGGER enforce_challenge_rule_set_rule_scope
    BEFORE INSERT OR UPDATE OF rule_set_id,
    challenge_rule_id ON gameplay.mainline_challenge_rule_set_rules
    FOR EACH ROW
    EXECUTE FUNCTION private.enforce_challenge_rule_set_rule_scope ();

COMMENT ON FUNCTION private.enforce_challenge_rule_set_rule_scope () IS 'Lets a preset hold Voydex''s rules and its owner''s own rules only, so Voydex''s presets hold only Voydex''s rules.';
