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
-- Generation: 3
-- Table: reference.pokemon_forms
-- Scope: curated non-default forms for team builder, planner, and Pokémon history.
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms, sprite_slug)
VALUES
  -- Deoxys (Attack)
  (38601, 386, 'deoxys-attack', 'Deoxys (Attack)', 3, FALSE, 2, NULL, NULL, 'deoxys-attack'),
  -- Deoxys (Defense)
  (38602, 386, 'deoxys-defense', 'Deoxys (Defense)', 3, FALSE, 3, NULL, NULL, 'deoxys-defense'),
  -- Deoxys (Speed)
  (38603, 386, 'deoxys-speed', 'Deoxys (Speed)', 3, FALSE, 4, NULL, NULL, 'deoxys-speed');
