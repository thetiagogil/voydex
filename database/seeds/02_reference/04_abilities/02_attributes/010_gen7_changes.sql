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
-- Sun / Moon ability change-point summaries.
-- Effect summary is intentionally concise; deeper simulator mechanics belong in docs.
-- ============================================================================

INSERT INTO reference.ability_attributes (ability_id, version_group_start_id, effect_summary)
VALUES
  -- Normalize
  (96, 15, 'Turns the Pokémon''s moves into Normal-type moves and boosts their power by 20%.'),
  -- Prankster
  (158, 15, 'Gives status moves +1 priority; opposing Dark-type Pokémon are immune to affected status moves.'),
  -- Bulletproof
  (171, 15, 'Protects from ball and bomb moves.'),
  -- Refrigerate
  (174, 15, 'Turns Normal-type moves into Ice-type moves and boosts their power by 20%.'),
  -- Gale Wings
  (177, 15, 'Gives priority to Flying-type moves while at full HP.'),
  -- Pixilate
  (182, 15, 'Turns Normal-type moves into Fairy-type moves and boosts their power by 20%.'),
  -- Aerilate
  (184, 15, 'Turns Normal-type moves into Flying-type moves and boosts their power by 20%.'),
  -- Parental Bond
  (185, 15, 'Attacks twice; the second hit has 25% of the first hit''s power.');
