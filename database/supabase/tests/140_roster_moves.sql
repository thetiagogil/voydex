CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000e1', 'authenticated', 'authenticated', 'roster-a@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000e2', 'authenticated', 'authenticated', 'roster-b@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
VALUES
    ('74000000-0000-0000-0000-0000000000a0', '00000000-0000-0000-0000-0000000000e1', 25, 15, 2, 'Roster Play'),
    ('74000000-0000-0000-0000-0000000000b0', '00000000-0000-0000-0000-0000000000e1', 25, 15, 2, 'One Pokemon Team'),
    ('74000000-0000-0000-0000-0000000000c0', '00000000-0000-0000-0000-0000000000e1', 25, 15, 2, 'Full Team');
INSERT INTO gameplay.mainline_play_pokemon (id, play_id, roster_state_id, slot, species_id, form_id, nickname)
VALUES
    ('75000000-0000-0000-0000-0000000000a1', '74000000-0000-0000-0000-0000000000a0', 1, 1, 722, 72200, 'Leaf'),
    ('75000000-0000-0000-0000-0000000000a2', '74000000-0000-0000-0000-0000000000a0', 1, 2, 725, 72500, 'Ember'),
    ('75000000-0000-0000-0000-0000000000a3', '74000000-0000-0000-0000-0000000000a0', 1, 3, 728, 72800, 'Bubble'),
    ('75000000-0000-0000-0000-0000000000a4', '74000000-0000-0000-0000-0000000000a0', 2, 7, 731, 73100, 'Peck'),
    ('75000000-0000-0000-0000-0000000000a5', '74000000-0000-0000-0000-0000000000a0', 3, NULL, 734, 73400, 'Gone'),
    ('75000000-0000-0000-0000-0000000000b1', '74000000-0000-0000-0000-0000000000b0', 1, 1, 722, 72200, 'Solo'),
    ('75000000-0000-0000-0000-0000000000b2', '74000000-0000-0000-0000-0000000000b0', 2, 7, 725, 72500, 'Bench'),
    ('75000000-0000-0000-0000-0000000000c1', '74000000-0000-0000-0000-0000000000c0', 1, 1, 722, 72200, 'One'),
    ('75000000-0000-0000-0000-0000000000c2', '74000000-0000-0000-0000-0000000000c0', 1, 2, 725, 72500, 'Two'),
    ('75000000-0000-0000-0000-0000000000c3', '74000000-0000-0000-0000-0000000000c0', 1, 3, 728, 72800, 'Three'),
    ('75000000-0000-0000-0000-0000000000c4', '74000000-0000-0000-0000-0000000000c0', 1, 4, 731, 73100, 'Four'),
    ('75000000-0000-0000-0000-0000000000c5', '74000000-0000-0000-0000-0000000000c0', 1, 5, 734, 73400, 'Five'),
    ('75000000-0000-0000-0000-0000000000c6', '74000000-0000-0000-0000-0000000000c0', 1, 6, 736, 73600, 'Six'),
    ('75000000-0000-0000-0000-0000000000c7', '74000000-0000-0000-0000-0000000000c0', 2, 7, 744, 74400, 'Seven');
SELECT
    plan (19);
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000e2', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    throws_ok ($$
        SELECT
            gameplay.move_mainline_play_pokemon (p_play_pokemon_id => '75000000-0000-0000-0000-0000000000a1', p_to_slot => 3) $$, '23503', NULL, 'another user cannot move a Pokemon they do not own');
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000e1', TRUE);
SELECT
    IS ((
            SELECT
                result_swapped_play_pokemon_id
            FROM
                gameplay.move_mainline_play_pokemon (p_play_pokemon_id => '75000000-0000-0000-0000-0000000000a1', p_to_slot => 3)),
            '75000000-0000-0000-0000-0000000000a3'::uuid,
            'moving onto a taken team slot swaps with the Pokemon there');
SELECT
    results_eq ($$
        SELECT
            nickname, roster_state_id, slot FROM gameplay.mainline_play_pokemon
            WHERE
                play_id = '74000000-0000-0000-0000-0000000000a0'
                AND slot IS NOT NULL ORDER BY slot $$, $$
            VALUES ('Bubble'::text, 1, 1), ('Ember'::text, 1, 2), ('Leaf'::text, 1, 3), ('Peck'::text, 2, 7) $$, 'a team swap trades the two slots and nothing else');
SELECT
    IS ((
            SELECT
                result_swapped_play_pokemon_id
            FROM
                gameplay.move_mainline_play_pokemon (p_play_pokemon_id => '75000000-0000-0000-0000-0000000000a2', p_to_slot => 8)),
            NULL::uuid,
            'moving into an empty slot swaps with nobody');
SELECT
    IS ((
            SELECT
                ROW (roster_state_id,
                    slot)
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                id = '75000000-0000-0000-0000-0000000000a2'), ROW (2, 8), 'a team Pokemon moved to an empty reserve slot joins the reserve');
SELECT
    lives_ok ($$
        SELECT
            gameplay.move_mainline_play_pokemon (p_play_pokemon_id => '75000000-0000-0000-0000-0000000000a4', p_to_slot => 2) $$, 'a reserve Pokemon can move to an empty team slot');
SELECT
    IS ((
            SELECT
                ROW (roster_state_id,
                    slot)
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                id = '75000000-0000-0000-0000-0000000000a4'), ROW (1, 2), 'a reserve Pokemon moved to the team becomes active');
SELECT
    lives_ok ($$
        SELECT
            gameplay.move_mainline_play_pokemon (p_play_pokemon_id => '75000000-0000-0000-0000-0000000000a1', p_to_slot => 8) $$, 'a team Pokemon can swap with a reserve Pokemon');
SELECT
    results_eq ($$
        SELECT
            nickname, roster_state_id, slot FROM gameplay.mainline_play_pokemon
            WHERE
                id IN ('75000000-0000-0000-0000-0000000000a1', '75000000-0000-0000-0000-0000000000a2')
            ORDER BY slot $$, $$
            VALUES ('Ember'::text, 1, 3), ('Leaf'::text, 2, 8) $$, 'a team and reserve swap trades both slots and states');
SELECT
    results_eq ($$
        SELECT
            result_play_pokemon_id, result_swapped_play_pokemon_id FROM gameplay.move_mainline_play_pokemon (p_play_pokemon_id => '75000000-0000-0000-0000-0000000000a2', p_to_slot => 3) $$, $$
        VALUES ('75000000-0000-0000-0000-0000000000a2'::uuid, NULL::uuid) $$, 'moving a Pokemon to its own slot changes nothing');
SELECT
    throws_ok ($$
        SELECT
            gameplay.move_mainline_play_pokemon (p_play_pokemon_id => '75000000-0000-0000-0000-0000000000a2', p_to_slot => 13) $$, '23514', 'A roster slot runs from 1 to 12', 'a slot past the reserve is refused');
SELECT
    throws_ok ($$
        SELECT
            gameplay.move_mainline_play_pokemon (p_play_pokemon_id => '75000000-0000-0000-0000-0000000000a5', p_to_slot => 4) $$, '23514', 'Only team and reserve Pokémon can move', 'a retired Pokemon cannot move');
SELECT
    throws_ok ($$
        SELECT
            gameplay.move_mainline_play_pokemon (p_play_pokemon_id => '75000000-0000-0000-0000-0000000000b1', p_to_slot => 8) $$, '23514', 'The team needs at least one Pokémon', 'the last team Pokemon cannot leave for an empty reserve slot');
SELECT
    lives_ok ($$
        SELECT
            gameplay.move_mainline_play_pokemon (p_play_pokemon_id => '75000000-0000-0000-0000-0000000000b1', p_to_slot => 7) $$, 'the last team Pokemon can swap with a reserve Pokemon');
SELECT
    results_eq ($$
        SELECT
            nickname, roster_state_id, slot FROM gameplay.mainline_play_pokemon
            WHERE
                play_id = '74000000-0000-0000-0000-0000000000b0' ORDER BY slot $$, $$
            VALUES ('Bench'::text, 1, 1), ('Solo'::text, 2, 7) $$, 'the swap keeps one Pokemon on the team');
SELECT
    results_eq ($$
        SELECT
            nickname, roster_state_id, slot FROM gameplay.mainline_play_pokemon
            WHERE
                play_id = '74000000-0000-0000-0000-0000000000c0'
                AND (slot IN (4, 7)
                    OR roster_state_id = 1)
            ORDER BY slot $$, $$
            VALUES ('One'::text, 1, 1), ('Two'::text, 1, 2), ('Three'::text, 1, 3), ('Four'::text, 1, 4), ('Five'::text, 1, 5), ('Six'::text, 1, 6), ('Seven'::text, 2, 7) $$, 'the full team starts with six active Pokemon');
SELECT
    lives_ok ($$
        SELECT
            gameplay.move_mainline_play_pokemon (p_play_pokemon_id => '75000000-0000-0000-0000-0000000000c7', p_to_slot => 4) $$, 'a reserve Pokemon can swap into a full team');
SELECT
    results_eq ($$
        SELECT
            nickname, roster_state_id, slot FROM gameplay.mainline_play_pokemon
            WHERE
                play_id = '74000000-0000-0000-0000-0000000000c0'
                AND slot IN (4, 7)
            ORDER BY slot $$, $$
            VALUES ('Seven'::text, 1, 4), ('Four'::text, 2, 7) $$, 'the full team keeps six and the reserve takes the swapped Pokemon');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.mainline_play_events
            WHERE
                play_id IN ('74000000-0000-0000-0000-0000000000a0', '74000000-0000-0000-0000-0000000000b0', '74000000-0000-0000-0000-0000000000c0')),
            0,
            'moves write no History moment');
SELECT
    *
FROM
    finish ();
ROLLBACK;
