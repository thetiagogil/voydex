-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Gift Pokémon, Fossil, and Fighting Dojo pages.
-- Cross-check: legacy Voydex Yellow decision option seed.
-- Scope: Pokémon Yellow decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for Yellow fossil and Fighting Dojo choices.
-- Pikachu is fixed in Yellow and is tracked as a story milestone, not a decision.
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
  -- Fossil Choice -> Helix Fossil
  (20004, 'helix-fossil', 'Helix Fossil (Omanyte)', 'Choose the Helix Fossil, which restores into Omanyte.', 138, 13800, 153, 1),
  -- Fossil Choice -> Dome Fossil
  (20004, 'dome-fossil', 'Dome Fossil (Kabuto)', 'Choose the Dome Fossil, which restores into Kabuto.', 140, 14000, 154, 2),
  -- Fighting Dojo Choice -> Hitmonlee
  (20010, 'hitmonlee', 'Hitmonlee', 'Choose Hitmonlee as the Fighting Dojo prize Pokémon.', 106, 10600, NULL, 1),
  -- Fighting Dojo Choice -> Hitmonchan
  (20010, 'hitmonchan', 'Hitmonchan', 'Choose Hitmonchan as the Fighting Dojo prize Pokémon.', 107, 10700, NULL, 2);
