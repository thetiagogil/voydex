-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon form, item, Multitype, RKS System, and Drive pages.
-- Cross-check: Serebii item/form pages and PokemonDB form pages.
-- Scope note: item relationships for currently seeded item-driven Pokémon forms; game availability is handled later by item availability seeds.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation Start: 6
-- Table: reference.pokemon_form_item_requirements
-- Scope: item-to-form and form-to-item requirements.
INSERT INTO reference.pokemon_form_item_requirements (form_id, item_id, generation_start_id, generation_end_id, requirement_kind, type_effect_scope, type_id, notes)
VALUES
  -- Arceus (Fairy) -> Pixie Plate -> Fairy -> alternative_held_item
  (49317, 22, 6, NULL, 'alternative_held_item', 'form_type', 18, NULL);
