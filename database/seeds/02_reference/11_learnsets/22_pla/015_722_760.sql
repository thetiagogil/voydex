-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Arceus learnset raw pages.
-- Cross-check: Serebii and PokemonDB Pokémon Legends: Arceus learnset pages.
-- Scope note: PLA move tutor rows are seeded as tutor learn methods; mastery levels are source-only and not stored.
-- Form note: supported selectable forms from PLA availability share source learnsets where the source lists one form-neutral table.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon Legends: Arceus learnsets for default forms, species 722-760.
-- ============================================================================

INSERT INTO reference.pokemon_learnsets (
  species_id,
  form_id,
  move_id,
  version_group_id,
  game_id,
  learn_method_id,
  level_learned_at,
  source_item_id,
  move_machine_id,
  condition_summary,
  sort_order
) VALUES
  -- Rowlet - Gust - Level 1
  (722, 72200, 16, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rowlet - Leafage - Level 6
  (722, 72200, 670, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Rowlet - Roost - Level 11
  (722, 72200, 355, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Rowlet - Aerial Ace - Level 18
  (722, 72200, 332, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Rowlet - Magical Leaf - Level 21
  (722, 72200, 345, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Rowlet - Air Slash - Level 25
  (722, 72200, 403, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Rowlet - Leaf Blade - Level 34
  (722, 72200, 348, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Rowlet - Leaf Storm - Level 43
  (722, 72200, 437, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Rowlet - Swift - Tutor
  (722, 72200, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Rowlet - Rest - Tutor
  (722, 72200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Rowlet - False Swipe - Tutor
  (722, 72200, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Rowlet - Aerial Ace - Tutor
  (722, 72200, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Rowlet - Magical Leaf - Tutor
  (722, 72200, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Rowlet - Shadow Claw - Tutor
  (722, 72200, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Rowlet - Psycho Cut - Tutor
  (722, 72200, 427, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Dartrix - Gust - Level 1
  (723, 72300, 16, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dartrix - Leafage - Level 6
  (723, 72300, 670, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Dartrix - Roost - Level 11
  (723, 72300, 355, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Dartrix - Aerial Ace - Level 18
  (723, 72300, 332, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Dartrix - Magical Leaf - Level 21
  (723, 72300, 345, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Dartrix - Air Slash - Level 25
  (723, 72300, 403, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Dartrix - Leaf Blade - Level 34
  (723, 72300, 348, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Dartrix - Leaf Storm - Level 43
  (723, 72300, 437, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Dartrix - Swift - Tutor
  (723, 72300, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Dartrix - Rest - Tutor
  (723, 72300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Dartrix - False Swipe - Tutor
  (723, 72300, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Dartrix - Aerial Ace - Tutor
  (723, 72300, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Dartrix - Magical Leaf - Tutor
  (723, 72300, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Dartrix - Energy Ball - Tutor
  (723, 72300, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Dartrix - Shadow Claw - Tutor
  (723, 72300, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Dartrix - Psycho Cut - Tutor
  (723, 72300, 427, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16);
