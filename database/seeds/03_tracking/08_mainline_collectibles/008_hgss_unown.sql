-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Unown Report page (the report counts the forms caught,
-- and the ! and ? forms appear once the 26 letters are caught and the four
-- hidden rooms opened) and its HeartGold / SoulSilver walkthrough.
-- Scope: Pokémon HeartGold / SoulSilver Unown forms.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_collectibles.
-- Unown's 28 forms are a set of their own in HeartGold / SoulSilver, as in
-- Gold / Silver and Crystal: the Pokédex counts Unown once, while the Unown
-- Report keeps a separate count of the forms caught. No art yet
-- (sprite_slug), which the set art pass adds.
-- ============================================================================

INSERT INTO tracking.mainline_collectibles (
  id,
  version_group_id,
  game_id,
  collectible_type_id,
  slug,
  name,
  total_count,
  sprite_slug,
  reward_summary,
  sort_order,
  is_required_for_completion
)
VALUES
  -- Unown
  (10001, 10, NULL, 6, 'unown-forms', 'Unown', 28, NULL, 'The Unown Report counts the forms you catch. Catch all 26 letters and open the four hidden rooms, and the ! and ? forms appear to finish it.', 1, true);
