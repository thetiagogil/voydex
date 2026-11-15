CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- HeartGold / SoulSilver's Story in the pattern: Gold / Silver's route with
-- the remake's own beats (Proton in the Slowpoke Well, the Burned Tower, the
-- Kimono Girls' ritual), one Pokémon League milestone, and Kanto and Red as
-- the Post Game that counts.
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
                mainline_milestones.version_group_id = 10
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('choose-johto-starter'::text, 'Professor Elm''s Laboratory'::text), ('receive-pokedex', 'Mr. Pokémon''s House'), ('zephyr-badge', 'Violet Gym'), ('slowpoke-well', 'Slowpoke Well'), ('hive-badge', 'Azalea Gym'), ('ilex-forest', 'Ilex Forest'), ('plain-badge', 'Goldenrod Gym'), ('burned-tower', 'Burned Tower'), ('fog-badge', 'Ecruteak Gym'), ('storm-badge', 'Cianwood Gym'), ('olivine-lighthouse', 'Olivine Lighthouse'), ('mineral-badge', 'Olivine Gym'), ('lake-of-rage', 'Lake of Rage'), ('team-rocket-hq', 'Team Rocket HQ'), ('glacier-badge', 'Mahogany Gym'), ('radio-tower', 'Goldenrod Radio Tower'), ('rising-badge', 'Blackthorn Gym'), ('kimono-girls-ritual', 'Ecruteak Dance Theater'), ('pokemon-league', 'Indigo Plateau') $$, 'HeartGold / SoulSilver''s Main Story follows its walkthrough, each beat at its place, and ends at the Pokémon League');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 10
                AND mainline_categories.slug <> 'main-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order $$, $$
            VALUES ('post-game'::text, 'thunder-badge'::text, 'Vermilion Gym'::text), ('post-game', 'marsh-badge', 'Saffron Gym'), ('post-game', 'machine-part', 'Power Plant'), ('post-game', 'cascade-badge', 'Cerulean Gym'), ('post-game', 'rainbow-badge', 'Celadon Gym'), ('post-game', 'soul-badge', 'Fuchsia Gym'), ('post-game', 'boulder-badge', 'Pewter Gym'), ('post-game', 'volcano-badge', 'Cinnabar Gym'), ('post-game', 'earth-badge', 'Viridian Gym'), ('post-game', 'defeat-red', 'Mt. Silver Cave'), ('post-game', 'choose-kanto-starter', 'Professor Oak''s Laboratory'), ('post-game', 'choose-hoenn-starter', 'Silph Co.'), ('side-content', 'roaming-raikou', 'Burned Tower'), ('side-content', 'roaming-entei', 'Burned Tower'), ('side-content', 'roaming-latias-or-latios', 'Vermilion City'), ('side-content', 'route-25', 'Route 25'), ('side-content', 'power-plant', 'Power Plant'), ('side-content', 'seafoam-islands', 'Seafoam Islands'), ('side-content', 'mt-silver-cave', 'Mt. Silver Cave'), ('side-content', 'cerulean-cave', 'Cerulean Cave'), ('side-content', 'version-wing-legendary', 'Pewter City'), ('side-content', 'embedded-tower', 'Embedded Tower'), ('side-content', 'dragons-den', 'Dragon''s Den') $$, 'HeartGold / SoulSilver''s optional beats sit in their chapters, each at its place');
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
                    mainline_milestones.version_group_id = 10
                    AND mainline_milestones.slug = 'pokemon-league' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
                VALUES (1, 'silver'::text, 75, 18), (2, 'will', NULL, 5), (3, 'koga', NULL, 5), (4, 'bruno', NULL, 5), (5, 'karen', NULL, 5), (6, 'lance', NULL, 6) $$, 'HeartGold / SoulSilver''s Pokémon League holds its battles in order, each with its team');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 10 ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('zephyr-badge'::text, 'silver'::text, 'Cherrygrove City'::text), ('ilex-forest', 'silver', 'Azalea Town'), ('olivine-lighthouse', 'eusine', 'Cianwood City'), ('radio-tower', 'silver', 'Goldenrod Underground'), ('pokemon-league', 'silver', 'Victory Road'), ('volcano-badge', 'silver', 'Mt. Moon') $$, 'HeartGold / SoulSilver''s battles fought away from their beat name their places');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 10 $$, $$
            VALUES (150, 108, 42) $$, 'HeartGold / SoulSilver''s roadmap has 150 steps: 108 places and its 42 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
