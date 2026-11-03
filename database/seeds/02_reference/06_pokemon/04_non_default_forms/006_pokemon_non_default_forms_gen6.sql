-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon with form differences and Regional form pages.
-- Cross-check: Serebii regional/alternate form pages and PokemonDB all-forms Pokedex output.
-- Scope note: includes persistent, selectable, mechanically relevant, evolution-relevant, regional, item-driven, or biography-relevant forms.
-- Excluded: battle-only transformations, Mega/Gigantamax/Primal forms, and purely cosmetic/living-dex variants.
-- ============================================================================
-- Heights and weights: the machine-readable species snapshot (PokeAPI), checked against Bulbapedia species pages on 2026-11-03.
-- Form categories: Bulbapedia's Pokémon category list, read on 2026-11-03.
-- File Scope
-- ============================================================================
-- Generation: 6
-- Table: reference.pokemon_forms
-- Scope: curated non-default forms for team builder, planner, and Pokémon history.
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms, category, gender)
VALUES
  -- Arceus (Fairy)
  (49317, 493, 'arceus-fairy', 'Arceus (Fairy)', 6, FALSE, 18, 32, 3200, NULL, NULL),
  -- Floette (Eternal Flower)
  (67002, 670, 'floette-eternal-flower', 'Floette (Eternal Flower)', 6, FALSE, 3, 2, 9, NULL, NULL),
  -- Meowstic (Female)
  (67801, 678, 'meowstic-female', 'Meowstic (Female)', 6, FALSE, 2, 6, 85, NULL, 'female'),
  -- Pumpkaboo (Small)
  (71001, 710, 'pumpkaboo-small', 'Pumpkaboo (Small)', 6, FALSE, 2, 3, 35, NULL, NULL),
  -- Pumpkaboo (Large)
  (71002, 710, 'pumpkaboo-large', 'Pumpkaboo (Large)', 6, FALSE, 3, 5, 75, NULL, NULL),
  -- Pumpkaboo (Super)
  (71003, 710, 'pumpkaboo-super', 'Pumpkaboo (Super)', 6, FALSE, 4, 8, 150, NULL, NULL),
  -- Gourgeist (Small)
  (71101, 711, 'gourgeist-small', 'Gourgeist (Small)', 6, FALSE, 2, 7, 95, NULL, NULL),
  -- Gourgeist (Large)
  (71102, 711, 'gourgeist-large', 'Gourgeist (Large)', 6, FALSE, 3, 11, 140, NULL, NULL),
  -- Gourgeist (Super)
  (71103, 711, 'gourgeist-super', 'Gourgeist (Super)', 6, FALSE, 4, 17, 390, NULL, NULL),
  -- Hoopa (Unbound)
  (72001, 720, 'hoopa-unbound', 'Hoopa (Unbound)', 6, FALSE, 2, 65, 4900, 'Djinn', NULL);
