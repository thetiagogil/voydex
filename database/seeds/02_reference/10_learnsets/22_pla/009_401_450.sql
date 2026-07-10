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
-- Pokémon Legends: Arceus learnsets for default forms, species 401-450.
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
  -- Kricketot - Absorb - Level 1
  (401, 40100, 71, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kricketot - Tackle - Level 5
  (401, 40100, 33, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Kricketune - Absorb - Level 1
  (402, 40200, 71, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kricketune - Tackle - Level 5
  (402, 40200, 33, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Kricketune - Aerial Ace - Level 9
  (402, 40200, 332, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Kricketune - Slash - Level 15
  (402, 40200, 163, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Kricketune - Night Slash - Level 21
  (402, 40200, 400, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Kricketune - X-Scissor - Level 29
  (402, 40200, 404, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Kricketune - Swords Dance - Level 37
  (402, 40200, 14, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Kricketune - Bug Buzz - Level 47
  (402, 40200, 405, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Kricketune - Hyper Beam - Tutor
  (402, 40200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Kricketune - Focus Energy - Tutor
  (402, 40200, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Kricketune - Leech Life - Tutor
  (402, 40200, 141, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Kricketune - Rest - Tutor
  (402, 40200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Kricketune - False Swipe - Tutor
  (402, 40200, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Kricketune - Rock Smash - Tutor
  (402, 40200, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Kricketune - Aerial Ace - Tutor
  (402, 40200, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Kricketune - X-Scissor - Tutor
  (402, 40200, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Kricketune - Giga Impact - Tutor
  (402, 40200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Shinx - Quick Attack - Level 1
  (403, 40300, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shinx - Thunder Shock - Level 5
  (403, 40300, 84, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Shinx - Bite - Level 9
  (403, 40300, 44, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Shinx - Thunder Fang - Level 15
  (403, 40300, 422, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Shinx - Thunder Wave - Level 21
  (403, 40300, 86, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Shinx - Crunch - Level 29
  (403, 40300, 242, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Shinx - Wild Charge - Level 37
  (403, 40300, 528, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Shinx - Thunder - Level 47
  (403, 40300, 87, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Shinx - Thunderbolt - Tutor
  (403, 40300, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Shinx - Swift - Tutor
  (403, 40300, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Shinx - Rest - Tutor
  (403, 40300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Shinx - Iron Tail - Tutor
  (403, 40300, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Shinx - Thunder Fang - Tutor
  (403, 40300, 422, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Shinx - Ice Fang - Tutor
  (403, 40300, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Shinx - Fire Fang - Tutor
  (403, 40300, 424, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Shinx - Charge Beam - Tutor
  (403, 40300, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Shinx - Wild Charge - Tutor
  (403, 40300, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Shinx - Snarl - Tutor
  (403, 40300, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Shinx - Play Rough - Tutor
  (403, 40300, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Shinx - Baby-Doll Eyes - Tutor
  (403, 40300, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Luxio - Quick Attack - Level 1
  (404, 40400, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luxio - Thunder Shock - Level 5
  (404, 40400, 84, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Luxio - Bite - Level 9
  (404, 40400, 44, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Luxio - Thunder Fang - Level 15
  (404, 40400, 422, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Luxio - Thunder Wave - Level 21
  (404, 40400, 86, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Luxio - Crunch - Level 29
  (404, 40400, 242, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Luxio - Wild Charge - Level 37
  (404, 40400, 528, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Luxio - Thunder - Level 47
  (404, 40400, 87, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Luxio - Thunderbolt - Tutor
  (404, 40400, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Luxio - Swift - Tutor
  (404, 40400, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Luxio - Rest - Tutor
  (404, 40400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Luxio - Iron Tail - Tutor
  (404, 40400, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Luxio - Thunder Fang - Tutor
  (404, 40400, 422, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Luxio - Ice Fang - Tutor
  (404, 40400, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Luxio - Fire Fang - Tutor
  (404, 40400, 424, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Luxio - Charge Beam - Tutor
  (404, 40400, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Luxio - Wild Charge - Tutor
  (404, 40400, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Luxio - Snarl - Tutor
  (404, 40400, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Luxio - Play Rough - Tutor
  (404, 40400, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Luxio - Baby-Doll Eyes - Tutor
  (404, 40400, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Luxray - Quick Attack - Level 1
  (405, 40500, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luxray - Thunder Shock - Level 5
  (405, 40500, 84, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Luxray - Bite - Level 9
  (405, 40500, 44, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Luxray - Thunder Fang - Level 15
  (405, 40500, 422, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Luxray - Thunder Wave - Level 21
  (405, 40500, 86, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Luxray - Crunch - Level 29
  (405, 40500, 242, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Luxray - Wild Charge - Level 37
  (405, 40500, 528, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Luxray - Thunder - Level 47
  (405, 40500, 87, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Luxray - Hyper Beam - Tutor
  (405, 40500, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Luxray - Thunderbolt - Tutor
  (405, 40500, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Luxray - Swift - Tutor
  (405, 40500, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Luxray - Rest - Tutor
  (405, 40500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Luxray - Iron Tail - Tutor
  (405, 40500, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Luxray - Giga Impact - Tutor
  (405, 40500, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Luxray - Thunder Fang - Tutor
  (405, 40500, 422, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Luxray - Ice Fang - Tutor
  (405, 40500, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Luxray - Fire Fang - Tutor
  (405, 40500, 424, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Luxray - Charge Beam - Tutor
  (405, 40500, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Luxray - Wild Charge - Tutor
  (405, 40500, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Luxray - Snarl - Tutor
  (405, 40500, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Luxray - Play Rough - Tutor
  (405, 40500, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Luxray - Baby-Doll Eyes - Tutor
  (405, 40500, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Budew - Poison Sting - Level 1
  (406, 40600, 40, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Budew - Absorb - Level 6
  (406, 40600, 71, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Budew - Poison Powder - Level 11
  (406, 40600, 77, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Budew - Stun Spore - Level 18
  (406, 40600, 78, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Budew - Venoshock - Level 25
  (406, 40600, 474, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Budew - Poison Jab - Level 34
  (406, 40600, 398, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Budew - Energy Ball - Level 43
  (406, 40600, 412, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Budew - Petal Dance - Level 52
  (406, 40600, 80, 22, NULL, 1, 52, NULL, NULL, NULL, 8),
  -- Budew - Swift - Tutor
  (406, 40600, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Budew - Rest - Tutor
  (406, 40600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Budew - Sludge Bomb - Tutor
  (406, 40600, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Budew - Spikes - Tutor
  (406, 40600, 191, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Budew - Shadow Ball - Tutor
  (406, 40600, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Budew - Poison Jab - Tutor
  (406, 40600, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Budew - Energy Ball - Tutor
  (406, 40600, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Budew - Dazzling Gleam - Tutor
  (406, 40600, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Roserade - Poison Sting - Level 1
  (407, 40700, 40, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roserade - Absorb - Level 6
  (407, 40700, 71, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Roserade - Poison Powder - Level 11
  (407, 40700, 77, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Roserade - Stun Spore - Level 18
  (407, 40700, 78, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Roserade - Venoshock - Level 25
  (407, 40700, 474, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Roserade - Poison Jab - Level 34
  (407, 40700, 398, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Roserade - Energy Ball - Level 43
  (407, 40700, 412, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Roserade - Petal Dance - Level 52
  (407, 40700, 80, 22, NULL, 1, 52, NULL, NULL, NULL, 8),
  -- Roserade - Hyper Beam - Tutor
  (407, 40700, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Roserade - Swift - Tutor
  (407, 40700, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Roserade - Rest - Tutor
  (407, 40700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Roserade - Sludge Bomb - Tutor
  (407, 40700, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Roserade - Spikes - Tutor
  (407, 40700, 191, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Roserade - Shadow Ball - Tutor
  (407, 40700, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Roserade - Magical Leaf - Tutor
  (407, 40700, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Roserade - Poison Jab - Tutor
  (407, 40700, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Roserade - Energy Ball - Tutor
  (407, 40700, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Roserade - Giga Impact - Tutor
  (407, 40700, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Roserade - Dazzling Gleam - Tutor
  (407, 40700, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Cranidos - Tackle - Level 1
  (408, 40800, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cranidos - Ancient Power - Level 5
  (408, 40800, 246, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Cranidos - Bite - Level 9
  (408, 40800, 44, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Cranidos - Rock Slide - Level 15
  (408, 40800, 157, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Cranidos - Iron Head - Level 21
  (408, 40800, 442, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Cranidos - Crunch - Level 29
  (408, 40800, 242, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Cranidos - Double-Edge - Level 37
  (408, 40800, 38, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Cranidos - Head Smash - Level 47
  (408, 40800, 457, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Cranidos - Fire Punch - Tutor
  (408, 40800, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Cranidos - Thunder Punch - Tutor
  (408, 40800, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Cranidos - Flamethrower - Tutor
  (408, 40800, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Cranidos - Ice Beam - Tutor
  (408, 40800, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Cranidos - Thunderbolt - Tutor
  (408, 40800, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Cranidos - Focus Energy - Tutor
  (408, 40800, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Cranidos - Rest - Tutor
  (408, 40800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Cranidos - Rock Slide - Tutor
  (408, 40800, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Cranidos - Iron Tail - Tutor
  (408, 40800, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Cranidos - Rock Smash - Tutor
  (408, 40800, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Cranidos - Earth Power - Tutor
  (408, 40800, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Cranidos - Zen Headbutt - Tutor
  (408, 40800, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Cranidos - Iron Head - Tutor
  (408, 40800, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Cranidos - Stone Edge - Tutor
  (408, 40800, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Cranidos - Stealth Rock - Tutor
  (408, 40800, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Cranidos - Bulldoze - Tutor
  (408, 40800, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Rampardos - Tackle - Level 1
  (409, 40900, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rampardos - Ancient Power - Level 5
  (409, 40900, 246, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Rampardos - Bite - Level 9
  (409, 40900, 44, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Rampardos - Rock Slide - Level 15
  (409, 40900, 157, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Rampardos - Iron Head - Level 21
  (409, 40900, 442, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Rampardos - Crunch - Level 29
  (409, 40900, 242, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Rampardos - Double-Edge - Level 37
  (409, 40900, 38, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Rampardos - Head Smash - Level 47
  (409, 40900, 457, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Rampardos - Fire Punch - Tutor
  (409, 40900, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Rampardos - Thunder Punch - Tutor
  (409, 40900, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Rampardos - Flamethrower - Tutor
  (409, 40900, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Rampardos - Ice Beam - Tutor
  (409, 40900, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Rampardos - Hyper Beam - Tutor
  (409, 40900, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Rampardos - Thunderbolt - Tutor
  (409, 40900, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Rampardos - Focus Energy - Tutor
  (409, 40900, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Rampardos - Rest - Tutor
  (409, 40900, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Rampardos - Rock Slide - Tutor
  (409, 40900, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Rampardos - Outrage - Tutor
  (409, 40900, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Rampardos - Iron Tail - Tutor
  (409, 40900, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Rampardos - Rock Smash - Tutor
  (409, 40900, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Rampardos - Earth Power - Tutor
  (409, 40900, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Rampardos - Giga Impact - Tutor
  (409, 40900, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Rampardos - Zen Headbutt - Tutor
  (409, 40900, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Rampardos - Iron Head - Tutor
  (409, 40900, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Rampardos - Stone Edge - Tutor
  (409, 40900, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Rampardos - Stealth Rock - Tutor
  (409, 40900, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Rampardos - Bulldoze - Tutor
  (409, 40900, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Rampardos - Power Shift - Tutor
  (409, 40900, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Shieldon - Tackle - Level 1
  (410, 41000, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shieldon - Ancient Power - Level 5
  (410, 41000, 246, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Shieldon - Iron Defense - Level 9
  (410, 41000, 334, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Shieldon - Rock Slide - Level 15
  (410, 41000, 157, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Shieldon - Iron Head - Level 21
  (410, 41000, 442, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Shieldon - Earth Power - Level 29
  (410, 41000, 414, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Shieldon - Stealth Rock - Level 37
  (410, 41000, 446, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Shieldon - Double-Edge - Level 47
  (410, 41000, 38, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Shieldon - Flamethrower - Tutor
  (410, 41000, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Shieldon - Ice Beam - Tutor
  (410, 41000, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Shieldon - Thunderbolt - Tutor
  (410, 41000, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Shieldon - Focus Energy - Tutor
  (410, 41000, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Shieldon - Rest - Tutor
  (410, 41000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Shieldon - Rock Slide - Tutor
  (410, 41000, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Shieldon - Iron Tail - Tutor
  (410, 41000, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Shieldon - Rock Smash - Tutor
  (410, 41000, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Shieldon - Earth Power - Tutor
  (410, 41000, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Shieldon - Flash Cannon - Tutor
  (410, 41000, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Shieldon - Iron Head - Tutor
  (410, 41000, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Shieldon - Stone Edge - Tutor
  (410, 41000, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Shieldon - Stealth Rock - Tutor
  (410, 41000, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Shieldon - Bulldoze - Tutor
  (410, 41000, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Shieldon - Steel Beam - Tutor
  (410, 41000, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Bastiodon - Tackle - Level 1
  (411, 41100, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bastiodon - Ancient Power - Level 5
  (411, 41100, 246, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Bastiodon - Iron Defense - Level 9
  (411, 41100, 334, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Bastiodon - Rock Slide - Level 15
  (411, 41100, 157, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Bastiodon - Iron Head - Level 21
  (411, 41100, 442, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Bastiodon - Earth Power - Level 29
  (411, 41100, 414, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Bastiodon - Stealth Rock - Level 37
  (411, 41100, 446, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Bastiodon - Double-Edge - Level 47
  (411, 41100, 38, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Bastiodon - Flamethrower - Tutor
  (411, 41100, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Bastiodon - Ice Beam - Tutor
  (411, 41100, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Bastiodon - Hyper Beam - Tutor
  (411, 41100, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Bastiodon - Thunderbolt - Tutor
  (411, 41100, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Bastiodon - Focus Energy - Tutor
  (411, 41100, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Bastiodon - Rest - Tutor
  (411, 41100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Bastiodon - Rock Slide - Tutor
  (411, 41100, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Bastiodon - Outrage - Tutor
  (411, 41100, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Bastiodon - Iron Tail - Tutor
  (411, 41100, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Bastiodon - Rock Smash - Tutor
  (411, 41100, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Bastiodon - Earth Power - Tutor
  (411, 41100, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Bastiodon - Giga Impact - Tutor
  (411, 41100, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Bastiodon - Flash Cannon - Tutor
  (411, 41100, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Bastiodon - Iron Head - Tutor
  (411, 41100, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Bastiodon - Stone Edge - Tutor
  (411, 41100, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Bastiodon - Stealth Rock - Tutor
  (411, 41100, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Bastiodon - Bulldoze - Tutor
  (411, 41100, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Bastiodon - Steel Beam - Tutor
  (411, 41100, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Bastiodon - Power Shift - Tutor
  (411, 41100, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Burmy - Struggle Bug - Level 1
  (412, 41200, 522, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam - Struggle Bug - Level 1
  (413, 41300, 522, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam - Gust - Level 6
  (413, 41300, 16, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Wormadam - Confusion - Level 11
  (413, 41300, 93, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Wormadam - Silver Wind - Level 18
  (413, 41300, 318, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Wormadam - Energy Ball - Level 25
  (413, 41300, 412, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Wormadam - Earth Power - Level 25
  (413, 41300, 414, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Wormadam - Iron Head - Level 25
  (413, 41300, 442, 22, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Wormadam - Psychic - Level 34
  (413, 41300, 94, 22, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Wormadam - Bug Buzz - Level 43
  (413, 41300, 405, 22, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Wormadam - Hyper Beam - Tutor
  (413, 41300, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Wormadam - Psychic - Tutor
  (413, 41300, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Wormadam - Rest - Tutor
  (413, 41300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Wormadam - Shadow Ball - Tutor
  (413, 41300, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Wormadam - Magical Leaf - Tutor
  (413, 41300, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Wormadam - Energy Ball - Tutor
  (413, 41300, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Wormadam - Giga Impact - Tutor
  (413, 41300, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Mothim - Struggle Bug - Level 1
  (414, 41400, 522, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mothim - Gust - Level 6
  (414, 41400, 16, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Mothim - Confusion - Level 11
  (414, 41400, 93, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Mothim - Silver Wind - Level 18
  (414, 41400, 318, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Mothim - Air Slash - Level 25
  (414, 41400, 403, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Mothim - Psychic - Level 34
  (414, 41400, 94, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Mothim - Bug Buzz - Level 43
  (414, 41400, 405, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Mothim - Hyper Beam - Tutor
  (414, 41400, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Mothim - Psychic - Tutor
  (414, 41400, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Mothim - Swift - Tutor
  (414, 41400, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Mothim - Rest - Tutor
  (414, 41400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Mothim - Shadow Ball - Tutor
  (414, 41400, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Mothim - Aerial Ace - Tutor
  (414, 41400, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Mothim - Energy Ball - Tutor
  (414, 41400, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Mothim - Giga Impact - Tutor
  (414, 41400, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Mothim - Ominous Wind - Tutor
  (414, 41400, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Combee - Gust - Level 1
  (415, 41500, 16, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Combee - Struggle Bug - Level 6
  (415, 41500, 522, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Combee - Swift - Tutor
  (415, 41500, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 3),
  -- Combee - Ominous Wind - Tutor
  (415, 41500, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 4),
  -- Vespiquen - Gust - Level 1
  (416, 41600, 16, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vespiquen - Struggle Bug - Level 6
  (416, 41600, 522, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Vespiquen - Pin Missile - Level 11
  (416, 41600, 42, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Vespiquen - Silver Wind - Level 18
  (416, 41600, 318, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Vespiquen - Slash - Level 25
  (416, 41600, 163, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Vespiquen - Air Slash - Level 29
  (416, 41600, 403, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Vespiquen - Power Gem - Level 34
  (416, 41600, 408, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Vespiquen - Bug Buzz - Level 43
  (416, 41600, 405, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Vespiquen - Recover - Level 52
  (416, 41600, 105, 22, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Vespiquen - Hyper Beam - Tutor
  (416, 41600, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Vespiquen - Swift - Tutor
  (416, 41600, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Vespiquen - Rest - Tutor
  (416, 41600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Vespiquen - Sludge Bomb - Tutor
  (416, 41600, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Vespiquen - Aerial Ace - Tutor
  (416, 41600, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Vespiquen - X-Scissor - Tutor
  (416, 41600, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Vespiquen - Giga Impact - Tutor
  (416, 41600, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Vespiquen - Ominous Wind - Tutor
  (416, 41600, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Vespiquen - Power Shift - Tutor
  (416, 41600, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Pachirisu - Quick Attack - Level 1
  (417, 41700, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pachirisu - Thunder Shock - Level 5
  (417, 41700, 84, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Pachirisu - Bite - Level 9
  (417, 41700, 44, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Pachirisu - Spark - Level 15
  (417, 41700, 209, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Pachirisu - Baby-Doll Eyes - Level 21
  (417, 41700, 608, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Pachirisu - Crunch - Level 29
  (417, 41700, 242, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Pachirisu - Thunder Wave - Level 37
  (417, 41700, 86, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Pachirisu - Thunder - Level 47
  (417, 41700, 87, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Pachirisu - Thunder Punch - Tutor
  (417, 41700, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Pachirisu - Thunderbolt - Tutor
  (417, 41700, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Pachirisu - Swift - Tutor
  (417, 41700, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Pachirisu - Rest - Tutor
  (417, 41700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Pachirisu - Iron Tail - Tutor
  (417, 41700, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Pachirisu - Charge Beam - Tutor
  (417, 41700, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Pachirisu - Play Rough - Tutor
  (417, 41700, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Pachirisu - Baby-Doll Eyes - Tutor
  (417, 41700, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Buizel - Quick Attack - Level 1
  (418, 41800, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Buizel - Aqua Jet - Level 6
  (418, 41800, 453, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Buizel - Swift - Level 11
  (418, 41800, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Buizel - Water Pulse - Level 18
  (418, 41800, 352, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Buizel - Double Hit - Level 25
  (418, 41800, 458, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Buizel - Aqua Tail - Level 34
  (418, 41800, 401, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Buizel - Hydro Pump - Level 43
  (418, 41800, 56, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Buizel - Ice Punch - Tutor
  (418, 41800, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Buizel - Ice Beam - Tutor
  (418, 41800, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Buizel - Swift - Tutor
  (418, 41800, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Buizel - Rest - Tutor
  (418, 41800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Buizel - Icy Wind - Tutor
  (418, 41800, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Buizel - Iron Tail - Tutor
  (418, 41800, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Buizel - Rock Smash - Tutor
  (418, 41800, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Buizel - Bulk Up - Tutor
  (418, 41800, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Buizel - Water Pulse - Tutor
  (418, 41800, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Buizel - Aqua Tail - Tutor
  (418, 41800, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Floatzel - Quick Attack - Level 1
  (419, 41900, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Floatzel - Aqua Jet - Level 6
  (419, 41900, 453, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Floatzel - Swift - Level 11
  (419, 41900, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Floatzel - Water Pulse - Level 18
  (419, 41900, 352, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Floatzel - Double Hit - Level 25
  (419, 41900, 458, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Floatzel - Crunch - Level 30
  (419, 41900, 242, 22, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Floatzel - Aqua Tail - Level 34
  (419, 41900, 401, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Floatzel - Hydro Pump - Level 43
  (419, 41900, 56, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Floatzel - Ice Punch - Tutor
  (419, 41900, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Floatzel - Ice Beam - Tutor
  (419, 41900, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Floatzel - Hyper Beam - Tutor
  (419, 41900, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Floatzel - Swift - Tutor
  (419, 41900, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Floatzel - Rest - Tutor
  (419, 41900, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Floatzel - Icy Wind - Tutor
  (419, 41900, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Floatzel - Iron Tail - Tutor
  (419, 41900, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Floatzel - Rock Smash - Tutor
  (419, 41900, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Floatzel - Bulk Up - Tutor
  (419, 41900, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Floatzel - Water Pulse - Tutor
  (419, 41900, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Floatzel - Aqua Tail - Tutor
  (419, 41900, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Floatzel - Giga Impact - Tutor
  (419, 41900, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Floatzel - Ice Fang - Tutor
  (419, 41900, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Cherubi - Absorb - Level 1
  (420, 42000, 71, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cherubi - Tackle - Level 5
  (420, 42000, 33, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Cherubi - Stun Spore - Level 9
  (420, 42000, 78, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Cherubi - Draining Kiss - Level 15
  (420, 42000, 577, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Cherubi - Energy Ball - Level 21
  (420, 42000, 412, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Cherubi - Sleep Powder - Level 29
  (420, 42000, 79, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Cherubi - Double-Edge - Level 37
  (420, 42000, 38, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Cherubi - Petal Dance - Level 47
  (420, 42000, 80, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Cherubi - Rest - Tutor
  (420, 42000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Cherubi - Magical Leaf - Tutor
  (420, 42000, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Cherubi - Energy Ball - Tutor
  (420, 42000, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Cherubi - Dazzling Gleam - Tutor
  (420, 42000, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Cherrim - Absorb - Level 1
  (421, 42100, 71, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cherrim - Tackle - Level 5
  (421, 42100, 33, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Cherrim - Stun Spore - Level 9
  (421, 42100, 78, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Cherrim - Draining Kiss - Level 15
  (421, 42100, 577, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Cherrim - Energy Ball - Level 21
  (421, 42100, 412, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Cherrim - Sleep Powder - Level 29
  (421, 42100, 79, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Cherrim - Double-Edge - Level 37
  (421, 42100, 38, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Cherrim - Petal Dance - Level 47
  (421, 42100, 80, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Cherrim - Hyper Beam - Tutor
  (421, 42100, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Cherrim - Rest - Tutor
  (421, 42100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Cherrim - Magical Leaf - Tutor
  (421, 42100, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Cherrim - Energy Ball - Tutor
  (421, 42100, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Cherrim - Giga Impact - Tutor
  (421, 42100, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Cherrim - Play Rough - Tutor
  (421, 42100, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Cherrim - Dazzling Gleam - Tutor
  (421, 42100, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Shellos - Mud-Slap - Level 1
  (422, 42200, 189, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shellos - Tackle - Level 5
  (422, 42200, 33, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Shellos - Water Pulse - Level 9
  (422, 42200, 352, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Shellos - Ancient Power - Level 15
  (422, 42200, 246, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Shellos - Mud Bomb - Level 21
  (422, 42200, 426, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Shellos - Earth Power - Level 29
  (422, 42200, 414, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Shellos - Recover - Level 37
  (422, 42200, 105, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Shellos - Hydro Pump - Level 47
  (422, 42200, 56, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Shellos - Ice Beam - Tutor
  (422, 42200, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Shellos - Rest - Tutor
  (422, 42200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Shellos - Icy Wind - Tutor
  (422, 42200, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Shellos - Water Pulse - Tutor
  (422, 42200, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Shellos - Earth Power - Tutor
  (422, 42200, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Gastrodon - Mud-Slap - Level 1
  (423, 42300, 189, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastrodon - Tackle - Level 5
  (423, 42300, 33, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Gastrodon - Water Pulse - Level 9
  (423, 42300, 352, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Gastrodon - Ancient Power - Level 15
  (423, 42300, 246, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Gastrodon - Mud Bomb - Level 21
  (423, 42300, 426, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Gastrodon - Earth Power - Level 29
  (423, 42300, 414, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Gastrodon - Recover - Level 37
  (423, 42300, 105, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Gastrodon - Hydro Pump - Level 47
  (423, 42300, 56, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Gastrodon - Ice Beam - Tutor
  (423, 42300, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Gastrodon - Hyper Beam - Tutor
  (423, 42300, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Gastrodon - Rest - Tutor
  (423, 42300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Gastrodon - Rock Slide - Tutor
  (423, 42300, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Gastrodon - Sludge Bomb - Tutor
  (423, 42300, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Gastrodon - Icy Wind - Tutor
  (423, 42300, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Gastrodon - Rock Smash - Tutor
  (423, 42300, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Gastrodon - Water Pulse - Tutor
  (423, 42300, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Gastrodon - Earth Power - Tutor
  (423, 42300, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Gastrodon - Giga Impact - Tutor
  (423, 42300, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Gastrodon - Stone Edge - Tutor
  (423, 42300, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Gastrodon - Bulldoze - Tutor
  (423, 42300, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Ambipom - Quick Attack - Level 1
  (424, 42400, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ambipom - Nasty Plot - Level 6
  (424, 42400, 417, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Ambipom - Swift - Level 11
  (424, 42400, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Ambipom - Mud Bomb - Level 18
  (424, 42400, 426, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Ambipom - Double Hit - Level 25
  (424, 42400, 458, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Ambipom - Iron Tail - Level 34
  (424, 42400, 231, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Ambipom - Double-Edge - Level 43
  (424, 42400, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Ambipom - Fire Punch - Tutor
  (424, 42400, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Ambipom - Ice Punch - Tutor
  (424, 42400, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Ambipom - Thunder Punch - Tutor
  (424, 42400, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Ambipom - Hyper Beam - Tutor
  (424, 42400, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Ambipom - Thunderbolt - Tutor
  (424, 42400, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Ambipom - Swift - Tutor
  (424, 42400, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Ambipom - Rest - Tutor
  (424, 42400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Ambipom - Iron Tail - Tutor
  (424, 42400, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Ambipom - Shadow Ball - Tutor
  (424, 42400, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Ambipom - Rock Smash - Tutor
  (424, 42400, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Ambipom - Aerial Ace - Tutor
  (424, 42400, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Ambipom - Water Pulse - Tutor
  (424, 42400, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Ambipom - Giga Impact - Tutor
  (424, 42400, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Ambipom - Shadow Claw - Tutor
  (424, 42400, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Drifloon - Confusion - Level 1
  (425, 42500, 93, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drifloon - Hypnosis - Level 5
  (425, 42500, 95, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Drifloon - Astonish - Level 9
  (425, 42500, 310, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Drifloon - Calm Mind - Level 15
  (425, 42500, 347, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Drifloon - Hex - Level 21
  (425, 42500, 506, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Drifloon - Mystical Fire - Level 25
  (425, 42500, 595, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Drifloon - Extrasensory - Level 29
  (425, 42500, 326, 22, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Drifloon - Shadow Ball - Level 37
  (425, 42500, 247, 22, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Drifloon - Self-Destruct - Level 47
  (425, 42500, 120, 22, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Drifloon - Thunderbolt - Tutor
  (425, 42500, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Drifloon - Psychic - Tutor
  (425, 42500, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Drifloon - Focus Energy - Tutor
  (425, 42500, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Drifloon - Swift - Tutor
  (425, 42500, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Drifloon - Rest - Tutor
  (425, 42500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Drifloon - Icy Wind - Tutor
  (425, 42500, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Drifloon - Shadow Ball - Tutor
  (425, 42500, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Drifloon - Calm Mind - Tutor
  (425, 42500, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Drifloon - Charge Beam - Tutor
  (425, 42500, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Drifloon - Ominous Wind - Tutor
  (425, 42500, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Drifloon - Mystical Fire - Tutor
  (425, 42500, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Drifblim - Confusion - Level 1
  (426, 42600, 93, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drifblim - Hypnosis - Level 5
  (426, 42600, 95, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Drifblim - Astonish - Level 9
  (426, 42600, 310, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Drifblim - Calm Mind - Level 15
  (426, 42600, 347, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Drifblim - Hex - Level 21
  (426, 42600, 506, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Drifblim - Mystical Fire - Level 25
  (426, 42600, 595, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Drifblim - Extrasensory - Level 29
  (426, 42600, 326, 22, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Drifblim - Shadow Ball - Level 37
  (426, 42600, 247, 22, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Drifblim - Self-Destruct - Level 47
  (426, 42600, 120, 22, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Drifblim - Hyper Beam - Tutor
  (426, 42600, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Drifblim - Thunderbolt - Tutor
  (426, 42600, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Drifblim - Psychic - Tutor
  (426, 42600, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Drifblim - Focus Energy - Tutor
  (426, 42600, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Drifblim - Swift - Tutor
  (426, 42600, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Drifblim - Rest - Tutor
  (426, 42600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Drifblim - Icy Wind - Tutor
  (426, 42600, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Drifblim - Shadow Ball - Tutor
  (426, 42600, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Drifblim - Calm Mind - Tutor
  (426, 42600, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Drifblim - Giga Impact - Tutor
  (426, 42600, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Drifblim - Charge Beam - Tutor
  (426, 42600, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Drifblim - Ominous Wind - Tutor
  (426, 42600, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Drifblim - Mystical Fire - Tutor
  (426, 42600, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Drifblim - Power Shift - Tutor
  (426, 42600, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Buneary - Quick Attack - Level 1
  (427, 42700, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Buneary - Baby-Doll Eyes - Level 5
  (427, 42700, 608, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Buneary - Swift - Level 10
  (427, 42700, 129, 22, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Buneary - Draining Kiss - Level 16
  (427, 42700, 577, 22, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Buneary - Double Hit - Level 23
  (427, 42700, 458, 22, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Buneary - Play Rough - Level 31
  (427, 42700, 583, 22, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Buneary - Double-Edge - Level 40
  (427, 42700, 38, 22, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Buneary - Fire Punch - Tutor
  (427, 42700, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Buneary - Ice Punch - Tutor
  (427, 42700, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Buneary - Thunder Punch - Tutor
  (427, 42700, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Buneary - Ice Beam - Tutor
  (427, 42700, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Buneary - Thunderbolt - Tutor
  (427, 42700, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Buneary - Swift - Tutor
  (427, 42700, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Buneary - Rest - Tutor
  (427, 42700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Buneary - Iron Tail - Tutor
  (427, 42700, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Buneary - Shadow Ball - Tutor
  (427, 42700, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Buneary - Rock Smash - Tutor
  (427, 42700, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Buneary - Water Pulse - Tutor
  (427, 42700, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Buneary - Drain Punch - Tutor
  (427, 42700, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Buneary - Charge Beam - Tutor
  (427, 42700, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Buneary - Play Rough - Tutor
  (427, 42700, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Buneary - Baby-Doll Eyes - Tutor
  (427, 42700, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Lopunny - Quick Attack - Level 1
  (428, 42800, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lopunny - Mach Punch - Level 1
  (428, 42800, 183, 22, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lopunny - Baby-Doll Eyes - Level 5
  (428, 42800, 608, 22, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Lopunny - Swift - Level 10
  (428, 42800, 129, 22, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Lopunny - Draining Kiss - Level 16
  (428, 42800, 577, 22, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Lopunny - Double Hit - Level 23
  (428, 42800, 458, 22, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Lopunny - Play Rough - Level 31
  (428, 42800, 583, 22, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Lopunny - Double-Edge - Level 40
  (428, 42800, 38, 22, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Lopunny - Close Combat - Level 40
  (428, 42800, 370, 22, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Lopunny - Fire Punch - Tutor
  (428, 42800, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Lopunny - Ice Punch - Tutor
  (428, 42800, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Lopunny - Thunder Punch - Tutor
  (428, 42800, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Lopunny - Ice Beam - Tutor
  (428, 42800, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Lopunny - Hyper Beam - Tutor
  (428, 42800, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Lopunny - Thunderbolt - Tutor
  (428, 42800, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Lopunny - Swift - Tutor
  (428, 42800, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Lopunny - Rest - Tutor
  (428, 42800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Lopunny - Iron Tail - Tutor
  (428, 42800, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Lopunny - Shadow Ball - Tutor
  (428, 42800, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Lopunny - Rock Smash - Tutor
  (428, 42800, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Lopunny - Water Pulse - Tutor
  (428, 42800, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Lopunny - Drain Punch - Tutor
  (428, 42800, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Lopunny - Giga Impact - Tutor
  (428, 42800, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Lopunny - Charge Beam - Tutor
  (428, 42800, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Lopunny - Play Rough - Tutor
  (428, 42800, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Lopunny - Baby-Doll Eyes - Tutor
  (428, 42800, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Mismagius - Shadow Sneak - Level 1
  (429, 42900, 425, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mismagius - Confusion - Level 6
  (429, 42900, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Mismagius - Hypnosis - Level 11
  (429, 42900, 95, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Mismagius - Hex - Level 18
  (429, 42900, 506, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Mismagius - Extrasensory - Level 25
  (429, 42900, 326, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Mismagius - Power Gem - Level 34
  (429, 42900, 408, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Mismagius - Shadow Ball - Level 43
  (429, 42900, 247, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Mismagius - Hyper Beam - Tutor
  (429, 42900, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Mismagius - Thunderbolt - Tutor
  (429, 42900, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Mismagius - Psychic - Tutor
  (429, 42900, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Mismagius - Swift - Tutor
  (429, 42900, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Mismagius - Rest - Tutor
  (429, 42900, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Mismagius - Icy Wind - Tutor
  (429, 42900, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Mismagius - Shadow Ball - Tutor
  (429, 42900, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Mismagius - Aerial Ace - Tutor
  (429, 42900, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Mismagius - Magical Leaf - Tutor
  (429, 42900, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Mismagius - Calm Mind - Tutor
  (429, 42900, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Mismagius - Dark Pulse - Tutor
  (429, 42900, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Mismagius - Energy Ball - Tutor
  (429, 42900, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Mismagius - Giga Impact - Tutor
  (429, 42900, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Mismagius - Charge Beam - Tutor
  (429, 42900, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Mismagius - Ominous Wind - Tutor
  (429, 42900, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Mismagius - Mystical Fire - Tutor
  (429, 42900, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Mismagius - Dazzling Gleam - Tutor
  (429, 42900, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Honchkrow - Gust - Level 1
  (430, 43000, 16, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Honchkrow - Snarl - Level 6
  (430, 43000, 555, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Honchkrow - Roost - Level 11
  (430, 43000, 355, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Honchkrow - Aerial Ace - Level 18
  (430, 43000, 332, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Honchkrow - Night Slash - Level 25
  (430, 43000, 400, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Honchkrow - Air Slash - Level 30
  (430, 43000, 403, 22, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Honchkrow - Nasty Plot - Level 34
  (430, 43000, 417, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Honchkrow - Dark Pulse - Level 43
  (430, 43000, 399, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Honchkrow - Brave Bird - Level 52
  (430, 43000, 413, 22, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Honchkrow - Hyper Beam - Tutor
  (430, 43000, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Honchkrow - Psychic - Tutor
  (430, 43000, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Honchkrow - Swift - Tutor
  (430, 43000, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Honchkrow - Rest - Tutor
  (430, 43000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Honchkrow - Icy Wind - Tutor
  (430, 43000, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Honchkrow - Shadow Ball - Tutor
  (430, 43000, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Honchkrow - Aerial Ace - Tutor
  (430, 43000, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Honchkrow - Calm Mind - Tutor
  (430, 43000, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Honchkrow - Dark Pulse - Tutor
  (430, 43000, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Honchkrow - Giga Impact - Tutor
  (430, 43000, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Honchkrow - Ominous Wind - Tutor
  (430, 43000, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Honchkrow - Snarl - Tutor
  (430, 43000, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Glameow - Tackle - Level 1
  (431, 43100, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glameow - Hypnosis - Level 5
  (431, 43100, 95, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Glameow - Nasty Plot - Level 10
  (431, 43100, 417, 22, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Glameow - Slash - Level 16
  (431, 43100, 163, 22, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Glameow - Night Slash - Level 23
  (431, 43100, 400, 22, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Glameow - Play Rough - Level 31
  (431, 43100, 583, 22, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Glameow - Double-Edge - Level 40
  (431, 43100, 38, 22, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Glameow - Thunderbolt - Tutor
  (431, 43100, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Glameow - Swift - Tutor
  (431, 43100, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Glameow - Rest - Tutor
  (431, 43100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Glameow - Iron Tail - Tutor
  (431, 43100, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Glameow - Shadow Ball - Tutor
  (431, 43100, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Glameow - Aerial Ace - Tutor
  (431, 43100, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Glameow - Water Pulse - Tutor
  (431, 43100, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Glameow - Shadow Claw - Tutor
  (431, 43100, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Glameow - Play Rough - Tutor
  (431, 43100, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Purugly - Tackle - Level 1
  (432, 43200, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Purugly - Hypnosis - Level 5
  (432, 43200, 95, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Purugly - Nasty Plot - Level 10
  (432, 43200, 417, 22, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Purugly - Slash - Level 16
  (432, 43200, 163, 22, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Purugly - Night Slash - Level 23
  (432, 43200, 400, 22, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Purugly - Play Rough - Level 31
  (432, 43200, 583, 22, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Purugly - Double-Edge - Level 40
  (432, 43200, 38, 22, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Purugly - Hyper Beam - Tutor
  (432, 43200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Purugly - Thunderbolt - Tutor
  (432, 43200, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Purugly - Swift - Tutor
  (432, 43200, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Purugly - Rest - Tutor
  (432, 43200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Purugly - Iron Tail - Tutor
  (432, 43200, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Purugly - Shadow Ball - Tutor
  (432, 43200, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Purugly - Aerial Ace - Tutor
  (432, 43200, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Purugly - Water Pulse - Tutor
  (432, 43200, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Purugly - Giga Impact - Tutor
  (432, 43200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Purugly - Shadow Claw - Tutor
  (432, 43200, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Purugly - Bulldoze - Tutor
  (432, 43200, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Purugly - Play Rough - Tutor
  (432, 43200, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Chingling - Tackle - Level 1
  (433, 43300, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chingling - Confusion - Level 6
  (433, 43300, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Chingling - Ominous Wind - Level 11
  (433, 43300, 466, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Chingling - Hypnosis - Level 18
  (433, 43300, 95, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Chingling - Extrasensory - Level 25
  (433, 43300, 326, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Chingling - Recover - Level 34
  (433, 43300, 105, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Chingling - Double-Edge - Level 43
  (433, 43300, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Chingling - Psychic - Tutor
  (433, 43300, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Chingling - Swift - Tutor
  (433, 43300, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Chingling - Rest - Tutor
  (433, 43300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Chingling - Icy Wind - Tutor
  (433, 43300, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Chingling - Shadow Ball - Tutor
  (433, 43300, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Chingling - Calm Mind - Tutor
  (433, 43300, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Chingling - Energy Ball - Tutor
  (433, 43300, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Chingling - Zen Headbutt - Tutor
  (433, 43300, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Chingling - Charge Beam - Tutor
  (433, 43300, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Chingling - Ominous Wind - Tutor
  (433, 43300, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Chingling - Dazzling Gleam - Tutor
  (433, 43300, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Stunky - Tackle - Level 1
  (434, 43400, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stunky - Acid Spray - Level 6
  (434, 43400, 491, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Stunky - Poison Gas - Level 11
  (434, 43400, 139, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Stunky - Venoshock - Level 18
  (434, 43400, 474, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Stunky - Night Slash - Level 25
  (434, 43400, 400, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Stunky - Poison Jab - Level 34
  (434, 43400, 398, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Stunky - Double-Edge - Level 43
  (434, 43400, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Stunky - Flamethrower - Tutor
  (434, 43400, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Stunky - Focus Energy - Tutor
  (434, 43400, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Stunky - Swift - Tutor
  (434, 43400, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Stunky - Rest - Tutor
  (434, 43400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Stunky - Sludge Bomb - Tutor
  (434, 43400, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Stunky - Iron Tail - Tutor
  (434, 43400, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Stunky - Shadow Ball - Tutor
  (434, 43400, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Stunky - Rock Smash - Tutor
  (434, 43400, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Stunky - Poison Jab - Tutor
  (434, 43400, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Stunky - Dark Pulse - Tutor
  (434, 43400, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Stunky - Shadow Claw - Tutor
  (434, 43400, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Stunky - Snarl - Tutor
  (434, 43400, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Stunky - Play Rough - Tutor
  (434, 43400, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Skuntank - Tackle - Level 1
  (435, 43500, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skuntank - Acid Spray - Level 6
  (435, 43500, 491, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Skuntank - Poison Gas - Level 11
  (435, 43500, 139, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Skuntank - Venoshock - Level 18
  (435, 43500, 474, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Skuntank - Night Slash - Level 25
  (435, 43500, 400, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Skuntank - Flamethrower - Level 34
  (435, 43500, 53, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Skuntank - Poison Jab - Level 34
  (435, 43500, 398, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Skuntank - Double-Edge - Level 43
  (435, 43500, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Skuntank - Flamethrower - Tutor
  (435, 43500, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Skuntank - Hyper Beam - Tutor
  (435, 43500, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Skuntank - Focus Energy - Tutor
  (435, 43500, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Skuntank - Swift - Tutor
  (435, 43500, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Skuntank - Rest - Tutor
  (435, 43500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Skuntank - Sludge Bomb - Tutor
  (435, 43500, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Skuntank - Iron Tail - Tutor
  (435, 43500, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Skuntank - Shadow Ball - Tutor
  (435, 43500, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Skuntank - Rock Smash - Tutor
  (435, 43500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Skuntank - Poison Jab - Tutor
  (435, 43500, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Skuntank - Dark Pulse - Tutor
  (435, 43500, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Skuntank - Giga Impact - Tutor
  (435, 43500, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Skuntank - Shadow Claw - Tutor
  (435, 43500, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Skuntank - Snarl - Tutor
  (435, 43500, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Skuntank - Play Rough - Tutor
  (435, 43500, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Bronzor - Tackle - Level 1
  (436, 43600, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bronzor - Confusion - Level 6
  (436, 43600, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Bronzor - Iron Defense - Level 11
  (436, 43600, 334, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Bronzor - Hex - Level 18
  (436, 43600, 506, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Bronzor - Hypnosis - Level 25
  (436, 43600, 95, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Bronzor - Flash Cannon - Level 34
  (436, 43600, 430, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Bronzor - Extrasensory - Level 43
  (436, 43600, 326, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Bronzor - Psychic - Tutor
  (436, 43600, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Bronzor - Rest - Tutor
  (436, 43600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Bronzor - Rock Slide - Tutor
  (436, 43600, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Bronzor - Shadow Ball - Tutor
  (436, 43600, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Bronzor - Flash Cannon - Tutor
  (436, 43600, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Bronzor - Stealth Rock - Tutor
  (436, 43600, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Bronzor - Charge Beam - Tutor
  (436, 43600, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Bronzor - Bulldoze - Tutor
  (436, 43600, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Bronzor - Steel Beam - Tutor
  (436, 43600, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Bronzong - Tackle - Level 1
  (437, 43700, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bronzong - Confusion - Level 6
  (437, 43700, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Bronzong - Iron Defense - Level 11
  (437, 43700, 334, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Bronzong - Hex - Level 18
  (437, 43700, 506, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Bronzong - Hypnosis - Level 25
  (437, 43700, 95, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Bronzong - Flash Cannon - Level 34
  (437, 43700, 430, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Bronzong - Extrasensory - Level 43
  (437, 43700, 326, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Bronzong - Hyper Beam - Tutor
  (437, 43700, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Bronzong - Psychic - Tutor
  (437, 43700, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Bronzong - Rest - Tutor
  (437, 43700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Bronzong - Rock Slide - Tutor
  (437, 43700, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Bronzong - Shadow Ball - Tutor
  (437, 43700, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Bronzong - Rock Smash - Tutor
  (437, 43700, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Bronzong - Giga Impact - Tutor
  (437, 43700, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Bronzong - Zen Headbutt - Tutor
  (437, 43700, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Bronzong - Flash Cannon - Tutor
  (437, 43700, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Bronzong - Iron Head - Tutor
  (437, 43700, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Bronzong - Stealth Rock - Tutor
  (437, 43700, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Bronzong - Charge Beam - Tutor
  (437, 43700, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Bronzong - Bulldoze - Tutor
  (437, 43700, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Bronzong - Steel Beam - Tutor
  (437, 43700, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Bonsly - Rollout - Level 1
  (438, 43800, 205, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bonsly - Tackle - Level 5
  (438, 43800, 33, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Bonsly - Stealth Rock - Level 9
  (438, 43800, 446, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Bonsly - Rock Slide - Level 15
  (438, 43800, 157, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Bonsly - Iron Defense - Level 21
  (438, 43800, 334, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Bonsly - Mimic - Level 29
  (438, 43800, 102, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Bonsly - Double-Edge - Level 37
  (438, 43800, 38, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Bonsly - Head Smash - Level 47
  (438, 43800, 457, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Bonsly - Rest - Tutor
  (438, 43800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Bonsly - Rock Slide - Tutor
  (438, 43800, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Bonsly - Calm Mind - Tutor
  (438, 43800, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Bonsly - Earth Power - Tutor
  (438, 43800, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Bonsly - Stealth Rock - Tutor
  (438, 43800, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Mime Jr. - Confusion - Level 1
  (439, 43900, 93, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mime Jr. - Hypnosis - Level 6
  (439, 43900, 95, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Mime Jr. - Iron Defense - Level 11
  (439, 43900, 334, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Mime Jr. - Zen Headbutt - Level 18
  (439, 43900, 428, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Mime Jr. - Mimic - Level 25
  (439, 43900, 102, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Mime Jr. - Psychic - Level 34
  (439, 43900, 94, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Mime Jr. - Calm Mind - Level 43
  (439, 43900, 347, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Mime Jr. - Thunderbolt - Tutor
  (439, 43900, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Mime Jr. - Psychic - Tutor
  (439, 43900, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Mime Jr. - Rest - Tutor
  (439, 43900, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Mime Jr. - Icy Wind - Tutor
  (439, 43900, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Mime Jr. - Shadow Ball - Tutor
  (439, 43900, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Mime Jr. - Calm Mind - Tutor
  (439, 43900, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Mime Jr. - Drain Punch - Tutor
  (439, 43900, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Mime Jr. - Zen Headbutt - Tutor
  (439, 43900, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Mime Jr. - Charge Beam - Tutor
  (439, 43900, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Mime Jr. - Dazzling Gleam - Tutor
  (439, 43900, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Happiny - Tackle - Level 1
  (440, 44000, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Happiny - Fairy Wind - Level 6
  (440, 44000, 584, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Happiny - Baby-Doll Eyes - Level 11
  (440, 44000, 608, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Happiny - Draining Kiss - Level 18
  (440, 44000, 577, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Happiny - Calm Mind - Level 25
  (440, 44000, 347, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Happiny - Soft-Boiled - Level 34
  (440, 44000, 135, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Happiny - Double-Edge - Level 43
  (440, 44000, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Happiny - Flamethrower - Tutor
  (440, 44000, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Happiny - Psychic - Tutor
  (440, 44000, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Happiny - Rest - Tutor
  (440, 44000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Happiny - Icy Wind - Tutor
  (440, 44000, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Happiny - Shadow Ball - Tutor
  (440, 44000, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Happiny - Calm Mind - Tutor
  (440, 44000, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Happiny - Water Pulse - Tutor
  (440, 44000, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Happiny - Drain Punch - Tutor
  (440, 44000, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Happiny - Zen Headbutt - Tutor
  (440, 44000, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Happiny - Baby-Doll Eyes - Tutor
  (440, 44000, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Chatot - Gust - Level 1
  (441, 44100, 16, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chatot - Swift - Level 6
  (441, 44100, 129, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Chatot - Air Cutter - Level 11
  (441, 44100, 314, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Chatot - Roost - Level 18
  (441, 44100, 355, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Chatot - Air Slash - Level 25
  (441, 44100, 403, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Chatot - Mimic - Level 30
  (441, 44100, 102, 22, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Chatot - Nasty Plot - Level 34
  (441, 44100, 417, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Chatot - Play Rough - Level 43
  (441, 44100, 583, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Chatot - Hurricane - Level 52
  (441, 44100, 542, 22, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Chatot - Swift - Tutor
  (441, 44100, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Chatot - Rest - Tutor
  (441, 44100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Chatot - Aerial Ace - Tutor
  (441, 44100, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Chatot - Ominous Wind - Tutor
  (441, 44100, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Chatot - Snarl - Tutor
  (441, 44100, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Chatot - Play Rough - Tutor
  (441, 44100, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Chatot - Power Shift - Tutor
  (441, 44100, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Spiritomb - Shadow Sneak - Level 1
  (442, 44200, 425, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spiritomb - Hypnosis - Level 6
  (442, 44200, 95, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Spiritomb - Hex - Level 11
  (442, 44200, 506, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Spiritomb - Nasty Plot - Level 18
  (442, 44200, 417, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Spiritomb - Extrasensory - Level 25
  (442, 44200, 326, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Spiritomb - Dark Pulse - Level 34
  (442, 44200, 399, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Spiritomb - Shadow Ball - Level 43
  (442, 44200, 247, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Spiritomb - Hyper Beam - Tutor
  (442, 44200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Spiritomb - Psychic - Tutor
  (442, 44200, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Spiritomb - Rest - Tutor
  (442, 44200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Spiritomb - Icy Wind - Tutor
  (442, 44200, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Spiritomb - Shadow Ball - Tutor
  (442, 44200, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Spiritomb - Calm Mind - Tutor
  (442, 44200, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Spiritomb - Water Pulse - Tutor
  (442, 44200, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Spiritomb - Dark Pulse - Tutor
  (442, 44200, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Spiritomb - Giga Impact - Tutor
  (442, 44200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Spiritomb - Ominous Wind - Tutor
  (442, 44200, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Spiritomb - Snarl - Tutor
  (442, 44200, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Gible - Tackle - Level 1
  (443, 44300, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gible - Twister - Level 5
  (443, 44300, 239, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Gible - Bulldoze - Level 9
  (443, 44300, 523, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Gible - Slash - Level 15
  (443, 44300, 163, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Gible - Dragon Claw - Level 21
  (443, 44300, 337, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Gible - Earth Power - Level 29
  (443, 44300, 414, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Gible - Double-Edge - Level 37
  (443, 44300, 38, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Gible - Outrage - Level 47
  (443, 44300, 200, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Gible - Flamethrower - Tutor
  (443, 44300, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Gible - Swift - Tutor
  (443, 44300, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Gible - Rest - Tutor
  (443, 44300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Gible - Rock Slide - Tutor
  (443, 44300, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Gible - Outrage - Tutor
  (443, 44300, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Gible - Iron Tail - Tutor
  (443, 44300, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Gible - Rock Smash - Tutor
  (443, 44300, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Gible - Aerial Ace - Tutor
  (443, 44300, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Gible - Earth Power - Tutor
  (443, 44300, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Gible - Draco Meteor - Tutor
  (443, 44300, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Gible - Iron Head - Tutor
  (443, 44300, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Gible - Stone Edge - Tutor
  (443, 44300, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Gible - Stealth Rock - Tutor
  (443, 44300, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Gible - Bulldoze - Tutor
  (443, 44300, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Gabite - Tackle - Level 1
  (444, 44400, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gabite - Twister - Level 5
  (444, 44400, 239, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Gabite - Bulldoze - Level 9
  (444, 44400, 523, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Gabite - Slash - Level 15
  (444, 44400, 163, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Gabite - Dragon Claw - Level 21
  (444, 44400, 337, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Gabite - Earth Power - Level 29
  (444, 44400, 414, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Gabite - Double-Edge - Level 37
  (444, 44400, 38, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Gabite - Outrage - Level 47
  (444, 44400, 200, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Gabite - Flamethrower - Tutor
  (444, 44400, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Gabite - Swift - Tutor
  (444, 44400, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Gabite - Rest - Tutor
  (444, 44400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Gabite - Rock Slide - Tutor
  (444, 44400, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Gabite - Outrage - Tutor
  (444, 44400, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Gabite - Iron Tail - Tutor
  (444, 44400, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Gabite - Rock Smash - Tutor
  (444, 44400, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Gabite - Aerial Ace - Tutor
  (444, 44400, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Gabite - Earth Power - Tutor
  (444, 44400, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Gabite - Shadow Claw - Tutor
  (444, 44400, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Gabite - Draco Meteor - Tutor
  (444, 44400, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Gabite - Iron Head - Tutor
  (444, 44400, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Gabite - Stone Edge - Tutor
  (444, 44400, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Gabite - Stealth Rock - Tutor
  (444, 44400, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Gabite - Bulldoze - Tutor
  (444, 44400, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Garchomp - Tackle - Level 1
  (445, 44500, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Garchomp - Twister - Level 5
  (445, 44500, 239, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Garchomp - Bulldoze - Level 9
  (445, 44500, 523, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Garchomp - Slash - Level 15
  (445, 44500, 163, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Garchomp - Dragon Claw - Level 21
  (445, 44500, 337, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Garchomp - Earth Power - Level 29
  (445, 44500, 414, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Garchomp - Double-Edge - Level 37
  (445, 44500, 38, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Garchomp - Outrage - Level 47
  (445, 44500, 200, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Garchomp - Flamethrower - Tutor
  (445, 44500, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Garchomp - Hyper Beam - Tutor
  (445, 44500, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Garchomp - Swift - Tutor
  (445, 44500, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Garchomp - Rest - Tutor
  (445, 44500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Garchomp - Rock Slide - Tutor
  (445, 44500, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Garchomp - Outrage - Tutor
  (445, 44500, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Garchomp - False Swipe - Tutor
  (445, 44500, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Garchomp - Iron Tail - Tutor
  (445, 44500, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Garchomp - Rock Smash - Tutor
  (445, 44500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Garchomp - Aerial Ace - Tutor
  (445, 44500, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Garchomp - Poison Jab - Tutor
  (445, 44500, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Garchomp - Aqua Tail - Tutor
  (445, 44500, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Garchomp - Earth Power - Tutor
  (445, 44500, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Garchomp - Giga Impact - Tutor
  (445, 44500, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Garchomp - Shadow Claw - Tutor
  (445, 44500, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Garchomp - Fire Fang - Tutor
  (445, 44500, 424, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Garchomp - Draco Meteor - Tutor
  (445, 44500, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Garchomp - Iron Head - Tutor
  (445, 44500, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Garchomp - Stone Edge - Tutor
  (445, 44500, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Garchomp - Stealth Rock - Tutor
  (445, 44500, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Garchomp - Bulldoze - Tutor
  (445, 44500, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Munchlax - Rollout - Level 1
  (446, 44600, 205, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Munchlax - Tackle - Level 5
  (446, 44600, 33, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Munchlax - Rest - Level 9
  (446, 44600, 156, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Munchlax - Bulldoze - Level 15
  (446, 44600, 523, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Munchlax - Bite - Level 21
  (446, 44600, 44, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Munchlax - Zen Headbutt - Level 29
  (446, 44600, 428, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Munchlax - High Horsepower - Level 37
  (446, 44600, 667, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Munchlax - Double-Edge - Level 46
  (446, 44600, 38, 22, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Munchlax - Giga Impact - Level 57
  (446, 44600, 416, 22, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Munchlax - Fire Punch - Tutor
  (446, 44600, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Munchlax - Ice Punch - Tutor
  (446, 44600, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Munchlax - Thunder Punch - Tutor
  (446, 44600, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Munchlax - Flamethrower - Tutor
  (446, 44600, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Munchlax - Ice Beam - Tutor
  (446, 44600, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Munchlax - Thunderbolt - Tutor
  (446, 44600, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Munchlax - Psychic - Tutor
  (446, 44600, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Munchlax - Rest - Tutor
  (446, 44600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Munchlax - Rock Slide - Tutor
  (446, 44600, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Munchlax - Icy Wind - Tutor
  (446, 44600, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Munchlax - Shadow Ball - Tutor
  (446, 44600, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Munchlax - Rock Smash - Tutor
  (446, 44600, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Munchlax - Water Pulse - Tutor
  (446, 44600, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Munchlax - Giga Impact - Tutor
  (446, 44600, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Munchlax - Zen Headbutt - Tutor
  (446, 44600, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Munchlax - Bulldoze - Tutor
  (446, 44600, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Munchlax - High Horsepower - Tutor
  (446, 44600, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Riolu - Rock Smash - Level 1
  (447, 44700, 249, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Riolu - Bullet Punch - Level 5
  (447, 44700, 418, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Riolu - Bite - Level 9
  (447, 44700, 44, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Riolu - Iron Defense - Level 15
  (447, 44700, 334, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Riolu - Aura Sphere - Level 21
  (447, 44700, 396, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Riolu - Crunch - Level 29
  (447, 44700, 242, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Riolu - Bulk Up - Level 37
  (447, 44700, 339, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Riolu - Close Combat - Level 47
  (447, 44700, 370, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Riolu - Ice Punch - Tutor
  (447, 44700, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Riolu - Thunder Punch - Tutor
  (447, 44700, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Riolu - Focus Energy - Tutor
  (447, 44700, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Riolu - Swift - Tutor
  (447, 44700, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Riolu - Rest - Tutor
  (447, 44700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Riolu - Rock Slide - Tutor
  (447, 44700, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Riolu - Iron Tail - Tutor
  (447, 44700, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Riolu - Rock Smash - Tutor
  (447, 44700, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Riolu - Bulk Up - Tutor
  (447, 44700, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Riolu - Poison Jab - Tutor
  (447, 44700, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Riolu - Drain Punch - Tutor
  (447, 44700, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Riolu - Shadow Claw - Tutor
  (447, 44700, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Riolu - Zen Headbutt - Tutor
  (447, 44700, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Riolu - Bulldoze - Tutor
  (447, 44700, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Lucario - Rock Smash - Level 1
  (448, 44800, 249, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lucario - Bullet Punch - Level 5
  (448, 44800, 418, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Lucario - Bite - Level 9
  (448, 44800, 44, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Lucario - Iron Defense - Level 15
  (448, 44800, 334, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Lucario - Mach Punch - Level 19
  (448, 44800, 183, 22, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Lucario - Aura Sphere - Level 21
  (448, 44800, 396, 22, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Lucario - Crunch - Level 29
  (448, 44800, 242, 22, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Lucario - Bulk Up - Level 37
  (448, 44800, 339, 22, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Lucario - Dragon Pulse - Level 40
  (448, 44800, 406, 22, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Lucario - Close Combat - Level 47
  (448, 44800, 370, 22, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Lucario - Ice Punch - Tutor
  (448, 44800, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Lucario - Thunder Punch - Tutor
  (448, 44800, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Lucario - Hyper Beam - Tutor
  (448, 44800, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Lucario - Psychic - Tutor
  (448, 44800, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Lucario - Focus Energy - Tutor
  (448, 44800, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Lucario - Swift - Tutor
  (448, 44800, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Lucario - Rest - Tutor
  (448, 44800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Lucario - Rock Slide - Tutor
  (448, 44800, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Lucario - Iron Tail - Tutor
  (448, 44800, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Lucario - Shadow Ball - Tutor
  (448, 44800, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Lucario - Rock Smash - Tutor
  (448, 44800, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Lucario - Bulk Up - Tutor
  (448, 44800, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Lucario - Calm Mind - Tutor
  (448, 44800, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Lucario - Water Pulse - Tutor
  (448, 44800, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Lucario - Poison Jab - Tutor
  (448, 44800, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Lucario - Dark Pulse - Tutor
  (448, 44800, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Lucario - Drain Punch - Tutor
  (448, 44800, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Lucario - Giga Impact - Tutor
  (448, 44800, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Lucario - Shadow Claw - Tutor
  (448, 44800, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Lucario - Zen Headbutt - Tutor
  (448, 44800, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Lucario - Flash Cannon - Tutor
  (448, 44800, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Lucario - Stone Edge - Tutor
  (448, 44800, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Lucario - Bulldoze - Tutor
  (448, 44800, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Lucario - Steel Beam - Tutor
  (448, 44800, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Hippopotas - Tackle - Level 1
  (449, 44900, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hippopotas - Rest - Level 6
  (449, 44900, 156, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Hippopotas - Bite - Level 11
  (449, 44900, 44, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Hippopotas - Mud Bomb - Level 18
  (449, 44900, 426, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Hippopotas - Crunch - Level 25
  (449, 44900, 242, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Hippopotas - High Horsepower - Level 34
  (449, 44900, 667, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Hippopotas - Double-Edge - Level 43
  (449, 44900, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Hippopotas - Rest - Tutor
  (449, 44900, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Hippopotas - Rock Slide - Tutor
  (449, 44900, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Hippopotas - Iron Tail - Tutor
  (449, 44900, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Hippopotas - Rock Smash - Tutor
  (449, 44900, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Hippopotas - Water Pulse - Tutor
  (449, 44900, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Hippopotas - Earth Power - Tutor
  (449, 44900, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Hippopotas - Stealth Rock - Tutor
  (449, 44900, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Hippopotas - Bulldoze - Tutor
  (449, 44900, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Hippopotas - High Horsepower - Tutor
  (449, 44900, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Hippowdon - Tackle - Level 1
  (450, 45000, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hippowdon - Rest - Level 6
  (450, 45000, 156, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Hippowdon - Bite - Level 11
  (450, 45000, 44, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Hippowdon - Mud Bomb - Level 18
  (450, 45000, 426, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Hippowdon - Crunch - Level 25
  (450, 45000, 242, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Hippowdon - High Horsepower - Level 34
  (450, 45000, 667, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Hippowdon - Double-Edge - Level 43
  (450, 45000, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Hippowdon - Hyper Beam - Tutor
  (450, 45000, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Hippowdon - Rest - Tutor
  (450, 45000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Hippowdon - Rock Slide - Tutor
  (450, 45000, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Hippowdon - Iron Tail - Tutor
  (450, 45000, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Hippowdon - Rock Smash - Tutor
  (450, 45000, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Hippowdon - Water Pulse - Tutor
  (450, 45000, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Hippowdon - Earth Power - Tutor
  (450, 45000, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Hippowdon - Giga Impact - Tutor
  (450, 45000, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Hippowdon - Thunder Fang - Tutor
  (450, 45000, 422, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Hippowdon - Ice Fang - Tutor
  (450, 45000, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Hippowdon - Fire Fang - Tutor
  (450, 45000, 424, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Hippowdon - Iron Head - Tutor
  (450, 45000, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Hippowdon - Stone Edge - Tutor
  (450, 45000, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Hippowdon - Stealth Rock - Tutor
  (450, 45000, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Hippowdon - Bulldoze - Tutor
  (450, 45000, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Hippowdon - High Horsepower - Tutor
  (450, 45000, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23);
