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
-- Sword / Shield ability change-point summaries.
-- Effect summary is intentionally concise; deeper simulator mechanics belong in docs.
-- ============================================================================

INSERT INTO reference.ability_attributes (ability_id, version_group_start_id, effect_summary)
VALUES
  -- Oblivious
  (12, 18, 'Prevents infatuation, Taunt, and Intimidate.'),
  -- Own Tempo
  (20, 18, 'Prevents confusion and Intimidate.'),
  -- Inner Focus
  (39, 18, 'Prevents flinching and Intimidate.'),
  -- Scrappy
  (113, 18, 'Allows Normal- and Fighting-type moves to hit Ghost-type Pokémon and blocks Intimidate.'),
  -- Moody
  (141, 18, 'At the end of each turn, raises one stat and lowers another, excluding accuracy and evasion.'),
  -- Rattled
  (155, 18, 'Raises Speed when hit by Bug-, Ghost-, or Dark-type moves, or by Intimidate.'),
  -- Disguise
  (209, 18, 'Blocks damage once per battle, then loses 1/8 max HP.');
