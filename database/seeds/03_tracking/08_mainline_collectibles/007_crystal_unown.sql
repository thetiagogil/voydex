-- ============================================================================
-- Source
-- ============================================================================
-- Primary: the pret pokecrystal disassembly (the four Unown letter sets the Ruins
-- of Alph puzzles unlock, the Unown count the game keeps, and the Research
-- Center script that opens the printer at 26).
-- Cross-check: Bulbapedia's Crystal walkthrough and Ruins of Alph page
-- (which chamber's puzzle wakes which forms, the Unown Mode at three forms).
-- Scope: Pokémon Crystal Unown forms.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_collectibles.
-- Unown's 26 forms are a set of their own in Crystal, as in Gold / Silver: the Pokédex counts
-- Unown once, while the game keeps a separate count of the forms caught and
-- rewards the full set. No art yet (sprite_slug), which the set art pass adds.
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
  (4001, 4, NULL, 6, 'unown-forms', 'Unown', 26, NULL, 'Catch three forms and the Ruins of Alph researchers add an Unown Mode to your Pokédex. Catch all 26 and they let you print Unown on their printer.', 1, true);
