CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Sun / Moon's Story in the pattern: the island challenge is the Main Story,
-- each trial and grand trial at its place with the battles on the way, the
-- forced beats between them are milestones, and the Pokémon League is one
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
                mainline_milestones.version_group_id = 15
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('choose-starter'::text, 'Iki Town'::text), ('receive-pokedex', 'Iki Town'), ('iki-town-festival', 'Iki Town'), ('ilima-trial', 'Verdant Cavern'), ('grand-trial-hala', 'Iki Town'), ('lana-trial', 'Brooklet Hill'), ('kiawe-trial', 'Wela Volcano Park'), ('mallow-trial', 'Lush Jungle'), ('grand-trial-olivia', 'Ruins of Life'), ('aether-paradise-visit', 'Aether Paradise'), ('sophocles-trial', 'Hokulani Observatory'), ('acerola-trial', 'Thrifty Megamart (Abandoned Site)'), ('po-town', 'Po Town'), ('grand-trial-nanu', 'Malie City'), ('aether-paradise', 'Aether Paradise'), ('grand-trial-hapu', 'Vast Poni Canyon'), ('vast-poni-canyon-trial', 'Vast Poni Canyon'), ('ultra-space', 'Ultra Space'), ('pokemon-league', 'Pokémon League') $$, 'Sun / Moon''s Main Story follows its walkthrough, each beat at its place, and ends at the Pokémon League');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 15
                AND mainline_categories.slug <> 'main-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order $$, $$
            VALUES ('post-game'::text, 'ultra-beast-missions'::text, 'Route 8'::text), ('side-content', 'ruins-of-life', 'Ruins of Life'), ('side-content', 'ruins-of-abundance', 'Ruins of Abundance'), ('side-content', 'ruins-of-hope', 'Ruins of Hope'), ('side-content', 'ten-carat-hill', 'Ten Carat Hill') $$, 'Sun / Moon''s optional beats sit in their chapters, each at its place');
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
                    mainline_milestones.version_group_id = 15
                    AND mainline_milestones.slug = 'pokemon-league' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
                VALUES (1, 'gladion'::text, 531, 12), (2, 'hau', 531, 12), (3, 'hala-e4', NULL, 5), (4, 'olivia-e4', NULL, 5), (5, 'acerola-e4', NULL, 5), (6, 'kahili', NULL, 5), (7, 'kukui', NULL, 18), (8, 'tapu-koko', NULL, 1) $$, 'Sun / Moon''s closing milestone holds its battles in order, each with its team');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 15 ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('ilima-trial'::text, 'ilima'::text, 'Hau''oli City'::text), ('grand-trial-hala', 'hau', 'Route 3'), ('lana-trial', 'hau', 'Paniola Town'), ('lana-trial', 'gladion', 'Route 5'), ('kiawe-trial', 'battle-royal', 'Royal Avenue'), ('grand-trial-olivia', 'plumeria', 'Akala Outskirts'), ('sophocles-trial', 'hau', 'Malie City'), ('sophocles-trial', 'guzma', 'Malie Garden'), ('sophocles-trial', 'molayne', 'Mount Hokulani'), ('po-town', 'plumeria', 'Route 15'), ('grand-trial-nanu', 'gladion', 'Aether House'), ('pokemon-league', 'gladion', 'Mount Lanakila'), ('pokemon-league', 'hau', 'Mount Lanakila') $$, 'Sun / Moon''s battles fought away from their beat name their places');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 15 $$, $$
            VALUES (88, 64, 24) $$, 'Sun / Moon''s roadmap has 88 steps: 64 places and its 24 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
