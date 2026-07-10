-- ============================================================================
-- Table: public.profiles
-- Auth-linked application profile data for Supabase users.
-- ============================================================================
CREATE TABLE public.profiles (
    id uuid PRIMARY KEY REFERENCES auth.users (id) ON DELETE CASCADE,
    display_name text,
    avatar_url text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT profiles_display_name_length_check CHECK (display_name IS NULL OR CHAR_LENGTH(BTRIM(display_name)) BETWEEN 1 AND 100),
    CONSTRAINT profiles_avatar_url_length_check CHECK (avatar_url IS NULL OR CHAR_LENGTH(avatar_url) <= 2048)
);

CREATE TRIGGER set_profiles_updated_at
    BEFORE UPDATE ON public.profiles
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

COMMENT ON TABLE public.profiles IS 'Application profile row linked one-to-one with auth.users.';

COMMENT ON COLUMN public.profiles.id IS 'Supabase auth user ID.';

COMMENT ON COLUMN public.profiles.display_name IS 'User-controlled display name shown inside Voydex.';

COMMENT ON COLUMN public.profiles.avatar_url IS 'Optional user avatar URL.';
