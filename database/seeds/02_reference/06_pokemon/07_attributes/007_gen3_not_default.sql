-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 007_pokemon_attributes_gen3_not_default.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen3 not default.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0386 Deoxys - Deoxys (Attack)
  (386, 38601, 3, 11, NULL, 46, NULL, NULL, 15, NULL, 50, 180, 20, 180, 20, 150),
  -- #0386 Deoxys - Deoxys (Defense)
  (386, 38602, 3, 11, NULL, 46, NULL, NULL, 15, NULL, 50, 70, 160, 70, 160, 90),
  -- #0386 Deoxys - Deoxys (Speed)
  (386, 38603, 3, 11, NULL, 46, NULL, NULL, 15, NULL, 50, 95, 90, 95, 90, 180);
