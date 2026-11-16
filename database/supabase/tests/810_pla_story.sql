CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Legends: Arceus's Story in the pattern: each beat at its place and on the
-- roadmap once, the nobles at their arenas, and the battles on the way to
-- them named where they are fought.
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
                mainline_milestones.version_group_id = 22
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order, mainline_milestones.id $$, $$
            VALUES ('choose-starter'::text, 'Jubilife Village'::text), ('receive-pokedex', 'Jubilife Village'), ('noble-kleavor', 'Grandtree Arena'), ('noble-lilligant', 'Brava Arena'), ('noble-arcanine', 'Molten Arena'), ('noble-electrode', 'Moonview Arena'), ('noble-avalugg', 'Icepeak Arena'), ('choose-clan-leader', 'Ancient Retreat'), ('commander-kamado', 'Temple of Sinnoh'), ('origin-pokemon', 'Temple of Sinnoh') $$, 'Legends: Arceus''s Main Story follows its walkthrough, each beat at its place, and in order');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 22
                AND mainline_categories.slug <> 'main-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestones.id $$, $$
            VALUES ('post-game'::text, 'plate-of-the-lakes'::text, 'Lake Verity'::text), ('post-game', 'plate-of-firespit-island', 'Firespit Island'), ('post-game', 'plate-of-moonview-arena', 'Moonview Arena'), ('post-game', 'plate-of-snowpoint-temple', 'Snowpoint Temple'), ('post-game', 'defeat-volo', 'Temple of Sinnoh'), ('post-game', 'meet-arceus', 'Temple of Sinnoh'), ('side-content', 'the-seas-legend', 'Seaside Hollow'), ('side-content', 'on-the-trail-of-giratina', 'Turnback Cave'), ('side-content', 'incarnate-forces', 'Ancient Retreat') $$, 'Legends: Arceus''s optional beats sit in their chapters, each at its place');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 22 ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestones.id, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('noble-kleavor'::text, 'akari-rei'::text, 'Jubilife Village'::text), ('noble-kleavor', 'mai', 'Deertrack Path'), ('noble-lilligant', 'akari-rei', 'Jubilife Village'), ('noble-lilligant', 'coin', 'Golden Lowlands'), ('noble-lilligant', 'volo', 'Solaceon Ruins'), ('noble-electrode', 'adaman', 'Jubilife Village'), ('noble-electrode', 'ingo', 'Clamberclaw Cliffs'), ('noble-avalugg', 'akari-rei', 'Jubilife Village'), ('noble-avalugg', 'gaeric', 'Avalugg''s Legacy'), ('noble-avalugg', 'sabi', 'Snowpoint Temple'), ('commander-kamado', 'beni', 'Stone Portal') $$, 'Legends: Arceus''s battles fought away from their beat name their places');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 22 $$, $$
            VALUES (112, 93, 19) $$, 'Legends: Arceus''s roadmap has 112 steps: 93 places and its 19 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
