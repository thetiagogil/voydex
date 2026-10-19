-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon form, item, Multitype, RKS System, and Drive pages.
-- Cross-check: Serebii item/form pages and PokemonDB form pages.
-- Scope note: item relationships for currently seeded item-driven Pokémon forms; game availability is handled later by item availability seeds.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation Start: 7
-- Table: reference.pokemon_form_item_requirements
-- Scope: item-to-form and form-to-item requirements.
INSERT INTO reference.pokemon_form_item_requirements (form_id, item_id, generation_start_id, generation_end_id, requirement_kind, type_effect_scope, type_id, notes)
VALUES
  -- Arceus (Fighting) -> Fightinium Z -> Fighting -> alternative_held_item
  (49301, 28, 7, 7, 'alternative_held_item', 'form_type', 7, 'Type-specific Z-Crystals change Arceus form/type through Multitype in Generation VII, but do not change Judgment type.'),
  -- Arceus (Flying) -> Flyinium Z -> Flying -> alternative_held_item
  (49302, 31, 7, 7, 'alternative_held_item', 'form_type', 10, 'Type-specific Z-Crystals change Arceus form/type through Multitype in Generation VII, but do not change Judgment type.'),
  -- Arceus (Poison) -> Poisonium Z -> Poison -> alternative_held_item
  (49303, 29, 7, 7, 'alternative_held_item', 'form_type', 8, 'Type-specific Z-Crystals change Arceus form/type through Multitype in Generation VII, but do not change Judgment type.'),
  -- Arceus (Ground) -> Groundium Z -> Ground -> alternative_held_item
  (49304, 30, 7, 7, 'alternative_held_item', 'form_type', 9, 'Type-specific Z-Crystals change Arceus form/type through Multitype in Generation VII, but do not change Judgment type.'),
  -- Arceus (Rock) -> Rockium Z -> Rock -> alternative_held_item
  (49305, 34, 7, 7, 'alternative_held_item', 'form_type', 13, 'Type-specific Z-Crystals change Arceus form/type through Multitype in Generation VII, but do not change Judgment type.'),
  -- Arceus (Bug) -> Buginium Z -> Bug -> alternative_held_item
  (49306, 33, 7, 7, 'alternative_held_item', 'form_type', 12, 'Type-specific Z-Crystals change Arceus form/type through Multitype in Generation VII, but do not change Judgment type.'),
  -- Arceus (Ghost) -> Ghostium Z -> Ghost -> alternative_held_item
  (49307, 35, 7, 7, 'alternative_held_item', 'form_type', 14, 'Type-specific Z-Crystals change Arceus form/type through Multitype in Generation VII, but do not change Judgment type.'),
  -- Arceus (Steel) -> Steelium Z -> Steel -> alternative_held_item
  (49308, 38, 7, 7, 'alternative_held_item', 'form_type', 17, 'Type-specific Z-Crystals change Arceus form/type through Multitype in Generation VII, but do not change Judgment type.'),
  -- Arceus (Fire) -> Firium Z -> Fire -> alternative_held_item
  (49309, 23, 7, 7, 'alternative_held_item', 'form_type', 2, 'Type-specific Z-Crystals change Arceus form/type through Multitype in Generation VII, but do not change Judgment type.'),
  -- Arceus (Water) -> Waterium Z -> Water -> alternative_held_item
  (49310, 24, 7, 7, 'alternative_held_item', 'form_type', 3, 'Type-specific Z-Crystals change Arceus form/type through Multitype in Generation VII, but do not change Judgment type.'),
  -- Arceus (Grass) -> Grassium Z -> Grass -> alternative_held_item
  (49311, 26, 7, 7, 'alternative_held_item', 'form_type', 5, 'Type-specific Z-Crystals change Arceus form/type through Multitype in Generation VII, but do not change Judgment type.'),
  -- Arceus (Electric) -> Electrium Z -> Electric -> alternative_held_item
  (49312, 25, 7, 7, 'alternative_held_item', 'form_type', 4, 'Type-specific Z-Crystals change Arceus form/type through Multitype in Generation VII, but do not change Judgment type.'),
  -- Arceus (Psychic) -> Psychium Z -> Psychic -> alternative_held_item
  (49313, 32, 7, 7, 'alternative_held_item', 'form_type', 11, 'Type-specific Z-Crystals change Arceus form/type through Multitype in Generation VII, but do not change Judgment type.'),
  -- Arceus (Ice) -> Icium Z -> Ice -> alternative_held_item
  (49314, 27, 7, 7, 'alternative_held_item', 'form_type', 6, 'Type-specific Z-Crystals change Arceus form/type through Multitype in Generation VII, but do not change Judgment type.'),
  -- Arceus (Dragon) -> Dragonium Z -> Dragon -> alternative_held_item
  (49315, 36, 7, 7, 'alternative_held_item', 'form_type', 15, 'Type-specific Z-Crystals change Arceus form/type through Multitype in Generation VII, but do not change Judgment type.'),
  -- Arceus (Dark) -> Darkinium Z -> Dark -> alternative_held_item
  (49316, 37, 7, 7, 'alternative_held_item', 'form_type', 16, 'Type-specific Z-Crystals change Arceus form/type through Multitype in Generation VII, but do not change Judgment type.'),
  -- Arceus (Fairy) -> Fairium Z -> Fairy -> alternative_held_item
  (49317, 39, 7, 7, 'alternative_held_item', 'form_type', 18, 'Type-specific Z-Crystals change Arceus form/type through Multitype in Generation VII, but do not change Judgment type.'),
  -- Silvally (Fighting) -> Fighting Memory -> Fighting -> required_held_item
  (77301, 45, 7, NULL, 'required_held_item', 'form_type', 7, NULL),
  -- Silvally (Flying) -> Flying Memory -> Flying -> required_held_item
  (77302, 48, 7, NULL, 'required_held_item', 'form_type', 10, NULL),
  -- Silvally (Poison) -> Poison Memory -> Poison -> required_held_item
  (77303, 46, 7, NULL, 'required_held_item', 'form_type', 8, NULL),
  -- Silvally (Ground) -> Ground Memory -> Ground -> required_held_item
  (77304, 47, 7, NULL, 'required_held_item', 'form_type', 9, NULL),
  -- Silvally (Rock) -> Rock Memory -> Rock -> required_held_item
  (77305, 51, 7, NULL, 'required_held_item', 'form_type', 13, NULL),
  -- Silvally (Bug) -> Bug Memory -> Bug -> required_held_item
  (77306, 50, 7, NULL, 'required_held_item', 'form_type', 12, NULL),
  -- Silvally (Ghost) -> Ghost Memory -> Ghost -> required_held_item
  (77307, 52, 7, NULL, 'required_held_item', 'form_type', 14, NULL),
  -- Silvally (Steel) -> Steel Memory -> Steel -> required_held_item
  (77308, 55, 7, NULL, 'required_held_item', 'form_type', 17, NULL),
  -- Silvally (Fire) -> Fire Memory -> Fire -> required_held_item
  (77309, 40, 7, NULL, 'required_held_item', 'form_type', 2, NULL),
  -- Silvally (Water) -> Water Memory -> Water -> required_held_item
  (77310, 41, 7, NULL, 'required_held_item', 'form_type', 3, NULL),
  -- Silvally (Grass) -> Grass Memory -> Grass -> required_held_item
  (77311, 43, 7, NULL, 'required_held_item', 'form_type', 5, NULL),
  -- Silvally (Electric) -> Electric Memory -> Electric -> required_held_item
  (77312, 42, 7, NULL, 'required_held_item', 'form_type', 4, NULL),
  -- Silvally (Psychic) -> Psychic Memory -> Psychic -> required_held_item
  (77313, 49, 7, NULL, 'required_held_item', 'form_type', 11, NULL),
  -- Silvally (Ice) -> Ice Memory -> Ice -> required_held_item
  (77314, 44, 7, NULL, 'required_held_item', 'form_type', 6, NULL),
  -- Silvally (Dragon) -> Dragon Memory -> Dragon -> required_held_item
  (77315, 53, 7, NULL, 'required_held_item', 'form_type', 15, NULL),
  -- Silvally (Dark) -> Dark Memory -> Dark -> required_held_item
  (77316, 54, 7, NULL, 'required_held_item', 'form_type', 16, NULL),
  -- Silvally (Fairy) -> Fairy Memory -> Fairy -> required_held_item
  (77317, 56, 7, NULL, 'required_held_item', 'form_type', 18, NULL);
