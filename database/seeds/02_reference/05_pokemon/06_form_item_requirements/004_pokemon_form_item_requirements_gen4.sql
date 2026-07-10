-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon form, item, Multitype, RKS System, and Drive pages.
-- Cross-check: Serebii item/form pages and PokemonDB form pages.
-- Scope note: item relationships for currently seeded item-driven Pokémon forms; game availability is handled later by item availability seeds.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation Start: 4
-- Table: reference.pokemon_form_item_requirements
-- Scope: item-to-form and form-to-item requirements.
INSERT INTO reference.pokemon_form_item_requirements (form_id, item_id, generation_start_id, generation_end_id, requirement_kind, type_effect_scope, type_id, notes)
VALUES
  -- Arceus (Fighting) -> Fist Plate -> Fighting -> alternative_held_item
  (49301, 7, 4, NULL, 'alternative_held_item', 'form_type', 7, NULL),
  -- Arceus (Flying) -> Sky Plate -> Flying -> alternative_held_item
  (49302, 10, 4, NULL, 'alternative_held_item', 'form_type', 10, NULL),
  -- Arceus (Poison) -> Toxic Plate -> Poison -> alternative_held_item
  (49303, 8, 4, NULL, 'alternative_held_item', 'form_type', 8, NULL),
  -- Arceus (Ground) -> Earth Plate -> Ground -> alternative_held_item
  (49304, 9, 4, NULL, 'alternative_held_item', 'form_type', 9, NULL),
  -- Arceus (Rock) -> Stone Plate -> Rock -> alternative_held_item
  (49305, 13, 4, NULL, 'alternative_held_item', 'form_type', 13, NULL),
  -- Arceus (Bug) -> Insect Plate -> Bug -> alternative_held_item
  (49306, 12, 4, NULL, 'alternative_held_item', 'form_type', 12, NULL),
  -- Arceus (Ghost) -> Spooky Plate -> Ghost -> alternative_held_item
  (49307, 14, 4, NULL, 'alternative_held_item', 'form_type', 14, NULL),
  -- Arceus (Steel) -> Iron Plate -> Steel -> alternative_held_item
  (49308, 17, 4, NULL, 'alternative_held_item', 'form_type', 17, NULL),
  -- Arceus (Fire) -> Flame Plate -> Fire -> alternative_held_item
  (49309, 2, 4, NULL, 'alternative_held_item', 'form_type', 2, NULL),
  -- Arceus (Water) -> Splash Plate -> Water -> alternative_held_item
  (49310, 3, 4, NULL, 'alternative_held_item', 'form_type', 3, NULL),
  -- Arceus (Grass) -> Meadow Plate -> Grass -> alternative_held_item
  (49311, 5, 4, NULL, 'alternative_held_item', 'form_type', 5, NULL),
  -- Arceus (Electric) -> Zap Plate -> Electric -> alternative_held_item
  (49312, 4, 4, NULL, 'alternative_held_item', 'form_type', 4, NULL),
  -- Arceus (Psychic) -> Mind Plate -> Psychic -> alternative_held_item
  (49313, 11, 4, NULL, 'alternative_held_item', 'form_type', 11, NULL),
  -- Arceus (Ice) -> Icicle Plate -> Ice -> alternative_held_item
  (49314, 6, 4, NULL, 'alternative_held_item', 'form_type', 6, NULL),
  -- Arceus (Dragon) -> Draco Plate -> Dragon -> alternative_held_item
  (49315, 15, 4, NULL, 'alternative_held_item', 'form_type', 15, NULL),
  -- Arceus (Dark) -> Dread Plate -> Dark -> alternative_held_item
  (49316, 16, 4, NULL, 'alternative_held_item', 'form_type', 16, NULL);

INSERT INTO reference.pokemon_form_item_requirements (form_id, item_id, generation_start_id, generation_end_id, version_group_start_id, version_group_end_id, requirement_kind, type_effect_scope, type_id, notes)
VALUES
  -- Giratina (Origin) -> Griseous Orb -> required_held_item
  (48701, 1, 4, 8, NULL, 21, 'required_held_item', NULL, NULL, 'Used for Origin Forme from Platinum through Sword/Shield and Brilliant Diamond/Shining Pearl; Legends: Arceus and Scarlet/Violet use Griseous Core.');
