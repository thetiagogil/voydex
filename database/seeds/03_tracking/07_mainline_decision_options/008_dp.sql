-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia First partner Pokémon and Gift Pokémon pages.
-- Cross-check: Pokémon Diamond / Pearl source page.
-- Scope: Pokémon Diamond / Pearl decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for the Diamond / Pearl starter choice.
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
  -- Choose Starter -> Turtwig
  (80001, 'turtwig', 'Turtwig', 'Choose Turtwig as the first partner Pokémon.', 387, 38700, NULL, 1),
  -- Choose Starter -> Chimchar
  (80001, 'chimchar', 'Chimchar', 'Choose Chimchar as the first partner Pokémon.', 390, 39000, NULL, 2),
  -- Choose Starter -> Piplup
  (80001, 'piplup', 'Piplup', 'Choose Piplup as the first partner Pokémon.', 393, 39300, NULL, 3);
