CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Alola's island trials and Grand Trials hand out a Z-Crystal, stored as a
-- badge-like reward of kind z-crystal so each trial's stamp wears its type.
-- Only real badges count as a game's badges.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (6);
SELECT
    col_default_is ('tracking', 'mainline_badges', 'kind', 'badge', 'a badge is a Gym badge unless it says otherwise');
SELECT
    throws_ok ($$ UPDATE
            tracking.mainline_badges
        SET
            kind = 'ribbon'
            WHERE
                id = 15001 $$, '23514', NULL, 'a badge is a badge or a Z-Crystal');
SELECT
    results_eq ($$
        SELECT
            version_group_id, kind, COUNT(*)::integer FROM tracking.mainline_badges
            WHERE
                version_group_id IN (15, 16)
            GROUP BY version_group_id, kind ORDER BY version_group_id $$, $$
            VALUES (15, 'z-crystal'::text, 11), (16, 'z-crystal', 12) $$, 'Sun / Moon have 7 trials and 4 Grand Trials, Ultra Sun / Ultra Moon 8 and 4');
SELECT
    is_empty ($$
        SELECT
            id FROM tracking.mainline_badges
            WHERE
                kind <> 'badge'
                AND version_group_id NOT IN (15, 16) $$, 'every other game''s badges stay badges');
-- Each main trial and Grand Trial earns its own Z-Crystal, in its type.
SELECT
    results_eq ($$
        SELECT
            milestones.slug, badges.slug, types.slug FROM tracking.mainline_milestones AS milestones
            JOIN tracking.mainline_milestone_types AS milestone_types ON milestone_types.id = milestones.milestone_type_id
            LEFT JOIN tracking.mainline_milestone_badge_refs AS refs ON refs.milestone_id = milestones.id
            LEFT JOIN tracking.mainline_badges AS badges ON badges.id = refs.badge_id
            LEFT JOIN reference.types AS types ON types.id = badges.type_id
            WHERE
                milestones.version_group_id = 16
                AND milestone_types.slug IN ('trial', 'grand-trial')
            ORDER BY milestones.sort_order, milestones.id $$, $$
            VALUES ('ilima-trial', 'normalium-z', 'normal'), ('grand-trial-hala', 'fightinium-z', 'fighting'), ('lana-trial', 'waterium-z', 'water'), ('kiawe-trial', 'firium-z', 'fire'), ('mallow-trial', 'grassium-z', 'grass'), ('grand-trial-olivia', 'rockium-z', 'rock'), ('sophocles-trial', 'electrium-z', 'electric'), ('acerola-trial', 'ghostium-z', 'ghost'), ('grand-trial-nanu', 'darkinium-z', 'dark'), ('ilima-bonus-trial', NULL, NULL), ('vast-poni-canyon-trial', 'dragonium-z', 'dragon'), ('mina-trial', 'fairium-z', 'fairy'), ('grand-trial-hapu', 'groundium-z', 'ground') $$, 'Ultra Sun / Ultra Moon: each trial''s Z-Crystal, none for Ilima''s bonus trial');
SELECT
    is_empty ($$
        SELECT
            milestones.id FROM tracking.mainline_milestones AS milestones
            JOIN tracking.mainline_milestone_types AS milestone_types ON milestone_types.id = milestones.milestone_type_id
            WHERE
                milestones.version_group_id = 15
                AND milestone_types.slug IN ('trial', 'grand-trial')
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM tracking.mainline_milestone_badge_refs AS refs
                    WHERE
                        refs.milestone_id = milestones.id) $$, 'every Sun / Moon trial and Grand Trial earns a Z-Crystal');
SELECT
    *
FROM
    finish ();
ROLLBACK;
