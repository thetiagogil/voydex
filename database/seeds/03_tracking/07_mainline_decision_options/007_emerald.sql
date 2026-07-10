-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia First partner Pokémon, Gift Pokémon, Fossil, and Roaming Pokémon pages.
-- Cross-check: legacy Voydex Emerald decision option seed.
-- Scope: Pokémon Emerald decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for Emerald starter, Hoenn fossil, and post-game Lati
-- choices.
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
  (70001, 'treecko', 'Treecko', 'Choose Treecko as the first partner Pokémon.', 252, 25200, NULL, 1),
  -- Choose Starter -> Torchic
  (70001, 'torchic', 'Torchic', 'Choose Torchic as the first partner Pokémon.', 255, 25500, NULL, 2),
  -- Choose Starter -> Mudkip
  (70001, 'mudkip', 'Mudkip', 'Choose Mudkip as the first partner Pokémon.', 258, 25800, NULL, 3),
  -- Fossil Choice -> Root Fossil
  (70006, 'root-fossil', 'Root Fossil (Lileep)', 'Choose the Root Fossil first; the remaining fossil can later be found after entering the Hall of Fame.', 345, 34500, 156, 1),
  -- Fossil Choice -> Claw Fossil
  (70006, 'claw-fossil', 'Claw Fossil (Anorith)', 'Choose the Claw Fossil first; the remaining fossil can later be found after entering the Hall of Fame.', 347, 34700, 157, 2),
  -- Lati Choice -> Latias
  (70018, 'latias', 'Latias', 'Choose red on the TV report, making Latias roam Hoenn.', 380, 38000, NULL, 1),
  -- Lati Choice -> Latios
  (70018, 'latios', 'Latios', 'Choose blue on the TV report, making Latios roam Hoenn.', 381, 38100, NULL, 2);
