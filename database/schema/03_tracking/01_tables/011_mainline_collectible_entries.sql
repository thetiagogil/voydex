-- ============================================================================
-- Table: tracking.mainline_collectible_entries
-- Individual collectible entries.
-- ============================================================================
CREATE TABLE tracking.mainline_collectible_entries (
    id integer PRIMARY KEY,
    collectible_id integer NOT NULL REFERENCES tracking.mainline_collectibles (id) ON UPDATE CASCADE ON DELETE CASCADE,
    slug text NOT NULL,
    name text NOT NULL,
    location_label text,
    sub_location_label text,
    description text,
    sort_order integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT mainline_collectible_entries_id_positive_check CHECK (id > 0),
    CONSTRAINT mainline_collectible_entries_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 160),
    CONSTRAINT mainline_collectible_entries_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 200),
    CONSTRAINT mainline_collectible_entries_location_label_length_check CHECK (location_label IS NULL OR CHAR_LENGTH(BTRIM(location_label)) BETWEEN 1 AND 200),
    CONSTRAINT mainline_collectible_entries_sub_location_label_length_check CHECK (sub_location_label IS NULL OR CHAR_LENGTH(BTRIM(sub_location_label)) BETWEEN 1 AND 200),
    CONSTRAINT mainline_collectible_entries_description_length_check CHECK (description IS NULL OR CHAR_LENGTH(BTRIM(description)) BETWEEN 1 AND 2000),
    CONSTRAINT mainline_collectible_entries_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT mainline_collectible_entries_collectible_slug_unique UNIQUE (collectible_id, slug),
    CONSTRAINT mainline_collectible_entries_collectible_sort_order_unique UNIQUE (collectible_id, sort_order),
    CONSTRAINT mainline_collectible_entries_id_collectible_unique UNIQUE (id, collectible_id)
);

CREATE INDEX mainline_collectible_entries_collectible_idx ON tracking.mainline_collectible_entries (collectible_id);

COMMENT ON TABLE tracking.mainline_collectible_entries IS 'Individual curated collectible entries within a collectible group.';
