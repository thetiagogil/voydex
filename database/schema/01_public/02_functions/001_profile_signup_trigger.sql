-- ============================================================================
-- Function: private.handle_new_user_profile()
-- Creates application profile and preference rows after Supabase auth signup.
-- ============================================================================
CREATE FUNCTION private.handle_new_user_profile ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SECURITY DEFINER
    SET search_path = ''
    AS $$
BEGIN
    INSERT INTO public.profiles (id)
        VALUES (NEW.id)
    ON CONFLICT (id)
        DO NOTHING;
    INSERT INTO public.user_preferences (user_id)
        VALUES (NEW.id)
    ON CONFLICT (user_id)
        DO NOTHING;
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.handle_new_user_profile () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.handle_new_user_profile () FROM anon;

REVOKE ALL ON FUNCTION private.handle_new_user_profile () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.handle_new_user_profile () TO service_role;

CREATE TRIGGER on_auth_user_created_create_voydex_profile
    AFTER INSERT ON auth.users
    FOR EACH ROW
    EXECUTE FUNCTION private.handle_new_user_profile ();

COMMENT ON FUNCTION private.handle_new_user_profile () IS 'Creates public.profiles and public.user_preferences rows for new auth.users records.';
