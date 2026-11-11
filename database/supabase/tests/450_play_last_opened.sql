CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Last opened: opening a Play stamps last_opened_at for Home's shelf order,
-- without counting as a change (updated_at) or a History moment.
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000a1', 'authenticated', 'authenticated', 'opener@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000a2', 'authenticated', 'authenticated', 'stranger@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('60000000-0000-0000-0000-0000000000a1', '00000000-0000-0000-0000-0000000000a1', 9, 6, 2, 'Opened Play');
ALTER TABLE gameplay.mainline_plays DISABLE TRIGGER set_plays_updated_at;
UPDATE
    gameplay.mainline_plays
SET
    updated_at = '2020-01-01'
WHERE
    id = '60000000-0000-0000-0000-0000000000a1';
ALTER TABLE gameplay.mainline_plays ENABLE TRIGGER set_plays_updated_at;
SELECT
    plan (7);
SELECT
    has_column ('views', 'mainline_play_summary', 'last_opened_at', 'the Play summary carries when it was last opened');
-- The owner opens it.
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000a1', TRUE);
UPDATE
    gameplay.mainline_plays
SET
    last_opened_at = NOW()
WHERE
    id = '60000000-0000-0000-0000-0000000000a1';
SELECT
    IS ((
            SELECT
                last_opened_at = NOW()
            FROM
                gameplay.mainline_plays
            WHERE
                id = '60000000-0000-0000-0000-0000000000a1'), TRUE, 'opening a Play stamps last_opened_at');
SELECT
    IS ((
            SELECT
                updated_at
            FROM
                gameplay.mainline_plays
            WHERE
                id = '60000000-0000-0000-0000-0000000000a1'), '2020-01-01'::timestamptz, 'opening a Play is not a change: updated_at stays');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.mainline_play_events
            WHERE
                play_id = '60000000-0000-0000-0000-0000000000a1'), 0, 'opening a Play adds no History moment');
-- Anything else that changes still counts.
UPDATE
    gameplay.mainline_plays
SET
    name = 'Renamed Play'
WHERE
    id = '60000000-0000-0000-0000-0000000000a1';
SELECT
    IS ((
            SELECT
                updated_at = NOW()
            FROM
                gameplay.mainline_plays
            WHERE
                id = '60000000-0000-0000-0000-0000000000a1'), TRUE, 'renaming a Play still moves its updated_at');
-- Stamped together with another change, it still counts as a change.
ALTER TABLE gameplay.mainline_plays DISABLE TRIGGER set_plays_updated_at;
UPDATE
    gameplay.mainline_plays
SET
    updated_at = '2020-01-01'
WHERE
    id = '60000000-0000-0000-0000-0000000000a1';
ALTER TABLE gameplay.mainline_plays ENABLE TRIGGER set_plays_updated_at;
UPDATE
    gameplay.mainline_plays
SET
    last_opened_at = NOW(),
    playtime_minutes = 60
WHERE
    id = '60000000-0000-0000-0000-0000000000a1';
SELECT
    IS ((
            SELECT
                updated_at = NOW()
            FROM
                gameplay.mainline_plays
            WHERE
                id = '60000000-0000-0000-0000-0000000000a1'), TRUE, 'opening and changing a Play at once moves its updated_at');
-- Something changing inside an opened Play still moves it.
ALTER TABLE gameplay.mainline_plays DISABLE TRIGGER set_plays_updated_at;
UPDATE
    gameplay.mainline_plays
SET
    updated_at = '2020-01-01'
WHERE
    id = '60000000-0000-0000-0000-0000000000a1';
ALTER TABLE gameplay.mainline_plays ENABLE TRIGGER set_plays_updated_at;
INSERT INTO gameplay.mainline_play_settings (play_id)
    VALUES ('60000000-0000-0000-0000-0000000000a1');
SELECT
    IS ((
            SELECT
                updated_at = NOW()
            FROM
                gameplay.mainline_plays
            WHERE
                id = '60000000-0000-0000-0000-0000000000a1'), TRUE, 'a change inside an opened Play still moves its updated_at');
-- Someone else can't stamp it.
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000a2', TRUE);
UPDATE
    gameplay.mainline_plays
SET
    last_opened_at = '2030-01-01'
WHERE
    id = '60000000-0000-0000-0000-0000000000a1';
SELECT
    *
FROM
    finish ();
ROLLBACK;
