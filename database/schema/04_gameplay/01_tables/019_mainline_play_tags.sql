-- ============================================================================
-- Table: gameplay.mainline_play_tags
-- Tags attached to mainline_plays.
-- ============================================================================
CREATE TABLE gameplay.mainline_play_tags (
    play_id uuid NOT NULL,
    tag_id uuid NOT NULL,
    user_id uuid NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_tags_primary_key PRIMARY KEY (play_id, tag_id),
    CONSTRAINT play_tags_play_user_fkey FOREIGN KEY (play_id, user_id) REFERENCES gameplay.mainline_plays (id, user_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT play_tags_tag_user_fkey FOREIGN KEY (tag_id, user_id) REFERENCES public.tags (id, user_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE INDEX play_tags_play_user_idx ON gameplay.mainline_play_tags (play_id, user_id);

CREATE INDEX play_tags_tag_user_idx ON gameplay.mainline_play_tags (tag_id, user_id);

COMMENT ON TABLE gameplay.mainline_play_tags IS 'Typed tag links for mainline_plays. user_id enforces tag ownership matches play ownership.';
