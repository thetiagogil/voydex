-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 010_pokemon_attributes_gen4_not_default.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen4 not default.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0412 Burmy - Burmy (Sandy Cloak)
  (412, 41201, 4, 12, NULL, 61, NULL, NULL, 5, NULL, 40, 29, 45, 29, 45, 36),
  -- #0412 Burmy - Burmy (Trash Cloak)
  (412, 41202, 4, 12, NULL, 61, NULL, NULL, 5, NULL, 40, 29, 45, 29, 45, 36),
  -- #0413 Wormadam - Wormadam (Sandy Cloak)
  (413, 41301, 4, 12, 9, 107, NULL, NULL, 5, NULL, 60, 79, 105, 59, 85, 36),
  -- #0413 Wormadam - Wormadam (Trash Cloak)
  (413, 41302, 4, 12, 17, 107, NULL, NULL, 5, NULL, 60, 69, 95, 69, 95, 36),
  -- #0479 Rotom - Rotom (Heat)
  (479, 47901, 4, 4, 14, 26, NULL, NULL, 12, NULL, 50, 65, 107, 105, 107, 86),
  -- #0479 Rotom - Rotom (Wash)
  (479, 47902, 4, 4, 14, 26, NULL, NULL, 12, NULL, 50, 65, 107, 105, 107, 86),
  -- #0479 Rotom - Rotom (Frost)
  (479, 47903, 4, 4, 14, 26, NULL, NULL, 12, NULL, 50, 65, 107, 105, 107, 86),
  -- #0479 Rotom - Rotom (Fan)
  (479, 47904, 4, 4, 14, 26, NULL, NULL, 12, NULL, 50, 65, 107, 105, 107, 86),
  -- #0479 Rotom - Rotom (Mow)
  (479, 47905, 4, 4, 14, 26, NULL, NULL, 12, NULL, 50, 65, 107, 105, 107, 86),
  -- #0487 Giratina - Giratina (Origin)
  (487, 48701, 4, 14, 15, 26, NULL, NULL, 15, NULL, 150, 120, 100, 120, 100, 90),
  -- #0492 Shaymin - Shaymin (Sky)
  (492, 49201, 4, 5, 10, 32, NULL, NULL, 15, NULL, 100, 103, 75, 120, 75, 127),
  -- #0493 Arceus - Arceus (Fighting)
  (493, 49301, 4, 7, NULL, 121, NULL, NULL, 15, NULL, 120, 120, 120, 120, 120, 120),
  -- #0493 Arceus - Arceus (Flying)
  (493, 49302, 4, 10, NULL, 121, NULL, NULL, 15, NULL, 120, 120, 120, 120, 120, 120),
  -- #0493 Arceus - Arceus (Poison)
  (493, 49303, 4, 8, NULL, 121, NULL, NULL, 15, NULL, 120, 120, 120, 120, 120, 120),
  -- #0493 Arceus - Arceus (Ground)
  (493, 49304, 4, 9, NULL, 121, NULL, NULL, 15, NULL, 120, 120, 120, 120, 120, 120),
  -- #0493 Arceus - Arceus (Rock)
  (493, 49305, 4, 13, NULL, 121, NULL, NULL, 15, NULL, 120, 120, 120, 120, 120, 120),
  -- #0493 Arceus - Arceus (Bug)
  (493, 49306, 4, 12, NULL, 121, NULL, NULL, 15, NULL, 120, 120, 120, 120, 120, 120),
  -- #0493 Arceus - Arceus (Ghost)
  (493, 49307, 4, 14, NULL, 121, NULL, NULL, 15, NULL, 120, 120, 120, 120, 120, 120),
  -- #0493 Arceus - Arceus (Steel)
  (493, 49308, 4, 17, NULL, 121, NULL, NULL, 15, NULL, 120, 120, 120, 120, 120, 120),
  -- #0493 Arceus - Arceus (Fire)
  (493, 49309, 4, 2, NULL, 121, NULL, NULL, 15, NULL, 120, 120, 120, 120, 120, 120),
  -- #0493 Arceus - Arceus (Water)
  (493, 49310, 4, 3, NULL, 121, NULL, NULL, 15, NULL, 120, 120, 120, 120, 120, 120),
  -- #0493 Arceus - Arceus (Grass)
  (493, 49311, 4, 5, NULL, 121, NULL, NULL, 15, NULL, 120, 120, 120, 120, 120, 120),
  -- #0493 Arceus - Arceus (Electric)
  (493, 49312, 4, 4, NULL, 121, NULL, NULL, 15, NULL, 120, 120, 120, 120, 120, 120),
  -- #0493 Arceus - Arceus (Psychic)
  (493, 49313, 4, 11, NULL, 121, NULL, NULL, 15, NULL, 120, 120, 120, 120, 120, 120),
  -- #0493 Arceus - Arceus (Ice)
  (493, 49314, 4, 6, NULL, 121, NULL, NULL, 15, NULL, 120, 120, 120, 120, 120, 120),
  -- #0493 Arceus - Arceus (Dragon)
  (493, 49315, 4, 15, NULL, 121, NULL, NULL, 15, NULL, 120, 120, 120, 120, 120, 120),
  -- #0493 Arceus - Arceus (Dark)
  (493, 49316, 4, 16, NULL, 121, NULL, NULL, 15, NULL, 120, 120, 120, 120, 120, 120),
  -- #0412 Burmy - Burmy (Sandy Cloak)
  (412, 41201, 5, 12, NULL, 61, NULL, 142, 5, NULL, 40, 29, 45, 29, 45, 36),
  -- #0412 Burmy - Burmy (Trash Cloak)
  (412, 41202, 5, 12, NULL, 61, NULL, 142, 5, NULL, 40, 29, 45, 29, 45, 36);
