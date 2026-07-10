-- ============================================================================
-- Table: gameplay.mainline_challenge_rules
-- Predefined and user-authored play/plan rules.
-- ============================================================================
CREATE TABLE gameplay.mainline_challenge_rules (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid (),
    user_id uuid REFERENCES public.profiles (id) ON UPDATE CASCADE ON DELETE CASCADE,
    rule_type_id integer NOT NULL REFERENCES gameplay.mainline_challenge_rule_types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    slug text NOT NULL,
    name text NOT NULL,
    description text,
    config jsonb NOT NULL DEFAULT '{}'::jsonb,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT challenge_rules_id_user_unique UNIQUE (id, user_id),
    CONSTRAINT challenge_rules_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:_[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 120),
    CONSTRAINT challenge_rules_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 160),
    CONSTRAINT challenge_rules_description_length_check CHECK (description IS NULL OR CHAR_LENGTH(BTRIM(description)) BETWEEN 1 AND 5000),
    CONSTRAINT challenge_rules_config_object_check CHECK (jsonb_typeof(config) = 'object')
);

CREATE TRIGGER set_challenge_rules_updated_at
    BEFORE UPDATE ON gameplay.mainline_challenge_rules
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

CREATE UNIQUE INDEX challenge_rules_predefined_slug_unique ON gameplay.mainline_challenge_rules (slug)
WHERE
    user_id IS NULL;

CREATE UNIQUE INDEX challenge_rules_user_slug_unique ON gameplay.mainline_challenge_rules (user_id, slug)
WHERE
    user_id IS NOT NULL;

CREATE INDEX challenge_rules_user_idx ON gameplay.mainline_challenge_rules (user_id)
WHERE
    user_id IS NOT NULL;

CREATE INDEX challenge_rules_rule_type_idx ON gameplay.mainline_challenge_rules (rule_type_id);

COMMENT ON TABLE gameplay.mainline_challenge_rules IS 'Reusable predefined rules and user-authored descriptive rules for mainline_plays and plans.';

COMMENT ON COLUMN gameplay.mainline_challenge_rules.user_id IS 'NULL for predefined product rules; set for custom user rules.';

COMMENT ON COLUMN gameplay.mainline_challenge_rules.config IS 'Structured rule configuration for enforceable or summarizable rules.';
