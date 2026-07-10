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
-- Pokémon Legends: Arceus learnsets for default forms, species 701-721.
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
  -- Goomy - Bubble - Level 1
  (704, 70400, 145, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goomy - Acid Spray - Level 6
  (704, 70400, 491, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Goomy - Acid Armor - Level 11
  (704, 70400, 151, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Goomy - Water Pulse - Level 18
  (704, 70400, 352, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Goomy - Dragon Pulse - Level 25
  (704, 70400, 406, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Goomy - Shelter - Level 34
  (704, 70400, 842, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Goomy - Hydro Pump - Level 43
  (704, 70400, 56, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Goomy - Thunderbolt - Tutor
  (704, 70400, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Goomy - Rest - Tutor
  (704, 70400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Goomy - Rock Slide - Tutor
  (704, 70400, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Goomy - Sludge Bomb - Tutor
  (704, 70400, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Goomy - Outrage - Tutor
  (704, 70400, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Goomy - Iron Tail - Tutor
  (704, 70400, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Goomy - Water Pulse - Tutor
  (704, 70400, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Goomy - Draco Meteor - Tutor
  (704, 70400, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Bergmite - Tackle - Level 1
  (712, 71200, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bergmite - Powder Snow - Level 5
  (712, 71200, 181, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Bergmite - Ice Shard - Level 9
  (712, 71200, 420, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Bergmite - Bite - Level 15
  (712, 71200, 44, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Bergmite - Iron Defense - Level 21
  (712, 71200, 334, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Bergmite - Crunch - Level 29
  (712, 71200, 242, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Bergmite - Blizzard - Level 37
  (712, 71200, 59, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Bergmite - Double-Edge - Level 47
  (712, 71200, 38, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Bergmite - Ice Beam - Tutor
  (712, 71200, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Bergmite - Rest - Tutor
  (712, 71200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Bergmite - Rock Slide - Tutor
  (712, 71200, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Bergmite - Icy Wind - Tutor
  (712, 71200, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Bergmite - Rock Smash - Tutor
  (712, 71200, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Bergmite - Ice Ball - Tutor
  (712, 71200, 301, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Bergmite - Water Pulse - Tutor
  (712, 71200, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Bergmite - Ice Fang - Tutor
  (712, 71200, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Bergmite - Flash Cannon - Tutor
  (712, 71200, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Bergmite - Stone Edge - Tutor
  (712, 71200, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18);
