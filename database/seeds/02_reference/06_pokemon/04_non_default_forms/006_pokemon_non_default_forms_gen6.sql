-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon with form differences and Regional form pages.
-- Cross-check: Serebii regional/alternate form pages and PokemonDB all-forms Pokedex output.
-- Scope note: includes persistent, selectable, mechanically relevant, evolution-relevant, regional, item-driven, or biography-relevant forms.
-- Excluded: battle-only transformations, Mega/Gigantamax/Primal forms, and purely cosmetic/living-dex variants.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 6
-- Table: reference.pokemon_forms
-- Scope: curated non-default forms for team builder, planner, and Pokémon history.
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms)
VALUES
  -- Arceus (Fairy)
  (49317, 493, 'arceus-fairy', 'Arceus (Fairy)', 6, FALSE, 18, NULL, NULL),
  -- Floette (Eternal Flower)
  (67002, 670, 'floette-eternal-flower', 'Floette (Eternal Flower)', 6, FALSE, 3, NULL, NULL),
  -- Meowstic (Female)
  (67801, 678, 'meowstic-female', 'Meowstic (Female)', 6, FALSE, 2, NULL, NULL),
  -- Pumpkaboo (Small)
  (71001, 710, 'pumpkaboo-small', 'Pumpkaboo (Small)', 6, FALSE, 2, NULL, NULL),
  -- Pumpkaboo (Large)
  (71002, 710, 'pumpkaboo-large', 'Pumpkaboo (Large)', 6, FALSE, 3, NULL, NULL),
  -- Pumpkaboo (Super)
  (71003, 710, 'pumpkaboo-super', 'Pumpkaboo (Super)', 6, FALSE, 4, NULL, NULL),
  -- Gourgeist (Small)
  (71101, 711, 'gourgeist-small', 'Gourgeist (Small)', 6, FALSE, 2, NULL, NULL),
  -- Gourgeist (Large)
  (71102, 711, 'gourgeist-large', 'Gourgeist (Large)', 6, FALSE, 3, NULL, NULL),
  -- Gourgeist (Super)
  (71103, 711, 'gourgeist-super', 'Gourgeist (Super)', 6, FALSE, 4, NULL, NULL),
  -- Hoopa (Unbound)
  (72001, 720, 'hoopa-unbound', 'Hoopa (Unbound)', 6, FALSE, 2, NULL, NULL);
