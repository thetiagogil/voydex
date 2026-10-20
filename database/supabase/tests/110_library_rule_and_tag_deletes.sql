CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- The Library: deleting one of your rules takes it off every Play and Plan
-- that used it, a tag off every Play, and nobody can delete another
-- trainer's.
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000d1', 'authenticated', 'authenticated', 'library-a@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000d2', 'authenticated', 'authenticated', 'library-b@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('60000000-0000-0000-0000-0000000000d1', '00000000-0000-0000-0000-0000000000d1', 9, 6, 2, 'Library Play');
INSERT INTO planning.mainline_team_plans (id, user_id, game_id, version_group_id, name)
    VALUES ('70000000-0000-0000-0000-0000000000d1', '00000000-0000-0000-0000-0000000000d1', 9, 6, 'Library Plan');
INSERT INTO gameplay.mainline_challenge_rules (id, user_id, rule_type_id, slug, name)
    VALUES ('80000000-0000-0000-0000-0000000000d1', '00000000-0000-0000-0000-0000000000d1', 5, 'no_items', 'No items');
INSERT INTO public.tags (id, user_id, slug, name)
    VALUES ('90000000-0000-0000-0000-0000000000d1', '00000000-0000-0000-0000-0000000000d1', 'mono-run', 'Mono run');
INSERT INTO gameplay.mainline_play_challenge_rules (play_id, challenge_rule_id)
    VALUES ('60000000-0000-0000-0000-0000000000d1', '80000000-0000-0000-0000-0000000000d1');
INSERT INTO planning.mainline_team_plan_challenge_rules (team_plan_id, challenge_rule_id)
    VALUES ('70000000-0000-0000-0000-0000000000d1', '80000000-0000-0000-0000-0000000000d1');
INSERT INTO gameplay.mainline_play_tags (play_id, tag_id, user_id)
    VALUES ('60000000-0000-0000-0000-0000000000d1', '90000000-0000-0000-0000-0000000000d1', '00000000-0000-0000-0000-0000000000d1');
SELECT
    plan (5);
-- Another trainer can't delete them.
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000d2', TRUE);
SET LOCAL ROLE authenticated;
DELETE FROM gameplay.mainline_challenge_rules
WHERE id = '80000000-0000-0000-0000-0000000000d1';
DELETE FROM public.tags
WHERE id = '90000000-0000-0000-0000-0000000000d1';
RESET ROLE;
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.mainline_challenge_rules
            WHERE
                id = '80000000-0000-0000-0000-0000000000d1'), 1, 'another trainer cannot delete your rule');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                public.tags
            WHERE
                id = '90000000-0000-0000-0000-0000000000d1'), 1, 'another trainer cannot delete your tag');
-- You can, and they leave every Play and Plan.
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000d1', TRUE);
SET LOCAL ROLE authenticated;
DELETE FROM gameplay.mainline_challenge_rules
WHERE id = '80000000-0000-0000-0000-0000000000d1';
DELETE FROM public.tags
WHERE id = '90000000-0000-0000-0000-0000000000d1';
RESET ROLE;
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.mainline_play_challenge_rules
            WHERE
                challenge_rule_id = '80000000-0000-0000-0000-0000000000d1'), 0, 'a deleted rule leaves the Plays that used it');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                planning.mainline_team_plan_challenge_rules
            WHERE
                challenge_rule_id = '80000000-0000-0000-0000-0000000000d1'), 0, 'a deleted rule leaves the Plans that used it');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.mainline_play_tags
            WHERE
                tag_id = '90000000-0000-0000-0000-0000000000d1'), 0, 'a deleted tag leaves the Plays that wore it');
SELECT
    *
FROM
    finish ();
ROLLBACK;
