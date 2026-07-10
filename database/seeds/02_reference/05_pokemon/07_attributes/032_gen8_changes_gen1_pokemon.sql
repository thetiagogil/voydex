-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 032_pokemon_attributes_gen8_changes_gen1_pokemon.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen8 changes gen1 pokemon.
-- Generation 1 stores the single Special stat in both special-attack columns and has no egg groups or abilities.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0109 Koffing
  (109, 10900, 8, 8, NULL, 26, 256, 1, 12, NULL, 40, 65, 95, 60, 45, 35),
  -- #0110 Weezing
  (110, 11000, 8, 8, NULL, 26, 256, 1, 12, NULL, 65, 90, 120, 85, 70, 60);
