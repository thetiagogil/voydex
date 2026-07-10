-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, X / Y, Gift Pokémon, Fossil, and First partner Pokémon pages.
-- Scope: Pokémon X / Y decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for X / Y curated decision milestones.
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
  -- Choose Kalos Starter -> Chespin
  (130001, 'chespin', 'Chespin', 'Choose Chespin as the first partner Pokémon.', 650, 65000, NULL, 1),
  -- Choose Kalos Starter -> Fennekin
  (130001, 'fennekin', 'Fennekin', 'Choose Fennekin as the first partner Pokémon.', 653, 65300, NULL, 2),
  -- Choose Kalos Starter -> Froakie
  (130001, 'froakie', 'Froakie', 'Choose Froakie as the first partner Pokémon.', 656, 65600, NULL, 3),
  -- Choose Kanto Starter -> Bulbasaur
  (130004, 'bulbasaur', 'Bulbasaur', 'Choose Bulbasaur from Professor Sycamore.', 1, 100, NULL, 1),
  -- Choose Kanto Starter -> Charmander
  (130004, 'charmander', 'Charmander', 'Choose Charmander from Professor Sycamore.', 4, 400, NULL, 2),
  -- Choose Kanto Starter -> Squirtle
  (130004, 'squirtle', 'Squirtle', 'Choose Squirtle from Professor Sycamore.', 7, 700, NULL, 3),
  -- Fossil Choice -> Jaw Fossil (Tyrunt)
  (130005, 'jaw-fossil', 'Jaw Fossil (Tyrunt)', 'Choose the Jaw Fossil and restore Tyrunt.', 696, 69600, 162, 1),
  -- Fossil Choice -> Sail Fossil (Amaura)
  (130005, 'sail-fossil', 'Sail Fossil (Amaura)', 'Choose the Sail Fossil and restore Amaura.', 698, 69800, 163, 2);
