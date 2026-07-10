-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Crown Tundra, Crown Tundra expedition, Calyrex, and Legendary clue pages.
-- Scope: Pokémon The Crown Tundra decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for The Crown Tundra curated decision milestones.
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
  -- Steed Choice -> Glastrier
  (200003, 'glastrier', 'Glastrier', 'Choose Iceroot Carrot and encounter Glastrier.', 896, 89600, NULL, 1),
  -- Steed Choice -> Spectrier
  (200003, 'spectrier', 'Spectrier', 'Choose Shaderoot Carrot and encounter Spectrier.', 897, 89700, NULL, 2),
  -- Regi Choice -> Regieleki
  (200005, 'regieleki', 'Regieleki', 'Choose the Electric-type pattern and encounter Regieleki.', 894, 89400, NULL, 1),
  -- Regi Choice -> Regidrago
  (200005, 'regidrago', 'Regidrago', 'Choose the Dragon-type pattern and encounter Regidrago.', 895, 89500, NULL, 2);
