-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Black 2 / White 2, and First partner Pokémon pages.
-- Scope: Pokémon Black 2 / White 2 decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for Black 2 / White 2 curated decision milestones.
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
  -- Choose Starter -> Snivy
  (120001, 'snivy', 'Snivy', 'Choose Snivy as the first partner Pokémon.', 495, 49500, NULL, 1),
  -- Choose Starter -> Tepig
  (120001, 'tepig', 'Tepig', 'Choose Tepig as the first partner Pokémon.', 498, 49800, NULL, 2),
  -- Choose Starter -> Oshawott
  (120001, 'oshawott', 'Oshawott', 'Choose Oshawott as the first partner Pokémon.', 501, 50100, NULL, 3);
