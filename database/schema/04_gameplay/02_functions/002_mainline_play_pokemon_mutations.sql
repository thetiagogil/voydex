-- ============================================================================
-- Functions: gameplay mainline play Pokémon mutations
-- Client-callable helpers for atomic team history writes.
-- ============================================================================
CREATE FUNCTION gameplay.add_mainline_play_pokemon (p_play_id uuid, p_roster_state_id integer, p_slot integer, p_species_id integer, p_form_id integer, p_nickname text DEFAULT NULL, p_level integer DEFAULT NULL, p_gender text DEFAULT 'unknown', p_is_shiny boolean DEFAULT FALSE, p_nature_id integer DEFAULT NULL, p_ability_id integer DEFAULT NULL, p_held_item_id integer DEFAULT NULL, p_met_location_label text DEFAULT NULL, p_met_level integer DEFAULT NULL, p_ball_item_id integer DEFAULT NULL, p_personal_notes text DEFAULT NULL, p_move_ids integer[] DEFAULT '{}'::integer[], p_create_event boolean DEFAULT TRUE, p_event_title text DEFAULT NULL, p_event_body text DEFAULT NULL, p_event_happened_at timestamptz DEFAULT NOW())
    RETURNS TABLE (
        result_play_pokemon_id uuid,
        result_event_id uuid)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_play_pokemon_id uuid;
    v_event_id uuid;
    v_next_timeline_order integer;
    v_species_name text;
BEGIN
    IF p_play_id IS NULL THEN
        RAISE EXCEPTION 'play_id is required'
            USING ERRCODE = '23502';
    END IF;
    p_nickname := NULLIF (BTRIM(p_nickname), '');
    p_gender := COALESCE(NULLIF (BTRIM(p_gender), ''), 'unknown');
    p_met_location_label := NULLIF (BTRIM(p_met_location_label), '');
    p_personal_notes := NULLIF (BTRIM(p_personal_notes), '');
    p_event_title := NULLIF (BTRIM(p_event_title), '');
    p_event_body := NULLIF (BTRIM(p_event_body), '');
    p_move_ids := COALESCE(p_move_ids, '{}'::integer[]);
    IF CARDINALITY(p_move_ids) > 4 THEN
        RAISE EXCEPTION 'A play Pokémon can have at most four current moves'
            USING ERRCODE = '23514';
    END IF;
    PERFORM
        pg_catalog.pg_advisory_xact_lock(pg_catalog.hashtext(p_play_id::text)::bigint);
    IF NOT EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = p_play_id
        FOR UPDATE) THEN
RAISE EXCEPTION 'Unknown or unavailable play_id %', p_play_id
        USING ERRCODE = '23503';
END IF;
    SELECT
        pokemon_species.name
    INTO
        v_species_name
    FROM
        reference.pokemon_species
    WHERE
        pokemon_species.id = p_species_id;
    INSERT INTO gameplay.mainline_play_pokemon (play_id, roster_state_id, slot, species_id, form_id, nickname, level, gender, is_shiny, nature_id, ability_id, held_item_id, met_location_label, met_level, ball_item_id, personal_notes)
        VALUES (p_play_id, p_roster_state_id, p_slot, p_species_id, p_form_id, p_nickname, p_level, p_gender, p_is_shiny, p_nature_id, p_ability_id, p_held_item_id, p_met_location_label, p_met_level, p_ball_item_id, p_personal_notes)
    RETURNING
        id
    INTO
        v_play_pokemon_id;
    INSERT INTO gameplay.mainline_play_pokemon_moves (play_pokemon_id, slot, move_id)
    SELECT
        v_play_pokemon_id,
        moves.move_slot::integer,
        moves.move_id
    FROM
        UNNEST(p_move_ids)
    WITH ORDINALITY AS moves (move_id, move_slot)
WHERE
    moves.move_id IS NOT NULL;
    IF p_create_event THEN
        SELECT
            COALESCE(MAX(mainline_play_events.timeline_order), 0) + 1
        INTO
            v_next_timeline_order
        FROM
            gameplay.mainline_play_events
        WHERE
            mainline_play_events.play_id = p_play_id;
        INSERT INTO gameplay.mainline_play_events (play_id, event_type_id, event_origin_id, title, body, happened_at, timeline_order)
            VALUES (p_play_id, 2, 2, COALESCE(p_event_title, 'Added ' || COALESCE(v_species_name, 'Pokémon')), p_event_body, p_event_happened_at, v_next_timeline_order)
        RETURNING
            id
        INTO
            v_event_id;
        INSERT INTO gameplay.mainline_play_event_pokemon_refs (event_id, play_id, play_pokemon_id, role, species_id, form_id, nickname, level, sort_order)
            VALUES (v_event_id, p_play_id, v_play_pokemon_id, 'subject', p_species_id, p_form_id, p_nickname, p_level, 1);
    END IF;
    RETURN QUERY
    SELECT
        v_play_pokemon_id,
        v_event_id;
END;
$$;

CREATE FUNCTION gameplay.evolve_mainline_play_pokemon (p_play_pokemon_id uuid, p_to_species_id integer, p_to_form_id integer, p_level integer DEFAULT NULL, p_event_title text DEFAULT NULL, p_event_body text DEFAULT NULL, p_event_happened_at timestamptz DEFAULT NOW())
    RETURNS TABLE (
        result_play_pokemon_id uuid,
        result_event_id uuid,
        result_from_species_id integer,
        result_from_form_id integer,
        result_to_species_id integer,
        result_to_form_id integer)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_play_pokemon gameplay.mainline_play_pokemon%ROWTYPE;
    v_event_id uuid;
    v_next_timeline_order integer;
    v_from_species_name text;
    v_to_species_name text;
BEGIN
    p_event_title := NULLIF (BTRIM(p_event_title), '');
    p_event_body := NULLIF (BTRIM(p_event_body), '');
    SELECT
        mainline_play_pokemon.*
    INTO
        v_play_pokemon
    FROM
        gameplay.mainline_play_pokemon
    WHERE
        mainline_play_pokemon.id = p_play_pokemon_id
    FOR UPDATE;
    IF v_play_pokemon.id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable play_pokemon_id %', p_play_pokemon_id
            USING ERRCODE = '23503';
    END IF;
    PERFORM
        pg_catalog.pg_advisory_xact_lock(pg_catalog.hashtext(v_play_pokemon.play_id::text)::bigint);
    SELECT
        pokemon_species.name
    INTO
        v_from_species_name
    FROM
        reference.pokemon_species
    WHERE
        pokemon_species.id = v_play_pokemon.species_id;
    SELECT
        pokemon_species.name
    INTO
        v_to_species_name
    FROM
        reference.pokemon_species
    WHERE
        pokemon_species.id = p_to_species_id;
    SELECT
        COALESCE(MAX(mainline_play_events.timeline_order), 0) + 1
    INTO
        v_next_timeline_order
    FROM
        gameplay.mainline_play_events
    WHERE
        mainline_play_events.play_id = v_play_pokemon.play_id;
    INSERT INTO gameplay.mainline_play_events (play_id, event_type_id, event_origin_id, title, body, happened_at, timeline_order)
        VALUES (v_play_pokemon.play_id, 3, 2, COALESCE(p_event_title, COALESCE(v_from_species_name, 'Pokémon') || ' evolved into ' || COALESCE(v_to_species_name, 'Pokémon')), p_event_body, p_event_happened_at, v_next_timeline_order)
    RETURNING
        id
    INTO
        v_event_id;
    INSERT INTO gameplay.mainline_play_event_pokemon_refs (event_id, play_id, play_pokemon_id, role, species_id, form_id, nickname, level, sort_order)
    VALUES
        (v_event_id, v_play_pokemon.play_id, p_play_pokemon_id, 'from', v_play_pokemon.species_id, v_play_pokemon.form_id, v_play_pokemon.nickname, COALESCE(p_level, v_play_pokemon.level), 1),
        (v_event_id, v_play_pokemon.play_id, p_play_pokemon_id, 'to', p_to_species_id, p_to_form_id, v_play_pokemon.nickname, COALESCE(p_level, v_play_pokemon.level), 2);
    UPDATE
        gameplay.mainline_play_pokemon
    SET
        species_id = p_to_species_id,
        form_id = p_to_form_id,
        level = COALESCE(p_level, gameplay.mainline_play_pokemon.level),
        updated_at = NOW()
    WHERE
        mainline_play_pokemon.id = p_play_pokemon_id;
    RETURN QUERY
    SELECT
        p_play_pokemon_id,
        v_event_id,
        v_play_pokemon.species_id,
        v_play_pokemon.form_id,
        p_to_species_id,
        p_to_form_id;
END;
$$;

CREATE FUNCTION gameplay.change_mainline_play_pokemon_form (p_play_pokemon_id uuid, p_to_form_id integer, p_level integer DEFAULT NULL, p_held_item_id integer DEFAULT NULL, p_clear_held_item boolean DEFAULT FALSE, p_event_title text DEFAULT NULL, p_event_body text DEFAULT NULL, p_event_happened_at timestamptz DEFAULT NOW())
    RETURNS TABLE (
        result_play_pokemon_id uuid,
        result_event_id uuid,
        result_species_id integer,
        result_from_form_id integer,
        result_to_form_id integer)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_play_pokemon gameplay.mainline_play_pokemon%ROWTYPE;
    v_event_id uuid;
    v_next_timeline_order integer;
    v_species_name text;
BEGIN
    p_event_title := NULLIF (BTRIM(p_event_title), '');
    p_event_body := NULLIF (BTRIM(p_event_body), '');
    SELECT
        mainline_play_pokemon.*
    INTO
        v_play_pokemon
    FROM
        gameplay.mainline_play_pokemon
    WHERE
        mainline_play_pokemon.id = p_play_pokemon_id
    FOR UPDATE;
    IF v_play_pokemon.id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable play_pokemon_id %', p_play_pokemon_id
            USING ERRCODE = '23503';
    END IF;
    PERFORM
        pg_catalog.pg_advisory_xact_lock(pg_catalog.hashtext(v_play_pokemon.play_id::text)::bigint);
    SELECT
        pokemon_species.name
    INTO
        v_species_name
    FROM
        reference.pokemon_species
    WHERE
        pokemon_species.id = v_play_pokemon.species_id;
    SELECT
        COALESCE(MAX(mainline_play_events.timeline_order), 0) + 1
    INTO
        v_next_timeline_order
    FROM
        gameplay.mainline_play_events
    WHERE
        mainline_play_events.play_id = v_play_pokemon.play_id;
    INSERT INTO gameplay.mainline_play_events (play_id, event_type_id, event_origin_id, title, body, happened_at, timeline_order)
        VALUES (v_play_pokemon.play_id, 6, 2, COALESCE(p_event_title, COALESCE(v_species_name, 'Pokémon') || ' changed form'), p_event_body, p_event_happened_at, v_next_timeline_order)
    RETURNING
        id
    INTO
        v_event_id;
    INSERT INTO gameplay.mainline_play_event_pokemon_refs (event_id, play_id, play_pokemon_id, role, species_id, form_id, nickname, level, sort_order)
    VALUES
        (v_event_id, v_play_pokemon.play_id, p_play_pokemon_id, 'from', v_play_pokemon.species_id, v_play_pokemon.form_id, v_play_pokemon.nickname, COALESCE(p_level, v_play_pokemon.level), 1),
        (v_event_id, v_play_pokemon.play_id, p_play_pokemon_id, 'to', v_play_pokemon.species_id, p_to_form_id, v_play_pokemon.nickname, COALESCE(p_level, v_play_pokemon.level), 2);
    UPDATE
        gameplay.mainline_play_pokemon
    SET
        form_id = p_to_form_id,
        level = COALESCE(p_level, gameplay.mainline_play_pokemon.level),
        held_item_id = CASE WHEN p_clear_held_item THEN
            NULL
        WHEN p_held_item_id IS NOT NULL THEN
            p_held_item_id
        ELSE
            gameplay.mainline_play_pokemon.held_item_id
        END,
        updated_at = NOW()
    WHERE
        mainline_play_pokemon.id = p_play_pokemon_id;
    RETURN QUERY
    SELECT
        p_play_pokemon_id,
        v_event_id,
        v_play_pokemon.species_id,
        v_play_pokemon.form_id,
        p_to_form_id;
END;
$$;

CREATE FUNCTION gameplay.retire_mainline_play_pokemon (p_play_pokemon_id uuid, p_final_status text DEFAULT 'retired', p_create_event boolean DEFAULT TRUE, p_event_title text DEFAULT NULL, p_event_body text DEFAULT NULL, p_event_happened_at timestamptz DEFAULT NOW())
    RETURNS TABLE (
        result_play_pokemon_id uuid,
        result_event_id uuid)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_play_pokemon gameplay.mainline_play_pokemon%ROWTYPE;
    v_event_id uuid;
    v_next_timeline_order integer;
    v_species_name text;
BEGIN
    p_final_status := COALESCE(NULLIF (BTRIM(p_final_status), ''), 'retired');
    p_event_title := NULLIF (BTRIM(p_event_title), '');
    p_event_body := NULLIF (BTRIM(p_event_body), '');
    SELECT
        mainline_play_pokemon.*
    INTO
        v_play_pokemon
    FROM
        gameplay.mainline_play_pokemon
    WHERE
        mainline_play_pokemon.id = p_play_pokemon_id
    FOR UPDATE;
    IF v_play_pokemon.id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable play_pokemon_id %', p_play_pokemon_id
            USING ERRCODE = '23503';
    END IF;
    PERFORM
        pg_catalog.pg_advisory_xact_lock(pg_catalog.hashtext(v_play_pokemon.play_id::text)::bigint);
    SELECT
        pokemon_species.name
    INTO
        v_species_name
    FROM
        reference.pokemon_species
    WHERE
        pokemon_species.id = v_play_pokemon.species_id;
    UPDATE
        gameplay.mainline_play_pokemon
    SET
        roster_state_id = 3,
        slot = NULL,
        final_status = p_final_status,
        updated_at = NOW()
    WHERE
        mainline_play_pokemon.id = p_play_pokemon_id;
    IF p_create_event THEN
        SELECT
            COALESCE(MAX(mainline_play_events.timeline_order), 0) + 1
        INTO
            v_next_timeline_order
        FROM
            gameplay.mainline_play_events
        WHERE
            mainline_play_events.play_id = v_play_pokemon.play_id;
        INSERT INTO gameplay.mainline_play_events (play_id, event_type_id, event_origin_id, title, body, happened_at, timeline_order)
            VALUES (v_play_pokemon.play_id, 4, 2, COALESCE(p_event_title, 'Retired ' || COALESCE(v_species_name, 'Pokémon')), p_event_body, p_event_happened_at, v_next_timeline_order)
        RETURNING
            id
        INTO
            v_event_id;
        INSERT INTO gameplay.mainline_play_event_pokemon_refs (event_id, play_id, play_pokemon_id, role, species_id, form_id, nickname, level, sort_order)
            VALUES (v_event_id, v_play_pokemon.play_id, p_play_pokemon_id, 'subject', v_play_pokemon.species_id, v_play_pokemon.form_id, v_play_pokemon.nickname, v_play_pokemon.level, 1);
    END IF;
    RETURN QUERY
    SELECT
        p_play_pokemon_id,
        v_event_id;
END;
$$;

CREATE FUNCTION gameplay.replace_mainline_play_pokemon (p_replaced_play_pokemon_id uuid, p_replacement_species_id integer, p_replacement_form_id integer, p_replacement_roster_state_id integer DEFAULT NULL, p_replacement_slot integer DEFAULT NULL, p_replacement_nickname text DEFAULT NULL, p_replacement_level integer DEFAULT NULL, p_replacement_gender text DEFAULT 'unknown', p_replacement_is_shiny boolean DEFAULT FALSE, p_replacement_nature_id integer DEFAULT NULL, p_replacement_ability_id integer DEFAULT NULL, p_replacement_held_item_id integer DEFAULT NULL, p_replacement_met_location_label text DEFAULT NULL, p_replacement_met_level integer DEFAULT NULL, p_replacement_ball_item_id integer DEFAULT NULL, p_replacement_personal_notes text DEFAULT NULL, p_replacement_move_ids integer[] DEFAULT '{}'::integer[], p_replaced_final_status text DEFAULT 'replaced', p_create_event boolean DEFAULT TRUE, p_event_title text DEFAULT NULL, p_event_body text DEFAULT NULL, p_event_happened_at timestamptz DEFAULT NOW())
    RETURNS TABLE (
        result_replaced_play_pokemon_id uuid,
        result_replacement_play_pokemon_id uuid,
        result_event_id uuid)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_replaced_pokemon gameplay.mainline_play_pokemon%ROWTYPE;
    v_replacement_play_pokemon_id uuid;
    v_replacement_roster_state_id integer;
    v_replacement_slot integer;
    v_event_id uuid;
    v_next_timeline_order integer;
    v_replaced_species_name text;
    v_replacement_species_name text;
BEGIN
    p_replacement_nickname := NULLIF (BTRIM(p_replacement_nickname), '');
    p_replacement_gender := COALESCE(NULLIF (BTRIM(p_replacement_gender), ''), 'unknown');
    p_replacement_met_location_label := NULLIF (BTRIM(p_replacement_met_location_label), '');
    p_replacement_personal_notes := NULLIF (BTRIM(p_replacement_personal_notes), '');
    p_replaced_final_status := COALESCE(NULLIF (BTRIM(p_replaced_final_status), ''), 'replaced');
    p_event_title := NULLIF (BTRIM(p_event_title), '');
    p_event_body := NULLIF (BTRIM(p_event_body), '');
    p_replacement_move_ids := COALESCE(p_replacement_move_ids, '{}'::integer[]);
    IF CARDINALITY(p_replacement_move_ids) > 4 THEN
        RAISE EXCEPTION 'A play Pokémon can have at most four current moves'
            USING ERRCODE = '23514';
    END IF;
    SELECT
        mainline_play_pokemon.*
    INTO
        v_replaced_pokemon
    FROM
        gameplay.mainline_play_pokemon
    WHERE
        mainline_play_pokemon.id = p_replaced_play_pokemon_id
    FOR UPDATE;
    IF v_replaced_pokemon.id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable play_pokemon_id %', p_replaced_play_pokemon_id
            USING ERRCODE = '23503';
    END IF;
    IF v_replaced_pokemon.roster_state_id NOT IN (1, 2) OR v_replaced_pokemon.slot IS NULL THEN
        RAISE EXCEPTION 'Only current active or reserve Pokémon can be replaced'
            USING ERRCODE = '23514';
    END IF;
    PERFORM
        pg_catalog.pg_advisory_xact_lock(pg_catalog.hashtext(v_replaced_pokemon.play_id::text)::bigint);
    v_replacement_roster_state_id := COALESCE(p_replacement_roster_state_id, v_replaced_pokemon.roster_state_id);
    v_replacement_slot := COALESCE(p_replacement_slot, v_replaced_pokemon.slot);
    SELECT
        pokemon_species.name
    INTO
        v_replaced_species_name
    FROM
        reference.pokemon_species
    WHERE
        pokemon_species.id = v_replaced_pokemon.species_id;
    SELECT
        pokemon_species.name
    INTO
        v_replacement_species_name
    FROM
        reference.pokemon_species
    WHERE
        pokemon_species.id = p_replacement_species_id;
    UPDATE
        gameplay.mainline_play_pokemon
    SET
        roster_state_id = 4,
        slot = NULL,
        final_status = p_replaced_final_status,
        updated_at = NOW()
    WHERE
        mainline_play_pokemon.id = p_replaced_play_pokemon_id;
    INSERT INTO gameplay.mainline_play_pokemon (play_id, roster_state_id, slot, species_id, form_id, nickname, level, gender, is_shiny, nature_id, ability_id, held_item_id, met_location_label, met_level, ball_item_id, personal_notes)
        VALUES (v_replaced_pokemon.play_id, v_replacement_roster_state_id, v_replacement_slot, p_replacement_species_id, p_replacement_form_id, p_replacement_nickname, p_replacement_level, p_replacement_gender, p_replacement_is_shiny, p_replacement_nature_id, p_replacement_ability_id, p_replacement_held_item_id, p_replacement_met_location_label, p_replacement_met_level, p_replacement_ball_item_id, p_replacement_personal_notes)
    RETURNING
        id
    INTO
        v_replacement_play_pokemon_id;
    INSERT INTO gameplay.mainline_play_pokemon_moves (play_pokemon_id, slot, move_id)
    SELECT
        v_replacement_play_pokemon_id,
        moves.move_slot::integer,
        moves.move_id
    FROM
        UNNEST(p_replacement_move_ids)
    WITH ORDINALITY AS moves (move_id, move_slot)
WHERE
    moves.move_id IS NOT NULL;
    IF p_create_event THEN
        SELECT
            COALESCE(MAX(mainline_play_events.timeline_order), 0) + 1
        INTO
            v_next_timeline_order
        FROM
            gameplay.mainline_play_events
        WHERE
            mainline_play_events.play_id = v_replaced_pokemon.play_id;
        INSERT INTO gameplay.mainline_play_events (play_id, event_type_id, event_origin_id, title, body, happened_at, timeline_order)
            VALUES (v_replaced_pokemon.play_id, 5, 2, COALESCE(p_event_title, 'Replaced ' || COALESCE(v_replaced_species_name, 'Pokémon') || ' with ' || COALESCE(v_replacement_species_name, 'Pokémon')), p_event_body, p_event_happened_at, v_next_timeline_order)
        RETURNING
            id
        INTO
            v_event_id;
        INSERT INTO gameplay.mainline_play_event_pokemon_refs (event_id, play_id, play_pokemon_id, role, species_id, form_id, nickname, level, sort_order)
        VALUES
            (v_event_id, v_replaced_pokemon.play_id, p_replaced_play_pokemon_id, 'replaced', v_replaced_pokemon.species_id, v_replaced_pokemon.form_id, v_replaced_pokemon.nickname, v_replaced_pokemon.level, 1),
            (v_event_id, v_replaced_pokemon.play_id, v_replacement_play_pokemon_id, 'replacement', p_replacement_species_id, p_replacement_form_id, p_replacement_nickname, p_replacement_level, 2);
    END IF;
    RETURN QUERY
    SELECT
        p_replaced_play_pokemon_id,
        v_replacement_play_pokemon_id,
        v_event_id;
END;
$$;

CREATE FUNCTION gameplay.update_mainline_play_pokemon (p_play_pokemon_id uuid, p_nickname text DEFAULT NULL, p_level integer DEFAULT NULL, p_gender text DEFAULT 'unknown', p_is_shiny boolean DEFAULT FALSE, p_nature_id integer DEFAULT NULL, p_ability_id integer DEFAULT NULL, p_held_item_id integer DEFAULT NULL, p_met_location_label text DEFAULT NULL, p_met_level integer DEFAULT NULL, p_ball_item_id integer DEFAULT NULL, p_personal_notes text DEFAULT NULL, p_move_ids integer[] DEFAULT '{}'::integer[])
    RETURNS TABLE (
        result_play_pokemon_id uuid,
        result_move_count integer)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_play_pokemon gameplay.mainline_play_pokemon%ROWTYPE;
    v_move_count integer;
BEGIN
    IF p_play_pokemon_id IS NULL THEN
        RAISE EXCEPTION 'play_pokemon_id is required'
            USING ERRCODE = '23502';
    END IF;
    p_nickname := NULLIF (BTRIM(p_nickname), '');
    p_gender := COALESCE(NULLIF (BTRIM(p_gender), ''), 'unknown');
    p_met_location_label := NULLIF (BTRIM(p_met_location_label), '');
    p_personal_notes := NULLIF (BTRIM(p_personal_notes), '');
    p_move_ids := COALESCE(p_move_ids, '{}'::integer[]);
    IF CARDINALITY(p_move_ids) > 4 THEN
        RAISE EXCEPTION 'A play Pokémon can have at most four current moves'
            USING ERRCODE = '23514';
    END IF;
    SELECT
        mainline_play_pokemon.*
    INTO
        v_play_pokemon
    FROM
        gameplay.mainline_play_pokemon
    WHERE
        mainline_play_pokemon.id = p_play_pokemon_id
    FOR UPDATE;
    IF v_play_pokemon.id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable play_pokemon_id %', p_play_pokemon_id
            USING ERRCODE = '23503';
    END IF;
    PERFORM
        pg_catalog.pg_advisory_xact_lock(pg_catalog.hashtext(v_play_pokemon.play_id::text)::bigint);
    UPDATE
        gameplay.mainline_play_pokemon
    SET
        nickname = p_nickname,
        level = p_level,
        gender = p_gender,
        is_shiny = COALESCE(p_is_shiny, FALSE),
        nature_id = p_nature_id,
        ability_id = p_ability_id,
        held_item_id = p_held_item_id,
        met_location_label = p_met_location_label,
        met_level = p_met_level,
        ball_item_id = p_ball_item_id,
        personal_notes = p_personal_notes
    WHERE
        mainline_play_pokemon.id = p_play_pokemon_id;
    DELETE FROM gameplay.mainline_play_pokemon_moves
    WHERE mainline_play_pokemon_moves.play_pokemon_id = p_play_pokemon_id;
    INSERT INTO gameplay.mainline_play_pokemon_moves (play_pokemon_id, slot, move_id)
    SELECT
        p_play_pokemon_id,
        moves.move_slot::integer,
        moves.move_id
    FROM
        UNNEST(p_move_ids)
    WITH ORDINALITY AS moves (move_id, move_slot)
WHERE
    moves.move_id IS NOT NULL;
    GET DIAGNOSTICS v_move_count = ROW_COUNT;
    RETURN QUERY
    SELECT
        p_play_pokemon_id,
        v_move_count;
END;
$$;

CREATE FUNCTION gameplay.move_mainline_play_pokemon (p_play_pokemon_id uuid, p_to_slot integer)
    RETURNS TABLE (
        result_play_pokemon_id uuid,
        result_swapped_play_pokemon_id uuid)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_play_id uuid;
    v_play_pokemon gameplay.mainline_play_pokemon%ROWTYPE;
    v_occupant_id uuid;
BEGIN
    IF p_play_pokemon_id IS NULL THEN
        RAISE EXCEPTION 'play_pokemon_id is required'
            USING ERRCODE = '23502';
    END IF;
    IF p_to_slot IS NULL OR p_to_slot NOT BETWEEN 1 AND 12 THEN
        RAISE EXCEPTION 'A roster slot runs from 1 to 12'
            USING ERRCODE = '23514';
    END IF;
    SELECT
        mainline_play_pokemon.play_id
    INTO
        v_play_id
    FROM
        gameplay.mainline_play_pokemon
    WHERE
        mainline_play_pokemon.id = p_play_pokemon_id;
    IF v_play_id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable play_pokemon_id %', p_play_pokemon_id
            USING ERRCODE = '23503';
    END IF;
    -- The Play lock comes before any row lock, so two moves on one roster
    -- queue instead of deadlocking on each other's rows.
    PERFORM
        pg_catalog.pg_advisory_xact_lock(pg_catalog.hashtext(v_play_id::text)::bigint);
    SELECT
        mainline_play_pokemon.*
    INTO
        v_play_pokemon
    FROM
        gameplay.mainline_play_pokemon
    WHERE
        mainline_play_pokemon.id = p_play_pokemon_id
    FOR UPDATE;
    IF v_play_pokemon.id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable play_pokemon_id %', p_play_pokemon_id
            USING ERRCODE = '23503';
    END IF;
    IF v_play_pokemon.slot IS NULL THEN
        RAISE EXCEPTION 'Only team and reserve Pokémon can move'
            USING ERRCODE = '23514';
    END IF;
    IF v_play_pokemon.slot = p_to_slot THEN
        RETURN QUERY
        SELECT
            p_play_pokemon_id,
            NULL::uuid;
        RETURN;
    END IF;
    SELECT
        mainline_play_pokemon.id
    INTO
        v_occupant_id
    FROM
        gameplay.mainline_play_pokemon
    WHERE
        mainline_play_pokemon.play_id = v_play_pokemon.play_id
        AND mainline_play_pokemon.slot = p_to_slot
    FOR UPDATE;
    -- The team keeps at least one Pokémon: a team Pokémon may leave for an
    -- empty reserve slot only while another Pokémon stays on the team.
    IF v_play_pokemon.slot <= 6 AND p_to_slot >= 7 AND v_occupant_id IS NULL AND NOT EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_play_pokemon
        WHERE
            mainline_play_pokemon.play_id = v_play_pokemon.play_id AND mainline_play_pokemon.roster_state_id = 1 AND mainline_play_pokemon.id <> p_play_pokemon_id) THEN
        RAISE EXCEPTION 'The team needs at least one Pokémon'
            USING ERRCODE = '23514';
    END IF;
    -- One statement moves both Pokémon; the deferrable slot constraint is
    -- checked once both have their new slots. The state follows the slot.
    UPDATE
        gameplay.mainline_play_pokemon
    SET
        slot = placements.to_slot,
        roster_state_id = CASE WHEN placements.to_slot <= 6 THEN
            1
        ELSE
            2
        END
    FROM (
        VALUES (p_play_pokemon_id, p_to_slot),
            (v_occupant_id, v_play_pokemon.slot)) AS placements (play_pokemon_id, to_slot)
WHERE
    mainline_play_pokemon.id = placements.play_pokemon_id;
    RETURN QUERY
    SELECT
        p_play_pokemon_id,
        v_occupant_id;
END;
$$;

CREATE FUNCTION gameplay.remove_mainline_play_pokemon (p_play_pokemon_id uuid, p_remove_added_moment boolean DEFAULT FALSE)
    RETURNS TABLE (
        result_play_pokemon_id uuid,
        result_removed_event_ids uuid[])
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_play_pokemon gameplay.mainline_play_pokemon%ROWTYPE;
    v_removed_event_ids uuid[] := '{}'::uuid[];
BEGIN
    IF p_play_pokemon_id IS NULL THEN
        RAISE EXCEPTION 'play_pokemon_id is required'
            USING ERRCODE = '23502';
    END IF;
    SELECT
        mainline_play_pokemon.*
    INTO
        v_play_pokemon
    FROM
        gameplay.mainline_play_pokemon
    WHERE
        mainline_play_pokemon.id = p_play_pokemon_id
    FOR UPDATE;
    IF v_play_pokemon.id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable play_pokemon_id %', p_play_pokemon_id
            USING ERRCODE = '23503';
    END IF;
    PERFORM
        pg_catalog.pg_advisory_xact_lock(pg_catalog.hashtext(v_play_pokemon.play_id::text)::bigint);
    -- Only this Pokémon's own Added moments: events of type pokemon_added
    -- whose subject is this Pokémon. Its other moments stay in History.
    IF COALESCE(p_remove_added_moment, FALSE) THEN
        WITH removed_events AS (
            DELETE FROM gameplay.mainline_play_events
            WHERE mainline_play_events.play_id = v_play_pokemon.play_id
                AND mainline_play_events.event_type_id = 2
                AND EXISTS (
                    SELECT
                        1
                    FROM
                        gameplay.mainline_play_event_pokemon_refs
                    WHERE
                        mainline_play_event_pokemon_refs.event_id = mainline_play_events.id
                        AND mainline_play_event_pokemon_refs.play_pokemon_id = p_play_pokemon_id
                        AND mainline_play_event_pokemon_refs.role = 'subject')
                RETURNING
                    mainline_play_events.id
)
        SELECT
            COALESCE(ARRAY_AGG(removed_events.id ORDER BY removed_events.id), '{}'::uuid[])
        INTO
            v_removed_event_ids
        FROM
            removed_events;
    END IF;
    DELETE FROM gameplay.mainline_play_pokemon
    WHERE mainline_play_pokemon.id = p_play_pokemon_id;
    RETURN QUERY
    SELECT
        p_play_pokemon_id,
        v_removed_event_ids;
END;
$$;

REVOKE ALL ON FUNCTION gameplay.add_mainline_play_pokemon (UUID, INTEGER, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, TEXT, BOOLEAN, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, INTEGER, TEXT, INTEGER[], BOOLEAN, TEXT, TEXT, TIMESTAMPTZ) FROM PUBLIC;

REVOKE ALL ON FUNCTION gameplay.add_mainline_play_pokemon (UUID, INTEGER, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, TEXT, BOOLEAN, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, INTEGER, TEXT, INTEGER[], BOOLEAN, TEXT, TEXT, TIMESTAMPTZ) FROM anon;

GRANT EXECUTE ON FUNCTION gameplay.add_mainline_play_pokemon (UUID, INTEGER, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, TEXT, BOOLEAN, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, INTEGER, TEXT, INTEGER[], BOOLEAN, TEXT, TEXT, TIMESTAMPTZ) TO authenticated, service_role;

REVOKE ALL ON FUNCTION gameplay.evolve_mainline_play_pokemon (UUID, INTEGER, INTEGER, INTEGER, TEXT, TEXT, TIMESTAMPTZ) FROM PUBLIC;

REVOKE ALL ON FUNCTION gameplay.evolve_mainline_play_pokemon (UUID, INTEGER, INTEGER, INTEGER, TEXT, TEXT, TIMESTAMPTZ) FROM anon;

GRANT EXECUTE ON FUNCTION gameplay.evolve_mainline_play_pokemon (UUID, INTEGER, INTEGER, INTEGER, TEXT, TEXT, TIMESTAMPTZ) TO authenticated, service_role;

REVOKE ALL ON FUNCTION gameplay.change_mainline_play_pokemon_form (UUID, INTEGER, INTEGER, INTEGER, BOOLEAN, TEXT, TEXT, TIMESTAMPTZ) FROM PUBLIC;

REVOKE ALL ON FUNCTION gameplay.change_mainline_play_pokemon_form (UUID, INTEGER, INTEGER, INTEGER, BOOLEAN, TEXT, TEXT, TIMESTAMPTZ) FROM anon;

GRANT EXECUTE ON FUNCTION gameplay.change_mainline_play_pokemon_form (UUID, INTEGER, INTEGER, INTEGER, BOOLEAN, TEXT, TEXT, TIMESTAMPTZ) TO authenticated, service_role;

REVOKE ALL ON FUNCTION gameplay.retire_mainline_play_pokemon (UUID, TEXT, BOOLEAN, TEXT, TEXT, TIMESTAMPTZ) FROM PUBLIC;

REVOKE ALL ON FUNCTION gameplay.retire_mainline_play_pokemon (UUID, TEXT, BOOLEAN, TEXT, TEXT, TIMESTAMPTZ) FROM anon;

GRANT EXECUTE ON FUNCTION gameplay.retire_mainline_play_pokemon (UUID, TEXT, BOOLEAN, TEXT, TEXT, TIMESTAMPTZ) TO authenticated, service_role;

REVOKE ALL ON FUNCTION gameplay.replace_mainline_play_pokemon (UUID, INTEGER, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, TEXT, BOOLEAN, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, INTEGER, TEXT, INTEGER[], TEXT, BOOLEAN, TEXT, TEXT, TIMESTAMPTZ) FROM PUBLIC;

REVOKE ALL ON FUNCTION gameplay.replace_mainline_play_pokemon (UUID, INTEGER, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, TEXT, BOOLEAN, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, INTEGER, TEXT, INTEGER[], TEXT, BOOLEAN, TEXT, TEXT, TIMESTAMPTZ) FROM anon;

GRANT EXECUTE ON FUNCTION gameplay.replace_mainline_play_pokemon (UUID, INTEGER, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, TEXT, BOOLEAN, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, INTEGER, TEXT, INTEGER[], TEXT, BOOLEAN, TEXT, TEXT, TIMESTAMPTZ) TO authenticated, service_role;

REVOKE ALL ON FUNCTION gameplay.update_mainline_play_pokemon (UUID, TEXT, INTEGER, TEXT, BOOLEAN, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, INTEGER, TEXT, INTEGER[]) FROM PUBLIC;

REVOKE ALL ON FUNCTION gameplay.update_mainline_play_pokemon (UUID, TEXT, INTEGER, TEXT, BOOLEAN, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, INTEGER, TEXT, INTEGER[]) FROM anon;

GRANT EXECUTE ON FUNCTION gameplay.update_mainline_play_pokemon (UUID, TEXT, INTEGER, TEXT, BOOLEAN, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, INTEGER, TEXT, INTEGER[]) TO authenticated, service_role;

REVOKE ALL ON FUNCTION gameplay.move_mainline_play_pokemon (UUID, INTEGER) FROM PUBLIC;

REVOKE ALL ON FUNCTION gameplay.move_mainline_play_pokemon (UUID, INTEGER) FROM anon;

GRANT EXECUTE ON FUNCTION gameplay.move_mainline_play_pokemon (UUID, INTEGER) TO authenticated, service_role;

REVOKE ALL ON FUNCTION gameplay.remove_mainline_play_pokemon (UUID, BOOLEAN) FROM PUBLIC;

REVOKE ALL ON FUNCTION gameplay.remove_mainline_play_pokemon (UUID, BOOLEAN) FROM anon;

GRANT EXECUTE ON FUNCTION gameplay.remove_mainline_play_pokemon (UUID, BOOLEAN) TO authenticated, service_role;

COMMENT ON FUNCTION gameplay.add_mainline_play_pokemon (UUID, INTEGER, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, TEXT, BOOLEAN, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, INTEGER, TEXT, INTEGER[], BOOLEAN, TEXT, TEXT, TIMESTAMPTZ) IS 'Adds a play Pokémon with optional current moves and optional Pokémon Added timeline event/ref. Runs as SECURITY INVOKER so gameplay RLS applies.';

COMMENT ON FUNCTION gameplay.evolve_mainline_play_pokemon (UUID, INTEGER, INTEGER, INTEGER, TEXT, TEXT, TIMESTAMPTZ) IS 'Records an in-game evolution, updates current Pokémon identity, and writes from/to event refs for history and Collection. Runs as SECURITY INVOKER so gameplay RLS applies.';

COMMENT ON FUNCTION gameplay.change_mainline_play_pokemon_form (UUID, INTEGER, INTEGER, INTEGER, BOOLEAN, TEXT, TEXT, TIMESTAMPTZ) IS 'Records an in-game form change, updates current form and optional held item state, and writes from/to event refs. Runs as SECURITY INVOKER so gameplay RLS applies.';

COMMENT ON FUNCTION gameplay.retire_mainline_play_pokemon (UUID, TEXT, BOOLEAN, TEXT, TEXT, TIMESTAMPTZ) IS 'Moves a play Pokémon to retired state and optionally writes a Pokémon Retired event/ref. Runs as SECURITY INVOKER so gameplay RLS applies.';

COMMENT ON FUNCTION gameplay.replace_mainline_play_pokemon (UUID, INTEGER, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, TEXT, BOOLEAN, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, INTEGER, TEXT, INTEGER[], TEXT, BOOLEAN, TEXT, TEXT, TIMESTAMPTZ) IS 'Replaces a current play Pokémon, inserts the replacement Pokémon, and optionally writes replaced/replacement event refs. Runs as SECURITY INVOKER so gameplay RLS applies.';

COMMENT ON FUNCTION gameplay.update_mainline_play_pokemon (UUID, TEXT, INTEGER, TEXT, BOOLEAN, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, INTEGER, TEXT, INTEGER[]) IS 'Atomically saves a play Pokémon''s editable details (every field is written; an omitted value clears it) and replaces its current moves in slot order, at most four. A details edit is not a History moment. Runs as SECURITY INVOKER so gameplay RLS applies.';

COMMENT ON FUNCTION gameplay.move_mainline_play_pokemon (UUID, INTEGER) IS 'Atomically moves a team or reserve Pokémon to a roster slot (1 to 6 team, 7 to 12 reserve; the state follows the slot), swapping with the Pokémon already there. Refuses to leave the team empty. A move is not a History moment. Runs as SECURITY INVOKER so gameplay RLS applies.';

COMMENT ON FUNCTION gameplay.remove_mainline_play_pokemon (UUID, BOOLEAN) IS 'Atomically deletes a play Pokémon recorded by mistake and, when asked (undoing an add), its own Pokémon Added moment. Its other moments stay in History with the Pokémon link cleared. Runs as SECURITY INVOKER so gameplay RLS applies.';
