-- ============================================================================
-- Function: private.cap_user_backups()
-- An account holds at most five backup rows: the three the app keeps, the
-- one being saved and one from another device saving at the same moment.
-- Inserts take turns per account (the lock add_user_backup takes), so
-- several at once can't slip past the count.
-- ============================================================================
CREATE FUNCTION private.cap_user_backups ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
BEGIN
    PERFORM
        pg_advisory_xact_lock(hashtextextended('user_backups:' || NEW.user_id::text, 0));
    IF (
        SELECT
            COUNT(*)
        FROM
            public.user_backups
        WHERE
            user_id = NEW.user_id) >= 5 THEN
        RAISE EXCEPTION 'This account already holds five backups'
            USING ERRCODE = '54000';
    END IF;
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.cap_user_backups () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.cap_user_backups () FROM anon;

REVOKE ALL ON FUNCTION private.cap_user_backups () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.cap_user_backups () TO service_role;

CREATE TRIGGER user_backups_cap
    BEFORE INSERT ON public.user_backups
    FOR EACH ROW
    EXECUTE FUNCTION private.cap_user_backups ();

COMMENT ON FUNCTION private.cap_user_backups () IS 'Refuses a sixth backup row for one account, taking turns per account. Runs as SECURITY INVOKER.';
