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
-- Scarlet / Violet ability change-point summaries.
-- Effect summary is intentionally concise; deeper simulator mechanics belong in docs.
-- ============================================================================

INSERT INTO reference.ability_attributes (ability_id, version_group_start_id, effect_summary)
VALUES
  -- Illuminate
  (35, 23, 'Prevents accuracy drops and ignores target evasion in Scarlet/Violet 2.0.1 and later.'),
  -- Snow Cloak
  (81, 23, 'Boosts evasion during snow.'),
  -- Ice Body
  (115, 23, 'Restores HP each turn during snow.'),
  -- Snow Warning
  (117, 23, 'Summons snow when entering battle.'),
  -- Protean
  (168, 23, 'Changes type to match the move it is about to use, once each time it enters battle.'),
  -- Slush Rush
  (202, 23, 'Doubles Speed during snow.'),
  -- Battle Bond
  (210, 23, 'After directly knocking out a Pokémon, raises Attack, Sp. Atk, and Speed once per battle.'),
  -- Intrepid Sword
  (234, 23, 'Raises Attack the first time the Pokémon enters battle.'),
  -- Dauntless Shield
  (235, 23, 'Raises Defense the first time the Pokémon enters battle.'),
  -- Libero
  (236, 23, 'Changes type to match the move it is about to use, once each time it enters battle.'),
  -- Transistor
  (262, 23, 'Boosts Electric-type move damage by about 30%.');
