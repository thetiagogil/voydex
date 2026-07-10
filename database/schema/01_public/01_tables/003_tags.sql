-- ============================================================================
-- Table: public.tags
-- User-owned reusable tags for mainline plays, plans, and play Pokémon.
-- ============================================================================
CREATE TABLE public.tags (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid (),
    user_id uuid NOT NULL REFERENCES public.profiles (id) ON DELETE CASCADE,
    slug text NOT NULL,
    name text NOT NULL,
    color_token text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT tags_user_slug_unique UNIQUE (user_id, slug),
    CONSTRAINT tags_id_user_unique UNIQUE (id, user_id),
    CONSTRAINT tags_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT tags_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 80),
    CONSTRAINT tags_color_token_length_check CHECK (color_token IS NULL OR CHAR_LENGTH(color_token) <= 80)
);

CREATE TRIGGER set_tags_updated_at
    BEFORE UPDATE ON public.tags
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

COMMENT ON TABLE public.tags IS 'User-owned tags that can be attached through typed join tables in gameplay and planning.';

COMMENT ON COLUMN public.tags.slug IS 'Stable user-scoped lowercase slug.';

COMMENT ON COLUMN public.tags.color_token IS 'Optional UI color token or swatch key.';
