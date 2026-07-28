CREATE FUNCTION gameplay.mark_mainline_play_milestone_incomplete (p_play_id uuid, p_milestone_id integer, p_expected_affected_milestone_ids integer[])
    RETURNS TABLE (
        affected_milestone_ids integer[],
        affected_milestone_count integer,
        removed_note_count integer,
        removed_decision_count integer,
        removed_history_event_count integer,
        removed_team_snapshot_count integer)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_affected_milestone_ids integer[];
    v_expected_affected_milestone_ids integer[];
    v_removed_note_count integer;
    v_removed_decision_count integer;
    v_removed_history_event_count integer;
    v_removed_team_snapshot_count integer;
    v_deleted_progress_count integer;
BEGIN
    IF p_play_id IS NULL THEN
        RAISE EXCEPTION 'play_id is required'
            USING ERRCODE = '23502';
    END IF;
    IF p_milestone_id IS NULL THEN
        RAISE EXCEPTION 'milestone_id is required'
            USING ERRCODE = '23502';
    END IF;

    PERFORM
        pg_catalog.pg_advisory_xact_lock(pg_catalog.hashtext(p_play_id::text)::bigint);

    IF NOT EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = p_play_id) THEN
        RAISE EXCEPTION 'Unknown or unavailable play_id %', p_play_id
            USING ERRCODE = '23503';
    END IF;

    IF NOT EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_play_milestone_progress
        WHERE
            mainline_play_milestone_progress.play_id = p_play_id
            AND mainline_play_milestone_progress.milestone_id = p_milestone_id) THEN
        RAISE EXCEPTION 'Milestone % is not completed for play %', p_milestone_id, p_play_id
            USING ERRCODE = '23514';
    END IF;

    WITH RECURSIVE dependent_closure AS (
        SELECT
            p_milestone_id AS milestone_id
        UNION
        SELECT
            dependent_prerequisites.milestone_id
        FROM
            dependent_closure
            JOIN tracking.mainline_milestone_prerequisites AS dependent_prerequisites ON dependent_prerequisites.prerequisite_milestone_id = dependent_closure.milestone_id
            JOIN tracking.mainline_milestone_prerequisite_kinds AS dependent_kinds ON dependent_kinds.id = dependent_prerequisites.prerequisite_kind_id
        WHERE
            dependent_kinds.slug IN ('required', 'story-unlock')
    )
    SELECT
        COALESCE(ARRAY_AGG(DISTINCT dependent_closure.milestone_id ORDER BY dependent_closure.milestone_id), '{}'::integer[])
    INTO
        v_affected_milestone_ids
    FROM
        dependent_closure
        JOIN gameplay.mainline_play_milestone_progress ON mainline_play_milestone_progress.play_id = p_play_id
            AND mainline_play_milestone_progress.milestone_id = dependent_closure.milestone_id;

    SELECT
        COALESCE(ARRAY_AGG(DISTINCT expected_id ORDER BY expected_id), '{}'::integer[])
    INTO
        v_expected_affected_milestone_ids
    FROM
        UNNEST(COALESCE(p_expected_affected_milestone_ids, '{}'::integer[])) AS expected (expected_id)
    WHERE
        expected_id IS NOT NULL
        AND expected_id > 0;

    IF v_expected_affected_milestone_ids IS DISTINCT FROM v_affected_milestone_ids THEN
        RAISE EXCEPTION 'Milestone correction impact changed; review the updated milestone list'
            USING ERRCODE = '40001';
    END IF;

    SELECT
        COUNT(*) FILTER (WHERE NULLIF (BTRIM(mainline_play_milestone_progress.notes), '') IS NOT NULL)::integer
    INTO
        v_removed_note_count
    FROM
        gameplay.mainline_play_milestone_progress
    WHERE
        mainline_play_milestone_progress.play_id = p_play_id
        AND mainline_play_milestone_progress.milestone_id = ANY (v_affected_milestone_ids);

    SELECT
        COUNT(*)::integer
    INTO
        v_removed_decision_count
    FROM
        gameplay.mainline_play_milestone_decisions
    WHERE
        mainline_play_milestone_decisions.play_id = p_play_id
        AND mainline_play_milestone_decisions.milestone_id = ANY (v_affected_milestone_ids);

    SELECT
        COUNT(DISTINCT mainline_play_events.id)::integer,
        COUNT(DISTINCT mainline_play_events.id) FILTER (WHERE mainline_play_event_team_snapshots.event_id IS NOT NULL)::integer
    INTO
        v_removed_history_event_count,
        v_removed_team_snapshot_count
    FROM
        gameplay.mainline_play_events
        LEFT JOIN gameplay.mainline_play_event_team_snapshots ON mainline_play_event_team_snapshots.event_id = mainline_play_events.id
    WHERE
        mainline_play_events.play_id = p_play_id
        AND mainline_play_events.milestone_id = ANY (v_affected_milestone_ids);

    DELETE FROM gameplay.mainline_play_events
    WHERE mainline_play_events.play_id = p_play_id
        AND mainline_play_events.milestone_id = ANY (v_affected_milestone_ids);

    DELETE FROM gameplay.mainline_play_milestone_decisions
    WHERE mainline_play_milestone_decisions.play_id = p_play_id
        AND mainline_play_milestone_decisions.milestone_id = ANY (v_affected_milestone_ids);

    DELETE FROM gameplay.mainline_play_milestone_progress
    WHERE mainline_play_milestone_progress.play_id = p_play_id
        AND mainline_play_milestone_progress.milestone_id = ANY (v_affected_milestone_ids);

    GET DIAGNOSTICS v_deleted_progress_count = ROW_COUNT;

    IF v_deleted_progress_count <> CARDINALITY(v_affected_milestone_ids) THEN
        RAISE EXCEPTION 'Milestone correction changed while it was being applied'
            USING ERRCODE = '40001';
    END IF;

    RETURN QUERY
    SELECT
        v_affected_milestone_ids,
        CARDINALITY(v_affected_milestone_ids),
        v_removed_note_count,
        v_removed_decision_count,
        v_removed_history_event_count,
        v_removed_team_snapshot_count;
END;
$$;

REVOKE ALL ON FUNCTION gameplay.mark_mainline_play_milestone_incomplete (UUID, INTEGER, INTEGER[]) FROM PUBLIC;

REVOKE ALL ON FUNCTION gameplay.mark_mainline_play_milestone_incomplete (UUID, INTEGER, INTEGER[]) FROM anon;

GRANT EXECUTE ON FUNCTION gameplay.mark_mainline_play_milestone_incomplete (UUID, INTEGER, INTEGER[]) TO authenticated, service_role;

COMMENT ON FUNCTION gameplay.mark_mainline_play_milestone_incomplete (UUID, INTEGER, INTEGER[]) IS 'Atomically marks one completed milestone and every completed transitive required or story-unlock dependent incomplete, deleting their notes, decisions, milestone-linked History events, and snapshots after validating the user-previewed impact set. Runs as SECURITY INVOKER so gameplay RLS still applies.';
