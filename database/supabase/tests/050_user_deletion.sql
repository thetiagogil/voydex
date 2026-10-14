CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000d1', 'authenticated', 'authenticated', 'delete-me@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('20000000-0000-0000-0000-0000000000d1', '00000000-0000-0000-0000-0000000000d1', 25, 15, 2, 'Doomed Play');
INSERT INTO planning.mainline_team_plans (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('30000000-0000-0000-0000-0000000000d1', '00000000-0000-0000-0000-0000000000d1', 25, 15, 1, 'Doomed Plan');
INSERT INTO gameplay.mainline_challenge_rules (id, user_id, rule_type_id, slug, name)
SELECT
    '40000000-0000-0000-0000-0000000000d1',
    '00000000-0000-0000-0000-0000000000d1',
    MIN(id),
    'custom_doomed_rule',
    'Custom doomed rule'
FROM
    gameplay.mainline_challenge_rule_types;
INSERT INTO gameplay.mainline_play_challenge_rules (play_id, challenge_rule_id)
    VALUES ('20000000-0000-0000-0000-0000000000d1', '40000000-0000-0000-0000-0000000000d1');
INSERT INTO planning.mainline_team_plan_challenge_rules (team_plan_id, challenge_rule_id)
    VALUES ('30000000-0000-0000-0000-0000000000d1', '40000000-0000-0000-0000-0000000000d1');
SELECT
    plan (6);
-- The rule links are checked at commit; run them now so a violation surfaces
-- inside this rolled-back test.
SET CONSTRAINTS gameplay.mainline_play_challenge_rules_challenge_rule_id_fkey, planning.mainline_team_plan_challenge_rules_challenge_rule_id_fkey IMMEDIATE;
SELECT
    throws_ok ($$ DELETE FROM gameplay.mainline_challenge_rules
        WHERE id = '40000000-0000-0000-0000-0000000000d1' $$, '23503', NULL, 'a custom rule still used by a play or plan cannot be deleted on its own');
SET CONSTRAINTS gameplay.mainline_play_challenge_rules_challenge_rule_id_fkey, planning.mainline_team_plan_challenge_rules_challenge_rule_id_fkey DEFERRED;
SELECT
    lives_ok ($$ DELETE FROM auth.users
        WHERE id = '00000000-0000-0000-0000-0000000000d1' $$, 'a user with a custom rule in use can be deleted');
SELECT
    lives_ok ($$ SET CONSTRAINTS gameplay.mainline_play_challenge_rules_challenge_rule_id_fkey, planning.mainline_team_plan_challenge_rules_challenge_rule_id_fkey IMMEDIATE $$, 'the rule links still hold once the user is gone');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_challenge_rules
            WHERE
                id = '40000000-0000-0000-0000-0000000000d1'), 0::bigint, 'deleting the user removes their custom rule');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_plays
            WHERE
                id = '20000000-0000-0000-0000-0000000000d1'), 0::bigint, 'deleting the user removes their play');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                planning.mainline_team_plans
            WHERE
                id = '30000000-0000-0000-0000-0000000000d1'), 0::bigint, 'deleting the user removes their plan');
SELECT
    *
FROM
    finish ();
ROLLBACK;
