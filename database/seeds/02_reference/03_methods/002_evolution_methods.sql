-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product definition.
-- Cross-check: Bulbapedia, Serebii, and PokemonDB terminology.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Evolution method lookup rows used by evolution actions and source records.
-- ============================================================================
INSERT INTO reference.evolution_methods (id, slug, name, description, sort_order)
VALUES
  -- Level Up
  (1, 'level-up', 'Level Up', 'Evolution triggered by reaching a required level, optionally with additional conditions.', 1),
  -- Item
  (2, 'item', 'Item', 'Evolution triggered by using or holding a required item, optionally with additional conditions.', 2),
  -- Trade
  (3, 'trade', 'Trade', 'Evolution triggered by trading, optionally requiring a held item or source-defined condition.', 3),
  -- Friendship
  (4, 'friendship', 'Friendship', 'Evolution triggered by friendship or affection thresholds, optionally with timing or move conditions.', 4),
  -- Move Known
  (5, 'move-known', 'Move Known', 'Evolution triggered when the Pokémon knows a required move or move type.', 5),
  -- Location
  (6, 'location', 'Location', 'Evolution triggered in a specific place, area, or environment.', 6),
  -- Time of Day
  (7, 'time-of-day', 'Time of Day', 'Evolution triggered during a required time window, usually day or night.', 7),
  -- Gender-Specific
  (8, 'gender-specific', 'Gender-Specific', 'Evolution outcome or eligibility depends on the Pokémon gender.', 8),
  -- Special Condition
  (9, 'special-condition', 'Special Condition', 'Evolution depends on a special source-defined condition that is not represented cleanly by the broader method labels.', 9);
