-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Sword / Shield, Badge, Gym Leader, Champion Cup, Legendary Pokémon, and First partner Pokémon pages.
-- Scope: Pokémon Sword / Shield decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for Sword / Shield curated decision milestones.
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
  -- Choose Starter -> Grookey
  (180001, 'grookey', 'Grookey', 'Choose Grookey as the first partner Pokémon.', 810, 81000, NULL, 1),
  -- Choose Starter -> Scorbunny
  (180001, 'scorbunny', 'Scorbunny', 'Choose Scorbunny as the first partner Pokémon.', 813, 81300, NULL, 2),
  -- Choose Starter -> Sobble
  (180001, 'sobble', 'Sobble', 'Choose Sobble as the first partner Pokémon.', 816, 81600, NULL, 3);
