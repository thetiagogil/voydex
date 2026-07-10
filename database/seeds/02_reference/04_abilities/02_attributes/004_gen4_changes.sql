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
-- Diamond / Pearl ability change-point summaries.
-- Effect summary is intentionally concise; deeper simulator mechanics belong in docs.
-- ============================================================================

INSERT INTO reference.ability_attributes (ability_id, version_group_start_id, effect_summary)
VALUES
  -- Volt Absorb
  (10, 8, 'Restores HP when hit by an Electric-type move.'),
  -- Flash Fire
  (18, 8, 'Grants immunity to Fire-type moves and powers up Fire moves after being hit by one.'),
  -- Shadow Tag
  (23, 8, 'Prevents opposing Pokémon from fleeing or switching, but does not trap Shadow Tag users.'),
  -- Rough Skin
  (24, 8, 'Contact deals 1/8 of the attacker''s maximum HP.'),
  -- Guts
  (62, 8, 'Boosts Attack while affected by any major status condition.');
