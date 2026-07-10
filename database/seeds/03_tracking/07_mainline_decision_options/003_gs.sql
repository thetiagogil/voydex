-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia First partner Pokémon and Gift Pokémon pages.
-- Cross-check: legacy Voydex Gold / Silver decision option seed.
-- Scope: Pokémon Gold / Silver decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for Gold / Silver starter choice.
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
  -- Choose Starter -> Chikorita
  (30001, 'chikorita', 'Chikorita', 'Choose Chikorita as the first partner Pokémon.', 152, 15200, NULL, 1),
  -- Choose Starter -> Cyndaquil
  (30001, 'cyndaquil', 'Cyndaquil', 'Choose Cyndaquil as the first partner Pokémon.', 155, 15500, NULL, 2),
  -- Choose Starter -> Totodile
  (30001, 'totodile', 'Totodile', 'Choose Totodile as the first partner Pokémon.', 158, 15800, NULL, 3);
