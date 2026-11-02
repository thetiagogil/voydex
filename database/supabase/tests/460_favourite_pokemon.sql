CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Favourite Pokémon: each user hearts forms for themselves only, and a form
-- must belong to the species it is saved under.
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000f1', 'authenticated', 'authenticated', 'fan@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000f2', 'authenticated', 'authenticated', 'stranger@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
-- The stranger already has a favourite of their own.
INSERT INTO gameplay.user_favourite_pokemon (user_id, species_id, form_id)
    VALUES ('00000000-0000-0000-0000-0000000000f2', 133, 13300);
SELECT
    plan (12);
-- The owner hearts Pikachu and sees only their own.
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000f1', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    lives_ok ($$ INSERT INTO gameplay.user_favourite_pokemon (user_id, species_id, form_id)
            VALUES ('00000000-0000-0000-0000-0000000000f1', 25, 2500) $$, 'a user can favourite a Pokémon');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.user_favourite_pokemon),
            1,
            'a user reads only their own favourites');
SELECT
    throws_ok ($$ INSERT INTO gameplay.user_favourite_pokemon (user_id, species_id, form_id)
            VALUES ('00000000-0000-0000-0000-0000000000f1', 25, 2500) $$, '23505', NULL, 'the same form is a favourite once');
SELECT
    throws_ok ($$ INSERT INTO gameplay.user_favourite_pokemon (user_id, species_id, form_id)
            VALUES ('00000000-0000-0000-0000-0000000000f1', 25, 13300) $$, '23503', NULL, 'a form must belong to its species');
SELECT
    throws_ok ($$ INSERT INTO gameplay.user_favourite_pokemon (user_id, species_id, form_id)
            VALUES ('00000000-0000-0000-0000-0000000000f2', 94, 9400) $$, '42501', NULL, 'a user cannot favourite for someone else');
SELECT
    throws_ok ($$ UPDATE gameplay.user_favourite_pokemon SET created_at = NOW() $$, '42501', NULL, 'a favourite is never edited, only added or removed');
-- Deleting the stranger's favourite touches nothing.
DELETE FROM gameplay.user_favourite_pokemon
WHERE user_id = '00000000-0000-0000-0000-0000000000f2';
SELECT
    lives_ok ($$ DELETE FROM gameplay.user_favourite_pokemon
        WHERE form_id = 2500 $$, 'a user can remove their own favourite');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.user_favourite_pokemon),
            0,
            'the removed favourite is gone');
RESET ROLE;
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.user_favourite_pokemon
            WHERE
                user_id = '00000000-0000-0000-0000-0000000000f2'), 1, 'another user''s favourite survives a delete attempt');
-- Signed out, nothing is readable or writable.
SET LOCAL ROLE anon;
SELECT
    throws_ok ($$ SELECT * FROM gameplay.user_favourite_pokemon $$, '42501', NULL, 'signed out, favourites cannot be read');
SELECT
    throws_ok ($$ INSERT INTO gameplay.user_favourite_pokemon (user_id, species_id, form_id)
            VALUES ('00000000-0000-0000-0000-0000000000f2', 25, 2500) $$, '42501', NULL, 'signed out, favourites cannot be added');
RESET ROLE;
-- Deleting the account takes its favourites with it.
DELETE FROM auth.users
WHERE id = '00000000-0000-0000-0000-0000000000f2';
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.user_favourite_pokemon
            WHERE
                user_id = '00000000-0000-0000-0000-0000000000f2'), 0, 'deleting the account deletes its favourites');
SELECT
    *
FROM
    finish ();
ROLLBACK;
