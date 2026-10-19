CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000c1', 'authenticated', 'authenticated', 'lifecycle-a@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000d2', 'authenticated', 'authenticated', 'lifecycle-b@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('70000000-0000-0000-0000-0000000000c1', '00000000-0000-0000-0000-0000000000c1', 25, 15, 2, 'Lifecycle Play');
INSERT INTO gameplay.mainline_play_pokemon (id, play_id, roster_state_id, slot, species_id, form_id, nickname, level)
VALUES
    ('71000000-0000-0000-0000-0000000000c1', '70000000-0000-0000-0000-0000000000c1', 1, 1, 722, 72200, 'Leaf', 16),
    ('71000000-0000-0000-0000-0000000000c2', '70000000-0000-0000-0000-0000000000c1', 1, 2, 479, 47900, 'Buzz', 20),
    ('71000000-0000-0000-0000-0000000000c3', '70000000-0000-0000-0000-0000000000c1', 1, 3, 731, 73100, 'Peck', 10);
SELECT
    plan (18);
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000d2', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    throws_ok ($$
        SELECT
            gameplay.evolve_mainline_play_pokemon (p_play_pokemon_id => '71000000-0000-0000-0000-0000000000c1', p_to_species_id => 723, p_to_form_id => 72300) $$, '23503', NULL, 'another user cannot evolve a Pokemon they do not own');
SELECT
    throws_ok ($$
        SELECT
            gameplay.retire_mainline_play_pokemon (p_play_pokemon_id => '71000000-0000-0000-0000-0000000000c3') $$, '23503', NULL, 'another user cannot retire a Pokemon they do not own');
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000c1', TRUE);
SELECT
    lives_ok ($$
        SELECT
            gameplay.evolve_mainline_play_pokemon (p_play_pokemon_id => '71000000-0000-0000-0000-0000000000c1', p_to_species_id => 723, p_to_form_id => 72300, p_level => 17) $$, 'the owner can evolve a team member');
SELECT
    results_eq ($$
        SELECT
            species_id, form_id, level FROM gameplay.mainline_play_pokemon
            WHERE
                id = '71000000-0000-0000-0000-0000000000c1'   $$, $$
            VALUES (723, 72300, 17) $$, 'evolution updates species, form and level');
SELECT
    results_eq ($$
        SELECT
            event_type_id, title FROM gameplay.mainline_play_events
            WHERE
                play_id = '70000000-0000-0000-0000-0000000000c1'
                AND timeline_order = 1 $$, $$
            VALUES (3, 'Rowlet evolved into Dartrix') $$, 'evolution records one evolved moment with a default title');
SELECT
    results_eq ($$
        SELECT
            ROLE, species_id FROM gameplay.mainline_play_event_pokemon_refs
            JOIN gameplay.mainline_play_events ON mainline_play_events.id = mainline_play_event_pokemon_refs.event_id
            WHERE
                mainline_play_events.play_id = '70000000-0000-0000-0000-0000000000c1'
                AND mainline_play_events.timeline_order = 1 ORDER BY sort_order $$, $$
            VALUES ('from'::text, 722), ('to'::text, 723) $$, 'the evolved moment keeps the before and after species');
SELECT
    lives_ok ($$
        SELECT
            gameplay.change_mainline_play_pokemon_form (p_play_pokemon_id => '71000000-0000-0000-0000-0000000000c2', p_to_form_id => 47902) $$, 'the owner can change a team member form');
SELECT
    IS ((
            SELECT
                form_id
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                id = '71000000-0000-0000-0000-0000000000c2'), 47902, 'form change updates the form');
SELECT
    IS ((
            SELECT
                event_type_id
            FROM
                gameplay.mainline_play_events
            WHERE
                play_id = '70000000-0000-0000-0000-0000000000c1'
                AND timeline_order = 2),
            6,
            'form change records one form-changed moment');
SELECT
    throws_ok ($$
        SELECT
            gameplay.change_mainline_play_pokemon_form (p_play_pokemon_id => '71000000-0000-0000-0000-0000000000c2', p_to_form_id => 72200) $$, '23503', NULL, 'a form from another species is rejected');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_events
            WHERE
                play_id = '70000000-0000-0000-0000-0000000000c1'), 2::bigint, 'a rejected form change leaves no moment behind');
SELECT
    lives_ok ($$
        SELECT
            gameplay.retire_mainline_play_pokemon (p_play_pokemon_id => '71000000-0000-0000-0000-0000000000c3', p_final_status => 'boxed') $$, 'the owner can retire a team member');
SELECT
    results_eq ($$
        SELECT
            roster_state_id, slot, final_status FROM gameplay.mainline_play_pokemon
            WHERE
                id = '71000000-0000-0000-0000-0000000000c3'   $$, $$
            VALUES (3, NULL::integer, 'boxed'::text) $$, 'retiring frees the slot and records the final status');
SELECT
    IS ((
            SELECT
                event_type_id
            FROM
                gameplay.mainline_play_events
            WHERE
                play_id = '70000000-0000-0000-0000-0000000000c1'
                AND timeline_order = 3),
            4,
            'retiring records one retired moment');
SELECT
    lives_ok ($$
        SELECT
            gameplay.replace_mainline_play_pokemon (p_replaced_play_pokemon_id => '71000000-0000-0000-0000-0000000000c2', p_replacement_species_id => 731, p_replacement_form_id => 73100, p_replacement_nickname => 'Beak') $$, 'the owner can replace a team member');
SELECT
    results_eq ($$
        SELECT
            roster_state_id, slot FROM gameplay.mainline_play_pokemon
            WHERE
                id = '71000000-0000-0000-0000-0000000000c2'   $$, $$
            VALUES (4, NULL::integer) $$, 'the replaced Pokemon leaves the team');
SELECT
    results_eq ($$
        SELECT
            roster_state_id, slot FROM gameplay.mainline_play_pokemon
            WHERE
                play_id = '70000000-0000-0000-0000-0000000000c1'
                AND nickname = 'Beak'   $$, $$
            VALUES (1, 2) $$, 'the replacement takes the freed team slot');
SELECT
    IS ((
            SELECT
                event_type_id
            FROM
                gameplay.mainline_play_events
            WHERE
                play_id = '70000000-0000-0000-0000-0000000000c1'
                AND timeline_order = 4),
            5,
            'replacing records one replaced moment');
SELECT
    *
FROM
    finish ();
ROLLBACK;
