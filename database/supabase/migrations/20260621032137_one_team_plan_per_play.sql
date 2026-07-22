-- Enforce a single linked team plan per mainline play.
--
-- The generated baseline now contains the final link function and Plan detail
-- view. Keep this historical migration limited to its durable table invariant
-- so local baseline replays do not restore superseded workflow objects.

DO $$
BEGIN
    IF EXISTS (
        SELECT
            1
        FROM
            information_schema.columns
        WHERE
            table_schema = 'planning'
            AND table_name = 'mainline_play_plan_links'
            AND column_name = 'is_primary'
) THEN
        EXECUTE $_cleanup_$
            WITH ranked_play_plan_links AS (
                SELECT
                    id,
                    ROW_NUMBER() OVER (
                        PARTITION BY play_id
                        ORDER BY is_primary DESC, created_from_plan DESC, created_at ASC, id ASC
                    ) AS link_rank
                FROM planning.mainline_play_plan_links
            )
            DELETE FROM planning.mainline_play_plan_links
            USING ranked_play_plan_links
            WHERE mainline_play_plan_links.id = ranked_play_plan_links.id
              AND ranked_play_plan_links.link_rank > 1
        $_cleanup_$;
    END IF;
END;
$$;

DROP INDEX IF EXISTS planning.play_plan_links_primary_play_unique;

ALTER TABLE planning.mainline_play_plan_links
    DROP CONSTRAINT IF EXISTS play_plan_links_play_plan_unique,
    DROP COLUMN IF EXISTS is_primary;

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT
            1
        FROM
            pg_constraint
        WHERE
            conname = 'play_plan_links_play_unique'
            AND conrelid = 'planning.mainline_play_plan_links'::regclass
    ) THEN
        ALTER TABLE planning.mainline_play_plan_links
            ADD CONSTRAINT play_plan_links_play_unique UNIQUE (play_id);
    END IF;
END;
$$;

COMMENT ON TABLE planning.mainline_play_plan_links IS 'Links each play to zero or one reusable team plan while enforcing that the play and plan share owner, game, and version group.';

COMMENT ON COLUMN planning.mainline_play_plan_links.created_from_plan IS 'True when the play was originally created from the linked plan.';
