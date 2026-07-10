-- ============================================================================
-- Functions: gameplay mainline play progress mutations
-- Client-callable helpers for collectible and Pokedex progress writes.
-- ============================================================================
CREATE FUNCTION gameplay.set_mainline_play_collectible_entry_progress (p_play_id uuid, p_collectible_entry_id integer, p_is_collected boolean DEFAULT TRUE, p_collected_at timestamptz DEFAULT NOW())
    RETURNS TABLE (
        result_play_id uuid,
        result_collectible_entry_id integer,
        result_is_collected boolean,
        result_collected_at timestamptz)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_collected_at timestamptz;
BEGIN
    IF p_play_id IS NULL THEN
        RAISE EXCEPTION 'play_id is required'
            USING ERRCODE = '23502';
    END IF;
    IF p_collectible_entry_id IS NULL THEN
        RAISE EXCEPTION 'collectible_entry_id is required'
            USING ERRCODE = '23502';
    END IF;
    IF p_is_collected IS NULL THEN
        RAISE EXCEPTION 'is_collected is required'
            USING ERRCODE = '23502';
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
    IF p_is_collected THEN
        INSERT INTO gameplay.mainline_play_collectible_entry_progress (play_id, collectible_entry_id, collected_at)
            VALUES (p_play_id, p_collectible_entry_id, p_collected_at)
        ON CONFLICT ON CONSTRAINT play_collectible_entry_progress_primary_key
            DO UPDATE SET
                collected_at = gameplay.mainline_play_collectible_entry_progress.collected_at,
                updated_at = NOW()
            RETURNING
                mainline_play_collectible_entry_progress.collected_at
            INTO
                v_collected_at;
        RETURN QUERY
        SELECT
            p_play_id,
            p_collectible_entry_id,
            TRUE,
            v_collected_at;
        RETURN;
    END IF;
    DELETE FROM gameplay.mainline_play_collectible_entry_progress
    WHERE mainline_play_collectible_entry_progress.play_id = p_play_id
        AND mainline_play_collectible_entry_progress.collectible_entry_id = p_collectible_entry_id;
    RETURN QUERY
    SELECT
        p_play_id,
        p_collectible_entry_id,
        FALSE,
        NULL::timestamptz;
END;
$$;

CREATE FUNCTION gameplay.set_mainline_play_pokedex_species_progress (p_play_id uuid, p_species_id integer, p_is_seen boolean DEFAULT TRUE, p_is_caught boolean DEFAULT FALSE, p_seen_at timestamptz DEFAULT NOW(), p_caught_at timestamptz DEFAULT NOW())
    RETURNS TABLE (
        result_play_id uuid,
        result_species_id integer,
        result_is_seen boolean,
        result_is_caught boolean,
        result_seen_at timestamptz,
        result_caught_at timestamptz)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_is_seen boolean;
    v_is_caught boolean;
    v_seen_at timestamptz;
    v_caught_at timestamptz;
BEGIN
    IF p_play_id IS NULL THEN
        RAISE EXCEPTION 'play_id is required'
            USING ERRCODE = '23502';
    END IF;
    IF p_species_id IS NULL THEN
        RAISE EXCEPTION 'species_id is required'
            USING ERRCODE = '23502';
    END IF;
    IF p_is_seen IS NULL THEN
        RAISE EXCEPTION 'is_seen is required'
            USING ERRCODE = '23502';
    END IF;
    IF p_is_caught IS NULL THEN
        RAISE EXCEPTION 'is_caught is required'
            USING ERRCODE = '23502';
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
    v_is_caught := p_is_caught;
    v_is_seen := p_is_seen
    OR v_is_caught;
    IF NOT v_is_seen AND NOT v_is_caught THEN
        DELETE FROM gameplay.mainline_play_pokedex_species_progress
        WHERE mainline_play_pokedex_species_progress.play_id = p_play_id
            AND mainline_play_pokedex_species_progress.species_id = p_species_id;
        RETURN QUERY
        SELECT
            p_play_id,
            p_species_id,
            FALSE,
            FALSE,
            NULL::timestamptz,
            NULL::timestamptz;
        RETURN;
    END IF;
    v_seen_at := p_seen_at;
    v_caught_at := CASE WHEN v_is_caught THEN
        p_caught_at
    ELSE
        NULL
    END;
    IF v_is_caught AND v_seen_at IS NULL THEN
        v_seen_at := v_caught_at;
    END IF;
INSERT INTO gameplay.mainline_play_pokedex_species_progress (play_id, species_id, is_seen, is_caught, seen_at, caught_at)
    VALUES (p_play_id, p_species_id, v_is_seen, v_is_caught, v_seen_at, v_caught_at)
ON CONFLICT ON CONSTRAINT play_pokedex_species_progress_primary_key
    DO UPDATE SET
        is_seen = EXCLUDED.is_seen,
        is_caught = EXCLUDED.is_caught,
        seen_at = CASE WHEN EXCLUDED.is_seen THEN
            gameplay.mainline_play_pokedex_species_progress.seen_at
        ELSE
            NULL
        END,
        caught_at = CASE WHEN EXCLUDED.is_caught
            AND NOT gameplay.mainline_play_pokedex_species_progress.is_caught THEN
            EXCLUDED.caught_at
        WHEN EXCLUDED.is_caught THEN
            gameplay.mainline_play_pokedex_species_progress.caught_at
        ELSE
            NULL
        END,
        updated_at = NOW()
    RETURNING
        mainline_play_pokedex_species_progress.is_seen,
        mainline_play_pokedex_species_progress.is_caught,
        mainline_play_pokedex_species_progress.seen_at,
        mainline_play_pokedex_species_progress.caught_at
    INTO
        v_is_seen,
        v_is_caught,
        v_seen_at,
        v_caught_at;
    RETURN QUERY
    SELECT
        p_play_id,
        p_species_id,
        v_is_seen,
        v_is_caught,
        v_seen_at,
        v_caught_at;
END;
$$;

REVOKE ALL ON FUNCTION gameplay.set_mainline_play_collectible_entry_progress (UUID, INTEGER, BOOLEAN, TIMESTAMPTZ) FROM PUBLIC;

REVOKE ALL ON FUNCTION gameplay.set_mainline_play_collectible_entry_progress (UUID, INTEGER, BOOLEAN, TIMESTAMPTZ) FROM anon;

GRANT EXECUTE ON FUNCTION gameplay.set_mainline_play_collectible_entry_progress (UUID, INTEGER, BOOLEAN, TIMESTAMPTZ) TO authenticated, service_role;

REVOKE ALL ON FUNCTION gameplay.set_mainline_play_pokedex_species_progress (UUID, INTEGER, BOOLEAN, BOOLEAN, TIMESTAMPTZ, TIMESTAMPTZ) FROM PUBLIC;

REVOKE ALL ON FUNCTION gameplay.set_mainline_play_pokedex_species_progress (UUID, INTEGER, BOOLEAN, BOOLEAN, TIMESTAMPTZ, TIMESTAMPTZ) FROM anon;

GRANT EXECUTE ON FUNCTION gameplay.set_mainline_play_pokedex_species_progress (UUID, INTEGER, BOOLEAN, BOOLEAN, TIMESTAMPTZ, TIMESTAMPTZ) TO authenticated, service_role;

COMMENT ON FUNCTION gameplay.set_mainline_play_collectible_entry_progress (UUID, INTEGER, BOOLEAN, TIMESTAMPTZ) IS 'Sets or clears sparse collectible entry progress for a play. Row existence means collected. Runs as SECURITY INVOKER so gameplay RLS applies.';

COMMENT ON FUNCTION gameplay.set_mainline_play_pokedex_species_progress (UUID, INTEGER, BOOLEAN, BOOLEAN, TIMESTAMPTZ, TIMESTAMPTZ) IS 'Sets or clears sparse species-level Pokedex progress for a play, enforcing caught-implies-seen behavior. Runs as SECURITY INVOKER so gameplay RLS applies.';
