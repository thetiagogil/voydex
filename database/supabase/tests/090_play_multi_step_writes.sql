CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000c1', 'authenticated', 'authenticated', 'multi-step-a@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000d2', 'authenticated', 'authenticated', 'multi-step-b@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
SELECT
    plan (42);
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000c1', TRUE);
SET LOCAL ROLE authenticated;
CREATE TEMPORARY TABLE alola ON COMMIT DROP AS
SELECT
    result_play_id AS play_id
FROM
    gameplay.create_mainline_play (p_game_id => 25, p_name => 'Partnerless Run');
-- Choosing the partner
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000d2', TRUE);
SELECT
    throws_ok (FORMAT($$
            SELECT
                gameplay.choose_mainline_play_partner (%L, 71) $$, (
                    SELECT
                        play_id
                    FROM alola)), '23503', NULL, 'another user cannot choose the owner Play partner');
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000c1', TRUE);
SELECT
    throws_ok (FORMAT($$
            SELECT
                gameplay.choose_mainline_play_partner (%L, 1) $$, (
                    SELECT
                        play_id
                    FROM alola)), '23503', NULL, 'an option of another milestone is not a partner choice');
CREATE TEMPORARY TABLE chosen ON COMMIT DROP AS
SELECT
    *
FROM
    gameplay.choose_mainline_play_partner ((
        SELECT
            play_id
        FROM alola), 71);
SELECT
    IS ((
            SELECT
                ROW (result_milestone_id,
                    result_partner_name)
            FROM
                chosen),
            ROW (150001,
                'Rowlet'::text),
            'choosing resolves the game partner milestone and names the partner');
SELECT
    IS ((
            SELECT
                ROW (id,
                    roster_state_id,
                    slot,
                    species_id,
                    form_id)
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                play_id = (
                    SELECT
                        play_id
                    FROM
                        alola)),
                ROW ((
                        SELECT
                            result_partner_play_pokemon_id
                        FROM
                            chosen),
                        1,
                        1,
                        722,
                        72200),
                    'the partner joins an empty team in slot 1');
SELECT
    IS ((
            SELECT
                decision_option_id
            FROM
                gameplay.mainline_play_milestone_decisions
            WHERE
                play_id = (
                    SELECT
                        play_id
                    FROM
                        alola)
                    AND milestone_id = 150001),
                71,
                'the partner milestone records the decision');
SELECT
    IS ((
            SELECT
                ARRAY_AGG(ROW (id, event_type_id, title, milestone_id)::text)
            FROM
                gameplay.mainline_play_events
            WHERE
                play_id = (
                    SELECT
                        play_id
                    FROM
                        alola)),
                ARRAY[ROW ((
                        SELECT
                            result_event_id
                        FROM
                            chosen), 1, 'Rowlet chose you'::text, 150001)::text],
                    'choosing writes one "chose you" moment and no Added moment');
SELECT
    throws_ok (FORMAT($$
            SELECT
                gameplay.choose_mainline_play_partner (%L, 72) $$, (
                    SELECT
                        play_id
                    FROM alola)), '23505', NULL, 'a recorded partner cannot be chosen again');
-- Undoing the partner
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000d2', TRUE);
SELECT
    throws_ok (FORMAT($$
            SELECT
                gameplay.undo_mainline_play_partner (%L, %L) $$, (
                    SELECT
                        play_id
                    FROM alola), (
                SELECT
                    result_partner_play_pokemon_id
                FROM chosen)), '23503', NULL, 'another user cannot undo the owner Play partner');
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000c1', TRUE);
SELECT
    throws_ok (FORMAT($$
            SELECT
                gameplay.undo_mainline_play_partner (%L, '72000000-0000-0000-0000-0000000000ff') $$, (
                    SELECT
                        play_id
                    FROM alola)), '23503', NULL, 'undo refuses a Pokémon that is not in the Play');
SELECT
    IS ((
            SELECT
                ROW ((
                        SELECT
                            COUNT(*)
                        FROM
                            gameplay.mainline_play_milestone_progress
                        WHERE
                            play_id = alola.play_id), (
                            SELECT
                                COUNT(*)
                            FROM
                                gameplay.mainline_play_events
                            WHERE
                                play_id = alola.play_id), (
                                SELECT
                                    COUNT(*)
                                FROM
                                    gameplay.mainline_play_pokemon
                                WHERE
                                    play_id = alola.play_id))
                        FROM
                            alola),
                        ROW (1::bigint,
                            1::bigint,
                            1::bigint),
                        'a refused undo rolls back and keeps the partner, its milestone and moment');
SELECT
    lives_ok (FORMAT($$
            SELECT
                gameplay.undo_mainline_play_partner (%L, %L) $$, (
                    SELECT
                        play_id
                    FROM alola), (
                SELECT
                    result_partner_play_pokemon_id
                FROM chosen)), 'the owner can undo the partner choice');
SELECT
    IS ((
            SELECT
                ROW ((
                        SELECT
                            COUNT(*)
                        FROM
                            gameplay.mainline_play_milestone_progress
                        WHERE
                            play_id = alola.play_id), (
                            SELECT
                                COUNT(*)
                            FROM
                                gameplay.mainline_play_milestone_decisions
                            WHERE
                                play_id = alola.play_id), (
                                SELECT
                                    COUNT(*)
                                FROM
                                    gameplay.mainline_play_events
                                WHERE
                                    play_id = alola.play_id), (
                                    SELECT
                                        COUNT(*)
                                    FROM
                                        gameplay.mainline_play_pokemon
                                    WHERE
                                        play_id = alola.play_id))
                            FROM
                                alola),
                            ROW (0::bigint,
                                0::bigint,
                                0::bigint,
                                0::bigint),
                            'undo removes the milestone, decision, moment and partner together');
SELECT
    throws_ok (FORMAT($$
            SELECT
                gameplay.undo_mainline_play_partner (%L) $$, (
                    SELECT
                        play_id
                    FROM alola)), '23514', NULL, 'there is nothing to undo once the partner is unrecorded');
-- A team that is not empty keeps its Pokémon and gets no second partner.
SELECT
    gameplay.add_mainline_play_pokemon (p_play_id => (
            SELECT
                play_id
            FROM alola), p_roster_state_id => 2, p_slot => 7, p_species_id => 731, p_form_id => 73100, p_create_event => FALSE);
SELECT
    IS ((
            SELECT
                ROW (result_partner_play_pokemon_id,
                    (
                        SELECT
                            COUNT(*)
                        FROM
                            gameplay.mainline_play_pokemon
                        WHERE
                            play_id = alola.play_id))
                FROM
                    alola,
                    gameplay.choose_mainline_play_partner (alola.play_id, 73)),
                ROW (NULL::uuid,
                    1::bigint),
                'a team that is not empty gets no partner Pokémon');
SELECT
    lives_ok (FORMAT($$
            SELECT
                gameplay.undo_mainline_play_partner (%L) $$, (
                    SELECT
                        play_id
                    FROM alola)), 'undo without an added partner only unrecords the milestone');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                play_id = (
                    SELECT
                        play_id
                    FROM
                        alola)),
                1::bigint,
                'undo without an added partner keeps the team');
-- General settings and status
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000d2', TRUE);
SELECT
    throws_ok (FORMAT($$
            SELECT
                gameplay.update_mainline_play_general_settings (%L, 'Stolen', 3) $$, (
                    SELECT
                        play_id
                    FROM alola)), '23503', NULL, 'another user cannot change the owner Play settings');
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000c1', TRUE);
SELECT
    IS ((
            SELECT
                result_status_event_id
            FROM
                gameplay.update_mainline_play_general_settings ((
                    SELECT
                        play_id
                    FROM alola), '  Alola Again  ', 2, ' Elio ', '2026-01-10', 125)),
            NULL::uuid,
            'saving settings without a status change adds no moment');
SELECT
    IS ((
            SELECT
                ROW (name,
                    trainer_name,
                    started_on,
                    playtime_minutes,
                    status_id)
            FROM
                gameplay.mainline_plays
            WHERE
                id = (
                    SELECT
                        play_id
                    FROM
                        alola)),
                ROW ('Alola Again'::text,
                    'Elio'::text,
                    '2026-01-10'::date,
                    125,
                    2),
                'general settings are saved trimmed');
CREATE TEMPORARY TABLE paused ON COMMIT DROP AS
SELECT
    *
FROM
    gameplay.update_mainline_play_general_settings ((
        SELECT
            play_id
        FROM alola), 'Alola Again', 3, 'Elio', '2026-01-10', 125);
SELECT
    IS ((
            SELECT
                ARRAY_AGG(ROW (id, event_type_id, event_origin_id, title)::text)
            FROM
                gameplay.mainline_play_events
            WHERE
                play_id = (
                    SELECT
                        play_id
                    FROM
                        alola)),
                ARRAY[ROW ((
                        SELECT
                            result_status_event_id
                        FROM
                            paused), 9, 2, 'Paused'::text)::text],
                    'a status change writes one recorded status moment titled with the new status');
UPDATE
    gameplay.mainline_plays
SET
    completed_on = '2026-02-01'
WHERE
    id = (
        SELECT
            play_id
        FROM
            alola);
SELECT
    throws_ok (FORMAT($$
            SELECT
                gameplay.update_mainline_play_general_settings (%L, 'Alola Again', 4, NULL, '2026-03-01') $$, (
                    SELECT
                        play_id
                    FROM alola)), '23514', NULL, 'a start day after the completion day is refused');
SELECT
    IS ((
            SELECT
                ROW (mainline_plays.status_id,
                    mainline_plays.started_on,
                    (
                        SELECT
                            COUNT(*)
                        FROM
                            gameplay.mainline_play_events
                        WHERE
                            mainline_play_events.play_id = mainline_plays.id))
                FROM
                    gameplay.mainline_plays
                WHERE
                    mainline_plays.id = (
                        SELECT
                            play_id
                        FROM
                            alola)),
                    ROW (3,
                        '2026-01-10'::date,
                        1::bigint),
                    'a refused save keeps the old status and writes no moment');
SELECT
    throws_ok (FORMAT($$
            SELECT
                gameplay.update_mainline_play_general_settings (%L, 'Alola Again', 99) $$, (
                    SELECT
                        play_id
                    FROM alola)), '23503', NULL, 'an unknown status is refused');
-- Editing a Pokémon's details and moves
CREATE TEMPORARY TABLE owl ON COMMIT DROP AS
SELECT
    result_play_pokemon_id AS play_pokemon_id
FROM
    gameplay.add_mainline_play_pokemon (p_play_id => (
            SELECT
                play_id
            FROM alola), p_roster_state_id => 1, p_slot => 1, p_species_id => 722, p_form_id => 72200, p_nickname => 'Leaf', p_level => 5, p_move_ids => ARRAY[1, 2], p_create_event => FALSE);
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000d2', TRUE);
SELECT
    throws_ok (FORMAT($$
            SELECT
                gameplay.update_mainline_play_pokemon (%L, p_nickname => 'Stolen') $$, (
                    SELECT
                        play_pokemon_id
                    FROM owl)), '23503', NULL, 'another user cannot edit the owner Pokémon');
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000c1', TRUE);
SELECT
    IS ((
            SELECT
                result_move_count
            FROM
                gameplay.update_mainline_play_pokemon ((
                    SELECT
                        play_pokemon_id
                    FROM owl), p_nickname => '  Hoot  ', p_level => 30, p_gender => 'female', p_is_shiny => TRUE, p_move_ids => ARRAY[3, 4, 1])),
            3,
            'the owner can save details and three moves');
SELECT
    IS ((
            SELECT
                ROW (nickname,
                    level,
                    gender,
                    is_shiny)
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                id = (
                    SELECT
                        play_pokemon_id
                    FROM
                        owl)),
                ROW ('Hoot'::text,
                    30,
                    'female'::text,
                    TRUE),
                'details are saved trimmed');
SELECT
    IS (ARRAY (
            SELECT
                move_id
            FROM
                gameplay.mainline_play_pokemon_moves
            WHERE
                play_pokemon_id = (
                    SELECT
                        play_pokemon_id
                    FROM
                        owl)
                ORDER BY
                    slot),
                ARRAY[3, 4, 1],
                'moves replace the old ones in slot order');
SELECT
    throws_ok (FORMAT($$
            SELECT
                gameplay.update_mainline_play_pokemon (%L, p_nickname => 'Broken', p_move_ids => ARRAY[1, 2, 3, 4, 5]) $$, (
                    SELECT
                        play_pokemon_id
                    FROM owl)), '23514', 'A play Pokémon can have at most four current moves', 'more than four moves are refused');
SELECT
    throws_ok (FORMAT($$
            SELECT
                gameplay.update_mainline_play_pokemon (%L, p_nickname => 'Broken', p_move_ids => ARRAY[2, 2]) $$, (
                    SELECT
                        play_pokemon_id
                    FROM owl)), '23505', NULL, 'a repeated move is refused');
SELECT
    throws_ok (FORMAT($$
            SELECT
                gameplay.update_mainline_play_pokemon (%L, p_nickname => 'Broken', p_move_ids => ARRAY[5, 999999]) $$, (
                    SELECT
                        play_pokemon_id
                    FROM owl)), '23503', NULL, 'an unknown move is refused');
SELECT
    IS ((
            SELECT
                ROW (mainline_play_pokemon.nickname,
                    ARRAY (
                        SELECT
                            move_id
                        FROM
                            gameplay.mainline_play_pokemon_moves
                        WHERE
                            play_pokemon_id = mainline_play_pokemon.id
                        ORDER BY
                            slot))
                FROM
                    gameplay.mainline_play_pokemon
                WHERE
                    mainline_play_pokemon.id = (
                        SELECT
                            play_pokemon_id
                        FROM
                            owl)),
                    ROW ('Hoot'::text,
                        ARRAY[3, 4, 1]),
                    'a refused edit keeps both the details and the moves');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_events
            WHERE
                play_id = (
                    SELECT
                        play_id
                    FROM
                        alola)),
                1::bigint,
                'editing details is not a moment');
-- Deleting a Pokémon added by mistake
CREATE TEMPORARY TABLE mistakes ON COMMIT DROP AS
SELECT
    'undone'::text AS label, added.result_play_pokemon_id AS play_pokemon_id, added.result_event_id AS event_id
FROM
    gameplay.add_mainline_play_pokemon (p_play_id => (
            SELECT
                play_id
            FROM alola), p_roster_state_id => 1, p_slot => 2, p_species_id => 731, p_form_id => 73100) AS added
UNION ALL
SELECT
    'kept'::text, added.result_play_pokemon_id, added.result_event_id
FROM
    gameplay.add_mainline_play_pokemon (p_play_id => (
            SELECT
                play_id
            FROM alola), p_roster_state_id => 1, p_slot => 3, p_species_id => 479, p_form_id => 47900) AS added;
SELECT
    gameplay.evolve_mainline_play_pokemon (p_play_pokemon_id => (
            SELECT
                play_pokemon_id
            FROM mistakes
            WHERE
                label = 'undone'), p_to_species_id => 732, p_to_form_id => 73200);
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000d2', TRUE);
SELECT
    throws_ok (FORMAT($$
            SELECT
                gameplay.remove_mainline_play_pokemon (%L, TRUE) $$, (
                    SELECT
                        play_pokemon_id
                    FROM mistakes
                    WHERE
                        label = 'undone')), '23503', NULL, 'another user cannot delete the owner Pokémon');
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000c1', TRUE);
SELECT
    IS ((
            SELECT
                result_removed_event_ids
            FROM
                gameplay.remove_mainline_play_pokemon ((
                    SELECT
                        play_pokemon_id
                    FROM mistakes
                    WHERE
                        label = 'undone'), TRUE)),
            ARRAY[(
                SELECT
                    event_id
                FROM
                    mistakes
                WHERE
                    label = 'undone')],
                'undoing an add removes exactly its own Added moment');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                id = (
                    SELECT
                        play_pokemon_id
                    FROM
                        mistakes
                    WHERE
                        label = 'undone')),
                0::bigint,
                'the Pokémon added by mistake is gone');
SELECT
    IS (ARRAY (
            SELECT
                ROW (mainline_play_events.event_type_id,
                    mainline_play_events.title)::text
            FROM
                gameplay.mainline_play_events
            WHERE
                mainline_play_events.play_id = (
                    SELECT
                        play_id
                    FROM
                        alola)
                ORDER BY
                    mainline_play_events.timeline_order),
                ARRAY[ROW (9, 'Paused'::text)::text, ROW (2, 'Added Rotom'::text)::text, ROW (3, 'Pikipek evolved into Trumbeak'::text)::text],
                'its other moments and other Pokémon Added moments stay');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_event_pokemon_refs
            WHERE
                play_pokemon_id = (
                    SELECT
                        play_pokemon_id
                    FROM
                        mistakes
                    WHERE
                        label = 'undone')),
                0::bigint,
                'the kept moments no longer link to the deleted Pokémon');
SELECT
    IS ((
            SELECT
                result_removed_event_ids
            FROM
                gameplay.remove_mainline_play_pokemon ((
                    SELECT
                        play_pokemon_id
                    FROM mistakes
                    WHERE
                        label = 'kept'))),
            '{}'::uuid[],
            'a plain Delete record removes no moment');
SELECT
    IS ((
            SELECT
                ROW ((
                        SELECT
                            COUNT(*)
                        FROM
                            gameplay.mainline_play_pokemon
                        WHERE
                            id = mistakes.play_pokemon_id), (
                            SELECT
                                COUNT(*)
                            FROM
                                gameplay.mainline_play_events
                            WHERE
                                id = mistakes.event_id))
                    FROM
                        mistakes
                    WHERE
                        label = 'kept'), ROW (0::bigint, 1::bigint), 'a plain Delete record keeps its Added moment in History');
SELECT
    throws_ok (FORMAT($$
            SELECT
                gameplay.remove_mainline_play_pokemon (%L, TRUE) $$, (
                    SELECT
                        play_pokemon_id
                    FROM mistakes
                    WHERE
                        label = 'kept')), '23503', NULL, 'a deleted Pokémon cannot be deleted twice');
-- No client role outside the owner reaches the new functions anonymously.
RESET ROLE;
SELECT
    ok (NOT has_function_privilege('anon', 'gameplay.choose_mainline_play_partner(uuid, integer)', 'EXECUTE')
        AND NOT has_function_privilege('anon', 'gameplay.undo_mainline_play_partner(uuid, uuid)', 'EXECUTE')
        AND NOT has_function_privilege('anon', 'gameplay.update_mainline_play_general_settings(uuid, text, integer, text, date, integer)', 'EXECUTE')
        AND NOT has_function_privilege('anon', 'gameplay.update_mainline_play_pokemon(uuid, text, integer, text, boolean, integer, integer, integer, text, integer, integer, text, integer[], integer, boolean)', 'EXECUTE')
        AND NOT has_function_privilege('anon', 'gameplay.remove_mainline_play_pokemon(uuid, boolean)', 'EXECUTE')
        AND NOT has_function_privilege('anon', 'gameplay.find_mainline_partner_milestone(integer)', 'EXECUTE'),
        'anonymous users cannot execute the multi-step write functions');
SELECT
    ok (NOT EXISTS (
            SELECT
                1
            FROM
                pg_catalog.pg_proc
                JOIN pg_catalog.pg_namespace ON pg_namespace.oid = pg_proc.pronamespace
            WHERE
                pg_namespace.nspname = 'gameplay'
                AND pg_proc.proname IN ('choose_mainline_play_partner', 'undo_mainline_play_partner', 'update_mainline_play_general_settings', 'update_mainline_play_pokemon', 'remove_mainline_play_pokemon', 'find_mainline_partner_milestone')
                AND (pg_proc.prosecdef
                    OR NOT pg_proc.proconfig @> ARRAY['search_path=""'])),
            'the multi-step write functions are security invoker with an empty search path');
SELECT
    *
FROM
    finish ();
ROLLBACK;
