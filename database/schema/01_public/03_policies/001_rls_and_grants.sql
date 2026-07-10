-- ============================================================================
-- RLS/Grants: public schema
-- Enables user-owned access policies for profiles, preferences, and tags.
-- ============================================================================
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;

ALTER TABLE public.user_preferences ENABLE ROW LEVEL SECURITY;

ALTER TABLE public.tags ENABLE ROW LEVEL SECURITY;

REVOKE ALL ON TABLE public.profiles FROM anon, authenticated;

REVOKE ALL ON TABLE public.user_preferences FROM anon, authenticated;

REVOKE ALL ON TABLE public.tags FROM anon, authenticated;

GRANT SELECT, INSERT, UPDATE ON TABLE public.profiles TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.user_preferences TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.tags TO authenticated;

GRANT ALL ON TABLE public.profiles TO service_role;

GRANT ALL ON TABLE public.user_preferences TO service_role;

GRANT ALL ON TABLE public.tags TO service_role;

CREATE POLICY profiles_select_own ON public.profiles
    FOR SELECT TO authenticated
    USING ((
        SELECT
            auth.uid ()) = id);

CREATE POLICY profiles_insert_own ON public.profiles
    FOR INSERT TO authenticated
    WITH CHECK ((
        SELECT
            auth.uid ()) = id);

CREATE POLICY profiles_update_own ON public.profiles
    FOR UPDATE TO authenticated
    USING ((
        SELECT
            auth.uid ()) = id)
    WITH CHECK ((
        SELECT
            auth.uid ()) = id);

CREATE POLICY user_preferences_select_own ON public.user_preferences
    FOR SELECT TO authenticated
    USING ((
        SELECT
            auth.uid ()) = user_id);

CREATE POLICY user_preferences_insert_own ON public.user_preferences
    FOR INSERT TO authenticated
    WITH CHECK ((
        SELECT
            auth.uid ()) = user_id);

CREATE POLICY user_preferences_update_own ON public.user_preferences
    FOR UPDATE TO authenticated
    USING ((
        SELECT
            auth.uid ()) = user_id)
    WITH CHECK ((
        SELECT
            auth.uid ()) = user_id);

CREATE POLICY user_preferences_delete_own ON public.user_preferences
    FOR DELETE TO authenticated
    USING ((
        SELECT
            auth.uid ()) = user_id);

CREATE POLICY tags_select_own ON public.tags
    FOR SELECT TO authenticated
    USING ((
        SELECT
            auth.uid ()) = user_id);

CREATE POLICY tags_insert_own ON public.tags
    FOR INSERT TO authenticated
    WITH CHECK ((
        SELECT
            auth.uid ()) = user_id);

CREATE POLICY tags_update_own ON public.tags
    FOR UPDATE TO authenticated
    USING ((
        SELECT
            auth.uid ()) = user_id)
    WITH CHECK ((
        SELECT
            auth.uid ()) = user_id);

CREATE POLICY tags_delete_own ON public.tags
    FOR DELETE TO authenticated
    USING ((
        SELECT
            auth.uid ()) = user_id);
