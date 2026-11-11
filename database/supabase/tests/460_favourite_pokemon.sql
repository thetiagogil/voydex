CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Favourite Pokémon: a form is a favourite once, and it must belong to the
-- species it is saved under.
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000f1', 'authenticated', 'authenticated', 'fan@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000f2', 'authenticated', 'authenticated', 'stranger@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
-- The stranger already has a favourite of their own.
INSERT INTO gameplay.user_favourite_pokemon (user_id, species_id, form_id)
    VALUES ('00000000-0000-0000-0000-0000000000f2', 133, 13300);
SELECT
    plan (8);
-- The owner hearts Pikachu.
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000f1', TRUE);
SELECT
    lives_ok ($$ INSERT INTO gameplay.user_favourite_pokemon (user_id, species_id, form_id)
            VALUES ('00000000-0000-0000-0000-0000000000f1', 25, 2500) $$, 'a user can favourite a Pokémon');
SELECT
    throws_ok ($$ INSERT INTO gameplay.user_favourite_pokemon (user_id, species_id, form_id)
            VALUES ('00000000-0000-0000-0000-0000000000f1', 25, 2500) $$, '23505', NULL, 'the same form is a favourite once');
SELECT
    throws_ok ($$ INSERT INTO gameplay.user_favourite_pokemon (user_id, species_id, form_id)
            VALUES ('00000000-0000-0000-0000-0000000000f1', 25, 13300) $$, '23503', NULL, 'a form must belong to its species');
SELECT
    lives_ok ($$ DELETE FROM gameplay.user_favourite_pokemon
        WHERE user_id = '00000000-0000-0000-0000-0000000000f1'
            AND form_id = 2500 $$, 'a user can remove their own favourite');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.user_favourite_pokemon
            WHERE
                user_id = '00000000-0000-0000-0000-0000000000f1'), 0, 'the removed favourite is gone');
-- Signed out, nothing is readable or writable: favourites live on the
-- device.
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
