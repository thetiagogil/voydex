-- ============================================================================
-- Table: planning.mainline_team_plan_challenge_rules
-- Challenge/rule links attached to team plans.
-- ============================================================================
CREATE TABLE planning.mainline_team_plan_challenge_rules (
    team_plan_id uuid NOT NULL REFERENCES planning.mainline_team_plans (id) ON UPDATE CASCADE ON DELETE CASCADE,
    challenge_rule_id uuid NOT NULL REFERENCES gameplay.mainline_challenge_rules (id) ON UPDATE CASCADE ON DELETE CASCADE,
    config_override jsonb,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT team_plan_challenge_rules_primary_key PRIMARY KEY (team_plan_id, challenge_rule_id),
    CONSTRAINT team_plan_challenge_rules_config_override_object_check CHECK (config_override IS NULL OR jsonb_typeof(config_override) = 'object')
);

CREATE INDEX team_plan_challenge_rules_challenge_rule_idx ON planning.mainline_team_plan_challenge_rules (challenge_rule_id);

COMMENT ON TABLE planning.mainline_team_plan_challenge_rules IS 'Rules applied to a team plan, with optional structured override config.';

CREATE FUNCTION private.enforce_team_plan_challenge_rule_scope ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SECURITY DEFINER
    SET search_path = ''
    AS $$
DECLARE
    plan_user_id uuid;
    rule_user_id uuid;
BEGIN
    SELECT
        mainline_team_plans.user_id
    INTO
        plan_user_id
    FROM
        planning.mainline_team_plans
    WHERE
        mainline_team_plans.id = NEW.team_plan_id;
    SELECT
        mainline_challenge_rules.user_id
    INTO
        rule_user_id
    FROM
        gameplay.mainline_challenge_rules
    WHERE
        mainline_challenge_rules.id = NEW.challenge_rule_id;
    IF plan_user_id IS NULL THEN
        RAISE EXCEPTION 'Unknown team_plan_id %', NEW.team_plan_id
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
    IF rule_user_id IS NOT NULL AND rule_user_id <> plan_user_id THEN
        RAISE EXCEPTION 'Challenge rule % does not belong to the owner of team plan %', NEW.challenge_rule_id, NEW.team_plan_id
            USING ERRCODE = '23514';
    END IF;
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.enforce_team_plan_challenge_rule_scope () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.enforce_team_plan_challenge_rule_scope () FROM anon;

REVOKE ALL ON FUNCTION private.enforce_team_plan_challenge_rule_scope () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.enforce_team_plan_challenge_rule_scope () TO service_role;

CREATE TRIGGER enforce_team_plan_challenge_rule_scope
    BEFORE INSERT OR UPDATE OF team_plan_id,
    challenge_rule_id ON planning.mainline_team_plan_challenge_rules
    FOR EACH ROW
    EXECUTE FUNCTION private.enforce_team_plan_challenge_rule_scope ();

COMMENT ON FUNCTION private.enforce_team_plan_challenge_rule_scope () IS 'Allows predefined challenge rules for any plan and custom challenge rules only for plans owned by the same user.';
