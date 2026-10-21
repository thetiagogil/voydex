-- ============================================================================
-- Table: public.user_preferences
-- User-level defaults that are not play-specific settings.
-- ============================================================================
CREATE TABLE public.user_preferences (
    user_id uuid PRIMARY KEY REFERENCES public.profiles (id) ON DELETE CASCADE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW()
);

CREATE TRIGGER set_user_preferences_updated_at
    BEFORE UPDATE ON public.user_preferences
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

COMMENT ON TABLE public.user_preferences IS 'Global user defaults that are not play-specific. Pokémon reuse is a Play''s No Pokémon reuse rule, not a preference.';
