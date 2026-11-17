-- ============================================================================
-- Function: public.backup_folder_has_room()
-- Whether the signed-in account's backups folder holds fewer than five
-- files, the backups bucket's insert rule. Uploads take turns per account,
-- and the count runs after the turn starts, so it sees an upload that
-- finished meanwhile.
-- ============================================================================
CREATE FUNCTION public.backup_folder_has_room ()
    RETURNS boolean
    LANGUAGE plpgsql
    VOLATILE
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_folder text := (
        SELECT
            auth.uid ())::text;
BEGIN
    IF v_folder IS NULL THEN
        RETURN FALSE;
    END IF;
    PERFORM
        pg_advisory_xact_lock(hashtextextended('backup_files:' || v_folder, 0));
    RETURN (
        SELECT
            COUNT(*)
        FROM
            storage.objects
        WHERE
            bucket_id = 'backups'
            AND (storage.foldername (name))[1] = v_folder) < 5;
END;
$$;

REVOKE ALL ON FUNCTION public.backup_folder_has_room () FROM PUBLIC;

REVOKE ALL ON FUNCTION public.backup_folder_has_room () FROM anon;

GRANT EXECUTE ON FUNCTION public.backup_folder_has_room () TO authenticated, service_role;

COMMENT ON FUNCTION public.backup_folder_has_room () IS 'True while the signed-in account''s folder in the backups bucket holds fewer than five files; the bucket''s insert policy calls it. Runs as SECURITY INVOKER.';
