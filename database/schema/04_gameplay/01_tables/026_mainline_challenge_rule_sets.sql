-- ============================================================================
-- Table: gameplay.mainline_challenge_rule_sets
-- Presets: named groups of challenge rules, Voydex's own and user-authored.
-- ============================================================================
CREATE TABLE gameplay.mainline_challenge_rule_sets (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid (),
    user_id uuid REFERENCES public.profiles (id) ON UPDATE CASCADE ON DELETE CASCADE,
    slug text NOT NULL,
    name text NOT NULL,
    description text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT challenge_rule_sets_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:_[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 120),
    CONSTRAINT challenge_rule_sets_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 160),
    CONSTRAINT challenge_rule_sets_description_length_check CHECK (description IS NULL OR CHAR_LENGTH(BTRIM(description)) BETWEEN 1 AND 5000)
);

CREATE TRIGGER set_challenge_rule_sets_updated_at
    BEFORE UPDATE ON gameplay.mainline_challenge_rule_sets
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

CREATE UNIQUE INDEX challenge_rule_sets_predefined_slug_unique ON gameplay.mainline_challenge_rule_sets (slug)
WHERE
    user_id IS NULL;

CREATE UNIQUE INDEX challenge_rule_sets_user_slug_unique ON gameplay.mainline_challenge_rule_sets (user_id, slug)
WHERE
    user_id IS NOT NULL;

CREATE INDEX challenge_rule_sets_user_idx ON gameplay.mainline_challenge_rule_sets (user_id)
WHERE
    user_id IS NOT NULL;

COMMENT ON TABLE gameplay.mainline_challenge_rule_sets IS 'Presets: named groups of challenge rules (a Nuzlocke) that a Play takes in one go. Adding one to a Play adds its rules; the Play keeps no link to the set.';

COMMENT ON COLUMN gameplay.mainline_challenge_rule_sets.user_id IS 'NULL for Voydex''s own presets; set for a user''s own.';
