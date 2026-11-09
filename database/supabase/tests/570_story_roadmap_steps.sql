CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- The Story roadmap: each version group's steps in walkthrough order, a place
-- you pass or a milestone (at its own place). Places may repeat; a milestone
-- appears once. Red / Blue is the first roadmap.
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000f1', 'authenticated', 'authenticated', 'roadmap@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000f2', 'authenticated', 'authenticated', 'roadmap-other@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('60000000-0000-0000-0000-0000000000f1', '00000000-0000-0000-0000-0000000000f1', 1, 1, 2, 'Roadmap Red');
SELECT
    plan (27);
SELECT
    has_table ('tracking', 'mainline_roadmap_steps', 'the roadmap steps table exists');
SELECT
    col_is_pk ('tracking', 'mainline_roadmap_steps', 'id', 'a step has its own id');
SELECT
    col_is_unique ('tracking', 'mainline_roadmap_steps', ARRAY['version_group_id', 'sort_order'], 'a version group has one step at each position');
-- A step is a place or a milestone, never both and never neither.
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_roadmap_steps (version_group_id, sort_order, location_id, milestone_id)
            VALUES (1, 999, 30, 10001) $$, '23514', NULL, 'a step cannot be both a place and a milestone');
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_roadmap_steps (version_group_id, sort_order, location_id, milestone_id)
            VALUES (1, 999, NULL, NULL) $$, '23514', NULL, 'a step must be a place or a milestone');
-- A note says what happens at a place; a milestone has its own description.
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_roadmap_steps (version_group_id, sort_order, milestone_id, note)
            VALUES (1, 999, 10001, 'A note.') $$, '23514', NULL, 'a milestone step carries no note');
SELECT
    IS ((
            SELECT
                note
            FROM
                tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 1
                AND sort_order = 4),
            'The Poké Mart clerk asks you to take Oak''s Parcel back to Professor Oak, and you can''t shop until you do. An old man blocks the road north. The Gym is locked for now.',
            'Viridian City''s first visit says to pick up Oak''s Parcel');
-- A step belongs to its version group: Route 26 and Gold / Silver's Choose Starter are not Red / Blue's.
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_roadmap_steps (version_group_id, sort_order, location_id)
            VALUES (1, 999, 107) $$, '23503', NULL, 'a step cannot pass a place its version group does not have');
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_roadmap_steps (version_group_id, sort_order, milestone_id)
            VALUES (1, 999, 30001) $$, '23503', NULL, 'a step cannot be another version group''s milestone');
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_roadmap_steps (version_group_id, sort_order, milestone_id)
            VALUES (1, 999, 10001) $$, '23505', NULL, 'a milestone appears on the roadmap once');
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_roadmap_steps (version_group_id, sort_order, location_id)
            VALUES (1, 1, 38) $$, '23505', NULL, 'two steps cannot share a position');
SELECT
    lives_ok ($$ INSERT INTO tracking.mainline_roadmap_steps (version_group_id, sort_order, location_id)
            VALUES (1, 999, 30) $$, 'a place can come back on the roadmap');
-- Every Red / Blue milestone is one step.
SELECT
    is_empty ($$
        SELECT
            mainline_milestones.slug, COUNT(mainline_roadmap_steps.id)
            FROM tracking.mainline_milestones
        LEFT JOIN tracking.mainline_roadmap_steps ON mainline_roadmap_steps.milestone_id = mainline_milestones.id
        WHERE
            mainline_milestones.version_group_id = 1 GROUP BY mainline_milestones.slug
        HAVING
            COUNT(mainline_roadmap_steps.id) <> 1 $$, 'every Red / Blue milestone is on the roadmap exactly once');
-- Red / Blue's roadmap, spot-checked against the walkthrough.
SELECT
    results_eq ($$
        SELECT
            locations.name FROM tracking.mainline_roadmap_steps
            JOIN reference.locations ON locations.id = mainline_roadmap_steps.location_id
            WHERE
                mainline_roadmap_steps.version_group_id = 1
                AND mainline_roadmap_steps.sort_order = (
                    SELECT
                        step.sort_order + 1
                    FROM tracking.mainline_roadmap_steps AS step
                    JOIN tracking.mainline_milestones ON mainline_milestones.id = step.milestone_id
                    WHERE
                        mainline_milestones.slug = 'receive-pokedex'
                        AND mainline_milestones.version_group_id = 1) $$, $$
            VALUES ('Route 1'::text) $$, 'after the Pokédex the roadmap heads back up Route 1');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                tracking.mainline_roadmap_steps
                JOIN reference.locations ON locations.id = mainline_roadmap_steps.location_id
            WHERE
                mainline_roadmap_steps.version_group_id = 1
                AND mainline_roadmap_steps.sort_order < 999
                AND locations.name IN ('Pallet Town', 'Route 1', 'Viridian City')),
            9,
            'Red / Blue passes Pallet Town, Route 1 and Viridian City three times each');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                tracking.mainline_roadmap_steps
                JOIN reference.locations ON locations.id = mainline_roadmap_steps.location_id
            WHERE
                mainline_roadmap_steps.version_group_id = 1
                AND locations.name = 'Route 22'),
            2,
            'Red / Blue passes Route 22 twice');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug FROM tracking.mainline_roadmap_steps
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_roadmap_steps.milestone_id
            WHERE
                mainline_roadmap_steps.version_group_id = 1
                AND mainline_roadmap_steps.sort_order < 999 ORDER BY mainline_roadmap_steps.sort_order DESC LIMIT 1 $$, $$
        VALUES ('cerulean-cave'::text) $$, 'Red / Blue''s roadmap ends at Cerulean Cave');
-- The League is one step: Route 22, Route 23, Victory Road and the Indigo Plateau lead to it, then Cerulean Cave.
SELECT
    results_eq ($$
        SELECT
            mainline_roadmap_steps.sort_order, COALESCE(locations.name, mainline_milestones.slug)
            FROM tracking.mainline_roadmap_steps
        LEFT JOIN reference.locations ON locations.id = mainline_roadmap_steps.location_id
        LEFT JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_roadmap_steps.milestone_id
        WHERE
            mainline_roadmap_steps.version_group_id = 1
            AND mainline_roadmap_steps.sort_order BETWEEN 77 AND 998 ORDER BY mainline_roadmap_steps.sort_order $$, $$
        VALUES (77, 'Route 22'::text), (78, 'Route 23'::text), (79, 'victory-road'::text), (80, 'Indigo Plateau'::text), (81, 'pokemon-league'::text), (82, 'cerulean-cave'::text) $$, 'Red / Blue''s League is one step after the Indigo Plateau, before Cerulean Cave');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 1
                AND sort_order < 999),
            82,
            'Red / Blue''s roadmap runs 1 to 82 with no gaps');
SELECT
    IS ((
            SELECT
                MAX(sort_order)::integer
            FROM
                tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 1
                AND sort_order < 999),
            82,
            'Red / Blue''s roadmap has 82 steps');
-- The Pewter Museum of Science is Kanto's (it was filed under Johto).
SELECT
    results_eq ($$
        SELECT
            regions.slug, locations.slug FROM reference.locations
            JOIN reference.regions ON regions.id = locations.region_id
            WHERE
                locations.id = 105 $$, $$
            VALUES ('kanto'::text, 'kanto-pewter-museum-of-science'::text) $$, 'the Pewter Museum of Science is in Kanto');
-- The milestone view keeps each badge's place in the badge case.
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000f1', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    results_eq ($$
        SELECT
            badge_ref ->> 'slug', (badge_ref ->> 'badge_sort_order')::integer FROM views.mainline_play_milestone_detail
        CROSS JOIN LATERAL jsonb_array_elements(badge_refs) AS badge_ref
        WHERE
            play_id = '60000000-0000-0000-0000-0000000000f1'
            AND milestone_slug IN ('marsh-badge', 'soul-badge')
        ORDER BY (badge_ref ->> 'badge_sort_order')::integer $$, $$
        VALUES ('soul-badge'::text, 5), ('marsh-badge'::text, 6) $$, 'a badge keeps its badge case place while the Marsh Badge comes first on the walkthrough');
SELECT
    ok ((
            SELECT
                COUNT(*)
            FROM
                tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 1) > 0, 'a signed-in trainer reads the roadmap');
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_roadmap_steps (version_group_id, sort_order, location_id)
            VALUES (1, 1000, 30) $$, '42501', NULL, 'a signed-in trainer cannot add a step');
SELECT
    throws_ok ($$ UPDATE
            tracking.mainline_roadmap_steps
        SET
            sort_order = 1000
            WHERE
                version_group_id = 1 $$, '42501', NULL, 'a signed-in trainer cannot move a step');
-- Another trainer reads the shared roadmap but nothing of the Play.
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000f2', TRUE);
SELECT
    is_empty ($$
        SELECT
            milestone_id FROM views.mainline_play_milestone_detail
            WHERE
                play_id = '60000000-0000-0000-0000-0000000000f1' $$, 'another trainer cannot read the Play''s milestones or badges');
RESET ROLE;
SET LOCAL ROLE anon;
SELECT
    throws_ok ($$
        SELECT
            id FROM tracking.mainline_roadmap_steps $$, '42501', NULL, 'a signed-out visitor cannot read the roadmap');
RESET ROLE;
SELECT
    *
FROM
    finish ();
ROLLBACK;
