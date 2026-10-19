-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon form, item, Multitype, RKS System, and Drive pages.
-- Cross-check: Serebii item/form pages and PokemonDB form pages.
-- Scope note: item relationships for currently seeded item-driven Pokémon forms; game availability is handled later by item availability seeds.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation Start: 9
-- Table: reference.pokemon_form_item_requirements
-- Scope: item-to-form and form-to-item requirements.
INSERT INTO reference.pokemon_form_item_requirements (form_id, item_id, generation_start_id, generation_end_id, requirement_kind, type_effect_scope, type_id, notes)
VALUES
  -- Ogerpon (Wellspring Mask) -> Wellspring Mask -> Water -> required_held_item
  (101701, 60, 9, NULL, 'required_held_item', 'secondary_type', 3, NULL),
  -- Ogerpon (Hearthflame Mask) -> Hearthflame Mask -> Fire -> required_held_item
  (101702, 61, 9, NULL, 'required_held_item', 'secondary_type', 2, NULL),
  -- Ogerpon (Cornerstone Mask) -> Cornerstone Mask -> Rock -> required_held_item
  (101703, 62, 9, NULL, 'required_held_item', 'secondary_type', 13, NULL);
