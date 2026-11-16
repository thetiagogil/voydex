CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Ultra Sun / Ultra Moon's Story in the pattern: Sun / Moon's route with
-- these games' own beats (the Ultra Recon Squad, Ultra Necrozma, Mina's
-- trial), the island challenge as the Main Story, and one Pokémon League
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
                mainline_milestones.version_group_id = 16
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('choose-starter'::text, 'Route 1'::text), ('receive-pokedex', 'Route 1'), ('iki-town-festival', 'Iki Town'), ('ilima-trial', 'Verdant Cavern'), ('grand-trial-hala', 'Iki Town'), ('lana-trial', 'Brooklet Hill'), ('kiawe-trial', 'Wela Volcano Park'), ('mallow-trial', 'Lush Jungle'), ('grand-trial-olivia', 'Ruins of Life'), ('aether-paradise-visit', 'Aether Paradise'), ('sophocles-trial', 'Hokulani Observatory'), ('acerola-trial', 'Thrifty Megamart (Abandoned Site)'), ('po-town', 'Po Town'), ('grand-trial-nanu', 'Malie City'), ('aether-paradise', 'Aether Paradise'), ('vast-poni-canyon-trial', 'Vast Poni Canyon'), ('ultra-necrozma', 'Megalo Tower'), ('mina-trial', 'Seafolk Village'), ('grand-trial-hapu', 'Exeggutor Island'), ('pokemon-league', 'Pokémon League') $$, 'Ultra Sun / Ultra Moon''s Main Story follows its walkthrough, each beat at its place, and ends at the Pokémon League');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 16
                AND mainline_categories.slug <> 'main-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order $$, $$
            VALUES ('post-game'::text, 'team-rainbow-rocket'::text, 'Aether Paradise'::text), ('side-content', 'mahalo-trail', 'Mahalo Trail'), ('side-content', 'mount-lanakila-crater', 'Mount Lanakila'), ('side-content', 'ruins-of-conflict', 'Ruins of Conflict'), ('side-content', 'ruins-of-life', 'Ruins of Life'), ('side-content', 'ruins-of-abundance', 'Ruins of Abundance'), ('side-content', 'ruins-of-hope', 'Ruins of Hope'), ('side-content', 'resolution-cave', 'Resolution Cave'), ('side-content', 'poni-grove', 'Poni Grove'), ('side-content', 'ilima-bonus-trial', 'Verdant Cavern') $$, 'Ultra Sun / Ultra Moon''s optional beats sit in their chapters, each at its place');
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
                    mainline_milestones.version_group_id = 16
                    AND mainline_milestones.slug = 'pokemon-league' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
                VALUES (1, 'gladion'::text, 531, 12), (2, 'molayne', NULL, 5), (3, 'olivia-e4', NULL, 5), (4, 'acerola-e4', NULL, 5), (5, 'kahili', NULL, 5), (6, 'hau', NULL, 18) $$, 'Ultra Sun / Ultra Moon''s closing milestone holds its battles in order, each with its team');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 16 ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('ilima-trial'::text, 'ilima'::text, 'Hau''oli City'::text), ('grand-trial-hala', 'hau-rival', 'Route 3'), ('grand-trial-hala', 'dulse', 'Seaward Cave'), ('grand-trial-hala', 'soliera', 'Seaward Cave'), ('lana-trial', 'hau-rival', 'Paniola Town'), ('lana-trial', 'dulse', 'Paniola Ranch'), ('lana-trial', 'soliera', 'Paniola Ranch'), ('lana-trial', 'gladion', 'Route 5'), ('kiawe-trial', 'battle-royal', 'Royal Avenue'), ('grand-trial-olivia', 'plumeria', 'Akala Outskirts'), ('sophocles-trial', 'hau-rival', 'Malie City'), ('sophocles-trial', 'guzma', 'Malie Garden'), ('po-town', 'plumeria', 'Route 15'), ('grand-trial-nanu', 'gladion', 'Aether House'), ('pokemon-league', 'gladion', 'Mount Lanakila') $$, 'Ultra Sun / Ultra Moon''s battles fought away from their beat name their places');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 16 $$, $$
            VALUES (100, 70, 30) $$, 'Ultra Sun / Ultra Moon''s roadmap has 100 steps: 70 places and its 30 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
