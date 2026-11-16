CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Mega Dimension's Story in the pattern: every beat at its place, on the
-- roadmap once, with the arenas of Hyperspace Lumiose as places.
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
                mainline_milestones.version_group_id = 27
                AND mainline_categories.slug = 'dlc-story' ORDER BY mainline_milestones.sort_order, mainline_milestones.id $$, $$
            VALUES ('investigate-hyperspace-lumiose'::text, 'Hyperspace Lumiose'::text), ('rogue-mega-absol-z', 'Hyperspace Disaster Arena'), ('rogue-mega-staraptor', 'Hyperspace Hunting Grounds'), ('rogue-mega-tatsugiri', 'Hyperspace Sushi Paradise'), ('rogue-mega-meowstic', 'Hyperspace Second-Sight Arena'), ('rogue-mega-darkrai', 'Hyperspace Newmoon Nightmare'), ('capture-groudon', 'Hyperspace Lumiose'), ('capture-kyogre', 'Hyperspace Lumiose'), ('rogue-mega-rayquaza', 'Hyperspace Sky Pillar') $$, 'Mega Dimension''s Main Story follows its walkthrough, each beat at its place, and in order');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 27
                AND mainline_categories.slug <> 'dlc-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestones.id $$, $$
            VALUES ('side-content'::text, 'collecting-four-drives'::text, 'Wild Zone 13'::text), ('side-content', 'the-stealthy-shadow', 'Rouge Sector 1'), ('side-content', 'dreams-of-meltan', 'Rouge Sector 1'), ('side-content', 'volcanion-unleashed', 'Pokémon Research Lab'), ('side-content', 'the-djinn-unbound', 'Hyperspace Lumiose'), ('side-content', 'special-scans', 'Rust Syndicate Office'), ('side-content', 'restarting-magearna', 'Quasartico Inc. (building)'), ('side-content', 'raging-lightning', 'Gare de Lumiose') $$, 'Mega Dimension''s optional beats sit in their chapters, each at its place');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 27 ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestones.id, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('rogue-mega-absol-z'::text, 'korrina'::text, 'Rust Syndicate Office'::text), ('rogue-mega-staraptor', 'lebanne', 'Hotel Z'), ('rogue-mega-staraptor', 'gwynn', 'Hotel Z'), ('rogue-mega-meowstic', 'jacinthe', 'Hotel Richissime'), ('rogue-mega-meowstic', 'griselle', 'Hotel Richissime'), ('rogue-mega-darkrai', 'heatran', 'Hyperspace Infernal Arena') $$, 'Mega Dimension''s battles fought away from their beat name their places');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 27 $$, $$
            VALUES (35, 18, 17) $$, 'Mega Dimension''s roadmap has 35 steps: 18 places and its 17 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
