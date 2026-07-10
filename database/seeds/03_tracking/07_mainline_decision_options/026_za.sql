-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A, Z-A Royale, Rogue Mega Evolution, Zygarde, and First partner Pokémon pages.
-- Scope: Pokémon Legends: Z-A decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for Pokémon Legends: Z-A curated decision milestones.
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
  (260001, 'chikorita', 'Chikorita', 'Choose Chikorita as the first partner Pokémon.', 152, 15200, NULL, 1),
  -- Choose Starter -> Tepig
  (260001, 'tepig', 'Tepig', 'Choose Tepig as the first partner Pokémon.', 498, 49800, NULL, 2),
  -- Choose Starter -> Totodile
  (260001, 'totodile', 'Totodile', 'Choose Totodile as the first partner Pokémon.', 158, 15800, NULL, 3);
