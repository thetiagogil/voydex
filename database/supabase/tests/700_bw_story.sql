CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Black / White's Story in the pattern: Main Story follows the walkthrough
-- through Unova with Team Plasma's forced beats between badges and ends at
-- one Pokémon League milestone that runs on into N's Castle, the rivals' and
-- N's battles on the way name their places, and Champion Alder is Post Game.
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
                mainline_milestones.version_group_id = 11
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('choose-starter'::text, 'Nuvema Town'::text), ('receive-pokedex', 'Professor Juniper''s Laboratory'), ('trio-badge', 'Striaton Gym'), ('dreamyard', 'Dreamyard'), ('basic-badge', 'Nacrene Gym'), ('pinwheel-forest', 'Pinwheel Forest'), ('insect-badge', 'Castelia Gym'), ('bolt-badge', 'Nimbasa Gym'), ('cold-storage', 'Cold Storage'), ('quake-badge', 'Driftveil Gym'), ('jet-badge', 'Mistralton Gym'), ('freeze-badge', 'Icirrus Gym'), ('dragonspiral-tower', 'Dragonspiral Tower'), ('relic-castle', 'Relic Castle'), ('legend-badge', 'Opelucid Gym'), ('pokemon-league', 'Pokémon League') $$, 'Black / White''s Main Story follows its walkthrough, each beat at its place, and ends at the Pokémon League');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 11
                AND mainline_categories.slug <> 'main-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order $$, $$
            VALUES ('post-game'::text, 'champion-alder'::text, 'Pokémon League'::text), ('side-content', 'swords-of-justice', 'Mistralton Cave'), ('side-content', 'roaming-tornadus-thundurus', 'Route 7'), ('side-content', 'giant-chasm', 'Giant Chasm'), ('side-content', 'abundant-shrine', 'Abundant Shrine') $$, 'Black / White''s optional beats sit in their chapters, each at its place');
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
                    mainline_milestones.version_group_id = 11
                    AND mainline_milestones.slug = 'pokemon-league' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
                VALUES (1, 'cheren'::text, 376, 12), (2, 'shauntal', NULL, 4), (3, 'grimsley', NULL, 4), (4, 'caitlin', NULL, 4), (5, 'marshal', NULL, 4), (6, 'reshiram', NULL, 1), (7, 'zekrom', NULL, 1), (8, 'n', NULL, 12), (9, 'ghetsis', NULL, 6) $$, 'Black / White''s Pokémon League holds its battles in order, each with its team');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 11 ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('trio-badge'::text, 'n'::text, 'Accumula Town'::text), ('trio-badge', 'bianca', 'Route 2'), ('trio-badge', 'cheren', 'Striaton City'), ('basic-badge', 'cheren', 'Route 3'), ('basic-badge', 'n', 'Nacrene City'), ('bolt-badge', 'bianca', 'Castelia City'), ('bolt-badge', 'cheren', 'Route 4'), ('bolt-badge', 'n', 'Nimbasa City'), ('cold-storage', 'cheren', 'Route 5'), ('jet-badge', 'bianca', 'Driftveil City'), ('jet-badge', 'n', 'Chargestone Cave'), ('freeze-badge', 'cheren', 'Route 7'), ('legend-badge', 'bianca', 'Route 8'), ('pokemon-league', 'cheren', 'Route 10') $$, 'Black / White''s battles fought away from their beat name their places');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 11 $$, $$
            VALUES (58, 37, 21) $$, 'Black / White''s roadmap has 58 steps: 37 places and its 21 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
