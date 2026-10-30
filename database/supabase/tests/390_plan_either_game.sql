CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- A Plan is for either game of its version group (#23): a Shield Play can
-- follow a Sword / Shield Plan saved under the group's first game, Sword,
-- and checks the Plan against its own game. A Play of another version group
-- still can't follow it.
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000e3', 'authenticated', 'authenticated', 'either-game@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
VALUES
    ('40000000-0000-0000-0000-0000000000e1', '00000000-0000-0000-0000-0000000000e3', 32, 18, 2, 'Shield Play'),
    ('40000000-0000-0000-0000-0000000000e2', '00000000-0000-0000-0000-0000000000e3', 25, 15, 2, 'Sun Play');
INSERT INTO planning.mainline_team_plans (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('50000000-0000-0000-0000-0000000000e1', '00000000-0000-0000-0000-0000000000e3', 31, 18, 1, 'Sword or Shield Plan');
SELECT
    plan (4);
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000e3', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    lives_ok ($$
        SELECT
            planning.link_mainline_team_plan_to_play ('40000000-0000-0000-0000-0000000000e1', '50000000-0000-0000-0000-0000000000e1', FALSE) $$, 'a Shield Play can follow a Sword / Shield Plan saved under Sword');
SELECT
    results_eq ($$
        SELECT
            game_id, version_group_id FROM planning.mainline_play_plan_links
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000e1' ORDER BY game_id $$, $$
            VALUES (32, 18) $$, 'the link keeps the Play''s own game');
SELECT
    throws_ok ($$
        SELECT
            planning.link_mainline_team_plan_to_play ('40000000-0000-0000-0000-0000000000e2', '50000000-0000-0000-0000-0000000000e1', FALSE) $$, '23514', 'Play and team plan must have the same owner and version group', 'a Play of another version group can''t follow it');
SELECT
    lives_ok ($$
        SELECT
            planning.save_mainline_team_plan (p_version_group_id => 18, p_name => 'Sword or Shield Plan', p_team_plan_id => '50000000-0000-0000-0000-0000000000e1') $$, 'the followed Plan still saves');
SELECT
    *
FROM
    finish ();
ROLLBACK;
