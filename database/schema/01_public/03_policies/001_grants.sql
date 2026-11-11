-- ============================================================================
-- Grants: public schema
-- Your profiles, preferences and tags live only on the device (ADR 0008), where the one local
-- user owns every row, so these tables have no row security and the API
-- roles get nothing: hosted Supabase never serves them.
-- ============================================================================
REVOKE ALL ON TABLE public.profiles FROM anon, authenticated;

REVOKE ALL ON TABLE public.user_preferences FROM anon, authenticated;

REVOKE ALL ON TABLE public.tags FROM anon, authenticated;

GRANT ALL ON TABLE public.profiles TO service_role;

GRANT ALL ON TABLE public.user_preferences TO service_role;

GRANT ALL ON TABLE public.tags TO service_role;
