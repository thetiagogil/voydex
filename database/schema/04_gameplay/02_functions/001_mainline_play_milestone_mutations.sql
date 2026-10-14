-- ============================================================================
-- Functions: gameplay mainline milestone mutations
-- Client-callable helpers for atomic story progress writes.
-- ============================================================================
CREATE FUNCTION gameplay.complete_mainline_play_milestone (p_play_id uuid, p_milestone_id integer, p_completed_at timestamptz DEFAULT NOW(), p_progress_notes text DEFAULT NULL, p_decision_option_id integer DEFAULT NULL, p_mark_prerequisite_milestone_ids integer[] DEFAULT '{}'::integer[], p_create_event boolean DEFAULT FALSE, p_event_title text DEFAULT NULL, p_event_body text DEFAULT NULL, p_event_happened_at timestamptz DEFAULT NULL, p_include_team_snapshot boolean DEFAULT FALSE, p_replace_progress_notes boolean DEFAULT FALSE, p_replace_decision boolean DEFAULT FALSE)
    RETURNS TABLE (
        play_id uuid,
        milestone_id integer,
        completion_event_id uuid,
        completed_milestone_ids integer[],
        snapshot_count integer)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_target_milestone tracking.mainline_milestones%ROWTYPE;
    v_requested_prerequisite_ids integer[];
    v_completion_milestone_ids integer[];
    v_invalid_prerequisite_ids integer[];
    v_unmet_required_prerequisite_ids integer[];
    v_event_id uuid;
    v_event_title text;
    v_event_type_id integer;
    v_event_origin_id integer;
    v_next_timeline_order integer;
    v_inserted_snapshot_count integer := 0;
BEGIN
    IF p_play_id IS NULL THEN
        RAISE EXCEPTION 'play_id is required'
            USING ERRCODE = '23502';
    END IF;
    IF p_milestone_id IS NULL THEN
        RAISE EXCEPTION 'milestone_id is required'
            USING ERRCODE = '23502';
    END IF;
    p_progress_notes := NULLIF (BTRIM(p_progress_notes), '');
    p_event_title := NULLIF (BTRIM(p_event_title), '');
    p_event_body := NULLIF (BTRIM(p_event_body), '');
    IF p_include_team_snapshot AND NOT p_create_event THEN
        RAISE EXCEPTION 'A team snapshot requires a linked timeline event'
            USING ERRCODE = '23514';
    END IF;
    PERFORM
        pg_catalog.pg_advisory_xact_lock(pg_catalog.hashtext(p_play_id::text)::bigint);
    SELECT
        mainline_milestones.*
    INTO
        v_target_milestone
    FROM
        tracking.mainline_milestones
    WHERE
        mainline_milestones.id = p_milestone_id;
    IF v_target_milestone.id IS NULL THEN
        RAISE EXCEPTION 'Unknown milestone_id %', p_milestone_id
            USING ERRCODE = '23503';
    END IF;
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
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = p_play_id
            AND (v_target_milestone.game_id IS NULL
                OR mainline_plays.game_id = v_target_milestone.game_id)
            AND (mainline_plays.version_group_id = v_target_milestone.version_group_id
                OR EXISTS (
                    SELECT
                        1
                    FROM
                        gameplay.mainline_play_optional_content_scopes
                    WHERE
                        mainline_play_optional_content_scopes.play_id = mainline_plays.id
                        AND mainline_play_optional_content_scopes.version_group_id = v_target_milestone.version_group_id))) THEN
        RAISE EXCEPTION 'Milestone % is not available for play %', p_milestone_id, p_play_id
    USING ERRCODE = '23514';
END IF;
    SELECT
        COALESCE(ARRAY_AGG(DISTINCT requested_id ORDER BY requested_id), '{}'::integer[])
    INTO
        v_requested_prerequisite_ids
    FROM
        UNNEST(COALESCE(p_mark_prerequisite_milestone_ids, '{}'::integer[])) AS requested (requested_id)
WHERE
    requested_id IS NOT NULL
    AND requested_id <> p_milestone_id;
    SELECT
        COALESCE(ARRAY_AGG(requested_id ORDER BY requested_id), '{}'::integer[])
    INTO
        v_invalid_prerequisite_ids
    FROM
        UNNEST(v_requested_prerequisite_ids) AS requested (requested_id)
WHERE
    NOT EXISTS (
        SELECT
            1
        FROM
            tracking.mainline_milestone_prerequisites
        WHERE
            mainline_milestone_prerequisites.milestone_id = p_milestone_id
            AND mainline_milestone_prerequisites.prerequisite_milestone_id = requested_id);
    IF ARRAY_LENGTH(v_invalid_prerequisite_ids, 1) IS NOT NULL THEN
        RAISE EXCEPTION 'Milestones % are not direct prerequisites for milestone %', v_invalid_prerequisite_ids, p_milestone_id
            USING ERRCODE = '23514';
    END IF;
    WITH RECURSIVE blocking_prerequisites AS (
        SELECT
            mainline_milestone_prerequisites.prerequisite_milestone_id
        FROM
            tracking.mainline_milestone_prerequisites
            JOIN tracking.mainline_milestone_prerequisite_kinds ON mainline_milestone_prerequisite_kinds.id = mainline_milestone_prerequisites.prerequisite_kind_id
        WHERE
            mainline_milestone_prerequisites.milestone_id = p_milestone_id
            AND mainline_milestone_prerequisite_kinds.slug IN ('required', 'story-unlock')
        UNION
        SELECT
            nested_prerequisites.prerequisite_milestone_id
        FROM
            blocking_prerequisites
            JOIN tracking.mainline_milestone_prerequisites AS nested_prerequisites ON nested_prerequisites.milestone_id = blocking_prerequisites.prerequisite_milestone_id
            JOIN tracking.mainline_milestone_prerequisite_kinds AS nested_kinds ON nested_kinds.id = nested_prerequisites.prerequisite_kind_id
        WHERE
            nested_kinds.slug IN ('required', 'story-unlock'))
    SELECT
        COALESCE(ARRAY_AGG(blocking_prerequisites.prerequisite_milestone_id ORDER BY blocking_prerequisites.prerequisite_milestone_id), '{}'::integer[])
    INTO
        v_unmet_required_prerequisite_ids
    FROM
        blocking_prerequisites
    WHERE
        NOT (blocking_prerequisites.prerequisite_milestone_id = ANY (v_requested_prerequisite_ids))
        AND NOT EXISTS (
            SELECT
                1
            FROM
                gameplay.mainline_play_milestone_progress
            WHERE
                mainline_play_milestone_progress.play_id = p_play_id
                AND mainline_play_milestone_progress.milestone_id = blocking_prerequisites.prerequisite_milestone_id);
    IF ARRAY_LENGTH(v_unmet_required_prerequisite_ids, 1) IS NOT NULL THEN
        RAISE EXCEPTION 'Milestone % requires completed milestones %', p_milestone_id, v_unmet_required_prerequisite_ids
            USING ERRCODE = '23514';
    END IF;
    SELECT
        ARRAY_AGG(milestone_ids.milestone_id ORDER BY milestone_ids.sort_order)
    INTO
        v_completion_milestone_ids
    FROM (
        SELECT
            requested_id AS milestone_id,
            ROW_NUMBER() OVER (ORDER BY requested_id) AS sort_order
        FROM
            UNNEST(v_requested_prerequisite_ids) AS requested (requested_id)
        UNION ALL
        SELECT
            p_milestone_id,
            2147483647) AS milestone_ids;
INSERT INTO gameplay.mainline_play_milestone_progress (play_id, milestone_id, completed_at, notes)
SELECT
    p_play_id,
    milestone_ids.milestone_id,
    p_completed_at,
    CASE WHEN milestone_ids.milestone_id = p_milestone_id THEN
        p_progress_notes
    ELSE
        NULL
    END
FROM
    UNNEST(v_completion_milestone_ids) AS milestone_ids (milestone_id)
ON CONFLICT ON CONSTRAINT play_milestone_progress_primary_key
    DO UPDATE SET
        completed_at = EXCLUDED.completed_at,
        notes = CASE WHEN gameplay.mainline_play_milestone_progress.milestone_id = p_milestone_id THEN
            CASE WHEN p_replace_progress_notes THEN
                EXCLUDED.notes
            ELSE
                COALESCE(EXCLUDED.notes, gameplay.mainline_play_milestone_progress.notes)
            END
        ELSE
            gameplay.mainline_play_milestone_progress.notes
        END,
        updated_at = NOW();
    IF p_replace_decision AND p_decision_option_id IS NULL THEN
        DELETE FROM gameplay.mainline_play_milestone_decisions
        WHERE mainline_play_milestone_decisions.play_id = p_play_id
            AND mainline_play_milestone_decisions.milestone_id = p_milestone_id;
    ELSIF p_decision_option_id IS NOT NULL THEN
        INSERT INTO gameplay.mainline_play_milestone_decisions (play_id, milestone_id, decision_option_id)
            VALUES (p_play_id, p_milestone_id, p_decision_option_id)
        ON CONFLICT ON CONSTRAINT play_milestone_decisions_primary_key
            DO UPDATE SET
                decision_option_id = EXCLUDED.decision_option_id,
                updated_at = NOW();
    END IF;
    IF p_create_event THEN
        v_event_title := COALESCE(NULLIF (BTRIM(p_event_title), ''), v_target_milestone.name);
        v_event_type_id := CASE WHEN v_target_milestone.milestone_type_id = 13 THEN
            7
        ELSE
            1
        END;
        v_event_origin_id := 3;
        SELECT
            mainline_play_events.id
        INTO
            v_event_id
        FROM
            gameplay.mainline_play_events
        WHERE
            mainline_play_events.play_id = p_play_id
            AND mainline_play_events.milestone_id = p_milestone_id;
        IF v_event_id IS NULL THEN
            SELECT
                COALESCE(MAX(mainline_play_events.timeline_order), 0) + 1
            INTO
                v_next_timeline_order
            FROM
                gameplay.mainline_play_events
            WHERE
                mainline_play_events.play_id = p_play_id;
            INSERT INTO gameplay.mainline_play_events (play_id, event_type_id, event_origin_id, title, body, happened_at, timeline_order, milestone_id)
                VALUES (p_play_id, v_event_type_id, v_event_origin_id, v_event_title, p_event_body, COALESCE(p_event_happened_at, p_completed_at), v_next_timeline_order, p_milestone_id)
            RETURNING
                id
            INTO
                v_event_id;
        ELSE
            UPDATE
                gameplay.mainline_play_events
            SET
                event_type_id = v_event_type_id,
                event_origin_id = v_event_origin_id,
                title = v_event_title,
                body = COALESCE(p_event_body, gameplay.mainline_play_events.body),
                happened_at = COALESCE(p_event_happened_at, p_completed_at, gameplay.mainline_play_events.happened_at),
                updated_at = NOW()
            WHERE
                mainline_play_events.id = v_event_id
            RETURNING
                mainline_play_events.id
            INTO
                v_event_id;
        END IF;
        IF p_include_team_snapshot THEN
            DELETE FROM gameplay.mainline_play_event_team_snapshots
            WHERE event_id = v_event_id;
            INSERT INTO gameplay.mainline_play_event_team_snapshots (event_id, play_id, play_pokemon_id, position, species_id, form_id, nickname, level, gender, is_shiny, nature_id, ability_id, held_item_id)
            SELECT
                v_event_id,
                p_play_id,
                mainline_play_pokemon.id,
                mainline_play_pokemon.slot,
                mainline_play_pokemon.species_id,
                mainline_play_pokemon.form_id,
                mainline_play_pokemon.nickname,
                mainline_play_pokemon.level,
                mainline_play_pokemon.gender,
                mainline_play_pokemon.is_shiny,
                mainline_play_pokemon.nature_id,
                mainline_play_pokemon.ability_id,
                mainline_play_pokemon.held_item_id
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                mainline_play_pokemon.play_id = p_play_id
                AND mainline_play_pokemon.roster_state_id = 1
                AND mainline_play_pokemon.slot BETWEEN 1 AND 6
            ORDER BY
                mainline_play_pokemon.slot;
            GET DIAGNOSTICS v_inserted_snapshot_count = ROW_COUNT;
            INSERT INTO gameplay.mainline_play_event_team_snapshot_moves (snapshot_id, slot, move_id)
            SELECT
                mainline_play_event_team_snapshots.id,
                mainline_play_pokemon_moves.slot,
                mainline_play_pokemon_moves.move_id
            FROM
                gameplay.mainline_play_event_team_snapshots
                JOIN gameplay.mainline_play_pokemon_moves ON mainline_play_pokemon_moves.play_pokemon_id = mainline_play_event_team_snapshots.play_pokemon_id
            WHERE
                mainline_play_event_team_snapshots.event_id = v_event_id
                AND mainline_play_event_team_snapshots.play_id = p_play_id
            ON CONFLICT (snapshot_id,
                slot)
                DO NOTHING;
        END IF;
    END IF;
    RETURN QUERY
    SELECT
        p_play_id,
        p_milestone_id,
        v_event_id,
        v_completion_milestone_ids,
        v_inserted_snapshot_count;
END;
$$;

REVOKE ALL ON FUNCTION gameplay.complete_mainline_play_milestone (UUID, INTEGER, TIMESTAMPTZ, TEXT, INTEGER, INTEGER[], BOOLEAN, TEXT, TEXT, TIMESTAMPTZ, BOOLEAN, BOOLEAN, BOOLEAN) FROM PUBLIC;

REVOKE ALL ON FUNCTION gameplay.complete_mainline_play_milestone (UUID, INTEGER, TIMESTAMPTZ, TEXT, INTEGER, INTEGER[], BOOLEAN, TEXT, TEXT, TIMESTAMPTZ, BOOLEAN, BOOLEAN, BOOLEAN) FROM anon;

GRANT EXECUTE ON FUNCTION gameplay.complete_mainline_play_milestone (UUID, INTEGER, TIMESTAMPTZ, TEXT, INTEGER, INTEGER[], BOOLEAN, TEXT, TEXT, TIMESTAMPTZ, BOOLEAN, BOOLEAN, BOOLEAN) TO authenticated, service_role;

COMMENT ON FUNCTION gameplay.complete_mainline_play_milestone (UUID, INTEGER, TIMESTAMPTZ, TEXT, INTEGER, INTEGER[], BOOLEAN, TEXT, TEXT, TIMESTAMPTZ, BOOLEAN, BOOLEAN, BOOLEAN) IS 'Atomically completes an available play milestone, rejects unmet required or story-unlock prerequisites, optionally completes approved direct prerequisites, replaces or preserves notes and decisions explicitly, creates or updates a linked timeline event, and records or replaces its current active-team snapshot. Runs as SECURITY INVOKER so gameplay RLS still applies.';

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
            dependent_kinds.slug IN ('required', 'story-unlock'))
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
