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
-- Black / White ability change-point summaries.
-- Effect summary is intentionally concise; deeper simulator mechanics belong in docs.
-- ============================================================================

INSERT INTO reference.ability_attributes (ability_id, version_group_start_id, effect_summary)
VALUES
  -- Stench
  (1, 11, 'Damaging moves may make the target flinch; as lead, lowers wild encounter rate.'),
  -- Sturdy
  (5, 11, 'Blocks one-hit KO moves and lets the Pokémon survive a full-HP knockout with 1 HP.'),
  -- Color Change
  (16, 11, 'Changes type after each hit of a multi-hit move.'),
  -- Wonder Guard
  (25, 11, 'Only super-effective damaging moves hit.'),
  -- Synchronize
  (28, 11, 'Mirrors poison, paralysis, burn, or bad poison; as lead, makes same-nature wild encounters more likely.'),
  -- Lightning Rod
  (31, 11, 'Draws in Electric-type moves, grants immunity, and raises Sp. Atk.'),
  -- Pickup
  (53, 11, 'May pick up items after battle and may pick up consumed items in battle.'),
  -- Plus
  (57, 11, 'Raises Sp. Atk when paired with Plus or Minus.'),
  -- Minus
  (58, 11, 'Raises Sp. Atk when paired with Plus or Minus.'),
  -- Shed Skin
  (61, 11, 'Has a 30% chance to cure its own status condition at the end of each turn.'),
  -- Poison Heal
  (90, 11, 'Restores HP instead of losing HP while poisoned.'),
  -- Magic Guard
  (98, 11, 'Only takes damage from direct attacks.'),
  -- Storm Drain
  (114, 11, 'Draws in Water-type moves, grants immunity, and raises Sp. Atk.');
