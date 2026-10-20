CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Presets: Voydex's own are everyone's and nobody's to change; yours are
-- saved in one step and hold only Voydex's rules and your own.
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000f1', 'authenticated', 'authenticated', 'sets-a@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000f2', 'authenticated', 'authenticated', 'sets-b@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_challenge_rules (id, user_id, rule_type_id, slug, name)
VALUES
    ('80000000-0000-0000-0000-0000000000f1', '00000000-0000-0000-0000-0000000000f1', 5, 'mine', 'Mine'),
    ('80000000-0000-0000-0000-0000000000f2', '00000000-0000-0000-0000-0000000000f2', 5, 'theirs', 'Theirs');
INSERT INTO gameplay.mainline_challenge_rule_sets (id, user_id, slug, name)
    VALUES ('90000000-0000-0000-0000-0000000000f2', '00000000-0000-0000-0000-0000000000f2', 'their_set', 'Their set');
SELECT
    plan (18);
-- Voydex's presets
SELECT
    results_eq ($$
        SELECT
            sets.slug, rules.slug, links.sort_order FROM gameplay.mainline_challenge_rule_set_rules AS links
            JOIN gameplay.mainline_challenge_rule_sets AS sets ON sets.id = links.rule_set_id
            JOIN gameplay.mainline_challenge_rules AS rules ON rules.id = links.challenge_rule_id
            WHERE
                sets.user_id IS NULL ORDER BY sets.slug, links.sort_order $$, $$
            VALUES ('hardcore_nuzlocke', 'first_catch_per_area', 1), ('hardcore_nuzlocke', 'release_on_faint', 2), ('hardcore_nuzlocke', 'nickname_everything', 3), ('hardcore_nuzlocke', 'whiteout_ends_run', 4), ('hardcore_nuzlocke', 'level_caps', 5), ('hardcore_nuzlocke', 'no_battle_items', 6), ('hardcore_nuzlocke', 'set_battle_mode', 7), ('nuzlocke', 'first_catch_per_area', 1), ('nuzlocke', 'release_on_faint', 2), ('nuzlocke', 'nickname_everything', 3), ('nuzlocke', 'whiteout_ends_run', 4) $$, 'Voydex ships Nuzlocke and Hardcore Nuzlocke, in order');
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000f1', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.mainline_challenge_rule_set_rules
            WHERE
                rule_set_id = md5('voydex:rule-set:nuzlocke')::uuid),
            4,
            'a trainer reads a Voydex preset''s rules');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.mainline_challenge_rule_sets
            WHERE
                id = '90000000-0000-0000-0000-0000000000f2'), 0, 'a trainer cannot see another trainer''s preset');
UPDATE
    gameplay.mainline_challenge_rule_sets
SET
    name = 'Renamed'
WHERE
    slug = 'nuzlocke'
    AND user_id IS NULL;
DELETE FROM gameplay.mainline_challenge_rule_sets
WHERE slug = 'hardcore_nuzlocke'
    AND user_id IS NULL;
DELETE FROM gameplay.mainline_challenge_rule_set_rules
WHERE rule_set_id = md5('voydex:rule-set:nuzlocke')::uuid;
SELECT
    throws_ok ($$ INSERT INTO gameplay.mainline_challenge_rule_set_rules (rule_set_id, challenge_rule_id, sort_order)
            VALUES (md5('voydex:rule-set:nuzlocke')::uuid, md5('voydex:rule:shiny_only')::uuid, 9) $$, '42501', NULL, 'a trainer cannot add to a Voydex preset');
SELECT
    throws_ok ($$ INSERT INTO gameplay.mainline_challenge_rule_sets (user_id, slug, name)
            VALUES (NULL, 'fake_preset', 'Fake') $$, '42501', NULL, 'a trainer cannot make a Voydex preset');
RESET ROLE;
SELECT
    IS ((
            SELECT
                name
            FROM
                gameplay.mainline_challenge_rule_sets
            WHERE
                slug = 'nuzlocke'
                AND user_id IS NULL),
            'Nuzlocke',
            'a trainer cannot rename a Voydex preset');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.mainline_challenge_rule_set_rules
            WHERE
                rule_set_id IN (md5('voydex:rule-set:nuzlocke')::uuid, md5('voydex:rule-set:hardcore_nuzlocke')::uuid)),
            11,
            'a trainer cannot delete a Voydex preset or its rules');
SELECT
    throws_ok ($$ INSERT INTO gameplay.mainline_challenge_rule_set_rules (rule_set_id, challenge_rule_id, sort_order)
            VALUES (md5('voydex:rule-set:nuzlocke')::uuid, '80000000-0000-0000-0000-0000000000f1', 9) $$, '23514', NULL, 'a Voydex preset holds only Voydex''s rules');
-- Saving your own
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000f1', TRUE);
SET LOCAL ROLE authenticated;
CREATE TEMPORARY TABLE saved_set ON COMMIT DROP AS
SELECT
    gameplay.save_mainline_challenge_rule_set (p_slug => 'my_run', p_name => '  My run  ', p_description => '  Mine. ', p_rule_ids => ARRAY['80000000-0000-0000-0000-0000000000f1', md5('voydex:rule:monotype')::uuid, '80000000-0000-0000-0000-0000000000f1']::uuid[]) AS id;
SELECT
    results_eq ($$
        SELECT
            name, description FROM gameplay.mainline_challenge_rule_sets
            WHERE
                id = (
                    SELECT
                        id
                    FROM saved_set) $$, $$
        VALUES ('My run'::text, 'Mine.'::text) $$, 'a preset of yours saves trimmed');
SELECT
    results_eq ($$
        SELECT
            challenge_rule_id, sort_order FROM gameplay.mainline_challenge_rule_set_rules
            WHERE
                rule_set_id = (
                    SELECT
                        id
                    FROM saved_set)
        ORDER BY sort_order $$, $$
        VALUES ('80000000-0000-0000-0000-0000000000f1'::uuid, 1), (md5('voydex:rule:monotype')::uuid, 2) $$, 'its rules keep their order, each once');
SELECT
    lives_ok ($$
        SELECT
            gameplay.save_mainline_challenge_rule_set (p_slug => 'my_run', p_name => 'My run', p_rule_ids => ARRAY[md5('voydex:rule:level_caps')::uuid], p_rule_set_id => (
                    SELECT
                        id
                    FROM saved_set)) $$, 'changing it replaces its rules');
SELECT
    IS ((
            SELECT
                ARRAY_AGG(challenge_rule_id)
            FROM
                gameplay.mainline_challenge_rule_set_rules
            WHERE
                rule_set_id = (
                    SELECT
                        id
                    FROM
                        saved_set)),
                ARRAY[md5('voydex:rule:level_caps')::uuid],
                'only the new rules remain');
SELECT
    throws_ok ($$
        SELECT
            gameplay.save_mainline_challenge_rule_set (p_slug => 'empty', p_name => 'Empty', p_rule_ids => '{}'::uuid[]) $$, '22023', 'A preset needs at least one rule', 'a preset needs a rule');
SELECT
    throws_ok ($$
        SELECT
            gameplay.save_mainline_challenge_rule_set (p_slug => 'borrowed', p_name => 'Borrowed', p_rule_ids => ARRAY['80000000-0000-0000-0000-0000000000f2']::uuid[]) $$, '23514', NULL, 'another trainer''s rule is refused');
SELECT
    throws_ok ($$
        SELECT
            gameplay.save_mainline_challenge_rule_set (p_slug => 'their_set', p_name => 'Taken', p_rule_ids => ARRAY[md5('voydex:rule:level_caps')::uuid], p_rule_set_id => '90000000-0000-0000-0000-0000000000f2') $$, '42501', NULL, 'another trainer''s preset cannot be changed');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.mainline_challenge_rule_sets
            WHERE
                slug IN ('empty', 'borrowed')),
            0,
            'a refused save leaves no preset behind');
-- Deleting a rule of yours takes it off your presets
SELECT
    gameplay.save_mainline_challenge_rule_set (p_slug => 'my_run', p_name => 'My run', p_rule_ids => ARRAY['80000000-0000-0000-0000-0000000000f1', md5('voydex:rule:level_caps')::uuid]::uuid[], p_rule_set_id => (
            SELECT
                id
            FROM saved_set));
DELETE FROM gameplay.mainline_challenge_rules
WHERE id = '80000000-0000-0000-0000-0000000000f1';
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                gameplay.mainline_challenge_rule_set_rules
            WHERE
                rule_set_id = (
                    SELECT
                        id
                    FROM
                        saved_set)),
                1,
                'a deleted rule leaves your preset');
RESET ROLE;
SELECT
    set_config('request.jwt.claim.sub', '', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    throws_ok ($$
        SELECT
            gameplay.save_mainline_challenge_rule_set (p_slug => 'nobody', p_name => 'Nobody', p_rule_ids => ARRAY[md5('voydex:rule:level_caps')::uuid]) $$, '42501', 'An authenticated user is required to save a preset', 'a preset needs a signed-in user');
RESET ROLE;
SELECT
    *
FROM
    finish ();
ROLLBACK;
