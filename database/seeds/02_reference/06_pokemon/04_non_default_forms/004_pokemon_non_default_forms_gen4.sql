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
-- Generation: 4
-- Table: reference.pokemon_forms
-- Scope: curated non-default forms for team builder, planner, and Pokémon history.
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms)
VALUES
  -- Burmy (Sandy Cloak)
  (41201, 412, 'burmy-sandy', 'Burmy (Sandy Cloak)', 4, FALSE, 2, NULL, NULL),
  -- Burmy (Trash Cloak)
  (41202, 412, 'burmy-trash', 'Burmy (Trash Cloak)', 4, FALSE, 3, NULL, NULL),
  -- Wormadam (Sandy Cloak)
  (41301, 413, 'wormadam-sandy', 'Wormadam (Sandy Cloak)', 4, FALSE, 2, NULL, NULL),
  -- Wormadam (Trash Cloak)
  (41302, 413, 'wormadam-trash', 'Wormadam (Trash Cloak)', 4, FALSE, 3, NULL, NULL),
  -- Rotom (Heat)
  (47901, 479, 'rotom-heat', 'Rotom (Heat)', 4, FALSE, 2, NULL, NULL),
  -- Rotom (Wash)
  (47902, 479, 'rotom-wash', 'Rotom (Wash)', 4, FALSE, 3, NULL, NULL),
  -- Rotom (Frost)
  (47903, 479, 'rotom-frost', 'Rotom (Frost)', 4, FALSE, 4, NULL, NULL),
  -- Rotom (Fan)
  (47904, 479, 'rotom-fan', 'Rotom (Fan)', 4, FALSE, 5, NULL, NULL),
  -- Rotom (Mow)
  (47905, 479, 'rotom-mow', 'Rotom (Mow)', 4, FALSE, 6, NULL, NULL),
  -- Giratina (Origin)
  (48701, 487, 'giratina-origin', 'Giratina (Origin)', 4, FALSE, 2, NULL, NULL),
  -- Shaymin (Sky)
  (49201, 492, 'shaymin-sky', 'Shaymin (Sky)', 4, FALSE, 2, NULL, NULL),
  -- Arceus (Fighting)
  (49301, 493, 'arceus-fighting', 'Arceus (Fighting)', 4, FALSE, 2, NULL, NULL),
  -- Arceus (Flying)
  (49302, 493, 'arceus-flying', 'Arceus (Flying)', 4, FALSE, 3, NULL, NULL),
  -- Arceus (Poison)
  (49303, 493, 'arceus-poison', 'Arceus (Poison)', 4, FALSE, 4, NULL, NULL),
  -- Arceus (Ground)
  (49304, 493, 'arceus-ground', 'Arceus (Ground)', 4, FALSE, 5, NULL, NULL),
  -- Arceus (Rock)
  (49305, 493, 'arceus-rock', 'Arceus (Rock)', 4, FALSE, 6, NULL, NULL),
  -- Arceus (Bug)
  (49306, 493, 'arceus-bug', 'Arceus (Bug)', 4, FALSE, 7, NULL, NULL),
  -- Arceus (Ghost)
  (49307, 493, 'arceus-ghost', 'Arceus (Ghost)', 4, FALSE, 8, NULL, NULL),
  -- Arceus (Steel)
  (49308, 493, 'arceus-steel', 'Arceus (Steel)', 4, FALSE, 9, NULL, NULL),
  -- Arceus (Fire)
  (49309, 493, 'arceus-fire', 'Arceus (Fire)', 4, FALSE, 10, NULL, NULL),
  -- Arceus (Water)
  (49310, 493, 'arceus-water', 'Arceus (Water)', 4, FALSE, 11, NULL, NULL),
  -- Arceus (Grass)
  (49311, 493, 'arceus-grass', 'Arceus (Grass)', 4, FALSE, 12, NULL, NULL),
  -- Arceus (Electric)
  (49312, 493, 'arceus-electric', 'Arceus (Electric)', 4, FALSE, 13, NULL, NULL),
  -- Arceus (Psychic)
  (49313, 493, 'arceus-psychic', 'Arceus (Psychic)', 4, FALSE, 14, NULL, NULL),
  -- Arceus (Ice)
  (49314, 493, 'arceus-ice', 'Arceus (Ice)', 4, FALSE, 15, NULL, NULL),
  -- Arceus (Dragon)
  (49315, 493, 'arceus-dragon', 'Arceus (Dragon)', 4, FALSE, 16, NULL, NULL),
  -- Arceus (Dark)
  (49316, 493, 'arceus-dark', 'Arceus (Dark)', 4, FALSE, 17, NULL, NULL);
