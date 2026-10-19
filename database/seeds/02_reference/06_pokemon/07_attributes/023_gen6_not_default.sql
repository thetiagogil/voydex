-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 023_pokemon_attributes_gen6_not_default.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen6 not default.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0493 Arceus - Arceus (Fairy)
  (493, 49317, 6, 18, NULL, 121, NULL, NULL, 15, NULL, 120, 120, 120, 120, 120, 120),
  -- #0678 Meowstic - Meowstic (Female)
  (678, 67801, 6, 11, NULL, 51, 151, 172, 7, NULL, 74, 48, 76, 83, 81, 104),
  -- #0710 Pumpkaboo - Pumpkaboo (Small)
  (710, 71001, 6, 14, 5, 53, 119, 15, 12, 9, 44, 66, 70, 44, 55, 56),
  -- #0710 Pumpkaboo - Pumpkaboo (Large)
  (710, 71002, 6, 14, 5, 53, 119, 15, 12, 9, 54, 66, 70, 44, 55, 46),
  -- #0710 Pumpkaboo - Pumpkaboo (Super)
  (710, 71003, 6, 14, 5, 53, 119, 15, 12, 9, 59, 66, 70, 44, 55, 41),
  -- #0711 Gourgeist - Gourgeist (Small)
  (711, 71101, 6, 14, 5, 53, 119, 15, 12, 9, 55, 85, 122, 58, 75, 99),
  -- #0711 Gourgeist - Gourgeist (Large)
  (711, 71102, 6, 14, 5, 53, 119, 15, 12, 9, 75, 95, 122, 58, 75, 69),
  -- #0711 Gourgeist - Gourgeist (Super)
  (711, 71103, 6, 14, 5, 53, 119, 15, 12, 9, 85, 100, 122, 58, 75, 54),
  -- #0720 Hoopa - Hoopa (Unbound)
  (720, 72001, 6, 11, 16, 170, NULL, NULL, 15, NULL, 80, 160, 60, 170, 130, 80);
