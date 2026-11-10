-- ============================================================================
-- Function: public.add_user_backup
-- Records a new backup on top of the newest one its device merged, or
-- nothing when another device recorded one on top of it first: the device
-- then merges that one and tries again, so no device's changes are lost.
-- ============================================================================
CREATE FUNCTION public.add_user_backup (p_object_path text, p_format integer, p_saved_at timestamptz, p_byte_size integer, p_device_name text DEFAULT NULL, p_parent_id uuid DEFAULT NULL)
    RETURNS uuid
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_user_id uuid := auth.uid ();
    v_newest_id uuid;
    v_backup_id uuid;
BEGIN
    IF v_user_id IS NULL THEN
        RAISE EXCEPTION 'Log in to back up to your account'
            USING ERRCODE = '42501';
    END IF;
    -- One account's uploads take turns.
    PERFORM
        pg_advisory_xact_lock(hashtextextended('user_backups:' || v_user_id::text, 0));
    SELECT
        id
    INTO
        v_newest_id
    FROM
        public.user_backups
    WHERE
        user_id = v_user_id
    ORDER BY
        created_at DESC,
        id DESC
    LIMIT 1;
    IF v_newest_id IS DISTINCT FROM p_parent_id THEN
        RETURN NULL;
    END IF;
    INSERT INTO public.user_backups (user_id, object_path, format, saved_at, device_name, byte_size, created_at)
        VALUES (v_user_id, p_object_path, p_format, p_saved_at, p_device_name, p_byte_size, clock_timestamp())
    RETURNING
        id
    INTO
        v_backup_id;
    RETURN v_backup_id;
END;
$$;

REVOKE ALL ON FUNCTION public.add_user_backup (TEXT, INTEGER, TIMESTAMPTZ, INTEGER, TEXT, UUID) FROM PUBLIC;

REVOKE ALL ON FUNCTION public.add_user_backup (TEXT, INTEGER, TIMESTAMPTZ, INTEGER, TEXT, UUID) FROM anon;

GRANT EXECUTE ON FUNCTION public.add_user_backup (TEXT, INTEGER, TIMESTAMPTZ, INTEGER, TEXT, UUID) TO authenticated, service_role;

COMMENT ON FUNCTION public.add_user_backup (TEXT, INTEGER, TIMESTAMPTZ, INTEGER, TEXT, UUID) IS 'Records the signed-in account''s new backup only when p_parent_id is still its newest (null for none), taking turns per account; returns the new id, or null when another device recorded one first. The time it records orders the backups. Runs as SECURITY INVOKER.';
