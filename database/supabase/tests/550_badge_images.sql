CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Badge pictures: a badge's sprite_slug names its picture on the assets site
-- (badges/<sprite_slug>.webp). Every gym badge has one; a badge that comes
-- back in a later game keeps its name, and Galar's and Paldea's badges carry
-- their region so a Grass Badge from one never shows the other's picture.
-- The app shows a picture only for a gym, so Alola's Z-Crystals never ask
-- for one.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (5);
SELECT
    is_empty ($$
        SELECT
            id FROM tracking.mainline_badges
            WHERE
                kind = 'badge'
                AND sprite_slug IS NULL $$, 'every gym badge names its picture');
SELECT
    IS ((
            SELECT
                COUNT(DISTINCT sprite_slug)::integer
            FROM
                tracking.mainline_badges
            WHERE
                kind = 'badge'), 68, '68 gym badge pictures, one per design');
SELECT
    results_eq ($$ SELECT DISTINCT
            version_group_id, name, sprite_slug FROM tracking.mainline_badges
            WHERE
                name IN ('Grass Badge', 'Bug Badge', 'Boulder Badge')
                AND version_group_id IN (1, 13, 17, 18, 23)
            ORDER BY version_group_id, name $$, $$
            VALUES (1, 'Boulder Badge', 'boulder-badge'), (13, 'Bug Badge', 'bug-badge'), (17, 'Boulder Badge', 'boulder-badge'), (18, 'Grass Badge', 'galar-grass-badge'), (23, 'Bug Badge', 'paldea-bug-badge'), (23, 'Grass Badge', 'paldea-grass-badge') $$, 'a returning badge keeps its picture; Galar and Paldea name theirs by region');
SELECT
    is_empty ($$
        SELECT
            sprite_slug FROM tracking.mainline_badges
            WHERE
                kind = 'badge' GROUP BY sprite_slug
            HAVING
                COUNT(DISTINCT name) > 1 $$, 'one picture never stands for two badges');
SELECT
    is_empty ($$
        SELECT
            mainline_milestones.id FROM tracking.mainline_milestone_badge_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_badge_refs.milestone_id
            JOIN tracking.mainline_milestone_types ON mainline_milestone_types.id = mainline_milestones.milestone_type_id
            JOIN tracking.mainline_badges ON mainline_badges.id = mainline_milestone_badge_refs.badge_id
                AND mainline_badges.version_group_id = mainline_milestone_badge_refs.version_group_id
            WHERE (mainline_milestone_types.slug = 'gym') <> (mainline_badges.kind = 'badge') $$, 'only a gym hands out a badge, so only a gym shows a picture');
SELECT
    *
FROM
    finish ();
ROLLBACK;
