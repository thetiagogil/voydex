CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Voydex's own challenge rules: everyone can use them, nobody can change
-- them, and a Play's options for a rule are checked against that rule.
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000e1', 'authenticated', 'authenticated', 'rules-a@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000e2', 'authenticated', 'authenticated', 'rules-b@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
-- A Red Play (Generation I) and another trainer's rule.
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('60000000-0000-0000-0000-0000000000e1', '00000000-0000-0000-0000-0000000000e1', 1, 1, 2, 'Kanto Mono');
INSERT INTO gameplay.mainline_challenge_rules (id, user_id, rule_type_id, slug, name)
    VALUES ('80000000-0000-0000-0000-0000000000e2', '00000000-0000-0000-0000-0000000000e2', 5, 'their_rule', 'Their rule');
SELECT
    plan (24);
-- The catalogue
SELECT
    results_eq ($$
        SELECT
            slug FROM gameplay.mainline_challenge_rules
            WHERE
                user_id IS NULL ORDER BY slug $$, $$
            VALUES ('first_catch_per_area'), ('level_caps'), ('monotype'), ('nickname_everything'), ('no_battle_items'), ('no_legendaries'), ('no_pokemon_reuse'), ('no_trades'), ('release_on_faint'), ('set_battle_mode'), ('shiny_only'), ('whiteout_ends_run') $$, 'Voydex ships its twelve own rules');
SELECT
    IS ((
            SELECT
                config
            FROM
                gameplay.mainline_challenge_rules
            WHERE
                slug = 'first_catch_per_area'
                AND user_id IS NULL),
            '{"shinies_always_catchable":false}'::jsonb,
            'First catch per area offers the shiny option, off by default');
SELECT
    IS ((
            SELECT
                config
            FROM
                gameplay.mainline_challenge_rules
            WHERE
                slug = 'monotype'
                AND user_id IS NULL),
            '{"type_id":null}'::jsonb,
            'Monotype offers a type, none until picked');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.mainline_challenge_rules
            WHERE
                user_id IS NULL
                AND (description IS NULL
                    OR rule_type_id = 5)),
            0,
            'every Voydex rule has a description and a kind other than Custom');
-- Everyone can read them, nobody can change them
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000e1', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.mainline_challenge_rules
            WHERE
                user_id IS NULL), 12, 'a trainer sees every Voydex rule');
UPDATE
    gameplay.mainline_challenge_rules
SET
    name = 'Renamed'
WHERE
    slug = 'monotype'
    AND user_id IS NULL;
DELETE FROM gameplay.mainline_challenge_rules
WHERE slug = 'level_caps'
    AND user_id IS NULL;
SELECT
    throws_ok ($$ INSERT INTO gameplay.mainline_challenge_rules (user_id, rule_type_id, slug, name)
            VALUES (NULL, 1, 'fake_voydex_rule', 'Fake') $$, '42501', NULL, 'a trainer cannot add a Voydex rule');
RESET ROLE;
SELECT
    IS ((
            SELECT
                name
            FROM
                gameplay.mainline_challenge_rules
            WHERE
                slug = 'monotype'
                AND user_id IS NULL),
            'Monotype',
            'a trainer cannot rename a Voydex rule');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.mainline_challenge_rules
            WHERE
                slug = 'level_caps'
                AND user_id IS NULL),
            1,
            'a trainer cannot delete a Voydex rule');
-- A Play's options for a rule
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000e1', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    lives_ok ($$ INSERT INTO gameplay.mainline_play_challenge_rules (play_id, challenge_rule_id, config_override)
        SELECT
            '60000000-0000-0000-0000-0000000000e1', id, '{"type_id":3}'::jsonb FROM gameplay.mainline_challenge_rules
            WHERE
                slug = 'monotype'
                AND user_id IS NULL $$, 'a Play keeps Monotype with Water');
SELECT
    throws_ok ($$ UPDATE
            gameplay.mainline_play_challenge_rules
        SET
            config_override = '{"type_id":18}'::jsonb
            WHERE
                play_id = '60000000-0000-0000-0000-0000000000e1' $$, '23514', NULL, 'Fairy is refused in a Generation I Play');
SELECT
    throws_ok ($$ UPDATE
            gameplay.mainline_play_challenge_rules
        SET
            config_override = '{"type_id":99}'::jsonb
            WHERE
                play_id = '60000000-0000-0000-0000-0000000000e1' $$, '23514', NULL, 'an unknown type is refused');
SELECT
    throws_ok ($$ UPDATE
            gameplay.mainline_play_challenge_rules
        SET
            config_override = '{"type_id":"water"}'::jsonb
            WHERE
                play_id = '60000000-0000-0000-0000-0000000000e1' $$, '23514', NULL, 'a type must be a number');
SELECT
    throws_ok ($$ UPDATE
            gameplay.mainline_play_challenge_rules
        SET
            config_override = '{"type_id":null}'::jsonb
            WHERE
                play_id = '60000000-0000-0000-0000-0000000000e1' $$, '23514', NULL, 'Monotype cannot lose its type');
SELECT
    throws_ok ($$ UPDATE
            gameplay.mainline_play_challenge_rules
        SET
            config_override = NULL
            WHERE
                play_id = '60000000-0000-0000-0000-0000000000e1' $$, '23514', NULL, 'Monotype cannot be kept without options');
SELECT
    throws_ok ($$ INSERT INTO gameplay.mainline_play_challenge_rules (play_id, challenge_rule_id, config_override)
        SELECT
            '60000000-0000-0000-0000-0000000000e1', id, '{"dupes_clause":true}'::jsonb FROM gameplay.mainline_challenge_rules
            WHERE
                slug = 'first_catch_per_area'
                AND user_id IS NULL $$, '23514', NULL, 'an option the rule does not offer is refused');
SELECT
    throws_ok ($$ INSERT INTO gameplay.mainline_play_challenge_rules (play_id, challenge_rule_id, config_override)
        SELECT
            '60000000-0000-0000-0000-0000000000e1', id, '{"shinies_always_catchable":"yes"}'::jsonb FROM gameplay.mainline_challenge_rules
            WHERE
                slug = 'first_catch_per_area'
                AND user_id IS NULL $$, '23514', NULL, 'the shiny option must be on or off');
SELECT
    IS ((
            SELECT
                config
            FROM
                gameplay.mainline_challenge_rules
            WHERE
                slug = 'no_pokemon_reuse'
                AND user_id IS NULL),
            '{"reuse_scope":"species"}'::jsonb,
            'No Pokémon reuse counts species by default');
SELECT
    lives_ok ($$ INSERT INTO gameplay.mainline_play_challenge_rules (play_id, challenge_rule_id, config_override)
        SELECT
            '60000000-0000-0000-0000-0000000000e1', id, '{"reuse_scope":"evolution_family"}'::jsonb FROM gameplay.mainline_challenge_rules
            WHERE
                slug = 'no_pokemon_reuse'
                AND user_id IS NULL $$, 'a Play can count whole evolution families as reuse');
SELECT
    throws_ok ($$ UPDATE
            gameplay.mainline_play_challenge_rules
        SET
            config_override = '{"reuse_scope":"color"}'::jsonb
            WHERE
                challenge_rule_id = md5('voydex:rule:no_pokemon_reuse')::uuid $$, '23514', NULL, 'an unknown reuse scope is refused');
-- Starting a Play with rules
CREATE TEMPORARY TABLE started_mono ON COMMIT DROP AS
SELECT
    *
FROM
    gameplay.create_mainline_play (p_game_id => 1, p_name => 'Started Mono', p_challenge_rules => jsonb_build_array(jsonb_build_object('rule_id', md5('voydex:rule:monotype')::uuid, 'config', '{"type_id":14}'::jsonb), jsonb_build_object('rule_id', md5('voydex:rule:monotype')::uuid, 'config', '{"type_id":14}'::jsonb), jsonb_build_object('rule_id', md5('voydex:rule:first_catch_per_area')::uuid, 'config', '{"shinies_always_catchable":true}'::jsonb), jsonb_build_object('rule_id', md5('voydex:rule:level_caps')::uuid, 'config', '{}'::jsonb)));
SELECT
    results_eq ($$
        SELECT
            mainline_challenge_rules.slug, mainline_play_challenge_rules.config_override FROM gameplay.mainline_play_challenge_rules
            JOIN gameplay.mainline_challenge_rules ON mainline_challenge_rules.id = mainline_play_challenge_rules.challenge_rule_id
            WHERE
                mainline_play_challenge_rules.play_id = (
                    SELECT
                        result_play_id
                    FROM started_mono)
        ORDER BY mainline_challenge_rules.slug $$, $$
        VALUES ('first_catch_per_area', '{"shinies_always_catchable":true}'::jsonb), ('level_caps', NULL::jsonb), ('monotype', '{"type_id":14}'::jsonb) $$, 'a new Play starts with its rules, each once, with its options');
SELECT
    throws_ok ($$
        SELECT
            * FROM gameplay.create_mainline_play (p_game_id => 1, p_name => 'Borrowed Rule', p_challenge_rules => '[{"rule_id":"80000000-0000-0000-0000-0000000000e2"}]'::jsonb) $$, '23514', NULL, 'another trainer''s rule is refused');
SELECT
    throws_ok ($$
        SELECT
            * FROM gameplay.create_mainline_play (p_game_id => 1, p_name => 'Fairy Red', p_challenge_rules => jsonb_build_array(jsonb_build_object('rule_id', md5('voydex:rule:monotype')::uuid, 'config', '{"type_id":18}'::jsonb))) $$, '23514', NULL, 'a bad option stops the start');
SELECT
    throws_ok ($$
        SELECT
            * FROM gameplay.create_mainline_play (p_game_id => 1, p_name => 'Not A List', p_challenge_rules => '{}'::jsonb) $$, '22023', 'challenge_rules must be a list', 'the rules must be a list');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.mainline_plays
            WHERE
                name IN ('Borrowed Rule', 'Fairy Red', 'Not A List')),
            0,
            'a refused start leaves no Play behind');
RESET ROLE;
SELECT
    *
FROM
    finish ();
ROLLBACK;
