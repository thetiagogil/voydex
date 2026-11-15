CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- The Teal Mask's Story in the pattern: every beat at its place, on the
-- roadmap once, with Kitakami's places between them.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (4);
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 24
                AND mainline_categories.slug = 'dlc-story' ORDER BY mainline_milestones.sort_order, mainline_milestones.id $$, $$
            VALUES ('arrive-kitakami'::text, 'Mossui Town'::text), ('festival-of-masks', 'Kitakami Hall'), ('three-signboards', 'Paradise Barrens'), ('loyal-three-quest', 'Oni Mountain'), ('ogerpon-battle', 'Oni Mountain') $$, 'The Teal Mask''s Main Story follows its walkthrough, each beat at its place, and in order');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 24
                AND mainline_categories.slug <> 'dlc-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestones.id $$, $$
            VALUES ('side-content'::text, 'bloodmoon-ursaluna'::text, 'Mossui Town'::text), ('side-content', 'paradise-barrens', 'Paradise Barrens'), ('side-content', 'wistful-fields', 'Wistful Fields'), ('side-content', 'oni-mountain', 'Oni Mountain') $$, 'The Teal Mask''s optional beats sit in their chapters, each at its place');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 24 ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestones.id, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('festival-of-masks'::text, 'kieran'::text, 'Oni Mountain'::text), ('festival-of-masks', 'carmine', 'Mossui Town'), ('loyal-three-quest', 'kieran', 'Loyalty Plaza'), ('loyal-three-quest', 'okidogi', 'Paradise Barrens'), ('loyal-three-quest', 'munkidori-titan', 'Wistful Fields') $$, 'The Teal Mask''s battles fought away from their beat name their places');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 24 $$, $$
            VALUES (27, 18, 9) $$, 'The Teal Mask''s roadmap has 27 steps: 18 places and its 9 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
