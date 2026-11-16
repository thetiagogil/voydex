CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Omega Ruby / Alpha Sapphire's Story in the pattern: Ruby / Sapphire's route
-- with the remake's own beats (the Multi Battles at Meteor Falls and on
-- Southern Island, the Admin on Mt. Pyre, the Primal Pokémon), one Pokémon
-- League milestone, and the Delta Episode as Post Game.
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
                mainline_milestones.version_group_id = 14
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('choose-starter'::text, 'Route 101'::text), ('receive-pokedex', 'Professor Birch''s Laboratory'), ('stone-badge', 'Rustboro Gym'), ('rusturf-tunnel', 'Rusturf Tunnel'), ('knuckle-badge', 'Dewford Gym'), ('oceanic-museum', 'Oceanic Museum'), ('dynamo-badge', 'Mauville Gym'), ('meteor-falls', 'Meteor Falls'), ('mt-chimney', 'Mt. Chimney'), ('heat-badge', 'Lavaridge Gym'), ('balance-badge', 'Petalburg Gym'), ('southern-island', 'Southern Island'), ('weather-institute', 'Weather Institute'), ('feather-badge', 'Fortree Gym'), ('mt-pyre', 'Mt. Pyre'), ('team-hideout', 'Lilycove City'), ('mind-badge', 'Mossdeep Gym'), ('seafloor-cavern', 'Seafloor Cavern'), ('cave-of-origin', 'Cave of Origin'), ('rain-badge', 'Sootopolis Gym'), ('pokemon-league', 'Ever Grande City') $$, 'Omega Ruby / Alpha Sapphire''s Main Story follows its walkthrough, each beat at its place, and ends at the Pokémon League');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 14
                AND mainline_categories.slug <> 'main-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order $$, $$
            VALUES ('post-game'::text, 'delta-episode'::text, 'Sky Pillar'::text), ('side-content', 'fossil-choice', 'Route 111'), ('side-content', 'sealed-chamber', 'Sealed Chamber'), ('side-content', 'scorched-slab', 'Scorched Slab'), ('side-content', 'sea-mauville', 'Sea Mauville'), ('side-content', 'crescent-isle', 'Crescent Isle'), ('side-content', 'storm-clouds', 'Soaring in the sky'), ('side-content', 'island-cave-regigigas', 'Island Cave'), ('side-content', 'trackless-forest', 'Trackless Forest'), ('side-content', 'nameless-cavern', 'Nameless Cavern'), ('side-content', 'dimensional-rift', 'Soaring in the sky'), ('side-content', 'pathless-plain', 'Pathless Plain'), ('side-content', 'fabled-cave', 'Fabled Cave'), ('side-content', 'gnarled-den', 'Gnarled Den') $$, 'Omega Ruby / Alpha Sapphire''s optional beats sit in their chapters, each at its place');
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
                    mainline_milestones.version_group_id = 14
                    AND mainline_milestones.slug = 'pokemon-league' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
                VALUES (1, 'wally'::text, 252, 5), (2, 'sidney', NULL, 5), (3, 'phoebe', NULL, 5), (4, 'glacia', NULL, 5), (5, 'drake', NULL, 5), (6, 'steven', NULL, 6) $$, 'Omega Ruby / Alpha Sapphire''s closing milestone holds its battles in order, each with its team');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 14 ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('receive-pokedex'::text, 'may-brendan'::text, 'Route 103'::text), ('dynamo-badge', 'may-brendan', 'Route 110'), ('dynamo-badge', 'wally', 'Mauville City'), ('feather-badge', 'may-brendan', 'Route 119'), ('pokemon-league', 'wally', 'Victory Road') $$, 'Omega Ruby / Alpha Sapphire''s battles fought away from their beat name their places');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 14 $$, $$
            VALUES (116, 81, 35) $$, 'Omega Ruby / Alpha Sapphire''s roadmap has 116 steps: 81 places and its 35 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
