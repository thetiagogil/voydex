CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- The profile's Pokémon icon, default trainer name and Welcome flag.
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000e1', 'authenticated', 'authenticated', 'icon-a@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000e2', 'authenticated', 'authenticated', 'icon-b@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
SELECT
    plan (8);
SELECT
    IS ((
            SELECT
                welcome_completed_at
            FROM
                public.profiles
            WHERE
                id = '00000000-0000-0000-0000-0000000000e1'), NULL, 'a new profile has not finished Welcome');
SELECT
    hasnt_column ('public', 'profiles', 'avatar_url', 'the unused avatar URL is gone');
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000e1', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    lives_ok ($$ UPDATE
            public.profiles
        SET
            icon_form_id = (
                SELECT
                    id
                FROM reference.pokemon_forms
                WHERE
                    slug = 'squirtle'), default_trainer_name = 'Red', welcome_completed_at = NOW()
        WHERE
            id = '00000000-0000-0000-0000-0000000000e1' $$, 'a trainer can pick their icon, default name and finish Welcome');
SELECT
    IS ((
            SELECT
                f.slug
            FROM
                public.profiles p
                JOIN reference.pokemon_forms f ON f.id = p.icon_form_id),
            'squirtle',
            'the icon is the form that was picked');
SELECT
    throws_ok ($$ UPDATE
            public.profiles
        SET
            icon_form_id = 0
            WHERE
                id = '00000000-0000-0000-0000-0000000000e1' $$, '23503', NULL, 'an icon must be a Pokémon form Voydex knows');
SELECT
    throws_ok ($$ UPDATE
            public.profiles
        SET
            default_trainer_name = '   '
            WHERE
                id = '00000000-0000-0000-0000-0000000000e1' $$, '23514', NULL, 'a default trainer name cannot be blank');
SELECT
    throws_ok ($$ UPDATE
            public.profiles
        SET
            default_trainer_name = REPEAT('x', 121)
            WHERE
                id = '00000000-0000-0000-0000-0000000000e1' $$, '23514', NULL, 'a default trainer name is at most 120 characters');
-- Another trainer's profile can't be changed.
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000e2', TRUE);
UPDATE
    public.profiles
SET
    default_trainer_name = 'Not mine'
WHERE
    id = '00000000-0000-0000-0000-0000000000e1';
RESET ROLE;
SELECT
    IS ((
            SELECT
                default_trainer_name
            FROM
                public.profiles
            WHERE
                id = '00000000-0000-0000-0000-0000000000e1'), 'Red', 'another trainer cannot change your default trainer name');
SELECT
    *
FROM
    finish ();
ROLLBACK;
