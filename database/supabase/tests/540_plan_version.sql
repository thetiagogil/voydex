CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- A Plan says which version it is for (#225): Either (the default, stored
-- under the version group's first game) or one game of its version group.
-- A save with no game is Either; a save with a game is for that version.
-- The version may change while Plays follow the Plan, since each checks its
-- own game; a copy for a Play keeps it.
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000f5', 'authenticated', 'authenticated', 'plan-version@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('40000000-0000-0000-0000-0000000000f1', '00000000-0000-0000-0000-0000000000f5', 31, 18, 2, 'Sword Play');
INSERT INTO planning.mainline_team_plans (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('50000000-0000-0000-0000-0000000000f0', '00000000-0000-0000-0000-0000000000f5', 31, 18, 1, 'Older Plan');
SELECT
    plan (18);
SELECT
    has_column ('planning', 'mainline_team_plans', 'is_either_version', 'a Plan has a version preference');
SELECT
    col_type_is ('planning', 'mainline_team_plans', 'is_either_version', 'boolean', 'the version preference is true or false');
SELECT
    col_not_null ('planning', 'mainline_team_plans', 'is_either_version', 'every Plan has a version preference');
SELECT
    col_default_is ('planning', 'mainline_team_plans', 'is_either_version', 'true', 'a Plan is for either version by default');
SELECT
    IS ((
            SELECT
                is_either_version
            FROM
                planning.mainline_team_plans
            WHERE
                id = '50000000-0000-0000-0000-0000000000f0'), TRUE, 'a Plan written without a preference is for either version');
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000f5', TRUE);
CREATE TEMP TABLE either_plan ON COMMIT DROP AS
SELECT
    *
FROM
    planning.save_mainline_team_plan (p_version_group_id => 18, p_name => 'Either Plan', p_members => '[{"slot": 1, "target_species_id": 25, "target_form_id": 2501}]'::jsonb);
SELECT
    results_eq ($$
        SELECT
            game_id, is_either_version FROM planning.mainline_team_plans
            WHERE
                id = (
                    SELECT
                        result_team_plan_id
                    FROM either_plan) $$, $$
        VALUES (31, TRUE) $$, 'a save with no game is for either version, under the group''s first game');
CREATE TEMP TABLE shield_plan ON COMMIT DROP AS
SELECT
    *
FROM
    planning.save_mainline_team_plan (p_version_group_id => 18, p_name => 'Shield Plan', p_expansion_version_group_ids => ARRAY[19, 20], p_game_id => 32);
SELECT
    results_eq ($$
        SELECT
            game_id, is_either_version FROM planning.mainline_team_plans
            WHERE
                id = (
                    SELECT
                        result_team_plan_id
                    FROM shield_plan) $$, $$
        VALUES (32, FALSE) $$, 'a save with a game is for that version');
SELECT
    results_eq ($$
        SELECT
            game_slug, is_either_version FROM views.mainline_team_plan_summary
            WHERE
                team_plan_id = (
                    SELECT
                        result_team_plan_id
                    FROM shield_plan) $$, $$
        VALUES ('shield'::text, FALSE) $$, 'the Plan reopens as a Shield Plan');
SELECT
    results_eq ($$
        SELECT
            game_id, version_group_id FROM planning.mainline_team_plan_optional_content_scopes
            WHERE
                team_plan_id = (
                    SELECT
                        result_team_plan_id
                    FROM shield_plan)
        ORDER BY version_group_id $$, $$
        VALUES (32, 19), (32, 20) $$, 'a Shield Plan keeps its expansions under Shield');
SELECT
    throws_ok ($$
        SELECT
            planning.save_mainline_team_plan (p_version_group_id => 18, p_name => 'Sun Plan', p_game_id => 25) $$, '23514', 'Game 25 is not part of version group 18', 'a version from another game is refused');
SELECT
    lives_ok ($$
        SELECT
            planning.save_mainline_team_plan (p_version_group_id => 18, p_name => 'Shield Plan', p_expansion_version_group_ids => ARRAY[19], p_team_plan_id => (
                    SELECT
                        result_team_plan_id
                    FROM shield_plan)) $$, 'a Shield Plan can go back to either version');
SELECT
    results_eq ($$
        SELECT
            game_id, is_either_version FROM planning.mainline_team_plans
            WHERE
                id = (
                    SELECT
                        result_team_plan_id
                    FROM shield_plan) $$, $$
        VALUES (31, TRUE) $$, 'back to either version, it is stored under the first game again');
SELECT
    results_eq ($$
        SELECT
            game_id, version_group_id FROM planning.mainline_team_plan_optional_content_scopes
            WHERE
                team_plan_id = (
                    SELECT
                        result_team_plan_id
                    FROM shield_plan) $$, $$
        VALUES (31, 19) $$, 'its expansions move with the game');
SELECT
    lives_ok ($$
        SELECT
            planning.link_mainline_team_plan_to_play ('40000000-0000-0000-0000-0000000000f1', (
                    SELECT
                        result_team_plan_id
                    FROM either_plan), FALSE) $$, 'a Sword Play follows the Either Plan');
SELECT
    lives_ok ($$
        SELECT
            planning.save_mainline_team_plan (p_version_group_id => 18, p_name => 'Either Plan', p_members => '[{"slot": 1, "target_species_id": 25, "target_form_id": 2501}]'::jsonb, p_team_plan_id => (
                    SELECT
                        result_team_plan_id
                    FROM either_plan), p_game_id => 32) $$, 'a followed Plan can change version');
SELECT
    results_eq ($$
        SELECT
            mainline_team_plans.game_id, mainline_team_plans.is_either_version, mainline_play_plan_links.game_id FROM planning.mainline_team_plans
            JOIN planning.mainline_play_plan_links ON mainline_play_plan_links.team_plan_id = mainline_team_plans.id
            WHERE
                mainline_team_plans.id = (
                    SELECT
                        result_team_plan_id
                    FROM either_plan) $$, $$
        VALUES (32, FALSE, 31) $$, 'the Plan is now for Shield and the Sword Play still follows it on its own game');
SELECT
    throws_ok ($$
        SELECT
            planning.save_mainline_team_plan (p_version_group_id => 15, p_name => 'Either Plan', p_team_plan_id => (
                    SELECT
                        result_team_plan_id
                    FROM either_plan)) $$, '55000', NULL, 'a followed Plan still can''t change game');
CREATE TEMP TABLE cloned_plan ON COMMIT DROP AS
SELECT
    *
FROM
    planning.clone_mainline_team_plan_for_play ('40000000-0000-0000-0000-0000000000f1');
SELECT
    results_eq ($$
        SELECT
            game_id, is_either_version FROM planning.mainline_team_plans
            WHERE
                id = (
                    SELECT
                        result_team_plan_id
                    FROM cloned_plan) $$, $$
        VALUES (32, FALSE) $$, 'a copy for a Play keeps the version');
SELECT
    *
FROM
    finish ();
ROLLBACK;
