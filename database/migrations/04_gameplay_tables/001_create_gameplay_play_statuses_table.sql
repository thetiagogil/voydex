-- ============================================================================
-- Table: gameplay.play_statuses
-- Lookup table for playthrough status values (active, paused, completed, dropped).
-- ============================================================================
CREATE TABLE
    gameplay.play_statuses (id INTEGER PRIMARY KEY, slug VARCHAR(20) NOT NULL UNIQUE, name VARCHAR(50) NOT NULL, is_terminal BOOLEAN NOT NULL DEFAULT FALSE, sort_order INTEGER NOT NULL, created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ());

-- Indexes
CREATE INDEX idx_play_statuses_slug ON gameplay.play_statuses (slug);

CREATE INDEX idx_play_statuses_sort ON gameplay.play_statuses (sort_order);

-- Comments
COMMENT ON TABLE gameplay.play_statuses IS 'Lookup table for play status values. is_terminal marks statuses where the play is finished.';