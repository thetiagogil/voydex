-- ============================================================================
-- Table: public.user_preferences
-- User-level defaults that are not play-specific settings.
-- ============================================================================
CREATE TABLE public.user_preferences (
    user_id uuid PRIMARY KEY REFERENCES public.profiles (id) ON DELETE CASCADE,
    default_track_story boolean NOT NULL DEFAULT TRUE,
    default_pokedex_mode text NOT NULL DEFAULT 'caught_and_seen',
    default_track_collectibles boolean NOT NULL DEFAULT TRUE,
    motion text NOT NULL DEFAULT 'system',
    search_filters_open boolean NOT NULL DEFAULT FALSE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT user_preferences_default_pokedex_mode_check CHECK (default_pokedex_mode IN ('caught_only', 'caught_and_seen')),
    CONSTRAINT user_preferences_motion_check CHECK (motion IN ('full', 'reduced', 'system'))
);

CREATE TRIGGER set_user_preferences_updated_at
    BEFORE UPDATE ON public.user_preferences
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

COMMENT ON TABLE public.user_preferences IS 'Global user defaults that are not play-specific. Pokémon reuse is a Play''s No Pokémon reuse rule, not a preference.';

COMMENT ON COLUMN public.user_preferences.default_track_story IS 'New Play default: whether the Play tracks Story milestones.';

COMMENT ON COLUMN public.user_preferences.default_pokedex_mode IS 'New Play default Pokédex mode: caught_only tracks caught Pokémon, caught_and_seen tracks both.';

COMMENT ON COLUMN public.user_preferences.default_track_collectibles IS 'New Play default: whether the Play tracks collectibles.';

COMMENT ON COLUMN public.user_preferences.motion IS 'Motion preference: full, reduced, or system (follow the device setting).';

COMMENT ON COLUMN public.user_preferences.search_filters_open IS 'Whether lists show their search and filter bar on arrival (Always open) instead of folding it away (Folded).';
