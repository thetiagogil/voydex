-- ============================================================================
-- RLS/Grants: account backups
-- Each account reads, adds and deletes only its own backups, in the table
-- and in its folder of the private backups bucket. Nothing changes a
-- backup: a new one is a new file.
-- ============================================================================
ALTER TABLE public.user_backups ENABLE ROW LEVEL SECURITY;

REVOKE ALL ON TABLE public.user_backups FROM anon, authenticated;

GRANT SELECT, INSERT, DELETE ON TABLE public.user_backups TO authenticated;

GRANT ALL ON TABLE public.user_backups TO service_role;

CREATE POLICY user_backups_select_own ON public.user_backups
    FOR SELECT TO authenticated
    USING ((
        SELECT
            auth.uid ()) = user_id);

CREATE POLICY user_backups_insert_own ON public.user_backups
    FOR INSERT TO authenticated
    WITH CHECK ((
        SELECT
            auth.uid ()) = user_id);

CREATE POLICY user_backups_delete_own ON public.user_backups
    FOR DELETE TO authenticated
    USING ((
        SELECT
            auth.uid ()) = user_id);

-- The files: gzipped JSON, at most 20 MB each, in the owner's folder. A
-- reset keeps storage's own tables, so the bucket may already be there.
INSERT INTO storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
    VALUES ('backups', 'backups', FALSE, 20971520, ARRAY['application/gzip'])
ON CONFLICT (id)
    DO UPDATE SET
        public = EXCLUDED.public,
        file_size_limit = EXCLUDED.file_size_limit,
        allowed_mime_types = EXCLUDED.allowed_mime_types;

CREATE POLICY backups_select_own ON storage.objects
    FOR SELECT TO authenticated
    USING (bucket_id = 'backups'
        AND (storage.foldername (name))[1] = (
            SELECT
                auth.uid ())::text);

CREATE POLICY backups_insert_own ON storage.objects
    FOR INSERT TO authenticated
    WITH CHECK (bucket_id = 'backups'
    AND (storage.foldername (name))[1] = (
        SELECT
            auth.uid ())::text);

CREATE POLICY backups_delete_own ON storage.objects
    FOR DELETE TO authenticated
    USING (bucket_id = 'backups'
        AND (storage.foldername (name))[1] = (
            SELECT
                auth.uid ())::text);
