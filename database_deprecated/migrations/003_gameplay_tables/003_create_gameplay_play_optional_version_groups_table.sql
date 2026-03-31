-- =============================================================================
-- PLAY OPTIONAL VERSION GROUPS TABLE
-- DLC opt-in per play: stores ONLY optional DLC VGs
-- Base VG is always implicit (resolved via play → game → version_group)
-- =============================================================================

CREATE TABLE
  gameplay.play_optional_version_groups (
    play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE,
    version_group_id INTEGER NOT NULL REFERENCES meta.version_groups (id),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW (),
    PRIMARY KEY (play_id, version_group_id)
  );

CREATE INDEX idx_play_optional_vg_play ON gameplay.play_optional_version_groups (play_id);

COMMENT ON TABLE gameplay.play_optional_version_groups IS 'DLC opt-in per play. Stores ONLY optional DLC version groups (those with parent_version_group_id IS NOT NULL). Base VG is always implicit via play → game → version_group.';

-- =============================================================================
-- RLS POLICIES: play_optional_version_groups
-- Users can only manage optional DLC VGs for their own plays
-- =============================================================================

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

-- =============================================================================
-- HELPER FUNCTION: Get effective version group IDs for a play
-- Returns base VG (from game) UNION optional DLC VGs
-- =============================================================================

CREATE OR REPLACE FUNCTION gameplay.get_effective_version_group_ids(p_play_id UUID)
RETURNS SETOF INTEGER
LANGUAGE SQL
STABLE
AS $$
  -- Base version group from the play's game
  SELECT g.version_group_id
  FROM gameplay.plays p
  JOIN meta.games g ON p.game_id = g.id
  WHERE p.id = p_play_id
  UNION ALL
  -- Optional DLC version groups
  SELECT povg.version_group_id
  FROM gameplay.play_optional_version_groups povg
  WHERE povg.play_id = p_play_id;
$$;

GRANT EXECUTE ON FUNCTION gameplay.get_effective_version_group_ids(UUID) TO authenticated, service_role;

COMMENT ON FUNCTION gameplay.get_effective_version_group_ids IS 'Returns the effective version group IDs for a play: base VG (from game) UNION optional DLC VGs. Use in WHERE version_group_id IN (SELECT gameplay.get_effective_version_group_ids(play_id)).';
