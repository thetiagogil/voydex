CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Recent activity: anything that changes inside a Play moves the Play's
-- updated_at, so the Plays list sorts by what you touched last.
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000e1', 'authenticated', 'authenticated', 'activity@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('60000000-0000-0000-0000-0000000000e1', '00000000-0000-0000-0000-0000000000e1', 9, 6, 2, 'Activity Play');
DELETE FROM gameplay.mainline_play_settings
WHERE play_id = '60000000-0000-0000-0000-0000000000e1';
SELECT
    plan (3);
ALTER TABLE gameplay.mainline_plays DISABLE TRIGGER set_plays_updated_at;
UPDATE
    gameplay.mainline_plays
SET
    updated_at = '2020-01-01'
WHERE
    id = '60000000-0000-0000-0000-0000000000e1';
ALTER TABLE gameplay.mainline_plays ENABLE TRIGGER set_plays_updated_at;
INSERT INTO gameplay.mainline_play_settings (play_id)
    VALUES ('60000000-0000-0000-0000-0000000000e1');
SELECT
    IS ((
            SELECT
                updated_at = NOW()
            FROM
                gameplay.mainline_plays
            WHERE
                id = '60000000-0000-0000-0000-0000000000e1'), TRUE, 'adding something to a Play moves its updated_at');
ALTER TABLE gameplay.mainline_plays DISABLE TRIGGER set_plays_updated_at;
UPDATE
    gameplay.mainline_plays
SET
    updated_at = '2020-01-01'
WHERE
    id = '60000000-0000-0000-0000-0000000000e1';
ALTER TABLE gameplay.mainline_plays ENABLE TRIGGER set_plays_updated_at;
UPDATE
    gameplay.mainline_play_settings
SET
    include_pokedex_in_completion = FALSE,
    include_optional_pokedexes_in_completion = FALSE,
    include_optional_pokedex_entries_in_completion = FALSE
WHERE
    play_id = '60000000-0000-0000-0000-0000000000e1';
SELECT
    IS ((
            SELECT
                updated_at = NOW()
            FROM
                gameplay.mainline_plays
            WHERE
                id = '60000000-0000-0000-0000-0000000000e1'), TRUE, 'changing something in a Play moves its updated_at');
ALTER TABLE gameplay.mainline_plays DISABLE TRIGGER set_plays_updated_at;
UPDATE
    gameplay.mainline_plays
SET
    updated_at = '2020-01-01'
WHERE
    id = '60000000-0000-0000-0000-0000000000e1';
ALTER TABLE gameplay.mainline_plays ENABLE TRIGGER set_plays_updated_at;
DELETE FROM gameplay.mainline_play_settings
WHERE play_id = '60000000-0000-0000-0000-0000000000e1';
SELECT
    IS ((
            SELECT
                updated_at = NOW()
            FROM
                gameplay.mainline_plays
            WHERE
                id = '60000000-0000-0000-0000-0000000000e1'), TRUE, 'removing something from a Play moves its updated_at');
SELECT
    *
FROM
    finish ();
ROLLBACK;
