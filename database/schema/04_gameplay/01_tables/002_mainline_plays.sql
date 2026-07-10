-- ============================================================================
-- Table: gameplay.mainline_plays
-- User-owned Pokémon playthroughs.
-- ============================================================================
CREATE TABLE gameplay.mainline_plays (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid (),
    user_id uuid NOT NULL REFERENCES public.profiles (id) ON UPDATE CASCADE ON DELETE CASCADE,
    game_id integer NOT NULL,
    version_group_id integer NOT NULL,
    status_id integer NOT NULL REFERENCES gameplay.mainline_play_statuses (id) ON UPDATE CASCADE ON DELETE RESTRICT DEFAULT 1,
    name text NOT NULL,
    trainer_name text,
    platform_id integer REFERENCES reference.platforms (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    custom_platform_name text,
    started_on date,
    completed_on date,
    playtime_minutes integer,
    notes text,
    save_notes text,
    archived_at timestamptz,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT plays_game_version_group_fkey FOREIGN KEY (game_id, version_group_id) REFERENCES reference.games (id, version_group_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT plays_id_game_unique UNIQUE (id, game_id),
    CONSTRAINT plays_id_user_unique UNIQUE (id, user_id),
    CONSTRAINT plays_id_user_game_version_group_unique UNIQUE (id, user_id, game_id, version_group_id),
    CONSTRAINT plays_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 200),
    CONSTRAINT plays_trainer_name_length_check CHECK (trainer_name IS NULL OR CHAR_LENGTH(BTRIM(trainer_name)) BETWEEN 1 AND 120),
    CONSTRAINT plays_custom_platform_name_length_check CHECK (custom_platform_name IS NULL OR CHAR_LENGTH(BTRIM(custom_platform_name)) BETWEEN 1 AND 120),
    CONSTRAINT plays_custom_platform_without_platform_check CHECK (custom_platform_name IS NULL OR platform_id IS NULL),
    CONSTRAINT plays_completed_not_before_started_check CHECK (completed_on IS NULL OR started_on IS NULL OR completed_on >= started_on),
    CONSTRAINT plays_playtime_nonnegative_check CHECK (playtime_minutes IS NULL OR playtime_minutes >= 0),
    CONSTRAINT plays_notes_length_check CHECK (notes IS NULL OR CHAR_LENGTH(BTRIM(notes)) BETWEEN 1 AND 10000),
    CONSTRAINT plays_save_notes_length_check CHECK (save_notes IS NULL OR CHAR_LENGTH(BTRIM(save_notes)) BETWEEN 1 AND 10000)
);

CREATE TRIGGER set_plays_updated_at
    BEFORE UPDATE ON gameplay.mainline_plays
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

CREATE INDEX plays_user_updated_at_idx ON gameplay.mainline_plays (user_id, updated_at DESC);

CREATE INDEX plays_user_status_idx ON gameplay.mainline_plays (user_id, status_id);

CREATE INDEX plays_status_idx ON gameplay.mainline_plays (status_id);

CREATE INDEX plays_user_game_idx ON gameplay.mainline_plays (user_id, game_id);

CREATE INDEX plays_game_version_group_idx ON gameplay.mainline_plays (game_id, version_group_id);

CREATE INDEX plays_user_version_group_idx ON gameplay.mainline_plays (user_id, version_group_id);

CREATE INDEX plays_version_group_idx ON gameplay.mainline_plays (version_group_id);

CREATE INDEX plays_platform_idx ON gameplay.mainline_plays (platform_id)
WHERE
    platform_id IS NOT NULL;

CREATE INDEX plays_user_archived_idx ON gameplay.mainline_plays (user_id, archived_at);

COMMENT ON TABLE gameplay.mainline_plays IS 'Central user-owned playthrough/adventure entity.';

COMMENT ON COLUMN gameplay.mainline_plays.version_group_id IS 'Stored with game_id so optional content, tracking, and availability joins can use composite integrity.';

COMMENT ON COLUMN gameplay.mainline_plays.archived_at IS 'Archive marker separate from lifecycle status.';
