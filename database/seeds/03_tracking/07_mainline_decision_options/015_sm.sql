-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Sun / Moon, Island challenge, Elite Four, Champion, and First partner Pokémon pages.
-- Scope: Pokémon Sun / Moon decision options.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Static decision options for Sun / Moon curated decision milestones.
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
  (150001, 'rowlet', 'Rowlet', 'Choose Rowlet as the first partner Pokémon.', 722, 72200, NULL, 1),
  -- Choose Starter -> Litten
  (150001, 'litten', 'Litten', 'Choose Litten as the first partner Pokémon.', 725, 72500, NULL, 2),
  -- Choose Starter -> Popplio
  (150001, 'popplio', 'Popplio', 'Choose Popplio as the first partner Pokémon.', 728, 72800, NULL, 3);
