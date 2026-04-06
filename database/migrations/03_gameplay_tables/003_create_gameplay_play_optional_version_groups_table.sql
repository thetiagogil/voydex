-- ============================================================================
-- Table: gameplay.play_optional_version_groups
-- DLC opt-in per play. Only stores optional DLC version groups.
-- ============================================================================

CREATE TABLE gameplay.play_optional_version_groups (
  play_id           UUID NOT NULL REFERENCES gameplay.plays(id) ON DELETE CASCADE,
  version_group_id  INTEGER NOT NULL REFERENCES reference.version_groups(id),
  created_at        TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  PRIMARY KEY (play_id, version_group_id)
);

-- Indexes
CREATE INDEX idx_play_optional_vg_play ON gameplay.play_optional_version_groups (play_id);

-- Comments
COMMENT ON TABLE gameplay.play_optional_version_groups
  IS 'DLC opt-in per play. Stores ONLY optional DLC VGs (parent_version_group_id IS NOT NULL). Base VG is always implicit via play → game → version_group.';

-- ============================================================================
-- RLS: ownership via parent play
-- ============================================================================

ALTER TABLE gameplay.play_optional_version_groups ENABLE ROW LEVEL SECURITY;
ALTER TABLE gameplay.play_optional_version_groups FORCE ROW LEVEL SECURITY;

CREATE POLICY play_optional_vg_select ON gameplay.play_optional_version_groups
  FOR SELECT USING (
    EXISTS (SELECT 1 FROM gameplay.plays WHERE plays.id = play_id AND plays.user_id = auth.uid())
  );

CREATE POLICY play_optional_vg_insert ON gameplay.play_optional_version_groups
  FOR INSERT WITH CHECK (
    EXISTS (SELECT 1 FROM gameplay.plays WHERE plays.id = play_id AND plays.user_id = auth.uid())
  );

CREATE POLICY play_optional_vg_delete ON gameplay.play_optional_version_groups
  FOR DELETE USING (
    EXISTS (SELECT 1 FROM gameplay.plays WHERE plays.id = play_id AND plays.user_id = auth.uid())
  );

-- ============================================================================
-- Function: get_effective_version_group_ids(play_id)
-- Returns base VG (from game) UNION opted-in DLC VGs.
-- ============================================================================

CREATE OR REPLACE FUNCTION gameplay.get_effective_version_group_ids(p_play_id UUID)
RETURNS SETOF INTEGER
LANGUAGE SQL
STABLE
AS $$
  -- Base version group from the play's game
  SELECT g.version_group_id
  FROM gameplay.plays p
  JOIN reference.games g ON p.game_id = g.id
  WHERE p.id = p_play_id

  UNION ALL

  -- Optional DLC version groups
  SELECT povg.version_group_id
  FROM gameplay.play_optional_version_groups povg
  WHERE povg.play_id = p_play_id;
$$;

GRANT EXECUTE ON FUNCTION gameplay.get_effective_version_group_ids(UUID)
  TO authenticated, service_role;

COMMENT ON FUNCTION gameplay.get_effective_version_group_ids
  IS 'Returns effective VG IDs for a play: base VG UNION opted-in DLC VGs.';
