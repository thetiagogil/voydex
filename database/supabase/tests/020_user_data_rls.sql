CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000a1', 'authenticated', 'authenticated', 'rls-a@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000b2', 'authenticated', 'authenticated', 'rls-b@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('20000000-0000-0000-0000-0000000000b2', '00000000-0000-0000-0000-0000000000b2', 25, 15, 2, 'User B Play');
INSERT INTO planning.mainline_team_plans (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('30000000-0000-0000-0000-0000000000b2', '00000000-0000-0000-0000-0000000000b2', 25, 15, 1, 'User B Plan');
SELECT
    plan (15);
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000a1', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                public.profiles
            WHERE
                id = '00000000-0000-0000-0000-0000000000a1'), 1::bigint, 'signup creates the authenticated user profile');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                public.user_preferences
            WHERE
                user_id = '00000000-0000-0000-0000-0000000000a1'), 1::bigint, 'signup creates the authenticated user preferences');
SELECT
    lives_ok ($$ UPDATE
            public.profiles
        SET
            display_name = 'User A'
            WHERE
                id = '00000000-0000-0000-0000-0000000000a1' $$, 'a user can update their own profile');
SELECT
    lives_ok ($$ INSERT INTO public.tags (id, user_id, slug, name)
            VALUES ('10000000-0000-0000-0000-0000000000a1', '00000000-0000-0000-0000-0000000000a1', 'favorite', 'Favorite') $$, 'a user can create their own tag');
SELECT
    lives_ok ($$ INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
            VALUES ('20000000-0000-0000-0000-0000000000a1', '00000000-0000-0000-0000-0000000000a1', 25, 15, 2, 'User A Play') $$, 'a user can create their own play');
SELECT
    lives_ok ($$ INSERT INTO gameplay.mainline_play_settings (play_id)
            VALUES ('20000000-0000-0000-0000-0000000000a1') $$, 'a user can create settings for their own play');
SELECT
    lives_ok ($$ INSERT INTO planning.mainline_team_plans (id, user_id, game_id, version_group_id, status_id, name)
            VALUES ('30000000-0000-0000-0000-0000000000a1', '00000000-0000-0000-0000-0000000000a1', 25, 15, 1, 'User A Plan') $$, 'a user can create their own team plan');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_plays),
            1::bigint,
            'a user sees only their own plays');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                planning.mainline_team_plans),
            1::bigint,
            'a user sees only their own plans');
SELECT
    results_eq ($$ WITH changed AS ( UPDATE
                gameplay.mainline_plays
            SET
                name = 'Forbidden'
                WHERE
                    id = '20000000-0000-0000-0000-0000000000b2'
                RETURNING
                    1)
                SELECT
                    COUNT(*)
                    FROM changed $$, $$
                VALUES (0::bigint) $$, 'a user cannot update another user play');
SELECT
    results_eq ($$ WITH removed AS ( DELETE FROM planning.mainline_team_plans
            WHERE id = '30000000-0000-0000-0000-0000000000b2'
            RETURNING
                1)
            SELECT
                COUNT(*)
                FROM removed $$, $$
            VALUES (0::bigint) $$, 'a user cannot delete another user plan');
SELECT
    throws_ok ($$ INSERT INTO gameplay.mainline_play_settings (play_id)
            VALUES ('20000000-0000-0000-0000-0000000000b2') $$, '42501', 'new row violates row-level security policy for table "mainline_play_settings"', 'a user cannot insert child data under another user play');
SELECT
    throws_ok ($$ UPDATE
            gameplay.mainline_play_settings
        SET
            play_id = '20000000-0000-0000-0000-0000000000b2'
            WHERE
                play_id = '20000000-0000-0000-0000-0000000000a1' $$, '42501', 'new row violates row-level security policy for table "mainline_play_settings"', 'with-check prevents reparenting child data to another user play');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                views.mainline_play_summary),
            1::bigint,
            'security-invoker play views expose only the current user rows');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                views.mainline_team_plan_summary),
            1::bigint,
            'security-invoker plan views expose only the current user rows');
RESET ROLE;
SELECT
    *
FROM
    finish ();
ROLLBACK;
