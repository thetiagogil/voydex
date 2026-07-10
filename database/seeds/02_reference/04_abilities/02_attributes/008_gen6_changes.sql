-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB ability list and ability pages for concise effect summaries.
-- Cross-check: Bulbapedia ability pages for generation/version behavior changes.
-- Sanity: PokeAPI ability changelog CSV for older machine-readable change hints.
-- Scope: product-facing summaries for mainline playthrough-game abilities.
-- ============================================================================
-- File Scope
-- ============================================================================
-- X / Y ability change-point summaries.
-- Effect summary is intentionally concise; deeper simulator mechanics belong in docs.
-- ============================================================================

INSERT INTO reference.ability_attributes (ability_id, version_group_start_id, effect_summary)
VALUES
  -- Drizzle
  (2, 13, 'Summons rain for 5 turns when entering battle, or 8 turns with Damp Rock.'),
  -- Oblivious
  (12, 13, 'Prevents infatuation and Taunt.'),
  -- Sand Stream
  (45, 13, 'Summons a sandstorm for 5 turns when entering battle, or 8 turns with Smooth Rock.'),
  -- Drought
  (70, 13, 'Summons harsh sunlight for 5 turns when entering battle, or 8 turns with Heat Rock.'),
  -- Snow Warning
  (117, 13, 'Summons hail for 5 turns when entering battle, or 8 turns with Icy Rock.'),
  -- Overcoat
  (142, 13, 'Protects from weather damage and powder or spore moves.'),
  -- Infiltrator
  (151, 13, 'Passes through substitutes and protective barriers such as Reflect, Light Screen, and Safeguard.'),
  -- Prankster
  (158, 13, 'Gives status moves +1 priority; Quick Guard can block the boosted moves.');
