CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Black 2 / White 2's Story in the pattern: Main Story follows the
-- walkthrough from Aspertia City with the beats the game forces between
-- badges, Team Plasma's battles sit on the beats where they are fought, and
-- the Pokémon League is one milestone.
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
                mainline_milestones.version_group_id = 12
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('choose-starter'::text, 'Aspertia City'::text), ('receive-pokedex', 'Aspertia City'), ('basic-badge', 'Aspertia Gym'), ('toxic-badge', 'Virbank Gym'), ('castelia-sewers', 'Castelia Sewers'), ('insect-badge', 'Castelia Gym'), ('bolt-badge', 'Nimbasa Gym'), ('quake-badge', 'Driftveil Gym'), ('pokemon-world-tournament', 'Pokémon World Tournament'), ('jet-badge', 'Mistralton Gym'), ('legend-badge', 'Opelucid Gym'), ('opelucid-city', 'Opelucid City'), ('wave-badge', 'Humilau Gym'), ('plasma-frigate', 'Plasma Frigate'), ('defeat-ghetsis', 'Giant Chasm'), ('pokemon-league', 'Pokémon League') $$, 'Black 2 / White 2''s Main Story follows its walkthrough, each beat at its place, and ends at the Pokémon League');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 12
                AND mainline_categories.slug <> 'main-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order $$, $$
            VALUES ('post-game'::text, 'undella-town'::text, 'Undella Town'::text), ('side-content', 'swords-of-justice', 'Route 13'), ('side-content', 'dreamyard', 'Dreamyard'), ('side-content', 'cave-of-being', 'Cave of Being'), ('side-content', 'dragonspiral-tower', 'Dragonspiral Tower'), ('side-content', 'giant-chasm', 'Giant Chasm'), ('side-content', 'underground-ruins', 'Underground Ruins'), ('side-content', 'twist-mountain', 'Twist Mountain'), ('side-content', 'reversal-mountain', 'Reversal Mountain'), ('side-content', 'marvelous-bridge', 'Marvelous Bridge') $$, 'Black 2 / White 2''s optional beats sit in their chapters, each at its place');
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
                    mainline_milestones.version_group_id = 12
                    AND mainline_milestones.slug = 'pokemon-league' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
                VALUES (1, 'hugh'::text, 405, 12), (2, 'shauntal', NULL, 4), (3, 'grimsley', NULL, 4), (4, 'caitlin', NULL, 4), (5, 'marshal', NULL, 4), (6, 'iris', NULL, 6) $$, 'Black 2 / White 2''s closing milestone holds its battles in order, each with its team');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 12 ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('basic-badge'::text, 'hugh'::text, 'Floccesy Ranch'::text), ('bolt-badge', 'colress', 'Route 4'), ('legend-badge', 'hugh', 'Undella Town'), ('legend-badge', 'zinzolin-grunt', 'Lacunosa Town'), ('pokemon-league', 'hugh', 'Victory Road (Black 2 and White 2)') $$, 'Black 2 / White 2''s battles fought away from their beat name their places');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 12 $$, $$
            VALUES (64, 38, 26) $$, 'Black 2 / White 2''s roadmap has 64 steps: 38 places and its 26 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
