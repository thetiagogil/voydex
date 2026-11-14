CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Gold / Silver's Story in the pattern: Main Story follows the walkthrough
-- through Johto with the beats the game forces between badges and ends at one
-- Pokémon League milestone, Post Game walks Kanto to Red, a battle fought away
-- from its milestone's place names its own, the Rocket Executives of the
-- Mahogany hideout are on the Team Rocket HQ milestone, and Unown's 26 forms
-- are a collectible set.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (9);
SELECT
    results_eq ($$
        SELECT
            slug, chapter_kind, sort_order FROM tracking.mainline_categories
            WHERE
                version_group_id = 3 ORDER BY sort_order $$, $$
            VALUES ('main-story'::text, 'main-story'::text, 1), ('post-game', 'post-game', 2), ('side-content', 'side-content', 3) $$, 'Gold / Silver''s chapters are Main Story, Post Game and Side Content');
-- Main Story, each beat at its place.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 3
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('choose-starter', 'Professor Elm''s Laboratory'), ('receive-pokedex', 'Mr. Pokémon''s House'), ('zephyr-badge', 'Violet Gym'), ('slowpoke-well', 'Slowpoke Well'), ('hive-badge', 'Azalea Gym'), ('ilex-forest', 'Ilex Forest'), ('plain-badge', 'Goldenrod Gym'), ('fog-badge', 'Ecruteak Gym'), ('storm-badge', 'Cianwood Gym'), ('olivine-lighthouse', 'Olivine Lighthouse'), ('mineral-badge', 'Olivine Gym'), ('lake-of-rage', 'Lake of Rage'), ('team-rocket-hq', 'Team Rocket HQ'), ('glacier-badge', 'Mahogany Gym'), ('radio-tower', 'Goldenrod Radio Tower'), ('rising-badge', 'Blackthorn Gym'), ('pokemon-league', 'Indigo Plateau') $$, 'Gold / Silver''s Main Story follows the walkthrough, each beat at its place, and ends at the Pokémon League');
-- Post Game: Kanto's Gyms in the order the walkthrough reaches them, the Power Plant, then Red.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 3
                AND mainline_categories.slug = 'post-game' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('thunder-badge', 'Vermilion Gym'), ('marsh-badge', 'Saffron Gym'), ('power-plant', 'Power Plant'), ('cascade-badge', 'Cerulean Gym'), ('rainbow-badge', 'Celadon Gym'), ('soul-badge', 'Fuchsia Gym'), ('boulder-badge', 'Pewter Gym'), ('volcano-badge', 'Cinnabar Gym'), ('earth-badge', 'Viridian Gym'), ('defeat-red', 'Mt. Silver Cave') $$, 'Gold / Silver''s Post Game walks Kanto in the walkthrough''s order and ends with Red');
-- The optional beats are Side Content.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_milestones.is_required_for_completion FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            WHERE
                mainline_milestones.version_group_id = 3
                AND mainline_categories.slug = 'side-content' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('burned-tower'::text, FALSE), ('roaming-raikou', FALSE), ('roaming-entei', FALSE), ('roaming-suicune', FALSE), ('tin-tower', FALSE), ('whirl-islands', FALSE) $$, 'the Burned Tower, the three roaming Pokémon, the Tin Tower and the Whirl Islands are optional Side Content');
-- The League fights Silver in Victory Road, the Elite Four, then Champion Lance, each with its team.
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
                    mainline_milestones.version_group_id = 3
                    AND mainline_milestones.slug = 'pokemon-league' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
                VALUES (1, 'silver'::text, 75, 18), (2, 'will', NULL, 5), (3, 'koga', NULL, 5), (4, 'bruno', NULL, 5), (5, 'karen', NULL, 5), (6, 'lance', NULL, 6) $$, 'Gold / Silver''s Pokémon League holds its six battles and their teams');
-- A Gym lists only its own battle: the hideout's Executives are on Team Rocket HQ.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, mainline_milestone_opponent_refs.sort_order FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_milestones.version_group_id = 3
                AND mainline_milestones.slug IN ('team-rocket-hq', 'glacier-badge')
            ORDER BY mainline_milestones.sort_order, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('team-rocket-hq'::text, 'petrel'::text, 1), ('team-rocket-hq', 'ariana', 2), ('glacier-badge', 'pryce', 1) $$, 'the Mahogany hideout''s Executives are on Team Rocket HQ and the Glacier Badge lists only Pryce');
-- Silver's battles on the way sit on the place where he is met.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestone_opponent_refs.version_group_id = 3 ORDER BY mainline_milestones.category_id, mainline_milestones.sort_order $$, $$
            VALUES ('zephyr-badge'::text, 'Cherrygrove City'::text), ('ilex-forest', 'Azalea Town'), ('radio-tower', 'Goldenrod Underground'), ('pokemon-league', 'Victory Road'), ('volcano-badge', 'Mt. Moon') $$, 'Silver''s battles on the way name their own places');
-- The roadmap walks Johto, then Kanto.
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 3 $$, $$
            VALUES (137, 104, 33) $$, 'Gold / Silver''s roadmap has 137 steps: 104 places and its 33 milestones');
-- Unown's 26 forms, by the puzzle that wakes them.
SELECT
    results_eq ($$
        SELECT
            mainline_collectible_entries.sub_location_label, COUNT(*)::integer FROM tracking.mainline_collectible_entries
            JOIN tracking.mainline_collectibles ON mainline_collectibles.id = mainline_collectible_entries.collectible_id
            WHERE
                mainline_collectibles.version_group_id = 3
                AND mainline_collectibles.slug = 'unown-forms' GROUP BY mainline_collectible_entries.sub_location_label ORDER BY MIN(mainline_collectible_entries.sort_order) $$, $$
            VALUES ('After the north chamber''s puzzle'::text, 11), ('After the southwest chamber''s puzzle (Surf and Strength)', 7), ('After the southeast chamber''s puzzle (Surf)', 5), ('After the west chamber''s puzzle (Surf)', 3) $$, 'Gold / Silver''s Unown set has 26 forms, grouped by the puzzle that wakes them');
SELECT
    *
FROM
    finish ();
ROLLBACK;
