-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Isle of Armor, Kubfu, Urshifu, and Gift Pokémon pages.
-- Scope: Pokémon The Isle of Armor decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for The Isle of Armor curated decision milestones.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_decision_options (
  milestone_id,
  slug,
  label,
  description,
  pokemon_species_id,
  pokemon_form_id,
  item_id,
  sort_order
) VALUES
  -- Choose Dojo Starter -> Bulbasaur
  (190003, 'bulbasaur', 'Bulbasaur', 'Choose Bulbasaur at the Master Dojo.', 1, 100, NULL, 1),
  -- Choose Dojo Starter -> Squirtle
  (190003, 'squirtle', 'Squirtle', 'Choose Squirtle at the Master Dojo.', 7, 700, NULL, 2),
  -- Tower Choice -> Tower of Darkness (Single Strike)
  (190005, 'tower-of-darkness', 'Tower of Darkness (Single Strike)', 'Choose the Tower of Darkness and evolve Kubfu into Single Strike Style Urshifu.', 892, 89200, NULL, 1),
  -- Tower Choice -> Tower of Waters (Rapid Strike)
  (190005, 'tower-of-waters', 'Tower of Waters (Rapid Strike)', 'Choose the Tower of Waters and evolve Kubfu into Rapid Strike Style Urshifu.', 892, 89201, NULL, 2);
