-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia First partner Pokémon, Gift Pokémon, and Fossil pages.
-- Cross-check: legacy Voydex Ruby / Sapphire decision option seed.
-- Scope: Pokémon Ruby / Sapphire decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for Ruby / Sapphire starter and Hoenn fossil choices.
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
  (50001, 'treecko', 'Treecko', 'Choose Treecko as the first partner Pokémon.', 252, 25200, NULL, 1),
  -- Choose Starter -> Torchic
  (50001, 'torchic', 'Torchic', 'Choose Torchic as the first partner Pokémon.', 255, 25500, NULL, 2),
  -- Choose Starter -> Mudkip
  (50001, 'mudkip', 'Mudkip', 'Choose Mudkip as the first partner Pokémon.', 258, 25800, NULL, 3),
  -- Fossil Choice -> Root Fossil
  (50006, 'root-fossil', 'Root Fossil (Lileep)', 'Choose the Root Fossil, which restores into Lileep.', 345, 34500, 156, 1),
  -- Fossil Choice -> Claw Fossil
  (50006, 'claw-fossil', 'Claw Fossil (Anorith)', 'Choose the Claw Fossil, which restores into Anorith.', 347, 34700, 157, 2);
