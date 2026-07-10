-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia First partner Pokémon and Gift Pokémon pages.
-- Cross-check: legacy Voydex Crystal decision option seed.
-- Scope: Pokémon Crystal decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for Crystal starter choice.
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
  (40001, 'chikorita', 'Chikorita', 'Choose Chikorita as the first partner Pokémon.', 152, 15200, NULL, 1),
  -- Choose Starter -> Cyndaquil
  (40001, 'cyndaquil', 'Cyndaquil', 'Choose Cyndaquil as the first partner Pokémon.', 155, 15500, NULL, 2),
  -- Choose Starter -> Totodile
  (40001, 'totodile', 'Totodile', 'Choose Totodile as the first partner Pokémon.', 158, 15800, NULL, 3);
