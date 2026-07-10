-- ============================================================================
-- Table: reference.platforms
-- Known platforms/consoles usable in play metadata.
-- ============================================================================
CREATE TABLE reference.platforms (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    manufacturer text,
    platform_kind text NOT NULL,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT platforms_id_positive_check CHECK (id > 0),
    CONSTRAINT platforms_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT platforms_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT platforms_manufacturer_length_check CHECK (manufacturer IS NULL OR CHAR_LENGTH(BTRIM(manufacturer)) BETWEEN 1 AND 120),
    CONSTRAINT platforms_kind_check CHECK (platform_kind IN ('console', 'handheld', 'hybrid', 'service', 'emulator')),
    CONSTRAINT platforms_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE reference.platforms IS 'Known consoles, services, and emulator labels for play metadata and stats.';

COMMENT ON COLUMN reference.platforms.platform_kind IS 'Platform grouping used for filtering and stats.';
