-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia First partner Pokémon, Gift Pokémon, Fossil, and Fighting Dojo pages.
-- Cross-check: legacy Voydex Red / Blue decision option seed.
-- Scope: Pokémon Red / Blue decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for Red / Blue starter, fossil, and Fighting Dojo choices.
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
  -- Choose Starter -> Bulbasaur
  (10001, 'bulbasaur', 'Bulbasaur', 'Choose Bulbasaur as the first partner Pokémon.', 1, 100, NULL, 1),
  -- Choose Starter -> Charmander
  (10001, 'charmander', 'Charmander', 'Choose Charmander as the first partner Pokémon.', 4, 400, NULL, 2),
  -- Choose Starter -> Squirtle
  (10001, 'squirtle', 'Squirtle', 'Choose Squirtle as the first partner Pokémon.', 7, 700, NULL, 3),
  -- Fossil Choice -> Helix Fossil
  (10004, 'helix-fossil', 'Helix Fossil (Omanyte)', 'Choose the Helix Fossil, which restores into Omanyte.', 138, 13800, 153, 1),
  -- Fossil Choice -> Dome Fossil
  (10004, 'dome-fossil', 'Dome Fossil (Kabuto)', 'Choose the Dome Fossil, which restores into Kabuto.', 140, 14000, 154, 2),
  -- Fighting Dojo Choice -> Hitmonlee
  (10010, 'hitmonlee', 'Hitmonlee', 'Choose Hitmonlee as the Fighting Dojo prize Pokémon.', 106, 10600, NULL, 1),
  -- Fighting Dojo Choice -> Hitmonchan
  (10010, 'hitmonchan', 'Hitmonchan', 'Choose Hitmonchan as the Fighting Dojo prize Pokémon.', 107, 10700, NULL, 2);
