CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000c1', 'authenticated', 'authenticated', 'atomic-a@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000d2', 'authenticated', 'authenticated', 'atomic-b@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
SELECT
    plan (55);
-- Starting a Play
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000c1', TRUE);
SET LOCAL ROLE authenticated;
CREATE TEMPORARY TABLE started_sun ON COMMIT DROP AS
SELECT
    *
FROM
    gameplay.create_mainline_play (p_game_id => 25, p_name => '  Alola Run  ', p_started_on => '2026-10-17', p_trainer_name => 'Elio', p_partner_species_id => 722, p_partner_form_id => 72200);
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_plays
            WHERE
                id = (
                    SELECT
                        result_play_id
                    FROM
                        started_sun)
                    AND user_id = '00000000-0000-0000-0000-0000000000c1'
                    AND name = 'Alola Run'
                    AND trainer_name = 'Elio'
                    AND started_on = '2026-10-17'
                    AND status_id = 2
                    AND version_group_id = 15),
                1::bigint,
                'starting a Play writes one playing Play owned by the caller');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_settings
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM
                        started_sun)),
                1::bigint,
                'starting a Play writes its settings');
SELECT
    IS ((
            SELECT
                species_id
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM
                        started_sun)
                    AND slot = 1
                    AND roster_state_id = 1),
                722,
                'the chosen partner joins the team in slot 1');
SELECT
    results_eq ($$
        SELECT
            result_partner_milestone_id, result_partner_decision_option_id FROM started_sun $$, $$
            SELECT
                150001, id FROM tracking.mainline_milestone_decision_options
                WHERE
                    milestone_id = 150001
                    AND slug = 'rowlet' $$, 'the partner is resolved through the game partner milestone and decision');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_milestone_decisions
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM
                        started_sun)
                    AND milestone_id = 150001),
                1::bigint,
                'the partner milestone records the decision');
SELECT
    results_eq ($$
        SELECT
            title, body, milestone_id, timeline_order FROM gameplay.mainline_play_events
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM started_sun) $$, $$
        VALUES ('Rowlet chose you'::text, 'Your partner, the first milestone of this Play.'::text, 150001, 1) $$, 'the partner choice is the one first History moment');
SELECT
    IS ((
            SELECT
                result_partner_event_id
            FROM
                started_sun),
            (
                SELECT
                    id
                FROM
                    gameplay.mainline_play_events
                WHERE
                    play_id = (
                        SELECT
                            result_play_id
                        FROM
                            started_sun)),
                    'the partner moment is returned');
CREATE TEMPORARY TABLE started_sword ON COMMIT DROP AS
SELECT
    *
FROM
    gameplay.create_mainline_play (p_game_id => 31, p_name => 'Galar Run', p_expansion_version_group_ids => ARRAY[20, 19, 19]);
SELECT
    results_eq ($$
        SELECT
            version_group_id FROM gameplay.mainline_play_optional_content_scopes
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM started_sword)
        ORDER BY version_group_id $$, $$
        VALUES (19), (20) $$, 'starting a Play writes each owned expansion once');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM
                        started_sword)),
                0::bigint,
                'a Play started without a partner has an empty team');
CREATE TEMPORARY TABLE started_lets_go ON COMMIT DROP AS
SELECT
    *
FROM
    gameplay.create_mainline_play (p_game_id => 29, p_name => 'Kanto Run', p_partner_species_id => 25, p_partner_form_id => 2501);
SELECT
    IS ((
            SELECT
                result_partner_milestone_id
            FROM
                started_lets_go),
            NULL::integer,
            'a game that gives you your partner has no partner milestone');
SELECT
    results_eq ($$
        SELECT
            mainline_play_events.title, mainline_play_events.event_type_id, mainline_play_event_pokemon_refs.form_id FROM gameplay.mainline_play_events
            JOIN gameplay.mainline_play_event_pokemon_refs ON mainline_play_event_pokemon_refs.event_id = mainline_play_events.id
            WHERE
                mainline_play_events.play_id = (
                    SELECT
                        result_play_id
                    FROM started_lets_go) $$, $$
        VALUES ('Added Pikachu'::text, 2, 2501) $$, 'a given partner joins slot 1 with its own Added moment');
SELECT
    throws_ok ($$
        SELECT
            gameplay.create_mainline_play (p_game_id => 25, p_name => 'Wrong DLC', p_expansion_version_group_ids => ARRAY[19]) $$, '23514', 'Version groups {19} are not expansions of game 25', 'an expansion of another game is refused');
SELECT
    throws_ok ($$
        SELECT
            gameplay.create_mainline_play (p_game_id => 29, p_name => 'Broken Partner', p_expansion_version_group_ids => '{}', p_partner_species_id => 25, p_partner_form_id => 81000) $$, '23503', NULL, 'a partner failure after the Play is written aborts the start');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_plays
            WHERE
                name IN ('Wrong DLC', 'Broken Partner')),
            0::bigint,
            'a failed start leaves no Play behind');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_plays),
            3::bigint,
            'only the three successful starts are written');
SELECT
    throws_ok ($$
        SELECT
            gameplay.create_mainline_play (p_game_id => 25, p_name => 'Half Partner', p_partner_species_id => 722) $$, '22023', 'A partner needs both species_id and form_id', 'a partner needs both species and form');
SELECT
    throws_ok ($$
        SELECT
            gameplay.create_mainline_play (p_game_id => 25, p_name => '   ') $$, '23502', 'name is required', 'a Play needs a name');
-- History moments
CREATE TEMPORARY TABLE sun_note ON COMMIT DROP AS
SELECT
    *
FROM
    gameplay.add_mainline_play_event (p_play_id => (
            SELECT
                result_play_id
            FROM started_sun), p_event_type_slug => 'journal_note', p_event_origin_slug => 'manual', p_title => ' Reached Iki Town ', p_body => '   ');
SELECT
    IS ((
            SELECT
                result_timeline_order
            FROM
                sun_note),
            2,
            'a moment takes the next timeline place');
SELECT
    results_eq ($$
        SELECT
            title, body, event_type_id, event_origin_id FROM gameplay.mainline_play_events
            WHERE
                id = (
                    SELECT
                        result_event_id
                    FROM sun_note) $$, $$
        VALUES ('Reached Iki Town'::text, NULL::text, 8, 1) $$, 'a moment stores its trimmed text, type, and origin');
SELECT
    lives_ok ($$
        SELECT
            gameplay.add_mainline_play_event ((
                SELECT
                    result_play_id
                FROM started_sun), 'status_change', 'recorded_action', 'Paused') $$, 'a status change moment can be added');
SELECT
    IS ((
            SELECT
                MAX(timeline_order)
            FROM
                gameplay.mainline_play_events
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM
                        started_sun)),
                3,
                'moments keep a gapless timeline order');
SELECT
    throws_ok ($$
        SELECT
            gameplay.add_mainline_play_event ((
                SELECT
                    result_play_id
                FROM started_sun), 'pokemon_added', 'manual', 'Fake') $$, '23514', 'Event type pokemon_added is recorded by its own action', 'structured moments cannot be added as free-form ones');
SELECT
    throws_ok ($$
        SELECT
            gameplay.add_mainline_play_event ((
                SELECT
                    result_play_id
                FROM started_sun), 'journal_note', 'milestone_completion', 'Fake') $$, '23514', 'Event origin milestone_completion is recorded by its own action', 'milestone origins cannot be added as free-form moments');
SELECT
    throws_ok ($$
        SELECT
            gameplay.add_mainline_play_event ((
                SELECT
                    result_play_id
                FROM started_sun), 'no_such_type', 'manual', 'Fake') $$, '23503', 'Unknown event type no_such_type', 'an unknown moment type is refused');
-- Saving a Plan
CREATE TEMPORARY TABLE created_plan ON COMMIT DROP AS
SELECT
    *
FROM
    planning.save_mainline_team_plan (p_version_group_id => 15, p_name => 'Alola Plan', p_members => '[{"slot": 1, "target_species_id": 722, "target_form_id": 72200, "gender": "male", "move_ids": [33, null, 45, null]}, {"slot": 2, "target_species_id": 725, "target_form_id": 72500}]'::jsonb);
SELECT
    results_eq ($$
        SELECT
            result_created, game_id, version_group_id, status_id, name FROM created_plan
            JOIN planning.mainline_team_plans ON mainline_team_plans.id = created_plan.result_team_plan_id $$, $$
        VALUES (TRUE, 25, 15, 2, 'Alola Plan'::text) $$, 'a new Plan is active and stores its version group first game');
SELECT
    results_eq ($$
        SELECT
            slot, target_species_id FROM planning.mainline_team_plan_members
            WHERE
                team_plan_id = (
                    SELECT
                        result_team_plan_id
                    FROM created_plan)
        ORDER BY slot $$, $$
        VALUES (1, 722), (2, 725) $$, 'a new Plan writes its ordered members');
SELECT
    results_eq ($$
        SELECT
            mainline_team_plan_member_moves.slot, mainline_team_plan_member_moves.move_id FROM planning.mainline_team_plan_member_moves
            JOIN planning.mainline_team_plan_members ON mainline_team_plan_members.id = mainline_team_plan_member_moves.team_plan_member_id
            WHERE
                mainline_team_plan_members.team_plan_id = (
                    SELECT
                        result_team_plan_id
                    FROM created_plan)
        ORDER BY mainline_team_plan_member_moves.slot $$, $$
        VALUES (1, 33), (3, 45) $$, 'planned moves keep their move slots and skip empty ones');
SELECT
    lives_ok ($$
        SELECT
            planning.save_mainline_team_plan (p_team_plan_id => (
                    SELECT
                        result_team_plan_id
                    FROM created_plan), p_version_group_id => 15, p_name => 'Alola Plan v2', p_members => '[{"slot": 3, "target_species_id": 728, "target_form_id": 72800, "move_ids": [1, 33, 45, 75]}]'::jsonb) $$, 'the owner can rewrite a saved Plan');
SELECT
    results_eq ($$
        SELECT
            mainline_team_plans.name, mainline_team_plans.game_id, mainline_team_plan_members.slot, COUNT(mainline_team_plan_member_moves.move_id)
            FROM planning.mainline_team_plans
            JOIN planning.mainline_team_plan_members ON mainline_team_plan_members.team_plan_id = mainline_team_plans.id
            LEFT JOIN planning.mainline_team_plan_member_moves ON mainline_team_plan_member_moves.team_plan_member_id = mainline_team_plan_members.id
            WHERE
                mainline_team_plans.id = (
                    SELECT
                        result_team_plan_id
                    FROM created_plan)
        GROUP BY mainline_team_plans.name, mainline_team_plans.game_id, mainline_team_plan_members.slot $$, $$
        VALUES ('Alola Plan v2'::text, 25, 3, 4::bigint) $$, 'a rewrite replaces the members and moves and keeps the game');
SELECT
    throws_ok ($$
        SELECT
            planning.save_mainline_team_plan (p_team_plan_id => (
                    SELECT
                        result_team_plan_id
                    FROM created_plan), p_version_group_id => 15, p_name => 'Broken Plan', p_members => '[{"slot": 1, "target_species_id": 722, "target_form_id": 72200, "move_ids": [999999]}]'::jsonb) $$, '23503', NULL, 'a bad planned move aborts the rewrite');
SELECT
    results_eq ($$
        SELECT
            mainline_team_plans.name, mainline_team_plan_members.slot, mainline_team_plan_members.target_species_id FROM planning.mainline_team_plans
            JOIN planning.mainline_team_plan_members ON mainline_team_plan_members.team_plan_id = mainline_team_plans.id
            WHERE
                mainline_team_plans.id = (
                    SELECT
                        result_team_plan_id
                    FROM created_plan) $$, $$
        VALUES ('Alola Plan v2'::text, 3, 728) $$, 'a failed rewrite leaves the saved Plan as it was');
SELECT
    throws_ok ($$
        SELECT
            planning.save_mainline_team_plan (15, 'Broken New Plan', '[{"slot": 1, "target_species_id": 722, "target_form_id": 72200, "move_ids": [33, 999999]}]'::jsonb) $$, '23503', NULL, 'a bad planned move aborts a new Plan');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                planning.mainline_team_plans
            WHERE
                name = 'Broken New Plan'), 0::bigint, 'a failed new Plan leaves no Plan behind');
CREATE TEMPORARY TABLE galar_plan ON COMMIT DROP AS
SELECT
    *
FROM
    planning.save_mainline_team_plan (18, 'Galar Plan', '[]'::jsonb, ARRAY[19, 20]);
SELECT
    results_eq ($$
        SELECT
            game_id, version_group_id FROM planning.mainline_team_plan_optional_content_scopes
            WHERE
                team_plan_id = (
                    SELECT
                        result_team_plan_id
                    FROM galar_plan)
        ORDER BY version_group_id $$, $$
        VALUES (31, 19), (31, 20) $$, 'a Plan writes its expansions for its game');
SELECT
    lives_ok ($$
        SELECT
            planning.save_mainline_team_plan (p_team_plan_id => (
                    SELECT
                        result_team_plan_id
                    FROM galar_plan), p_version_group_id => 15, p_name => 'Galar Plan moved', p_members => '[]'::jsonb) $$, 'an unlinked Plan can change game, dropping its old expansions');
SELECT
    results_eq ($$
        SELECT
            game_id, version_group_id, (
                SELECT
                    COUNT(*)
                FROM planning.mainline_team_plan_optional_content_scopes
                WHERE
                    team_plan_id = mainline_team_plans.id)
                FROM planning.mainline_team_plans
                WHERE
                    id = (
                        SELECT
                            result_team_plan_id
                        FROM galar_plan) $$, $$
            VALUES (25, 15, 0::bigint) $$, 'a game change stores the new version group first game');
SELECT
    throws_ok ($$
        SELECT
            planning.save_mainline_team_plan (15, 'Wrong DLC Plan', '[]'::jsonb, ARRAY[19]) $$, '23514', 'Version groups {19} are not expansions of version group 15', 'a Plan refuses another game expansion');
SELECT
    throws_ok ($$
        SELECT
            planning.save_mainline_team_plan (19, 'Expansion Plan') $$, '23514', 'Version group 19 is an expansion, not a game a Plan can be for', 'a Plan is for a base version group');
SELECT
    throws_ok ($$
        SELECT
            planning.save_mainline_team_plan (15, 'Big Plan', (
                    SELECT
                        jsonb_agg(jsonb_build_object('slot', slot, 'target_species_id', 722, 'target_form_id', 72200))
                    FROM generate_series(1, 7) AS slots (slot))) $$, '23514', 'A Plan can have at most six members', 'a Plan holds at most six members');
SELECT
    throws_ok ($$
        SELECT
            planning.save_mainline_team_plan (15, 'Twin Plan', '[{"slot": 1, "target_species_id": 722, "target_form_id": 72200}, {"slot": 1, "target_species_id": 725, "target_form_id": 72500}]'::jsonb) $$, '23514', 'Every Plan member needs its own slot', 'Plan members need distinct slots');
SELECT
    throws_ok ($$
        SELECT
            planning.save_mainline_team_plan (15, 'Move Plan', '[{"slot": 1, "target_species_id": 722, "target_form_id": 72200, "move_ids": [1, 33, 45, 75, 98]}]'::jsonb) $$, '23514', 'A planned Pokémon can have at most four moves', 'a planned Pokemon holds at most four moves');
SELECT
    throws_ok ($$
        SELECT
            planning.save_mainline_team_plan (15, 'Shape Plan', '{"slot": 1}'::jsonb) $$, '22023', 'members must be a JSON array', 'members must be an array');
SELECT
    lives_ok ($$
        SELECT
            planning.link_mainline_team_plan_to_play ((
                SELECT
                    result_play_id
                FROM started_sun), (
            SELECT
                result_team_plan_id
            FROM created_plan), FALSE) $$, 'the owner links the Plan to a Play');
SELECT
    throws_ok ($$
        SELECT
            planning.save_mainline_team_plan (p_team_plan_id => (
                    SELECT
                        result_team_plan_id
                    FROM created_plan), p_version_group_id => 18, p_name => 'Moved Plan', p_members => '[]'::jsonb) $$, '55000', NULL, 'a followed Plan cannot change game');
SELECT
    lives_ok ($$
        SELECT
            planning.save_mainline_team_plan (p_team_plan_id => (
                    SELECT
                        result_team_plan_id
                    FROM created_plan), p_version_group_id => 15, p_name => 'Followed Plan', p_members => '[]'::jsonb) $$, 'a followed Plan can still be renamed and emptied in its own game');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                planning.mainline_play_plan_links
            WHERE
                team_plan_id = (
                    SELECT
                        result_team_plan_id
                    FROM
                        created_plan)),
                1::bigint,
                'saving a followed Plan keeps its Play link');
-- Another user
RESET ROLE;
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000d2', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    throws_ok (FORMAT($$
            SELECT
                gameplay.add_mainline_play_event (%L, 'journal_note', 'manual', 'Intruder') $$, (
                    SELECT
                        result_play_id
                    FROM started_sun)), '23503', NULL, 'another user cannot add a moment to the owner Play');
SELECT
    throws_ok (FORMAT($$
            SELECT
                planning.save_mainline_team_plan (p_team_plan_id => %L, p_version_group_id => 15, p_name => 'Stolen Plan', p_members => '[]'::jsonb) $$, (
                    SELECT
                        result_team_plan_id
                    FROM created_plan)), '23503', NULL, 'another user cannot rewrite the owner Plan');
SELECT
    lives_ok ($$
        SELECT
            gameplay.create_mainline_play (25, 'Second Trainer Run') $$, 'another user starts their own Play');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_plays),
            1::bigint,
            'another user sees only their own Play');
RESET ROLE;
SELECT
    IS ((
            SELECT
                user_id
            FROM
                gameplay.mainline_plays
            WHERE
                name = 'Second Trainer Run'), '00000000-0000-0000-0000-0000000000d2'::uuid, 'a started Play belongs to the caller');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_events
            WHERE
                title = 'Intruder'), 0::bigint, 'the refused moment wrote nothing');
SELECT
    IS ((
            SELECT
                name
            FROM
                planning.mainline_team_plans
            WHERE
                id = (
                    SELECT
                        result_team_plan_id
                    FROM
                        created_plan)),
                'Followed Plan',
                'the refused rewrite left the owner Plan untouched');
-- No signed-in user
SELECT
    set_config('request.jwt.claim.sub', '', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    throws_ok ($$
        SELECT
            gameplay.create_mainline_play (25, 'Nobody Run') $$, '42501', 'An authenticated user is required to start a Play', 'a Play needs a signed-in user');
SELECT
    throws_ok ($$
        SELECT
            planning.save_mainline_team_plan (15, 'Nobody Plan') $$, '42501', 'An authenticated user is required to save a Plan', 'a Plan needs a signed-in user');
RESET ROLE;
SELECT
    *
FROM
    finish ();
ROLLBACK;
