-- ============================================================================
-- Functions: gameplay tracking scope enforcement
-- Helpers used by gameplay progress and timeline integrity triggers.
-- ============================================================================
CREATE FUNCTION private.mainline_play_allows_tracking_scope (p_play_id uuid, p_version_group_id integer, p_game_id integer)
    RETURNS boolean
    LANGUAGE SQL
    STABLE
    SECURITY DEFINER
    SET search_path = ''
    AS $$
    SELECT
        EXISTS (
            SELECT
                1
            FROM
                gameplay.mainline_plays
            WHERE
                mainline_plays.id = p_play_id
                AND (p_game_id IS NULL
                    OR mainline_plays.game_id = p_game_id)
                AND (mainline_plays.version_group_id = p_version_group_id
                    OR EXISTS (
                        SELECT
                            1
                        FROM
                            gameplay.mainline_play_optional_content_scopes
                        WHERE
                            mainline_play_optional_content_scopes.play_id = mainline_plays.id
                            AND mainline_play_optional_content_scopes.version_group_id = p_version_group_id)));
$$;

REVOKE ALL ON FUNCTION private.mainline_play_allows_tracking_scope (UUID, INTEGER, INTEGER) FROM PUBLIC;

REVOKE ALL ON FUNCTION private.mainline_play_allows_tracking_scope (UUID, INTEGER, INTEGER) FROM anon;

REVOKE ALL ON FUNCTION private.mainline_play_allows_tracking_scope (UUID, INTEGER, INTEGER) FROM authenticated;

GRANT EXECUTE ON FUNCTION private.mainline_play_allows_tracking_scope (UUID, INTEGER, INTEGER) TO service_role;

COMMENT ON FUNCTION private.mainline_play_allows_tracking_scope (UUID, INTEGER, INTEGER) IS 'Checks whether a play allows a tracking definition by base or selected optional version group and optional game scope.';

CREATE FUNCTION private.enforce_mainline_play_milestone_scope ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SECURITY DEFINER
    SET search_path = ''
    AS $$
DECLARE
    milestone_version_group_id integer;
    milestone_game_id integer;
BEGIN
    IF NEW.milestone_id IS NULL THEN
        RETURN NEW;
    END IF;
    SELECT
        mainline_milestones.version_group_id,
        mainline_milestones.game_id
    INTO
        milestone_version_group_id,
        milestone_game_id
    FROM
        tracking.mainline_milestones
    WHERE
        mainline_milestones.id = NEW.milestone_id;
    IF milestone_version_group_id IS NULL THEN
        RAISE EXCEPTION 'Unknown milestone_id %', NEW.milestone_id
            USING ERRCODE = '23503';
    END IF;
    IF NOT private.mainline_play_allows_tracking_scope (NEW.play_id, milestone_version_group_id, milestone_game_id) THEN
        RAISE EXCEPTION 'Milestone % is not available for play %', NEW.milestone_id, NEW.play_id
            USING ERRCODE = '23514';
    END IF;
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.enforce_mainline_play_milestone_scope () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.enforce_mainline_play_milestone_scope () FROM anon;

REVOKE ALL ON FUNCTION private.enforce_mainline_play_milestone_scope () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.enforce_mainline_play_milestone_scope () TO service_role;

COMMENT ON FUNCTION private.enforce_mainline_play_milestone_scope () IS 'Prevents play milestone rows and milestone-linked events from referencing unavailable mainline_milestones.';

CREATE FUNCTION private.enforce_mainline_play_collectible_entry_scope ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SECURITY DEFINER
    SET search_path = ''
    AS $$
DECLARE
    collectible_version_group_id integer;
    collectible_game_id integer;
BEGIN
    SELECT
        mainline_collectibles.version_group_id,
        mainline_collectibles.game_id
    INTO
        collectible_version_group_id,
        collectible_game_id
    FROM
        tracking.mainline_collectible_entries
        JOIN tracking.mainline_collectibles ON mainline_collectibles.id = mainline_collectible_entries.collectible_id
    WHERE
        mainline_collectible_entries.id = NEW.collectible_entry_id;
    IF collectible_version_group_id IS NULL THEN
        RAISE EXCEPTION 'Unknown collectible_entry_id %', NEW.collectible_entry_id
            USING ERRCODE = '23503';
    END IF;
    IF NOT private.mainline_play_allows_tracking_scope (NEW.play_id, collectible_version_group_id, collectible_game_id) THEN
        RAISE EXCEPTION 'Collectible entry % is not available for play %', NEW.collectible_entry_id, NEW.play_id
            USING ERRCODE = '23514';
    END IF;
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.enforce_mainline_play_collectible_entry_scope () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.enforce_mainline_play_collectible_entry_scope () FROM anon;

REVOKE ALL ON FUNCTION private.enforce_mainline_play_collectible_entry_scope () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.enforce_mainline_play_collectible_entry_scope () TO service_role;

COMMENT ON FUNCTION private.enforce_mainline_play_collectible_entry_scope () IS 'Prevents play collectible progress from referencing unavailable collectible entries.';

CREATE FUNCTION private.enforce_mainline_play_pokedex_species_scope ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SECURITY DEFINER
    SET search_path = ''
    AS $$
BEGIN
    IF NOT EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = NEW.play_id) THEN
    RAISE EXCEPTION 'Unknown play_id %', NEW.play_id
        USING ERRCODE = '23503';
END IF;
    IF NOT EXISTS (
        SELECT
            1
        FROM
            reference.pokemon_species
        WHERE
            pokemon_species.id = NEW.species_id) THEN
    RAISE EXCEPTION 'Unknown species_id %', NEW.species_id
    USING ERRCODE = '23503';
END IF;
    IF NOT EXISTS (
        SELECT
            1
        FROM
            reference.pokedex_entries
            JOIN reference.pokedex ON pokedex.id = pokedex_entries.pokedex_id
        WHERE
            pokedex_entries.species_id = NEW.species_id
            AND private.mainline_play_allows_tracking_scope (NEW.play_id, pokedex.version_group_id, NULL)) THEN
    RAISE EXCEPTION 'Species % is not in an enabled Pokedex scope for play %', NEW.species_id, NEW.play_id
    USING ERRCODE = '23514';
END IF;
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.enforce_mainline_play_pokedex_species_scope () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.enforce_mainline_play_pokedex_species_scope () FROM anon;

REVOKE ALL ON FUNCTION private.enforce_mainline_play_pokedex_species_scope () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.enforce_mainline_play_pokedex_species_scope () TO service_role;

COMMENT ON FUNCTION private.enforce_mainline_play_pokedex_species_scope () IS 'Prevents play Pokedex progress from referencing species outside the play base or selected optional Pokedex scopes.';
