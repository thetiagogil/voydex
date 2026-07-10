-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product definition.
-- Cross-check: Bulbapedia, Serebii, and PokemonDB terminology.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Move learn method lookup rows.
-- ============================================================================
INSERT INTO reference.learn_methods (id, slug, name, description, sort_order)
VALUES
  -- Level Up
  (1, 'level_up', 'Level Up', 'Move learned naturally by leveling up in the selected game or version group.', 1),
  -- TM
  (2, 'tm', 'TM', 'Move learned from a Technical Machine in the selected game or version group.', 2),
  -- HM
  (3, 'hm', 'HM', 'Move learned from a Hidden Machine in games where HMs exist.', 3),
  -- TR
  (4, 'tr', 'TR', 'Move learned from a Technical Record in games where TRs exist.', 4),
  -- Egg Move
  (5, 'egg', 'Egg Move', 'Move inherited or obtained through breeding or egg-move mechanics.', 5),
  -- Move Tutor
  (6, 'tutor', 'Move Tutor', 'Move learned from a move tutor, NPC, or equivalent tutor system.', 6),
  -- Evolution
  (7, 'evolution', 'Evolution', 'Move learned automatically or conditionally when the Pokémon evolves.', 7),
  -- Starting Move
  (8, 'starting_move', 'Starting Move', 'Move known at the Pokémon starting level or on acquisition.', 8),
  -- Move Reminder
  (9, 'reminder', 'Move Reminder', 'Move available through reminder, relearn, or memory systems.', 9),
  -- Event
  (10, 'event', 'Event', 'Move available only from an official event, distribution, or event-specific Pokémon.', 10),
  -- Transfer
  (11, 'transfer', 'Transfer', 'Move retained or made available only through transfer from another game or generation.', 11),
  -- Special Move
  (12, 'special', 'Special Move', 'Move available through a game-specific special move system outside standard level, machine, tutor, event, or transfer acquisition.', 12);
