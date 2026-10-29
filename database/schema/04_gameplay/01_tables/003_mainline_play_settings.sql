-- ============================================================================
-- Table: gameplay.mainline_play_settings
-- Play-specific completion and tracking settings.
-- ============================================================================
CREATE TABLE gameplay.mainline_play_settings (
    play_id uuid PRIMARY KEY REFERENCES gameplay.mainline_plays (id) ON UPDATE CASCADE ON DELETE CASCADE,
    story_tracking_enabled boolean NOT NULL DEFAULT TRUE,
    pokedex_tracking_enabled boolean NOT NULL DEFAULT TRUE,
    pokedex_mode text NOT NULL DEFAULT 'caught_and_seen',
    collectibles_tracking_enabled boolean NOT NULL DEFAULT TRUE,
    include_pokedex_in_completion boolean NOT NULL DEFAULT TRUE,
    include_collectibles_in_completion boolean NOT NULL DEFAULT TRUE,
    include_optional_pokedexes_in_completion boolean NOT NULL DEFAULT FALSE,
    include_optional_pokedex_entries_in_completion boolean NOT NULL DEFAULT TRUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_settings_pokedex_mode_check CHECK (pokedex_mode IN ('caught_only', 'caught_and_seen')),
    CONSTRAINT play_settings_collectibles_tracking_completion_check CHECK (collectibles_tracking_enabled OR NOT include_collectibles_in_completion),
    CONSTRAINT play_settings_tracking_completion_check CHECK (pokedex_tracking_enabled OR NOT include_pokedex_in_completion),
    CONSTRAINT play_settings_opt_dex_entries_requires_dex_completion_check CHECK (include_pokedex_in_completion OR NOT include_optional_pokedex_entries_in_completion),
    CONSTRAINT play_settings_opt_dexes_requires_dex_completion_check CHECK (include_pokedex_in_completion OR NOT include_optional_pokedexes_in_completion)
);

CREATE TRIGGER set_play_settings_updated_at
    BEFORE UPDATE ON gameplay.mainline_play_settings
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

COMMENT ON TABLE gameplay.mainline_play_settings IS 'Per-play settings that influence tracking and derived completion calculations.';

COMMENT ON COLUMN gameplay.mainline_play_settings.story_tracking_enabled IS 'When false, Story milestones are left out of the Play''s completion counts. Recorded progress is kept and returns when switched back on.';

COMMENT ON COLUMN gameplay.mainline_play_settings.pokedex_mode IS 'caught_only tracks caught Pokémon; caught_and_seen tracks both. Recorded seen state is kept either way.';

COMMENT ON COLUMN gameplay.mainline_play_settings.collectibles_tracking_enabled IS 'When false, collectible entries are left out of the Play''s completion counts and collectible tracking is off. Recorded progress is kept.';

COMMENT ON COLUMN gameplay.mainline_play_settings.include_optional_pokedexes_in_completion IS 'When true, optional Pokedex scopes such as National or special post-game Pokedexes count toward completion. DLC Pokedexes are controlled by selected optional content scopes.';

COMMENT ON COLUMN gameplay.mainline_play_settings.include_optional_pokedex_entries_in_completion IS 'When true, source-visible optional Pokedex entries count toward completion. Only meaningful when Pokedex completion is included.';

CREATE TRIGGER touch_play_after_change
    AFTER INSERT OR UPDATE OR DELETE ON gameplay.mainline_play_settings
    FOR EACH ROW
    EXECUTE FUNCTION private.touch_play ();
