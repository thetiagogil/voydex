-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product definition.
-- Cross-check: Bulbapedia, Serebii, and PokemonDB terminology.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon-relevant item category rows for held items and biography/mechanics items.
-- ============================================================================
INSERT INTO reference.item_categories (id, slug, name, description, sort_order)
VALUES
  -- Poke Balls
  (1, 'poke_ball', 'Poke Balls', 'Caught-ball biography items used to record how a Pokémon was obtained.', 1),
  -- Held Items
  (2, 'held_item', 'Held Items', 'Items Pokémon can hold, including battle, utility, and form-relevant held items.', 2),
  -- Evolution Items
  (3, 'evolution_item', 'Evolution Items', 'Items that trigger or explain Pokémon evolution or origin history.', 3),
  -- Fossils
  (4, 'fossil', 'Fossils', 'Fossil items that explain Pokémon origin or restoration.', 4),
  -- Form-Change Items
  (5, 'form_change_item', 'Form-Change Items', 'Items that affect selectable, displayable, or held-item-driven Pokémon forms.', 5),
  -- Berries
  (6, 'berry', 'Berries', 'Berries relevant to Voydex as held items.', 6),
  -- Mega Stones
  (7, 'mega_stone', 'Mega Stones', 'Held items that enable Mega Evolution, kept for Pokémon biography and future battle-form scope.', 7),
  -- Z-Crystals
  (8, 'z_crystal', 'Z-Crystals', 'Held items that enable Z-Moves, species-specific Z-Moves, or item-driven form rules.', 8),
  -- Type-Enhancing Items
  (9, 'type_enhancing_item', 'Type-Enhancing Items', 'Held items that boost or otherwise specialize moves of one or more Pokémon types.', 9),
  -- Battle-Effect Items
  (10, 'battle_effect_item', 'Battle-Effect Items', 'Held items whose primary value is an in-battle effect, trigger, restriction, or protection.', 10),
  -- Training Items
  (11, 'training_item', 'Training Items', 'Held items used to shape Pokémon training, effort values, or stat growth history.', 11),
  -- Experience Items
  (12, 'experience_item', 'Experience Items', 'Held items that affect experience gain or experience sharing behavior.', 12),
  -- Breeding Items
  (13, 'breeding_item', 'Breeding Items', 'Held items that affect Pokémon breeding, inheritance, or baby Pokémon availability.', 13),
  -- Contest Items
  (14, 'contest_item', 'Contest Items', 'Held items whose primary effect is in Pokémon Contest or Contest-like presentation systems.', 14),
  -- Species-Specific Items
  (15, 'species_specific_item', 'Species-Specific Items', 'Held items whose effect is limited to one Pokémon species, form family, ability group, or legendary pair.', 15),
  -- Gems
  (16, 'gem', 'Gems', 'Single-use held gems that boost one move type.', 16),
  -- Incenses
  (17, 'incense', 'Incenses', 'Held incense items with battle, type, or breeding effects.', 17),
  -- Utility Held Items
  (18, 'utility_held_item', 'Utility Held Items', 'Held items with field, money, friendship, evolution-prevention, escape, and non-damage utility effects.', 18);
