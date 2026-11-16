CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Legends: Z-A's Story in the pattern: every beat at its place in Lumiose
-- City, on the roadmap once, with the places the Main Missions pass.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (4);
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 26
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order, mainline_milestones.id $$, $$
            VALUES ('choose-starter'::text, 'Gare de Lumiose'::text), ('join-team-mz', 'Hotel Z'), ('reach-rank-y', 'South Boulevard'), ('reach-rank-x', 'Bleu Plaza'), ('reach-rank-w', 'Académie Étoile'), ('reach-rank-v', 'Restaurant Le Nah'), ('unlock-mega-evolution', 'Hotel Z'), ('reach-rank-f', 'Quasartico Inc. (building)'), ('rogue-mega-slowbro', 'Aymlis Park'), ('rogue-mega-camerupt', 'Jaune Sector 3'), ('rogue-mega-victreebel', 'Magenta Sector 9'), ('reach-rank-e', 'Racine Construction'), ('rogue-mega-beedrill', 'Vert Sector 5'), ('rogue-mega-hawlucha', 'Magenta Sector 3'), ('rogue-mega-banette', 'Jaune Sector 9'), ('reach-rank-d', 'Justice Dojo'), ('rogue-mega-mawile', 'Magenta Sector 6'), ('rogue-mega-barbaracle', 'Bleu Sector 5'), ('rogue-mega-ampharos', 'Rouge Sector 6'), ('reach-rank-c', 'Rust Syndicate Office'), ('rogue-mega-froslass', 'Aymlis Park'), ('rogue-mega-altaria', 'Magenta Sector 4'), ('rogue-mega-venusaur', 'Jaune Sector 8'), ('reach-rank-b', 'Hotel Richissime'), ('rogue-mega-dragonite', 'Vert Sector 3'), ('rogue-mega-tyranitar', 'Jaune Sector 4'), ('rogue-mega-starmie', 'Bleu Sector 9'), ('reach-rank-a', 'Lysandre Labs'), ('stop-ange-crisis', 'Centrico Plaza') $$, 'Legends: Z-A''s Main Story follows its walkthrough, each beat at its place, and in order');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 26
                AND mainline_categories.slug <> 'main-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestones.id $$, $$
            VALUES ('post-game'::text, 'infinite-za-royale'::text, 'Centrico Plaza'::text), ('side-content', 'the-one-that-gives', 'Wild Zone 11'), ('side-content', 'the-one-that-takes', 'Rouge Sector 2'), ('side-content', 'to-keep-the-world-in-balance', 'Wild Zone 20') $$, 'Legends: Z-A''s optional beats sit in their chapters, each at its place');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 26 ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestones.id, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('unlock-mega-evolution'::text, 'rogue-mega-absol'::text, 'Jaune Sector 6'::text), ('reach-rank-e', 'zygarde', 'Hotel Z') $$, 'Legends: Z-A''s battles fought away from their beat name their places');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 26 $$, $$
            VALUES (75, 42, 33) $$, 'Legends: Z-A''s roadmap has 75 steps: 42 places and its 33 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
