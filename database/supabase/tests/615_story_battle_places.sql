CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- A Story battle fought away from its milestone's place shows on the route
-- at the place where it is fought, and only there. So that place has to be a
-- step on the way to the milestone (after the required milestone before it),
-- and the milestone has to be a required one, which is what the way leads
-- to. A battle that breaks this would show nowhere in Story.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (1);
SELECT
    is_empty ($$
        SELECT
            milestones.version_group_id, milestones.slug, opponents.slug FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_milestones AS milestones ON milestones.id = refs.milestone_id
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            JOIN tracking.mainline_roadmap_steps AS beat ON beat.milestone_id = milestones.id
            WHERE
                refs.location_id IS NOT NULL
                AND refs.location_id <> milestones.location_id
                AND (NOT milestones.is_required_for_completion
                    OR NOT EXISTS (
                        SELECT
                            1
                        FROM tracking.mainline_roadmap_steps AS place
                        WHERE
                            place.version_group_id = beat.version_group_id
                            AND place.location_id = refs.location_id
                            AND place.sort_order < beat.sort_order
                            AND place.sort_order > COALESCE((
                                SELECT
                                    MAX(earlier.sort_order)
                            FROM tracking.mainline_roadmap_steps AS earlier
                            JOIN tracking.mainline_milestones AS before ON before.id = earlier.milestone_id
                            WHERE
                                earlier.version_group_id = beat.version_group_id
                                AND earlier.sort_order < beat.sort_order
                                AND before.is_required_for_completion
                                AND (before.game_id IS NULL
                                    OR milestones.game_id IS NULL
                                    OR before.game_id = milestones.game_id)), 0))) $$, 'every battle fought away from its milestone is on a place the way to that milestone passes');
SELECT
    *
FROM
    finish ();
ROLLBACK;
