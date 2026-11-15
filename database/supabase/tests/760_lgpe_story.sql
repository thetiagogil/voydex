CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Let's Go's Story in the pattern: Main Story follows the walkthrough through
-- Kanto with the beats the game forces between badges, Trace's and Jessie and
-- James's battles on the way name their places, and the Pokémon League is one
-- milestone.
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
                mainline_milestones.version_group_id = 17
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('receive-partner-pokemon'::text, 'Professor Oak''s Laboratory'::text), ('receive-pokedex', 'Professor Oak''s Laboratory'), ('boulder-badge', 'Pewter Gym'), ('cascade-badge', 'Cerulean Gym'), ('bills-sea-cottage', 'Route 25'), ('ss-anne', 'S.S. Anne'), ('thunder-badge', 'Vermilion Gym'), ('rainbow-badge', 'Celadon Gym'), ('rocket-hideout', 'Rocket Hideout'), ('pokemon-tower', 'Pokémon Tower'), ('silph-co', 'Silph Co.'), ('marsh-badge', 'Saffron Gym'), ('snorlax-encounter', 'Route 16'), ('soul-badge', 'Fuchsia Gym'), ('pokemon-mansion', 'Pokémon Mansion'), ('volcano-badge', 'Cinnabar Gym'), ('earth-badge', 'Viridian Gym'), ('pokemon-league', 'Indigo Plateau') $$, 'Let''s Go''s Main Story follows its walkthrough, each beat at its place, and ends at the Pokémon League');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 17
                AND mainline_categories.slug <> 'main-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order $$, $$
            VALUES ('post-game'::text, 'blue-battle'::text, 'Viridian Gym'::text), ('post-game', 'green-battle', 'Cerulean Cave'), ('post-game', 'red-battle', 'Indigo Plateau'), ('side-content', 'power-plant', 'Power Plant'), ('side-content', 'seafoam-islands', 'Seafoam Islands'), ('side-content', 'victory-road', 'Victory Road'), ('side-content', 'cerulean-cave', 'Cerulean Cave') $$, 'Let''s Go''s optional beats sit in their chapters, each at its place');
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
                    mainline_milestones.version_group_id = 17
                    AND mainline_milestones.slug = 'pokemon-league' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
                VALUES (1, 'trace'::text, 52, 8), (2, 'lorelei', NULL, 5), (3, 'bruno', NULL, 5), (4, 'agatha', NULL, 5), (5, 'lance', NULL, 5), (6, 'rival', NULL, 12) $$, 'Let''s Go''s closing milestone holds its battles in order, each with its team');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 17 ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('boulder-badge'::text, 'trace'::text, 'Route 22'::text), ('cascade-badge', 'jessie-james', 'Mt. Moon'), ('cascade-badge', 'trace', 'Cerulean City'), ('rainbow-badge', 'trace', 'Pokémon Tower'), ('soul-badge', 'jessie-james', 'Route 17'), ('pokemon-league', 'trace', 'Route 22') $$, 'Let''s Go''s battles fought away from their beat name their places');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 17 $$, $$
            VALUES (73, 48, 25) $$, 'Let''s Go''s roadmap has 73 steps: 48 places and its 25 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
