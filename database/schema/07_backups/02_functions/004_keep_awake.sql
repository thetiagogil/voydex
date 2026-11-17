-- ============================================================================
-- Function: public.keep_awake()
-- A free hosted project pauses after a week with no database activity. A
-- scheduled GitHub job (.github/workflows/keep-awake.yml) calls this twice
-- a week with the publishable key; it reads nothing and returns the
-- database's time.
-- ============================================================================
CREATE FUNCTION public.keep_awake ()
    RETURNS timestamptz
    LANGUAGE sql
    STABLE
    SECURITY INVOKER
    SET search_path = ''
    AS $$
    SELECT
        NOW();
$$;

REVOKE ALL ON FUNCTION public.keep_awake () FROM PUBLIC;

GRANT EXECUTE ON FUNCTION public.keep_awake () TO anon, authenticated, service_role;

COMMENT ON FUNCTION public.keep_awake () IS 'The scheduled keep-awake ping: returns the database time and touches no table. Runs as SECURITY INVOKER.';
