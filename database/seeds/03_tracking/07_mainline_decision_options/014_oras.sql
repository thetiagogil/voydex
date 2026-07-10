-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Omega Ruby / Alpha Sapphire, Fossil, Delta Episode, and First partner Pokémon pages.
-- Scope: Pokémon Omega Ruby / Alpha Sapphire decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for Omega Ruby / Alpha Sapphire curated decision milestones.
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
  -- Choose Starter -> Treecko
  (140001, 'treecko', 'Treecko', 'Choose Treecko as the first partner Pokémon.', 252, 25200, NULL, 1),
  -- Choose Starter -> Torchic
  (140001, 'torchic', 'Torchic', 'Choose Torchic as the first partner Pokémon.', 255, 25500, NULL, 2),
  -- Choose Starter -> Mudkip
  (140001, 'mudkip', 'Mudkip', 'Choose Mudkip as the first partner Pokémon.', 258, 25800, NULL, 3),
  -- Fossil Choice -> Root Fossil (Lileep)
  (140006, 'root-fossil', 'Root Fossil (Lileep)', 'Choose the Root Fossil and restore Lileep.', 345, 34500, 156, 1),
  -- Fossil Choice -> Claw Fossil (Anorith)
  (140006, 'claw-fossil', 'Claw Fossil (Anorith)', 'Choose the Claw Fossil and restore Anorith.', 347, 34700, 157, 2);
