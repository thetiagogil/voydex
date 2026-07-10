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
-- Pokémon Legends: Arceus learnsets for default forms, species 494-550.
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
  -- Oshawott - Tackle - Level 1
  (501, 50100, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oshawott - Aqua Jet - Level 6
  (501, 50100, 453, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Oshawott - Swords Dance - Level 11
  (501, 50100, 14, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Oshawott - Water Pulse - Level 18
  (501, 50100, 352, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Oshawott - Slash - Level 25
  (501, 50100, 163, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Oshawott - Aqua Tail - Level 34
  (501, 50100, 401, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Oshawott - Hydro Pump - Level 43
  (501, 50100, 56, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Oshawott - Ice Beam - Tutor
  (501, 50100, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Oshawott - Focus Energy - Tutor
  (501, 50100, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Oshawott - Rest - Tutor
  (501, 50100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Oshawott - Icy Wind - Tutor
  (501, 50100, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Oshawott - False Swipe - Tutor
  (501, 50100, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Oshawott - Iron Tail - Tutor
  (501, 50100, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Oshawott - Rock Smash - Tutor
  (501, 50100, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Oshawott - Aerial Ace - Tutor
  (501, 50100, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Oshawott - Water Pulse - Tutor
  (501, 50100, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Oshawott - Aqua Tail - Tutor
  (501, 50100, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Oshawott - X-Scissor - Tutor
  (501, 50100, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Dewott - Tackle - Level 1
  (502, 50200, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dewott - Aqua Jet - Level 6
  (502, 50200, 453, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Dewott - Swords Dance - Level 11
  (502, 50200, 14, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Dewott - Water Pulse - Level 18
  (502, 50200, 352, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Dewott - Slash - Level 25
  (502, 50200, 163, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Dewott - Aqua Tail - Level 34
  (502, 50200, 401, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Dewott - Hydro Pump - Level 43
  (502, 50200, 56, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Dewott - Ice Beam - Tutor
  (502, 50200, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Dewott - Focus Energy - Tutor
  (502, 50200, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Dewott - Rest - Tutor
  (502, 50200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Dewott - Icy Wind - Tutor
  (502, 50200, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Dewott - False Swipe - Tutor
  (502, 50200, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Dewott - Iron Tail - Tutor
  (502, 50200, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Dewott - Rock Smash - Tutor
  (502, 50200, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Dewott - Aerial Ace - Tutor
  (502, 50200, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Dewott - Water Pulse - Tutor
  (502, 50200, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Dewott - Aqua Tail - Tutor
  (502, 50200, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Dewott - X-Scissor - Tutor
  (502, 50200, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Petilil - Absorb - Level 1
  (548, 54800, 71, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Petilil - Leafage - Level 5
  (548, 54800, 670, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Petilil - Stun Spore - Level 9
  (548, 54800, 78, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Petilil - Poison Powder - Level 15
  (548, 54800, 77, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Petilil - Energy Ball - Level 21
  (548, 54800, 412, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Petilil - Sleep Powder - Level 29
  (548, 54800, 79, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Petilil - Recover - Level 37
  (548, 54800, 105, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Petilil - Leaf Storm - Level 47
  (548, 54800, 437, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Petilil - Rest - Tutor
  (548, 54800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Petilil - Magical Leaf - Tutor
  (548, 54800, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Petilil - Energy Ball - Tutor
  (548, 54800, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Petilil - Baby-Doll Eyes - Tutor
  (548, 54800, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12);
