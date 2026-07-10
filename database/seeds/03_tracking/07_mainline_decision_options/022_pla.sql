-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Arceus, Noble Pokémon, Volo, Arceus, and First partner Pokémon pages.
-- Scope: Pokémon Legends: Arceus decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for Pokémon Legends: Arceus curated decision milestones.
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
  -- Choose Starter -> Rowlet
  (220001, 'rowlet', 'Rowlet', 'Choose Rowlet as the first partner Pokémon.', 722, 72200, NULL, 1),
  -- Choose Starter -> Cyndaquil
  (220001, 'cyndaquil', 'Cyndaquil', 'Choose Cyndaquil as the first partner Pokémon.', 155, 15500, NULL, 2),
  -- Choose Starter -> Oshawott
  (220001, 'oshawott', 'Oshawott', 'Choose Oshawott as the first partner Pokémon.', 501, 50100, NULL, 3),
  -- Choose Clan Leader -> Adaman
  (220008, 'adaman', 'Adaman', 'Choose Adaman to accompany the player into the climax.', NULL, NULL, NULL, 1),
  -- Choose Clan Leader -> Irida
  (220008, 'irida', 'Irida', 'Choose Irida to accompany the player into the climax.', NULL, NULL, NULL, 2);
