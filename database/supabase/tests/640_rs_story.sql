CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Ruby / Sapphire's Story in the pattern: Main Story follows the walkthrough
-- through Hoenn with the beats the game forces between badges and ends at one
-- Pokémon League milestone, the Admins sit on the beats where they are
-- fought, and the rival's and Wally's battles on the way name their places.
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
                mainline_milestones.version_group_id = 5
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('choose-starter', 'Route 101'), ('receive-pokedex', 'Professor Birch''s Laboratory'), ('stone-badge', 'Rustboro Gym'), ('rusturf-tunnel', 'Rusturf Tunnel'), ('knuckle-badge', 'Dewford Gym'), ('oceanic-museum', 'Oceanic Museum'), ('dynamo-badge', 'Mauville Gym'), ('meteor-falls', 'Meteor Falls'), ('mt-chimney', 'Mt. Chimney'), ('heat-badge', 'Lavaridge Gym'), ('balance-badge', 'Petalburg Gym'), ('weather-institute', 'Weather Institute'), ('feather-badge', 'Fortree Gym'), ('mt-pyre', 'Mt. Pyre'), ('team-hideout', 'Lilycove City'), ('mind-badge', 'Mossdeep Gym'), ('seafloor-cavern', 'Seafloor Cavern'), ('cave-of-origin', 'Cave of Origin'), ('rain-badge', 'Sootopolis Gym'), ('pokemon-league', 'Ever Grande City') $$, 'Ruby / Sapphire''s Main Story follows the walkthrough, each beat at its place, and ends at the Pokémon League');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            WHERE
                mainline_milestones.version_group_id = 5
                AND mainline_categories.slug <> 'main-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order $$, $$
            VALUES ('post-game'::text, 'roaming-lati'::text), ('side-content', 'fossil-choice'), ('side-content', 'sealed-chamber'), ('side-content', 'sky-pillar') $$, 'the roaming Latios or Latias is Post Game and the Fossil Choice, Sealed Chamber and Sky Pillar are Side Content');
-- The League fights Wally in Victory Road, the Elite Four, then Champion Steven, each with its team.
SELECT
    results_eq ($$
        SELECT
            mainline_milestone_opponent_refs.sort_order, mainline_opponents.slug, mainline_milestone_opponent_refs.location_id IS NOT NULL, (
                SELECT
                    COUNT(*)::integer FROM tracking.mainline_opponent_team_members
                WHERE
                    mainline_opponent_team_members.milestone_id = mainline_milestone_opponent_refs.milestone_id
                    AND mainline_opponent_team_members.opponent_id = mainline_milestone_opponent_refs.opponent_id)
                FROM tracking.mainline_milestone_opponent_refs
                JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
                JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
                WHERE
                    mainline_milestones.version_group_id = 5
                    AND mainline_milestones.slug = 'pokemon-league' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
                VALUES (1, 'wally'::text, TRUE, 5), (2, 'sidney', FALSE, 5), (3, 'phoebe', FALSE, 5), (4, 'glacia', FALSE, 5), (5, 'drake', FALSE, 5), (6, 'steven', FALSE, 6) $$, 'Ruby / Sapphire''s Pokémon League holds its six battles and their teams');
-- A Gym lists only its own battles: the Admins are on the Weather Institute and the hideout.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, mainline_milestone_opponent_refs.sort_order FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_milestones.version_group_id = 5
                AND mainline_milestones.slug IN ('weather-institute', 'team-hideout', 'mind-badge')
                AND mainline_milestone_opponent_refs.location_id IS NULL ORDER BY mainline_milestones.sort_order, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('weather-institute'::text, 'courtney'::text, 1), ('weather-institute', 'shelly', 2), ('team-hideout', 'may-brendan', 1), ('team-hideout', 'tabitha', 2), ('team-hideout', 'matt', 3), ('mind-badge', 'tate-liza', 1) $$, 'the Admins are on the Weather Institute and the hideout, and the Mind Badge lists only Tate & Liza');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 5 $$, $$
            VALUES (103, 79, 24) $$, 'Ruby / Sapphire''s roadmap has 103 steps: 79 places and its 24 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
