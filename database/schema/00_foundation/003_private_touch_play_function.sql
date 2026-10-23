-- ============================================================================
-- Function: private.touch_play
-- Trigger function that moves a Play's updated_at to now when anything that
-- belongs to it changes, so "recent activity" is the Play's latest change.
-- ============================================================================
CREATE FUNCTION private.touch_play ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SECURITY DEFINER
    SET search_path = ''
    AS $$
BEGIN
    /* NOW() is the transaction's start, so a write touching many rows moves the Play once. */
    UPDATE
        gameplay.mainline_plays
    SET
        updated_at = NOW()
    WHERE
        id = CASE WHEN TG_OP = 'DELETE' THEN
            OLD.play_id
        ELSE
            NEW.play_id
    END
        AND updated_at < NOW();
    RETURN NULL;
END;
$$;

REVOKE ALL ON FUNCTION private.touch_play () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.touch_play () FROM anon;

REVOKE ALL ON FUNCTION private.touch_play () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.touch_play () TO service_role;

COMMENT ON FUNCTION private.touch_play () IS 'After-change trigger for tables that hold a play_id: moves that Play''s updated_at to now, once per transaction.';
