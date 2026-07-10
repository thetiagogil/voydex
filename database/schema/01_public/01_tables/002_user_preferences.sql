-- ============================================================================
-- Table: public.user_preferences
-- User-level defaults that are not play-specific settings.
-- ============================================================================
CREATE TABLE public.user_preferences (
    user_id uuid PRIMARY KEY REFERENCES public.profiles (id) ON DELETE CASCADE,
    pokemon_reuse_scope text NOT NULL DEFAULT 'none',
    pokemon_reuse_behavior text NOT NULL DEFAULT 'warn',
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT user_preferences_reuse_scope_check CHECK (pokemon_reuse_scope IN ('none', 'form', 'species', 'evolution_family')),
    CONSTRAINT user_preferences_reuse_behavior_check CHECK (pokemon_reuse_behavior IN ('warn', 'filter', 'block')),
    CONSTRAINT user_preferences_none_scope_behavior_check CHECK (pokemon_reuse_scope <> 'none' OR pokemon_reuse_behavior = 'warn')
);

CREATE TRIGGER set_user_preferences_updated_at
    BEFORE UPDATE ON public.user_preferences
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

COMMENT ON TABLE public.user_preferences IS 'Global user defaults such as Pokémon reuse warning behavior.';

COMMENT ON COLUMN public.user_preferences.pokemon_reuse_scope IS 'Default reuse scope: none, form, species, or evolution_family.';

COMMENT ON COLUMN public.user_preferences.pokemon_reuse_behavior IS 'Default reuse behavior: warn, filter, or block.';
