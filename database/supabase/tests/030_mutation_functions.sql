CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000a1', 'authenticated', 'authenticated', 'rpc-a@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000b2', 'authenticated', 'authenticated', 'rpc-b@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('40000000-0000-0000-0000-0000000000a1', '00000000-0000-0000-0000-0000000000a1', 25, 15, 2, 'RPC Play');
INSERT INTO planning.mainline_team_plans (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('50000000-0000-0000-0000-0000000000a1', '00000000-0000-0000-0000-0000000000a1', 25, 15, 1, 'RPC Plan');
INSERT INTO planning.mainline_team_plan_members (id, team_plan_id, slot, target_species_id, target_form_id, gender, notes)
    VALUES ('51000000-0000-0000-0000-0000000000a1', '50000000-0000-0000-0000-0000000000a1', 1, 722, 72200, 'male', 'Copied member note');
SELECT
    plan (23);
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000a1', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    lives_ok ($$
        SELECT
            gameplay.add_mainline_play_pokemon (p_play_id => '40000000-0000-0000-0000-0000000000a1', p_roster_state_id => 1, p_slot => 1, p_species_id => 722, p_form_id => 72200, p_nickname => 'Leaf', p_create_event => TRUE) $$, 'the owner can add a team member');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'), 1::bigint, 'team addition creates one play Pokemon row');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_events
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'), 1::bigint, 'team addition creates one timeline event');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_event_pokemon_refs
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'), 1::bigint, 'team addition creates one event-time Pokemon reference');
SELECT
    lives_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '40000000-0000-0000-0000-0000000000a1', p_milestone_id => 150001, p_create_event => FALSE) $$, 'the owner can complete an available milestone');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_milestone_progress
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'
                AND milestone_id = 150001),
            1::bigint,
            'milestone completion creates sparse progress');
SELECT
    lives_ok ($$
        SELECT
            gameplay.set_mainline_play_collectible_entry_progress ('40000000-0000-0000-0000-0000000000a1', 15001001, TRUE) $$, 'the owner can record collectible progress');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_collectible_entry_progress
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'
                AND collectible_entry_id = 15001001),
            1::bigint,
            'collectible mutation creates sparse progress');
SELECT
    lives_ok ($$
        SELECT
            gameplay.set_mainline_play_pokedex_species_progress ('40000000-0000-0000-0000-0000000000a1', 722, FALSE, TRUE) $$, 'the owner can record Pokedex progress');
SELECT
    ok ((
            SELECT
                is_seen
                AND is_caught
            FROM
                gameplay.mainline_play_pokedex_species_progress
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'
                AND species_id = 722),
            'caught Pokedex progress implies seen');
SELECT
    lives_ok ($$
        SELECT
            planning.link_mainline_team_plan_to_play ('40000000-0000-0000-0000-0000000000a1', '50000000-0000-0000-0000-0000000000a1', FALSE) $$, 'the owner can link a matching plan and play');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                planning.mainline_play_plan_links
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'), 1::bigint, 'plan linking creates one relationship');
SELECT
    lives_ok ($$
        SELECT
            planning.clone_mainline_team_plan_for_play ('40000000-0000-0000-0000-0000000000a1', 'RPC Plan copy') $$, 'the owner can clone the linked Plan for this Play');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                planning.mainline_team_plans),
            2::bigint,
            'Play-scoped Plan cloning preserves the source and creates one copy');
SELECT
    IS ((
            SELECT
                mainline_team_plans.name
            FROM
                planning.mainline_play_plan_links
                JOIN planning.mainline_team_plans ON mainline_team_plans.id = mainline_play_plan_links.team_plan_id
            WHERE
                mainline_play_plan_links.play_id = '40000000-0000-0000-0000-0000000000a1'), 'RPC Plan copy', 'Plan cloning atomically relinks only the Play to the copy');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                planning.mainline_team_plan_members
            WHERE
                team_plan_id = (
                    SELECT
                        team_plan_id
                    FROM
                        planning.mainline_play_plan_links
                    WHERE
                        play_id = '40000000-0000-0000-0000-0000000000a1')
                    AND gender = 'male'
                    AND notes = 'Copied member note'),
                1::bigint,
                'Plan cloning copies ordered member preferences');
SELECT
    throws_ok ($$
        SELECT
            gameplay.add_mainline_play_pokemon (p_play_id => '40000000-0000-0000-0000-0000000000a1', p_roster_state_id => 1, p_slot => 2, p_species_id => 725, p_form_id => 72500, p_move_ids => ARRAY[999999]) $$, '23503', 'insert or update on table "mainline_play_pokemon_moves" violates foreign key constraint "mainline_play_pokemon_moves_move_id_fkey"', 'a failed nested move insert aborts the team mutation');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'), 1::bigint, 'failed team mutation rolls back its parent Pokemon row');
RESET ROLE;
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000b2', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    throws_ok ($$
        SELECT
            gameplay.add_mainline_play_pokemon (p_play_id => '40000000-0000-0000-0000-0000000000a1', p_roster_state_id => 1, p_slot => 2, p_species_id => 725, p_form_id => 72500) $$, '23503', 'Unknown or unavailable play_id 40000000-0000-0000-0000-0000000000a1', 'another user cannot add Pokemon to the owner play');
SELECT
    throws_ok ($$
        SELECT
            gameplay.set_mainline_play_pokedex_species_progress ('40000000-0000-0000-0000-0000000000a1', 722, TRUE, TRUE) $$, '23503', 'Unknown or unavailable play_id 40000000-0000-0000-0000-0000000000a1', 'another user cannot update the owner Pokedex progress');
SELECT
    throws_ok ($$
        SELECT
            planning.link_mainline_team_plan_to_play ('40000000-0000-0000-0000-0000000000a1', '50000000-0000-0000-0000-0000000000a1', FALSE) $$, '23503', 'Unknown or unavailable play_id 40000000-0000-0000-0000-0000000000a1', 'another user cannot link the owner plan and play');
SELECT
    throws_ok ($$
        SELECT
            planning.clone_mainline_team_plan_for_play ('40000000-0000-0000-0000-0000000000a1') $$, '23503', 'Unknown or unavailable linked Plan for play_id 40000000-0000-0000-0000-0000000000a1', 'another user cannot clone the owner linked Plan');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_pokemon),
            0::bigint,
            'another user cannot see the owner team rows');
RESET ROLE;
SELECT
    *
FROM
    finish ();
ROLLBACK;
