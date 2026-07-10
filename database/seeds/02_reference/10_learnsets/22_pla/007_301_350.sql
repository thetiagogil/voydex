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
-- Pokémon Legends: Arceus learnsets for default forms, species 301-350.
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
  -- Roselia - Poison Sting - Level 1
  (315, 31500, 40, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roselia - Absorb - Level 6
  (315, 31500, 71, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Roselia - Poison Powder - Level 11
  (315, 31500, 77, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Roselia - Stun Spore - Level 18
  (315, 31500, 78, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Roselia - Venoshock - Level 25
  (315, 31500, 474, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Roselia - Poison Jab - Level 34
  (315, 31500, 398, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Roselia - Energy Ball - Level 43
  (315, 31500, 412, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Roselia - Petal Dance - Level 52
  (315, 31500, 80, 22, NULL, 1, 52, NULL, NULL, NULL, 8),
  -- Roselia - Swift - Tutor
  (315, 31500, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Roselia - Rest - Tutor
  (315, 31500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Roselia - Sludge Bomb - Tutor
  (315, 31500, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Roselia - Spikes - Tutor
  (315, 31500, 191, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Roselia - Shadow Ball - Tutor
  (315, 31500, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Roselia - Magical Leaf - Tutor
  (315, 31500, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Roselia - Poison Jab - Tutor
  (315, 31500, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Roselia - Energy Ball - Tutor
  (315, 31500, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Roselia - Dazzling Gleam - Tutor
  (315, 31500, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Barboach - Mud-Slap - Level 1
  (339, 33900, 189, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Barboach - Water Pulse - Level 6
  (339, 33900, 352, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Barboach - Mud Bomb - Level 11
  (339, 33900, 426, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Barboach - Rest - Level 18
  (339, 33900, 156, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Barboach - Zen Headbutt - Level 25
  (339, 33900, 428, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Barboach - Aqua Tail - Level 34
  (339, 33900, 401, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Barboach - Earth Power - Level 43
  (339, 33900, 414, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Barboach - Ice Beam - Tutor
  (339, 33900, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Barboach - Rest - Tutor
  (339, 33900, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Barboach - Icy Wind - Tutor
  (339, 33900, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Barboach - Water Pulse - Tutor
  (339, 33900, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Barboach - Aqua Tail - Tutor
  (339, 33900, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Barboach - Earth Power - Tutor
  (339, 33900, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Barboach - Zen Headbutt - Tutor
  (339, 33900, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Barboach - Bulldoze - Tutor
  (339, 33900, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Whiscash - Mud-Slap - Level 1
  (340, 34000, 189, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whiscash - Water Pulse - Level 6
  (340, 34000, 352, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Whiscash - Mud Bomb - Level 11
  (340, 34000, 426, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Whiscash - Rest - Level 18
  (340, 34000, 156, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Whiscash - Zen Headbutt - Level 25
  (340, 34000, 428, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Whiscash - Aqua Tail - Level 34
  (340, 34000, 401, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Whiscash - Earth Power - Level 43
  (340, 34000, 414, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Whiscash - Ice Beam - Tutor
  (340, 34000, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Whiscash - Hyper Beam - Tutor
  (340, 34000, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Whiscash - Rest - Tutor
  (340, 34000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Whiscash - Rock Slide - Tutor
  (340, 34000, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Whiscash - Icy Wind - Tutor
  (340, 34000, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Whiscash - Rock Smash - Tutor
  (340, 34000, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Whiscash - Aerial Ace - Tutor
  (340, 34000, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Whiscash - Water Pulse - Tutor
  (340, 34000, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Whiscash - Aqua Tail - Tutor
  (340, 34000, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Whiscash - Earth Power - Tutor
  (340, 34000, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Whiscash - Giga Impact - Tutor
  (340, 34000, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Whiscash - Zen Headbutt - Tutor
  (340, 34000, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Whiscash - Stone Edge - Tutor
  (340, 34000, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Whiscash - Bulldoze - Tutor
  (340, 34000, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21);
