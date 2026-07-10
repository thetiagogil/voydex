-- ============================================================================
-- Table: gameplay.mainline_challenge_rule_types
-- Challenge/rule category lookup.
-- ============================================================================
CREATE TABLE gameplay.mainline_challenge_rule_types (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT challenge_rule_types_id_positive_check CHECK (id > 0),
    CONSTRAINT challenge_rule_types_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:_[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT challenge_rule_types_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT challenge_rule_types_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE gameplay.mainline_challenge_rule_types IS 'Lookup for reusable challenge/rule mainline_categories.';
