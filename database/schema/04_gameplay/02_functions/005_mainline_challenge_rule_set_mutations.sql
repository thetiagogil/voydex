-- ============================================================================
-- Function: gameplay.save_mainline_challenge_rule_set
-- Makes or changes one of your presets and its rules in one transaction.
-- ============================================================================
CREATE FUNCTION gameplay.save_mainline_challenge_rule_set (p_slug text, p_name text, p_rule_ids uuid[], p_description text DEFAULT NULL, p_rule_set_id uuid DEFAULT NULL)
    RETURNS uuid
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_user_id uuid := auth.uid ();
    v_rule_set_id uuid;
BEGIN
    IF v_user_id IS NULL THEN
        RAISE EXCEPTION 'An authenticated user is required to save a preset'
            USING ERRCODE = '42501';
    END IF;
    p_name := NULLIF (BTRIM(p_name), '');
    p_description := NULLIF (BTRIM(p_description), '');
    IF p_name IS NULL THEN
        RAISE EXCEPTION 'name is required'
            USING ERRCODE = '23502';
    END IF;
    IF COALESCE(CARDINALITY(ARRAY_REMOVE(p_rule_ids, NULL)), 0) = 0 THEN
        RAISE EXCEPTION 'A preset needs at least one rule'
            USING ERRCODE = '22023';
    END IF;
    IF p_rule_set_id IS NULL THEN
        INSERT INTO gameplay.mainline_challenge_rule_sets (user_id, slug, name, description)
            VALUES (v_user_id, p_slug, p_name, p_description)
        RETURNING
            id
        INTO
            v_rule_set_id;
    ELSE
        UPDATE
            gameplay.mainline_challenge_rule_sets
        SET
            slug = p_slug,
            name = p_name,
            description = p_description
        WHERE
            id = p_rule_set_id
            AND user_id = v_user_id
        RETURNING
            id
        INTO
            v_rule_set_id;
        IF v_rule_set_id IS NULL THEN
            RAISE EXCEPTION 'Preset % is not one of yours', p_rule_set_id
                USING ERRCODE = '42501';
        END IF;
        DELETE FROM gameplay.mainline_challenge_rule_set_rules
        WHERE rule_set_id = v_rule_set_id;
    END IF;
    -- Its rules in the order given, each once; the scope trigger refuses
    -- another trainer's rule.
    INSERT INTO gameplay.mainline_challenge_rule_set_rules (rule_set_id, challenge_rule_id, sort_order)
    SELECT
        v_rule_set_id,
        picked.rule_id,
        ROW_NUMBER() OVER (ORDER BY picked.first_position)::integer
    FROM (
        SELECT
            requested.rule_id,
            MIN(requested.position) AS first_position
        FROM
            UNNEST(p_rule_ids)
            WITH ORDINALITY AS requested (rule_id, position)
        WHERE
            requested.rule_id IS NOT NULL
        GROUP BY
            requested.rule_id) AS picked;
    RETURN v_rule_set_id;
END;
$$;

REVOKE ALL ON FUNCTION gameplay.save_mainline_challenge_rule_set (TEXT, TEXT, UUID[], TEXT, UUID) FROM PUBLIC;

REVOKE ALL ON FUNCTION gameplay.save_mainline_challenge_rule_set (TEXT, TEXT, UUID[], TEXT, UUID) FROM anon;

GRANT EXECUTE ON FUNCTION gameplay.save_mainline_challenge_rule_set (TEXT, TEXT, UUID[], TEXT, UUID) TO authenticated, service_role;

COMMENT ON FUNCTION gameplay.save_mainline_challenge_rule_set (TEXT, TEXT, UUID[], TEXT, UUID) IS 'Atomically makes (no id) or changes (your preset''s id) one of your presets: its slug, name and description and its rules, in the order given and each once. A preset needs at least one rule. Runs as SECURITY INVOKER so gameplay RLS applies.';
