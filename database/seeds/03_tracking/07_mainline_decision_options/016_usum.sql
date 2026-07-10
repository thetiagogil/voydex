-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Ultra Sun / Ultra Moon, Island challenge, Elite Four, Champion, Team Rainbow Rocket, and First partner Pokémon pages.
-- Scope: Pokémon Ultra Sun / Ultra Moon decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for Ultra Sun / Ultra Moon curated decision milestones.
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
  (160001, 'rowlet', 'Rowlet', 'Choose Rowlet as the first partner Pokémon.', 722, 72200, NULL, 1),
  -- Choose Starter -> Litten
  (160001, 'litten', 'Litten', 'Choose Litten as the first partner Pokémon.', 725, 72500, NULL, 2),
  -- Choose Starter -> Popplio
  (160001, 'popplio', 'Popplio', 'Choose Popplio as the first partner Pokémon.', 728, 72800, NULL, 3);
