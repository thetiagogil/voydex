CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000005a1', 'authenticated', 'authenticated', 'backups-a@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000005b2', 'authenticated', 'authenticated', 'backups-b@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO public.user_backups (user_id, object_path, format, saved_at, byte_size)
    VALUES ('00000000-0000-0000-0000-0000000005b2', '00000000-0000-0000-0000-0000000005b2/b.json.gz', 2, NOW(), 100);
INSERT INTO storage.objects (bucket_id, name, owner_id)
    VALUES ('backups', '00000000-0000-0000-0000-0000000005b2/b.json.gz', '00000000-0000-0000-0000-0000000005b2');
SELECT
    plan (18);
SELECT
    IS ((
            SELECT
                public
            FROM
                storage.buckets
            WHERE
                id = 'backups'), FALSE, 'the backups bucket is private');
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000005a1', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    lives_ok ($$ INSERT INTO public.user_backups (user_id, object_path, format, saved_at, byte_size)
            VALUES ('00000000-0000-0000-0000-0000000005a1', '00000000-0000-0000-0000-0000000005a1/a.json.gz', 2, NOW(), 100) $$, 'an account records its own backup');
SELECT
    throws_ok ($$ INSERT INTO public.user_backups (user_id, object_path, format, saved_at, byte_size)
            VALUES ('00000000-0000-0000-0000-0000000005b2', '00000000-0000-0000-0000-0000000005b2/x.json.gz', 2, NOW(), 100) $$, '42501', NULL, 'an account cannot record a backup for another');
SELECT
    throws_ok ($$ INSERT INTO public.user_backups (user_id, object_path, format, saved_at, byte_size)
            VALUES ('00000000-0000-0000-0000-0000000005a1', '00000000-0000-0000-0000-0000000005b2/y.json.gz', 2, NOW(), 100) $$, '23514', NULL, 'a backup row points only into its owner''s folder');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                public.user_backups),
            1::bigint,
            'an account sees only its own backups');
SELECT
    throws_ok ($$ UPDATE
            public.user_backups
        SET
            format = 3 $$, '42501', NULL, 'nobody changes a backup');
SELECT
    lives_ok ($$ INSERT INTO storage.objects (bucket_id, name, owner_id)
            VALUES ('backups', '00000000-0000-0000-0000-0000000005a1/a.json.gz', '00000000-0000-0000-0000-0000000005a1') $$, 'an account stores a file in its own folder');
SELECT
    throws_ok ($$ INSERT INTO storage.objects (bucket_id, name, owner_id)
            VALUES ('backups', '00000000-0000-0000-0000-0000000005b2/z.json.gz', '00000000-0000-0000-0000-0000000005a1') $$, '42501', NULL, 'an account cannot store a file in another''s folder');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                storage.objects
            WHERE
                bucket_id = 'backups'), 1::bigint, 'an account sees only the files in its own folder');
SELECT
    lives_ok ($$ DELETE FROM public.user_backups
        WHERE object_path LIKE '00000000-0000-0000-0000-0000000005b2/%' $$, 'deleting another''s backup quietly deletes nothing');
-- A new backup goes only on top of the newest one.
SELECT
    IS (public.add_user_backup ('00000000-0000-0000-0000-0000000005a1/c.json.gz', 2, NOW(), 10, 'Mac', '00000000-0000-0000-0000-00000000dead'),
        NULL,
        'a backup on top of an older one is refused');
SELECT
    isnt (public.add_user_backup ('00000000-0000-0000-0000-0000000005a1/c.json.gz', 2, NOW(), 10, 'Mac', (
            SELECT
                id
            FROM public.user_backups
            WHERE
                object_path = '00000000-0000-0000-0000-0000000005a1/a.json.gz')), NULL, 'a backup on top of the newest is recorded');
SELECT
    IS (public.add_user_backup ('00000000-0000-0000-0000-0000000005a1/d.json.gz', 2, NOW(), 10, 'iPhone', (
            SELECT
                id
            FROM public.user_backups
            WHERE
                object_path = '00000000-0000-0000-0000-0000000005a1/a.json.gz')),
        NULL,
        'a second device saving on top of the same backup loses the race');
SELECT
    IS ((
            SELECT
                object_path
            FROM
                public.user_backups
            ORDER BY
                created_at DESC,
                id DESC
            LIMIT 1),
        '00000000-0000-0000-0000-0000000005a1/c.json.gz',
        'the recorded backup is the newest');
RESET ROLE;
SELECT
    set_config('request.jwt.claim.sub', '', TRUE);
SET LOCAL ROLE anon;
SELECT
    throws_ok ($$
        SELECT
            * FROM public.user_backups $$, '42501', NULL, 'signed-out visitors cannot read backups');
SELECT
    throws_ok ($$
        SELECT
            public.add_user_backup ('x/y.json.gz', 2, NOW(), 10, NULL, NULL) $$, '42501', NULL, 'signed-out visitors cannot record a backup');
RESET ROLE;
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                public.user_backups
            WHERE
                user_id = '00000000-0000-0000-0000-0000000005b2'), 1::bigint, 'the other account''s backup is still there');
DELETE FROM auth.users
WHERE id = '00000000-0000-0000-0000-0000000005b2';
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                public.user_backups
            WHERE
                user_id = '00000000-0000-0000-0000-0000000005b2'), 0::bigint, 'deleting an account deletes its backup rows');
SELECT
    *
FROM
    finish ();
ROLLBACK;
