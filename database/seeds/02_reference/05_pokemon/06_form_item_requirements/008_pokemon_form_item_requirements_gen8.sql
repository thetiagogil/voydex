-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon form, item, Multitype, RKS System, and Drive pages.
-- Cross-check: Serebii item/form pages and PokemonDB form pages.
-- Scope note: item relationships for currently seeded item-driven Pokémon forms; game availability is handled later by item availability seeds.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation Start: 8
-- Table: reference.pokemon_form_item_requirements
-- Scope: item-to-form and form-to-item requirements.
INSERT INTO reference.pokemon_form_item_requirements (form_id, item_id, generation_start_id, generation_end_id, version_group_start_id, version_group_end_id, requirement_kind, type_effect_scope, type_id, notes)
VALUES
  -- Dialga (Origin Forme) -> Adamant Crystal -> form_change_item
  (48301, 57, 8, NULL, 22, NULL, 'form_change_item', NULL, NULL, 'Item behavior is game-specific: form-change item in Legends: Arceus and held-item form enabler where supported.'),
  -- Palkia (Origin Forme) -> Lustrous Globe -> form_change_item
  (48401, 58, 8, NULL, 22, NULL, 'form_change_item', NULL, NULL, 'Item behavior is game-specific: form-change item in Legends: Arceus and held-item form enabler where supported.'),
  -- Giratina (Origin) -> Griseous Core -> form_change_item
  (48701, 116, 8, NULL, 22, NULL, 'form_change_item', NULL, NULL, 'Form-change item in Legends: Arceus and held-item form enabler in Scarlet/Violet; Griseous Orb remains the relevant item in Sword/Shield and Brilliant Diamond/Shining Pearl.');
