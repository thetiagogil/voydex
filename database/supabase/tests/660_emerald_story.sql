CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Emerald's Story in the pattern: Main Story follows the walkthrough through
-- Hoenn with the beats the game forces between badges (both teams' hideouts,
-- the Space Center and waking Rayquaza) and ends at one Pokémon League
-- milestone, the Admins sit on the beats where they are fought, and the
-- rival's and Wally's battles on the way name their places.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (5);
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 7
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('choose-starter', 'Route 101'), ('receive-pokedex', 'Professor Birch''s Laboratory'), ('stone-badge', 'Rustboro Gym'), ('rusturf-tunnel', 'Rusturf Tunnel'), ('knuckle-badge', 'Dewford Gym'), ('oceanic-museum', 'Oceanic Museum'), ('dynamo-badge', 'Mauville Gym'), ('meteor-falls', 'Meteor Falls'), ('mt-chimney', 'Mt. Chimney'), ('heat-badge', 'Lavaridge Gym'), ('balance-badge', 'Petalburg Gym'), ('weather-institute', 'Weather Institute'), ('feather-badge', 'Fortree Gym'), ('mt-pyre', 'Mt. Pyre'), ('magma-hideout', 'Magma Hideout (Jagged Pass)'), ('aqua-hideout', 'Team Aqua Hideout'), ('mind-badge', 'Mossdeep Gym'), ('space-center', 'Mossdeep Space Center'), ('seafloor-cavern', 'Seafloor Cavern'), ('awaken-rayquaza', 'Sky Pillar'), ('rain-badge', 'Sootopolis Gym'), ('pokemon-league', 'Ever Grande City') $$, 'Emerald''s Main Story follows its walkthrough, each beat at its place, and ends at the Pokémon League');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 7
                AND mainline_categories.slug <> 'main-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order $$, $$
            VALUES ('post-game'::text, 'lati-choice'::text, 'Littleroot Town'), ('post-game', 'defeat-steven', 'Meteor Falls'), ('side-content', 'fossil-choice', 'Mirage Tower'), ('side-content', 'sky-pillar', 'Sky Pillar'), ('side-content', 'sealed-chamber', 'Sealed Chamber'), ('side-content', 'terra-cave', 'Terra Cave'), ('side-content', 'marine-cave', 'Marine Cave') $$, 'Emerald''s optional beats sit in Post Game and Side Content, each at its place');
-- The League fights Wally in Victory Road, the Elite Four, then Champion Wallace, each with its team.
SELECT
    results_eq ($$
        SELECT
            mainline_milestone_opponent_refs.sort_order, mainline_opponents.slug, mainline_milestone_opponent_refs.location_id, (
                SELECT
                    COUNT(*)::integer FROM tracking.mainline_opponent_team_members
                WHERE
                    mainline_opponent_team_members.milestone_id = mainline_milestone_opponent_refs.milestone_id
                    AND mainline_opponent_team_members.opponent_id = mainline_milestone_opponent_refs.opponent_id)
                FROM tracking.mainline_milestone_opponent_refs
                JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
                JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
                WHERE
                    mainline_milestones.version_group_id = 7
                    AND mainline_milestones.slug = 'pokemon-league' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
                VALUES (1, 'wally'::text, 252, 5), (2, 'sidney', NULL, 5), (3, 'phoebe', NULL, 5), (4, 'glacia', NULL, 5), (5, 'drake', NULL, 5), (6, 'wallace', NULL, 6) $$, 'Emerald''s Pokémon League holds its six battles and their teams');
-- The battles fought away from their milestone's place, and the Multi Battle beside Steven.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name, mainline_milestone_opponent_refs.team_size_limit FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            LEFT JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 7
                AND (mainline_milestone_opponent_refs.location_id IS NOT NULL
                    OR mainline_milestone_opponent_refs.team_size_limit IS NOT NULL)
            ORDER BY mainline_milestones.sort_order, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('receive-pokedex'::text, 'may-brendan'::text, 'Route 103'::text, NULL::integer), ('knuckle-badge', 'may-brendan', 'Rustboro City', NULL), ('dynamo-badge', 'may-brendan', 'Route 110', NULL), ('dynamo-badge', 'wally', 'Mauville City', NULL), ('feather-badge', 'may-brendan', 'Route 119', NULL), ('aqua-hideout', 'may-brendan', 'Lilycove City', NULL), ('space-center', 'maxie-tabitha', NULL, 3), ('pokemon-league', 'wally', 'Victory Road', NULL) $$, 'the rival''s five battles and Wally''s two name their places, and the Space Center battle keeps its team limit');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 7 $$, $$
            VALUES (131, 102, 29) $$, 'Emerald''s roadmap has 131 steps: 102 places and its 29 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
