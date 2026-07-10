-- ============================================================================
-- Function: private.set_updated_at()
-- Shared trigger function for updated_at timestamp maintenance.
-- ============================================================================
CREATE FUNCTION private.set_updated_at ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SET search_path = ''
    AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.set_updated_at () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.set_updated_at () FROM anon;

REVOKE ALL ON FUNCTION private.set_updated_at () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.set_updated_at () TO service_role;

COMMENT ON FUNCTION private.set_updated_at () IS 'Trigger function that updates updated_at before row updates.';
