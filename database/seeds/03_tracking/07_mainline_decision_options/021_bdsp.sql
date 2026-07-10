-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Brilliant Diamond / Shining Pearl, Badge, Elite Four, Champion, and First partner Pokémon pages.
-- Scope: Pokémon Brilliant Diamond / Shining Pearl decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for Brilliant Diamond / Shining Pearl curated decision milestones.
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
  (210001, 'turtwig', 'Turtwig', 'Choose Turtwig as the first partner Pokémon.', 387, 38700, NULL, 1),
  -- Choose Starter -> Chimchar
  (210001, 'chimchar', 'Chimchar', 'Choose Chimchar as the first partner Pokémon.', 390, 39000, NULL, 2),
  -- Choose Starter -> Piplup
  (210001, 'piplup', 'Piplup', 'Choose Piplup as the first partner Pokémon.', 393, 39300, NULL, 3);
