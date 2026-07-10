-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet, Gym Leader, Elite Four, Champion, Team Star, Titan Pokémon, The Way Home, and First partner Pokémon pages.
-- Scope: Pokémon Scarlet / Violet decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for Scarlet / Violet curated decision milestones.
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
  -- Choose Starter -> Sprigatito
  (230001, 'sprigatito', 'Sprigatito', 'Choose Sprigatito as the first partner Pokémon.', 906, 90600, NULL, 1),
  -- Choose Starter -> Fuecoco
  (230001, 'fuecoco', 'Fuecoco', 'Choose Fuecoco as the first partner Pokémon.', 909, 90900, NULL, 2),
  -- Choose Starter -> Quaxly
  (230001, 'quaxly', 'Quaxly', 'Choose Quaxly as the first partner Pokémon.', 912, 91200, NULL, 3);
