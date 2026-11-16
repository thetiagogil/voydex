CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- The Crown Tundra's Story in the pattern: each beat at its place, on the
-- roadmap once, with the steed's battle in Freezington naming its place.
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
                mainline_milestones.version_group_id = 20
                AND mainline_categories.slug = 'dlc-story' ORDER BY mainline_milestones.sort_order, mainline_milestones.id $$, $$
            VALUES ('peony-battle'::text, 'Slippery Slope'::text), ('arrive-crown-tundra', 'Freezington'), ('steed-choice', 'Freezington'), ('calyrex-quest', 'Crown Shrine'), ('regi-temples', 'Iron Ruins'), ('regi-choice', 'Split-Decision Ruins'), ('galarian-birds', 'Dyna Tree Hill'), ('finish-expeditions', 'Freezington') $$, 'The Crown Tundra''s Main Story follows its walkthrough, each beat at its place, and in order');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 20
                AND mainline_categories.slug <> 'dlc-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestones.id $$, $$
            VALUES ('side-content'::text, 'swords-of-justice'::text, 'Giant''s Bed'::text), ('side-content', 'ballimere-lake', 'Ballimere Lake') $$, 'The Crown Tundra''s optional beats sit in their chapters, each at its place');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 20 ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestones.id, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('calyrex-quest'::text, 'glastrier'::text, 'Freezington'::text), ('calyrex-quest', 'spectrier', 'Freezington'), ('regi-temples', 'regirock', 'Rock Peak Ruins'), ('regi-temples', 'regice', 'Iceberg Ruins') $$, 'The Crown Tundra''s battles fought away from their beat name their places');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 20 $$, $$
            VALUES (33, 23, 10) $$, 'The Crown Tundra''s roadmap has 33 steps: 23 places and its 10 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
