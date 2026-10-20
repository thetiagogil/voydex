-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product definition.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Global gameplay lookup rows used by user-owned play tables.
-- ============================================================================

INSERT INTO gameplay.mainline_play_statuses (id, slug, name, is_terminal, sort_order)
VALUES
  (1, 'not_started', 'Not Started', false, 1),
  (2, 'playing', 'Playing', false, 2),
  (3, 'paused', 'Paused', false, 3),
  (4, 'completed', 'Completed', true, 4),
  (5, 'abandoned', 'Abandoned', true, 5);

INSERT INTO gameplay.mainline_play_pokemon_roster_states (id, slug, name, requires_slot, counts_toward_roster_limit, sort_order)
VALUES
  (1, 'active', 'Active', true, true, 1),
  (2, 'reserve', 'Reserve', true, true, 2),
  (3, 'retired', 'Retired', false, false, 3),
  (4, 'replaced', 'Replaced', false, false, 4);

INSERT INTO gameplay.mainline_play_event_origins (id, slug, name, sort_order)
VALUES
  (1, 'manual', 'Manual', 1),
  (2, 'recorded_action', 'Recorded Action', 2),
  (3, 'milestone_completion', 'Milestone Completion', 3),
  (4, 'hall_of_fame', 'Hall of Fame', 4),
  (5, 'import', 'Import', 5);

INSERT INTO gameplay.mainline_play_event_types (id, slug, name, sort_order)
VALUES
  (1, 'story_milestone', 'Story Milestone', 1),
  (2, 'pokemon_added', 'Pokémon Added', 2),
  (3, 'pokemon_evolved', 'Pokémon Evolved', 3),
  (4, 'pokemon_retired', 'Pokémon Retired', 4),
  (5, 'pokemon_replaced', 'Pokémon Replaced', 5),
  (6, 'pokemon_form_changed', 'Pokémon Form Changed', 6),
  (7, 'hall_of_fame', 'Hall of Fame', 7),
  (8, 'journal_note', 'Journal Note', 8),
  (9, 'status_change', 'Status Change', 9);

INSERT INTO gameplay.mainline_challenge_rule_types (id, slug, name, sort_order)
VALUES
  (1, 'catching', 'Catching', 1),
  (2, 'losing', 'Losing', 2),
  (3, 'team', 'Team', 3),
  (4, 'battles', 'Battles', 4),
  (5, 'custom', 'Custom', 5);

INSERT INTO gameplay.user_game_library_statuses (id, slug, name, sort_order)
VALUES
  (1, 'want_to_play', 'Want to Play', 1),
  (2, 'planned', 'Planned', 2),
  (3, 'playing', 'Playing', 3),
  (4, 'completed', 'Completed', 4),
  (5, 'skipped', 'Skipped', 5);
