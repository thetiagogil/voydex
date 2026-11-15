CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- X / Y's Story in the pattern: Main Story follows the walkthrough through
-- Kalos with Team Flare's forced beats between badges and ends at one Pokémon
-- League milestone that takes in AZ's battle, and the friends' battles on the
-- way name their places.
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
                mainline_milestones.version_group_id = 13
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('choose-kalos-starter'::text, 'Aquacorde Town'::text), ('receive-pokedex', 'Aquacorde Town'), ('bug-badge', 'Santalune Gym'), ('choose-kanto-starter', 'Pokémon Research Lab'), ('fossil-choice', 'Glittering Cave'), ('cliff-badge', 'Cyllage Gym'), ('rumble-badge', 'Shalour Gym'), ('plant-badge', 'Coumarine Gym'), ('kalos-power-plant', 'Kalos Power Plant'), ('voltage-badge', 'Lumiose Gym'), ('fairy-badge', 'Laverre Gym'), ('poke-ball-factory', 'Poké Ball Factory'), ('frost-cavern', 'Frost Cavern'), ('psychic-badge', 'Anistar Gym'), ('lysandre-labs', 'Lysandre Labs'), ('team-flare-secret-hq', 'Team Flare Secret HQ'), ('iceberg-badge', 'Snowbelle Gym'), ('pokemon-league', 'Pokémon League') $$, 'X / Y''s Main Story follows its walkthrough, each beat at its place, and ends at the Pokémon League');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 13
                AND mainline_categories.slug <> 'main-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order $$, $$
            VALUES ('post-game'::text, 'kiloude-city'::text, 'Kiloude City'::text), ('post-game', 'looker-bureau', 'Lumiose City'), ('side-content', 'terminus-cave', 'Terminus Cave'), ('side-content', 'unknown-dungeon', 'Unknown Dungeon'), ('side-content', 'roaming-legendary-bird', 'Azure Bay') $$, 'X / Y''s optional beats sit in their chapters, each at its place');
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
                    mainline_milestones.version_group_id = 13
                    AND mainline_milestones.slug = 'pokemon-league' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
                VALUES (1, 'serena-calem'::text, 482, 30), (2, 'malva', NULL, 4), (3, 'siebold', NULL, 4), (4, 'wikstrom', NULL, 4), (5, 'drasna', NULL, 4), (6, 'diantha', NULL, 6), (7, 'az', NULL, 3) $$, 'X / Y''s closing milestone holds its battles in order, each with its team');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 13 ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('fossil-choice'::text, 'tierno'::text, 'Route 5'::text), ('fossil-choice', 'tierno-trevor', 'Route 7'), ('rumble-badge', 'korrina-geosenge', 'Geosenge Town'), ('rumble-badge', 'serena-calem', 'Tower of Mastery'), ('plant-badge', 'serena-calem', 'Coumarine City'), ('fairy-badge', 'serena-calem', 'Route 14'), ('psychic-badge', 'serena-calem', 'Anistar City'), ('iceberg-badge', 'shauna', 'Route 19'), ('iceberg-badge', 'tierno', 'Route 19'), ('iceberg-badge', 'trevor', 'Route 19'), ('pokemon-league', 'serena-calem', 'Victory Road') $$, 'X / Y''s battles fought away from their beat name their places');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 13 $$, $$
            VALUES (72, 49, 23) $$, 'X / Y''s roadmap has 72 steps: 49 places and its 23 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
