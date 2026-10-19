-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon form, item, Multitype, RKS System, and Drive pages.
-- Cross-check: Serebii item/form pages and PokemonDB form pages.
-- Scope note: item relationships for currently seeded item-driven Pokémon forms; game availability is handled later by item availability seeds.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation Start: 5
-- Table: reference.pokemon_form_item_requirements
-- Scope: item-to-form and form-to-item requirements.
INSERT INTO reference.pokemon_form_item_requirements (form_id, item_id, generation_start_id, generation_end_id, requirement_kind, type_effect_scope, type_id, notes)
VALUES
  -- Genesect (Douse Drive) -> Douse Drive -> Water -> required_held_item
  (64901, 18, 5, NULL, 'required_held_item', 'signature_move_type', 3, NULL),
  -- Genesect (Shock Drive) -> Shock Drive -> Electric -> required_held_item
  (64902, 19, 5, NULL, 'required_held_item', 'signature_move_type', 4, NULL),
  -- Genesect (Burn Drive) -> Burn Drive -> Fire -> required_held_item
  (64903, 20, 5, NULL, 'required_held_item', 'signature_move_type', 2, NULL),
  -- Genesect (Chill Drive) -> Chill Drive -> Ice -> required_held_item
  (64904, 21, 5, NULL, 'required_held_item', 'signature_move_type', 6, NULL);
