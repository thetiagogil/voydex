-- ============================================================================
-- Table: public.profiles
-- Auth-linked application profile data for Supabase users.
-- ============================================================================
CREATE TABLE public.profiles (
    id uuid PRIMARY KEY REFERENCES auth.users (id) ON DELETE CASCADE,
    display_name text,
    icon_form_id integer,
    default_trainer_name text,
    welcome_completed_at timestamptz,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT profiles_display_name_length_check CHECK (display_name IS NULL OR CHAR_LENGTH(BTRIM(display_name)) BETWEEN 1 AND 100),
    CONSTRAINT profiles_default_trainer_name_length_check CHECK (default_trainer_name IS NULL OR CHAR_LENGTH(BTRIM(default_trainer_name)) BETWEEN 1 AND 120)
);

CREATE TRIGGER set_profiles_updated_at
    BEFORE UPDATE ON public.profiles
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

COMMENT ON TABLE public.profiles IS 'Application profile row linked one-to-one with auth.users.';

COMMENT ON COLUMN public.profiles.id IS 'Supabase auth user ID.';

COMMENT ON COLUMN public.profiles.display_name IS 'User-controlled display name shown inside Voydex.';

COMMENT ON COLUMN public.profiles.icon_form_id IS 'The Pokémon form the trainer picked as their icon; its foreign key to reference.pokemon_forms is added once the reference tables exist.';

COMMENT ON COLUMN public.profiles.default_trainer_name IS 'Trainer name a new Play starts with; the display name stands in while this is empty.';

COMMENT ON COLUMN public.profiles.welcome_completed_at IS 'When Welcome was finished or skipped; empty while Welcome is still to show.';
