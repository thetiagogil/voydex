-- A Story roadmap step can belong to one game of its version group (Ruby's
-- Team Magma Hideout, Sapphire's Team Aqua Hideout); a Play of the other
-- game skips it. The game data that fills it arrives with the next swap.
ALTER TABLE tracking.mainline_roadmap_steps
    ADD COLUMN game_id integer;

ALTER TABLE tracking.mainline_roadmap_steps
    ADD CONSTRAINT mainline_roadmap_steps_game_scope_fkey FOREIGN KEY (game_id, version_group_id) REFERENCES reference.game_content_scopes (game_id, version_group_id) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE tracking.mainline_roadmap_steps
    ADD CONSTRAINT mainline_roadmap_steps_game_place_check CHECK (game_id IS NULL OR location_id IS NOT NULL);

COMMENT ON COLUMN tracking.mainline_roadmap_steps.game_id IS 'Set on a place step found in only one game of the version group (Team Magma''s hideout in Ruby, Team Aqua''s in Sapphire); a Play of the other game skips it. NULL for a step every game shares.';
