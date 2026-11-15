CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- The Isle of Armor's Story in the pattern: each beat at its place, on the
-- roadmap once, with the rival's battles where they are fought.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (3);
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 19
                AND mainline_categories.slug = 'dlc-story' ORDER BY mainline_milestones.sort_order, mainline_milestones.id $$, $$
            VALUES ('arrive-isle-of-armor'::text, 'Master Dojo'::text), ('dojo-trials', 'Master Dojo'), ('choose-dojo-starter', 'Master Dojo'), ('tower-choice', 'Towers of Two Fists'), ('tower-of-two-fists', 'Towers of Two Fists'), ('final-mustard-battle', 'Master Dojo') $$, 'The Isle of Armor''s Main Story follows its walkthrough, each beat at its place, and in order');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 19 ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestones.id, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('arrive-isle-of-armor'::text, 'klara-avery'::text, 'Fields of Honor'::text), ('dojo-trials', 'klara-avery-warm-up-tunnel', 'Warm-Up Tunnel') $$, 'The Isle of Armor''s battles fought away from their beat name their places');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 19 $$, $$
            VALUES (24, 18, 6) $$, 'The Isle of Armor''s roadmap has 24 steps: 18 places and its 6 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
