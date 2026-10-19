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
-- Pokémon Legends: Arceus learnsets for default forms, species 451-493.
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
  -- Skorupi - Poison Sting - Level 1
  (451, 45100, 40, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skorupi - Bite - Level 6
  (451, 45100, 44, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Skorupi - Venoshock - Level 11
  (451, 45100, 474, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Skorupi - Cross Poison - Level 18
  (451, 45100, 440, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Skorupi - Swords Dance - Level 25
  (451, 45100, 14, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Skorupi - X-Scissor - Level 34
  (451, 45100, 404, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Skorupi - Crunch - Level 43
  (451, 45100, 242, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Skorupi - Rest - Tutor
  (451, 45100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Skorupi - Sludge Bomb - Tutor
  (451, 45100, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Skorupi - False Swipe - Tutor
  (451, 45100, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Skorupi - Iron Tail - Tutor
  (451, 45100, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Skorupi - Shadow Ball - Tutor
  (451, 45100, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Skorupi - Rock Smash - Tutor
  (451, 45100, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Skorupi - Aerial Ace - Tutor
  (451, 45100, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Skorupi - Poison Jab - Tutor
  (451, 45100, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Skorupi - Dark Pulse - Tutor
  (451, 45100, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Skorupi - Aqua Tail - Tutor
  (451, 45100, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Skorupi - X-Scissor - Tutor
  (451, 45100, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Drapion - Poison Sting - Level 1
  (452, 45200, 40, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drapion - Bite - Level 6
  (452, 45200, 44, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Drapion - Venoshock - Level 11
  (452, 45200, 474, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Drapion - Cross Poison - Level 18
  (452, 45200, 440, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Drapion - Swords Dance - Level 25
  (452, 45200, 14, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Drapion - X-Scissor - Level 34
  (452, 45200, 404, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Drapion - Crunch - Level 43
  (452, 45200, 242, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Drapion - Hyper Beam - Tutor
  (452, 45200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Drapion - Leech Life - Tutor
  (452, 45200, 141, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Drapion - Rest - Tutor
  (452, 45200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Drapion - Rock Slide - Tutor
  (452, 45200, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Drapion - Sludge Bomb - Tutor
  (452, 45200, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Drapion - False Swipe - Tutor
  (452, 45200, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Drapion - Iron Tail - Tutor
  (452, 45200, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Drapion - Shadow Ball - Tutor
  (452, 45200, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Drapion - Rock Smash - Tutor
  (452, 45200, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Drapion - Aerial Ace - Tutor
  (452, 45200, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Drapion - Poison Jab - Tutor
  (452, 45200, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Drapion - Dark Pulse - Tutor
  (452, 45200, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Drapion - Aqua Tail - Tutor
  (452, 45200, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Drapion - X-Scissor - Tutor
  (452, 45200, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Drapion - Giga Impact - Tutor
  (452, 45200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Drapion - Thunder Fang - Tutor
  (452, 45200, 422, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Drapion - Ice Fang - Tutor
  (452, 45200, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Drapion - Fire Fang - Tutor
  (452, 45200, 424, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Drapion - Bulldoze - Tutor
  (452, 45200, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Drapion - Snarl - Tutor
  (452, 45200, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Croagunk - Poison Sting - Level 1
  (453, 45300, 40, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Croagunk - Rock Smash - Level 5
  (453, 45300, 249, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Croagunk - Mud Bomb - Level 9
  (453, 45300, 426, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Croagunk - Venoshock - Level 15
  (453, 45300, 474, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Croagunk - Nasty Plot - Level 21
  (453, 45300, 417, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Croagunk - Poison Jab - Level 29
  (453, 45300, 398, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Croagunk - Earth Power - Level 37
  (453, 45300, 414, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Croagunk - Close Combat - Level 47
  (453, 45300, 370, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Croagunk - Ice Punch - Tutor
  (453, 45300, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Croagunk - Thunder Punch - Tutor
  (453, 45300, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Croagunk - Rest - Tutor
  (453, 45300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Croagunk - Rock Slide - Tutor
  (453, 45300, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Croagunk - Sludge Bomb - Tutor
  (453, 45300, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Croagunk - Icy Wind - Tutor
  (453, 45300, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Croagunk - Shadow Ball - Tutor
  (453, 45300, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Croagunk - Rock Smash - Tutor
  (453, 45300, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Croagunk - Bulk Up - Tutor
  (453, 45300, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Croagunk - Poison Jab - Tutor
  (453, 45300, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Croagunk - Dark Pulse - Tutor
  (453, 45300, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Croagunk - X-Scissor - Tutor
  (453, 45300, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Croagunk - Drain Punch - Tutor
  (453, 45300, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Croagunk - Earth Power - Tutor
  (453, 45300, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Croagunk - Bulldoze - Tutor
  (453, 45300, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Toxicroak - Poison Sting - Level 1
  (454, 45400, 40, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxicroak - Rock Smash - Level 5
  (454, 45400, 249, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Toxicroak - Mud Bomb - Level 9
  (454, 45400, 426, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Toxicroak - Venoshock - Level 15
  (454, 45400, 474, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Toxicroak - Nasty Plot - Level 21
  (454, 45400, 417, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Toxicroak - Poison Jab - Level 29
  (454, 45400, 398, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Toxicroak - Earth Power - Level 37
  (454, 45400, 414, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Toxicroak - Close Combat - Level 47
  (454, 45400, 370, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Toxicroak - Ice Punch - Tutor
  (454, 45400, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Toxicroak - Thunder Punch - Tutor
  (454, 45400, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Toxicroak - Hyper Beam - Tutor
  (454, 45400, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Toxicroak - Rest - Tutor
  (454, 45400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Toxicroak - Rock Slide - Tutor
  (454, 45400, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Toxicroak - Sludge Bomb - Tutor
  (454, 45400, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Toxicroak - Icy Wind - Tutor
  (454, 45400, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Toxicroak - Shadow Ball - Tutor
  (454, 45400, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Toxicroak - Rock Smash - Tutor
  (454, 45400, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Toxicroak - Bulk Up - Tutor
  (454, 45400, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Toxicroak - Poison Jab - Tutor
  (454, 45400, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Toxicroak - Dark Pulse - Tutor
  (454, 45400, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Toxicroak - X-Scissor - Tutor
  (454, 45400, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Toxicroak - Drain Punch - Tutor
  (454, 45400, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Toxicroak - Earth Power - Tutor
  (454, 45400, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Toxicroak - Giga Impact - Tutor
  (454, 45400, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Toxicroak - Stone Edge - Tutor
  (454, 45400, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Toxicroak - Bulldoze - Tutor
  (454, 45400, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Carnivine - Absorb - Level 1
  (455, 45500, 71, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carnivine - Acid Spray - Level 6
  (455, 45500, 491, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Carnivine - Bite - Level 11
  (455, 45500, 44, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Carnivine - Stun Spore - Level 18
  (455, 45500, 78, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Carnivine - Crunch - Level 25
  (455, 45500, 242, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Carnivine - Sleep Powder - Level 34
  (455, 45500, 79, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Carnivine - Energy Ball - Level 43
  (455, 45500, 412, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Carnivine - Hyper Beam - Tutor
  (455, 45500, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Carnivine - Leech Life - Tutor
  (455, 45500, 141, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Carnivine - Rest - Tutor
  (455, 45500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Carnivine - Sludge Bomb - Tutor
  (455, 45500, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Carnivine - Magical Leaf - Tutor
  (455, 45500, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Carnivine - Energy Ball - Tutor
  (455, 45500, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Carnivine - Giga Impact - Tutor
  (455, 45500, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Finneon - Bubble - Level 1
  (456, 45600, 145, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Finneon - Gust - Level 6
  (456, 45600, 16, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Finneon - Water Pulse - Level 11
  (456, 45600, 352, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Finneon - Silver Wind - Level 18
  (456, 45600, 318, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Finneon - Air Slash - Level 25
  (456, 45600, 403, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Finneon - Roost - Level 34
  (456, 45600, 355, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Finneon - Hydro Pump - Level 43
  (456, 45600, 56, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Finneon - Ice Beam - Tutor
  (456, 45600, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Finneon - Swift - Tutor
  (456, 45600, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Finneon - Rest - Tutor
  (456, 45600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Finneon - Icy Wind - Tutor
  (456, 45600, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Finneon - Water Pulse - Tutor
  (456, 45600, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Finneon - Aqua Tail - Tutor
  (456, 45600, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Finneon - Ominous Wind - Tutor
  (456, 45600, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Finneon - Baby-Doll Eyes - Tutor
  (456, 45600, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Lumineon - Bubble - Level 1
  (457, 45700, 145, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lumineon - Gust - Level 6
  (457, 45700, 16, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Lumineon - Water Pulse - Level 11
  (457, 45700, 352, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Lumineon - Silver Wind - Level 18
  (457, 45700, 318, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Lumineon - Air Slash - Level 25
  (457, 45700, 403, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Lumineon - Roost - Level 34
  (457, 45700, 355, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Lumineon - Hydro Pump - Level 43
  (457, 45700, 56, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Lumineon - Ice Beam - Tutor
  (457, 45700, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Lumineon - Hyper Beam - Tutor
  (457, 45700, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Lumineon - Swift - Tutor
  (457, 45700, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Lumineon - Rest - Tutor
  (457, 45700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Lumineon - Icy Wind - Tutor
  (457, 45700, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Lumineon - Aerial Ace - Tutor
  (457, 45700, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Lumineon - Water Pulse - Tutor
  (457, 45700, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Lumineon - Aqua Tail - Tutor
  (457, 45700, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Lumineon - Giga Impact - Tutor
  (457, 45700, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Lumineon - Ominous Wind - Tutor
  (457, 45700, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Lumineon - Baby-Doll Eyes - Tutor
  (457, 45700, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Mantyke - Tackle - Level 1
  (458, 45800, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mantyke - Bubble - Level 5
  (458, 45800, 145, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Mantyke - Aerial Ace - Level 9
  (458, 45800, 332, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Mantyke - Water Pulse - Level 15
  (458, 45800, 352, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Mantyke - Air Slash - Level 21
  (458, 45800, 403, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Mantyke - Roost - Level 29
  (458, 45800, 355, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Mantyke - Hydro Pump - Level 37
  (458, 45800, 56, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Mantyke - Double-Edge - Level 47
  (458, 45800, 38, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Mantyke - Ice Beam - Tutor
  (458, 45800, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Mantyke - Swift - Tutor
  (458, 45800, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Mantyke - Rest - Tutor
  (458, 45800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Mantyke - Rock Slide - Tutor
  (458, 45800, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Mantyke - Icy Wind - Tutor
  (458, 45800, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Mantyke - Aerial Ace - Tutor
  (458, 45800, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Mantyke - Water Pulse - Tutor
  (458, 45800, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Mantyke - Bulldoze - Tutor
  (458, 45800, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Snover - Powder Snow - Level 1
  (459, 45900, 181, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snover - Leafage - Level 6
  (459, 45900, 670, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Snover - Ice Shard - Level 11
  (459, 45900, 420, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Snover - Icicle Crash - Level 18
  (459, 45900, 556, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Snover - Energy Ball - Level 25
  (459, 45900, 412, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Snover - Blizzard - Level 34
  (459, 45900, 59, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Snover - Wood Hammer - Level 43
  (459, 45900, 452, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Snover - Ice Punch - Tutor
  (459, 45900, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Snover - Ice Beam - Tutor
  (459, 45900, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Snover - Rest - Tutor
  (459, 45900, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Snover - Icy Wind - Tutor
  (459, 45900, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Snover - Iron Tail - Tutor
  (459, 45900, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Snover - Shadow Ball - Tutor
  (459, 45900, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Snover - Magical Leaf - Tutor
  (459, 45900, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Snover - Water Pulse - Tutor
  (459, 45900, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Snover - Energy Ball - Tutor
  (459, 45900, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Abomasnow - Powder Snow - Level 1
  (460, 46000, 181, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abomasnow - Leafage - Level 6
  (460, 46000, 670, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Abomasnow - Ice Shard - Level 11
  (460, 46000, 420, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Abomasnow - Icicle Crash - Level 18
  (460, 46000, 556, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Abomasnow - Energy Ball - Level 25
  (460, 46000, 412, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Abomasnow - Blizzard - Level 34
  (460, 46000, 59, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Abomasnow - Wood Hammer - Level 43
  (460, 46000, 452, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Abomasnow - Ice Punch - Tutor
  (460, 46000, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Abomasnow - Ice Beam - Tutor
  (460, 46000, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Abomasnow - Hyper Beam - Tutor
  (460, 46000, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Abomasnow - Rest - Tutor
  (460, 46000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Abomasnow - Rock Slide - Tutor
  (460, 46000, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Abomasnow - Icy Wind - Tutor
  (460, 46000, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Abomasnow - Outrage - Tutor
  (460, 46000, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Abomasnow - Iron Tail - Tutor
  (460, 46000, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Abomasnow - Shadow Ball - Tutor
  (460, 46000, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Abomasnow - Rock Smash - Tutor
  (460, 46000, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Abomasnow - Magical Leaf - Tutor
  (460, 46000, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Abomasnow - Water Pulse - Tutor
  (460, 46000, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Abomasnow - Energy Ball - Tutor
  (460, 46000, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Abomasnow - Earth Power - Tutor
  (460, 46000, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Abomasnow - Giga Impact - Tutor
  (460, 46000, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Abomasnow - Bulldoze - Tutor
  (460, 46000, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Weavile - Quick Attack - Level 1
  (461, 46100, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weavile - Ice Shard - Level 6
  (461, 46100, 420, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Weavile - Swift - Level 11
  (461, 46100, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Weavile - Slash - Level 18
  (461, 46100, 163, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Weavile - Poison Jab - Level 25
  (461, 46100, 398, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Weavile - Swords Dance - Level 34
  (461, 46100, 14, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Weavile - Night Slash - Level 38
  (461, 46100, 400, 22, NULL, 1, 38, NULL, NULL, NULL, 7),
  -- Weavile - Blizzard - Level 43
  (461, 46100, 59, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Weavile - Ice Punch - Tutor
  (461, 46100, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Weavile - Ice Beam - Tutor
  (461, 46100, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Weavile - Hyper Beam - Tutor
  (461, 46100, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Weavile - Swift - Tutor
  (461, 46100, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Weavile - Rest - Tutor
  (461, 46100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Weavile - Icy Wind - Tutor
  (461, 46100, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Weavile - False Swipe - Tutor
  (461, 46100, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Weavile - Iron Tail - Tutor
  (461, 46100, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Weavile - Shadow Ball - Tutor
  (461, 46100, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Weavile - Rock Smash - Tutor
  (461, 46100, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Weavile - Aerial Ace - Tutor
  (461, 46100, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Weavile - Calm Mind - Tutor
  (461, 46100, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Weavile - Poison Jab - Tutor
  (461, 46100, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Weavile - Dark Pulse - Tutor
  (461, 46100, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Weavile - X-Scissor - Tutor
  (461, 46100, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Weavile - Giga Impact - Tutor
  (461, 46100, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Weavile - Shadow Claw - Tutor
  (461, 46100, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Weavile - Psycho Cut - Tutor
  (461, 46100, 427, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Weavile - Snarl - Tutor
  (461, 46100, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Magnezone - Thunder Shock - Level 1
  (462, 46200, 84, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnezone - Tackle - Level 6
  (462, 46200, 33, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Magnezone - Thunder Wave - Level 11
  (462, 46200, 86, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Magnezone - Spark - Level 18
  (462, 46200, 209, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Magnezone - Tri Attack - Level 25
  (462, 46200, 161, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Magnezone - Flash Cannon - Level 25
  (462, 46200, 430, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Magnezone - Thunderbolt - Level 34
  (462, 46200, 85, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Magnezone - Thunder - Level 43
  (462, 46200, 87, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Magnezone - Hyper Beam - Tutor
  (462, 46200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Magnezone - Thunderbolt - Tutor
  (462, 46200, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Magnezone - Swift - Tutor
  (462, 46200, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Magnezone - Rest - Tutor
  (462, 46200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Magnezone - Tri Attack - Tutor
  (462, 46200, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Magnezone - Giga Impact - Tutor
  (462, 46200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Magnezone - Flash Cannon - Tutor
  (462, 46200, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Magnezone - Iron Head - Tutor
  (462, 46200, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Magnezone - Charge Beam - Tutor
  (462, 46200, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Magnezone - Wild Charge - Tutor
  (462, 46200, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Magnezone - Steel Beam - Tutor
  (462, 46200, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Lickilicky - Tackle - Level 1
  (463, 46300, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lickilicky - Rest - Level 6
  (463, 46300, 156, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Lickilicky - Bulldoze - Level 11
  (463, 46300, 523, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Lickilicky - Zen Headbutt - Level 18
  (463, 46300, 428, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Lickilicky - Double-Edge - Level 25
  (463, 46300, 38, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Lickilicky - Rollout - Level 34
  (463, 46300, 205, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Lickilicky - Giga Impact - Level 43
  (463, 46300, 416, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Lickilicky - Fire Punch - Tutor
  (463, 46300, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Lickilicky - Ice Punch - Tutor
  (463, 46300, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Lickilicky - Thunder Punch - Tutor
  (463, 46300, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Lickilicky - Flamethrower - Tutor
  (463, 46300, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Lickilicky - Ice Beam - Tutor
  (463, 46300, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Lickilicky - Hyper Beam - Tutor
  (463, 46300, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Lickilicky - Thunderbolt - Tutor
  (463, 46300, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Lickilicky - Rest - Tutor
  (463, 46300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Lickilicky - Rock Slide - Tutor
  (463, 46300, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Lickilicky - Icy Wind - Tutor
  (463, 46300, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Lickilicky - Iron Tail - Tutor
  (463, 46300, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Lickilicky - Shadow Ball - Tutor
  (463, 46300, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Lickilicky - Rock Smash - Tutor
  (463, 46300, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Lickilicky - Ice Ball - Tutor
  (463, 46300, 301, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Lickilicky - Water Pulse - Tutor
  (463, 46300, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Lickilicky - Aqua Tail - Tutor
  (463, 46300, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Lickilicky - Giga Impact - Tutor
  (463, 46300, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Lickilicky - Zen Headbutt - Tutor
  (463, 46300, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Lickilicky - Bulldoze - Tutor
  (463, 46300, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Rhyperior - Tackle - Level 1
  (464, 46400, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhyperior - Bulldoze - Level 6
  (464, 46400, 523, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Rhyperior - Rock Smash - Level 11
  (464, 46400, 249, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Rhyperior - Stealth Rock - Level 18
  (464, 46400, 446, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Rhyperior - Rock Slide - Level 25
  (464, 46400, 157, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Rhyperior - High Horsepower - Level 34
  (464, 46400, 667, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Rhyperior - Double-Edge - Level 43
  (464, 46400, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Rhyperior - Giga Impact - Level 52
  (464, 46400, 416, 22, NULL, 1, 52, NULL, NULL, NULL, 8),
  -- Rhyperior - Fire Punch - Tutor
  (464, 46400, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Rhyperior - Ice Punch - Tutor
  (464, 46400, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Rhyperior - Thunder Punch - Tutor
  (464, 46400, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Rhyperior - Flamethrower - Tutor
  (464, 46400, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Rhyperior - Ice Beam - Tutor
  (464, 46400, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Rhyperior - Hyper Beam - Tutor
  (464, 46400, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Rhyperior - Thunderbolt - Tutor
  (464, 46400, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Rhyperior - Rest - Tutor
  (464, 46400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Rhyperior - Rock Slide - Tutor
  (464, 46400, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Rhyperior - Icy Wind - Tutor
  (464, 46400, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Rhyperior - Outrage - Tutor
  (464, 46400, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Rhyperior - Megahorn - Tutor
  (464, 46400, 224, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Rhyperior - Iron Tail - Tutor
  (464, 46400, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Rhyperior - Rock Smash - Tutor
  (464, 46400, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Rhyperior - Poison Jab - Tutor
  (464, 46400, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Rhyperior - Aqua Tail - Tutor
  (464, 46400, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Rhyperior - Earth Power - Tutor
  (464, 46400, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Rhyperior - Giga Impact - Tutor
  (464, 46400, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Rhyperior - Shadow Claw - Tutor
  (464, 46400, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Rhyperior - Thunder Fang - Tutor
  (464, 46400, 422, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Rhyperior - Ice Fang - Tutor
  (464, 46400, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Rhyperior - Fire Fang - Tutor
  (464, 46400, 424, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Rhyperior - Flash Cannon - Tutor
  (464, 46400, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Rhyperior - Iron Head - Tutor
  (464, 46400, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Rhyperior - Stone Edge - Tutor
  (464, 46400, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Rhyperior - Stealth Rock - Tutor
  (464, 46400, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Rhyperior - Bulldoze - Tutor
  (464, 46400, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Rhyperior - High Horsepower - Tutor
  (464, 46400, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Tangrowth - Absorb - Level 1
  (465, 46500, 71, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tangrowth - Stun Spore - Level 6
  (465, 46500, 78, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Tangrowth - Poison Powder - Level 11
  (465, 46500, 77, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Tangrowth - Acid Spray - Level 15
  (465, 46500, 491, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Tangrowth - Double Hit - Level 18
  (465, 46500, 458, 22, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Tangrowth - Energy Ball - Level 25
  (465, 46500, 412, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Tangrowth - Ancient Power - Level 34
  (465, 46500, 246, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Tangrowth - Sleep Powder - Level 43
  (465, 46500, 79, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Tangrowth - Sludge Bomb - Level 52
  (465, 46500, 188, 22, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Tangrowth - Hyper Beam - Tutor
  (465, 46500, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Tangrowth - Rest - Tutor
  (465, 46500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Tangrowth - Rock Slide - Tutor
  (465, 46500, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Tangrowth - Sludge Bomb - Tutor
  (465, 46500, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Tangrowth - Rock Smash - Tutor
  (465, 46500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Tangrowth - Aerial Ace - Tutor
  (465, 46500, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Tangrowth - Poison Jab - Tutor
  (465, 46500, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Tangrowth - Energy Ball - Tutor
  (465, 46500, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Tangrowth - Giga Impact - Tutor
  (465, 46500, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Tangrowth - Bulldoze - Tutor
  (465, 46500, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Electivire - Thunder Shock - Level 1
  (466, 46600, 84, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electivire - Quick Attack - Level 6
  (466, 46600, 98, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Electivire - Spark - Level 11
  (466, 46600, 209, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Electivire - Thunder Wave - Level 18
  (466, 46600, 86, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Electivire - Thunder Punch - Level 25
  (466, 46600, 9, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Electivire - Thunderbolt - Level 34
  (466, 46600, 85, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Electivire - Thunder - Level 43
  (466, 46600, 87, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Electivire - Fire Punch - Tutor
  (466, 46600, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Electivire - Ice Punch - Tutor
  (466, 46600, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Electivire - Thunder Punch - Tutor
  (466, 46600, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Electivire - Flamethrower - Tutor
  (466, 46600, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Electivire - Hyper Beam - Tutor
  (466, 46600, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Electivire - Thunderbolt - Tutor
  (466, 46600, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Electivire - Psychic - Tutor
  (466, 46600, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Electivire - Swift - Tutor
  (466, 46600, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Electivire - Rest - Tutor
  (466, 46600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Electivire - Rock Slide - Tutor
  (466, 46600, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Electivire - Iron Tail - Tutor
  (466, 46600, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Electivire - Rock Smash - Tutor
  (466, 46600, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Electivire - Giga Impact - Tutor
  (466, 46600, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Electivire - Charge Beam - Tutor
  (466, 46600, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Electivire - Bulldoze - Tutor
  (466, 46600, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Electivire - Wild Charge - Tutor
  (466, 46600, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Magmortar - Ember - Level 1
  (467, 46700, 52, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magmortar - Tackle - Level 6
  (467, 46700, 33, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Magmortar - Flame Wheel - Level 11
  (467, 46700, 172, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Magmortar - Poison Gas - Level 18
  (467, 46700, 139, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Magmortar - Fire Punch - Level 25
  (467, 46700, 7, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Magmortar - Flamethrower - Level 34
  (467, 46700, 53, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Magmortar - Fire Blast - Level 43
  (467, 46700, 126, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Magmortar - Fire Punch - Tutor
  (467, 46700, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Magmortar - Thunder Punch - Tutor
  (467, 46700, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Magmortar - Flamethrower - Tutor
  (467, 46700, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Magmortar - Hyper Beam - Tutor
  (467, 46700, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Magmortar - Thunderbolt - Tutor
  (467, 46700, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Magmortar - Psychic - Tutor
  (467, 46700, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Magmortar - Focus Energy - Tutor
  (467, 46700, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Magmortar - Rest - Tutor
  (467, 46700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Magmortar - Rock Slide - Tutor
  (467, 46700, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Magmortar - Iron Tail - Tutor
  (467, 46700, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Magmortar - Rock Smash - Tutor
  (467, 46700, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Magmortar - Giga Impact - Tutor
  (467, 46700, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Magmortar - Bulldoze - Tutor
  (467, 46700, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Magmortar - Mystical Fire - Tutor
  (467, 46700, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Togekiss - Tackle - Level 1
  (468, 46800, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togekiss - Fairy Wind - Level 6
  (468, 46800, 584, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Togekiss - Air Cutter - Level 11
  (468, 46800, 314, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Togekiss - Draining Kiss - Level 11
  (468, 46800, 577, 22, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Togekiss - Calm Mind - Level 18
  (468, 46800, 347, 22, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Togekiss - Air Slash - Level 25
  (468, 46800, 403, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Togekiss - Baby-Doll Eyes - Level 25
  (468, 46800, 608, 22, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Togekiss - Extrasensory - Level 34
  (468, 46800, 326, 22, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Togekiss - Moonblast - Level 43
  (468, 46800, 585, 22, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Togekiss - Flamethrower - Tutor
  (468, 46800, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Togekiss - Hyper Beam - Tutor
  (468, 46800, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Togekiss - Psychic - Tutor
  (468, 46800, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Togekiss - Swift - Tutor
  (468, 46800, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Togekiss - Rest - Tutor
  (468, 46800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Togekiss - Tri Attack - Tutor
  (468, 46800, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Togekiss - Shadow Ball - Tutor
  (468, 46800, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Togekiss - Rock Smash - Tutor
  (468, 46800, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Togekiss - Aerial Ace - Tutor
  (468, 46800, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Togekiss - Magical Leaf - Tutor
  (468, 46800, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Togekiss - Calm Mind - Tutor
  (468, 46800, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Togekiss - Water Pulse - Tutor
  (468, 46800, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Togekiss - Drain Punch - Tutor
  (468, 46800, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Togekiss - Giga Impact - Tutor
  (468, 46800, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Togekiss - Zen Headbutt - Tutor
  (468, 46800, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Togekiss - Ominous Wind - Tutor
  (468, 46800, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Togekiss - Play Rough - Tutor
  (468, 46800, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Togekiss - Mystical Fire - Tutor
  (468, 46800, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Togekiss - Dazzling Gleam - Tutor
  (468, 46800, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Togekiss - Baby-Doll Eyes - Tutor
  (468, 46800, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Yanmega - Quick Attack - Level 1
  (469, 46900, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yanmega - Gust - Level 6
  (469, 46900, 16, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Yanmega - Silver Wind - Level 11
  (469, 46900, 318, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Yanmega - Hypnosis - Level 18
  (469, 46900, 95, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Yanmega - Air Slash - Level 25
  (469, 46900, 403, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Yanmega - Ancient Power - Level 34
  (469, 46900, 246, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Yanmega - Crunch - Level 43
  (469, 46900, 242, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Yanmega - Bug Buzz - Level 43
  (469, 46900, 405, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Yanmega - Hyper Beam - Tutor
  (469, 46900, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Yanmega - Psychic - Tutor
  (469, 46900, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Yanmega - Swift - Tutor
  (469, 46900, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Yanmega - Leech Life - Tutor
  (469, 46900, 141, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Yanmega - Rest - Tutor
  (469, 46900, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Yanmega - Shadow Ball - Tutor
  (469, 46900, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Yanmega - Aerial Ace - Tutor
  (469, 46900, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Yanmega - Giga Impact - Tutor
  (469, 46900, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Yanmega - Ominous Wind - Tutor
  (469, 46900, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Leafeon - Tackle - Level 1
  (470, 47000, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Leafeon - Quick Attack - Level 6
  (470, 47000, 98, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Leafeon - Swift - Level 11
  (470, 47000, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Leafeon - Baby-Doll Eyes - Level 18
  (470, 47000, 608, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Leafeon - Mimic - Level 25
  (470, 47000, 102, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Leafeon - Leaf Blade - Level 25
  (470, 47000, 348, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Leafeon - Calm Mind - Level 34
  (470, 47000, 347, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Leafeon - Double-Edge - Level 43
  (470, 47000, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Leafeon - Leafage - Evolution
  (470, 47000, 670, 22, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Leafeon - Hyper Beam - Tutor
  (470, 47000, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Leafeon - Focus Energy - Tutor
  (470, 47000, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Leafeon - Swift - Tutor
  (470, 47000, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Leafeon - Rest - Tutor
  (470, 47000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Leafeon - Iron Tail - Tutor
  (470, 47000, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Leafeon - Shadow Ball - Tutor
  (470, 47000, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Leafeon - Rock Smash - Tutor
  (470, 47000, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Leafeon - Aerial Ace - Tutor
  (470, 47000, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Leafeon - Magical Leaf - Tutor
  (470, 47000, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Leafeon - Calm Mind - Tutor
  (470, 47000, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Leafeon - X-Scissor - Tutor
  (470, 47000, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Leafeon - Energy Ball - Tutor
  (470, 47000, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Leafeon - Giga Impact - Tutor
  (470, 47000, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Leafeon - Baby-Doll Eyes - Tutor
  (470, 47000, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Glaceon - Tackle - Level 1
  (471, 47100, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glaceon - Quick Attack - Level 6
  (471, 47100, 98, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Glaceon - Swift - Level 11
  (471, 47100, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Glaceon - Baby-Doll Eyes - Level 18
  (471, 47100, 608, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Glaceon - Ice Beam - Level 25
  (471, 47100, 58, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Glaceon - Mimic - Level 25
  (471, 47100, 102, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Glaceon - Calm Mind - Level 34
  (471, 47100, 347, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Glaceon - Double-Edge - Level 43
  (471, 47100, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Glaceon - Powder Snow - Evolution
  (471, 47100, 181, 22, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Glaceon - Ice Beam - Tutor
  (471, 47100, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Glaceon - Hyper Beam - Tutor
  (471, 47100, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Glaceon - Focus Energy - Tutor
  (471, 47100, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Glaceon - Swift - Tutor
  (471, 47100, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Glaceon - Rest - Tutor
  (471, 47100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Glaceon - Icy Wind - Tutor
  (471, 47100, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Glaceon - Iron Tail - Tutor
  (471, 47100, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Glaceon - Shadow Ball - Tutor
  (471, 47100, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Glaceon - Rock Smash - Tutor
  (471, 47100, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Glaceon - Calm Mind - Tutor
  (471, 47100, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Glaceon - Water Pulse - Tutor
  (471, 47100, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Glaceon - Aqua Tail - Tutor
  (471, 47100, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Glaceon - Giga Impact - Tutor
  (471, 47100, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Glaceon - Ice Fang - Tutor
  (471, 47100, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Glaceon - Baby-Doll Eyes - Tutor
  (471, 47100, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Gliscor - Poison Sting - Level 1
  (472, 47200, 40, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gliscor - Quick Attack - Level 6
  (472, 47200, 98, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Gliscor - Aerial Ace - Level 11
  (472, 47200, 332, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Gliscor - Mud Bomb - Level 18
  (472, 47200, 426, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Gliscor - Pin Missile - Level 20
  (472, 47200, 42, 22, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Gliscor - Slash - Level 25
  (472, 47200, 163, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Gliscor - Swords Dance - Level 30
  (472, 47200, 14, 22, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Gliscor - Poison Jab - Level 34
  (472, 47200, 398, 22, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Gliscor - X-Scissor - Level 43
  (472, 47200, 404, 22, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Gliscor - Earth Power - Level 52
  (472, 47200, 414, 22, NULL, 1, 52, NULL, NULL, NULL, 10),
  -- Gliscor - Hyper Beam - Tutor
  (472, 47200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Gliscor - Swift - Tutor
  (472, 47200, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Gliscor - Rest - Tutor
  (472, 47200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Gliscor - Rock Slide - Tutor
  (472, 47200, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Gliscor - Sludge Bomb - Tutor
  (472, 47200, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Gliscor - Spikes - Tutor
  (472, 47200, 191, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Gliscor - False Swipe - Tutor
  (472, 47200, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Gliscor - Iron Tail - Tutor
  (472, 47200, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Gliscor - Rock Smash - Tutor
  (472, 47200, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Gliscor - Aerial Ace - Tutor
  (472, 47200, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Gliscor - Poison Jab - Tutor
  (472, 47200, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Gliscor - Dark Pulse - Tutor
  (472, 47200, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Gliscor - Aqua Tail - Tutor
  (472, 47200, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Gliscor - X-Scissor - Tutor
  (472, 47200, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Gliscor - Earth Power - Tutor
  (472, 47200, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Gliscor - Giga Impact - Tutor
  (472, 47200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Gliscor - Thunder Fang - Tutor
  (472, 47200, 422, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Gliscor - Ice Fang - Tutor
  (472, 47200, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Gliscor - Fire Fang - Tutor
  (472, 47200, 424, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Gliscor - Stone Edge - Tutor
  (472, 47200, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Gliscor - Stealth Rock - Tutor
  (472, 47200, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Gliscor - Bulldoze - Tutor
  (472, 47200, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Gliscor - Power Shift - Tutor
  (472, 47200, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Mamoswine - Tackle - Level 1
  (473, 47300, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mamoswine - Ice Shard - Level 6
  (473, 47300, 420, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Mamoswine - Bulldoze - Level 11
  (473, 47300, 523, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Mamoswine - Icicle Crash - Level 18
  (473, 47300, 556, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Mamoswine - High Horsepower - Level 25
  (473, 47300, 667, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Mamoswine - Ancient Power - Level 34
  (473, 47300, 246, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Mamoswine - Blizzard - Level 43
  (473, 47300, 59, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Mamoswine - Double-Edge - Level 52
  (473, 47300, 38, 22, NULL, 1, 52, NULL, NULL, NULL, 8),
  -- Mamoswine - Ice Beam - Tutor
  (473, 47300, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Mamoswine - Hyper Beam - Tutor
  (473, 47300, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Mamoswine - Rest - Tutor
  (473, 47300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Mamoswine - Rock Slide - Tutor
  (473, 47300, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Mamoswine - Icy Wind - Tutor
  (473, 47300, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Mamoswine - Rock Smash - Tutor
  (473, 47300, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Mamoswine - Earth Power - Tutor
  (473, 47300, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Mamoswine - Giga Impact - Tutor
  (473, 47300, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Mamoswine - Ice Fang - Tutor
  (473, 47300, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Mamoswine - Iron Head - Tutor
  (473, 47300, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Mamoswine - Stone Edge - Tutor
  (473, 47300, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Mamoswine - Stealth Rock - Tutor
  (473, 47300, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Mamoswine - Bulldoze - Tutor
  (473, 47300, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Mamoswine - Baby-Doll Eyes - Tutor
  (473, 47300, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Mamoswine - High Horsepower - Tutor
  (473, 47300, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Porygon-Z - Tackle - Level 1
  (474, 47400, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon-Z - Thunder Shock - Level 5
  (474, 47400, 84, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Porygon-Z - Thunder Wave - Level 9
  (474, 47400, 86, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Porygon-Z - Spark - Level 15
  (474, 47400, 209, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Porygon-Z - Tri Attack - Level 21
  (474, 47400, 161, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Porygon-Z - Thunderbolt - Level 29
  (474, 47400, 85, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Porygon-Z - Recover - Level 37
  (474, 47400, 105, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Porygon-Z - Hyper Beam - Level 47
  (474, 47400, 63, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Porygon-Z - Ice Beam - Tutor
  (474, 47400, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Porygon-Z - Hyper Beam - Tutor
  (474, 47400, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Porygon-Z - Thunderbolt - Tutor
  (474, 47400, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Porygon-Z - Psychic - Tutor
  (474, 47400, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Porygon-Z - Swift - Tutor
  (474, 47400, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Porygon-Z - Rest - Tutor
  (474, 47400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Porygon-Z - Tri Attack - Tutor
  (474, 47400, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Porygon-Z - Icy Wind - Tutor
  (474, 47400, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Porygon-Z - Iron Tail - Tutor
  (474, 47400, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Porygon-Z - Shadow Ball - Tutor
  (474, 47400, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Porygon-Z - Aerial Ace - Tutor
  (474, 47400, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Porygon-Z - Dark Pulse - Tutor
  (474, 47400, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Porygon-Z - Giga Impact - Tutor
  (474, 47400, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Porygon-Z - Zen Headbutt - Tutor
  (474, 47400, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Porygon-Z - Charge Beam - Tutor
  (474, 47400, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Porygon-Z - Power Shift - Tutor
  (474, 47400, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Gallade - Confusion - Level 1
  (475, 47500, 93, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gallade - Teleport - Level 6
  (475, 47500, 100, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Gallade - Draining Kiss - Level 11
  (475, 47500, 577, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Gallade - Hypnosis - Level 18
  (475, 47500, 95, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Gallade - Psycho Cut - Level 18
  (475, 47500, 427, 22, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Gallade - Calm Mind - Level 25
  (475, 47500, 347, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Gallade - Swords Dance - Level 30
  (475, 47500, 14, 22, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Gallade - Psychic - Level 34
  (475, 47500, 94, 22, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Gallade - Leaf Blade - Level 43
  (475, 47500, 348, 22, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Gallade - Close Combat - Level 52
  (475, 47500, 370, 22, NULL, 1, 52, NULL, NULL, NULL, 10),
  -- Gallade - Slash - Evolution
  (475, 47500, 163, 22, NULL, 7, NULL, NULL, NULL, NULL, 11),
  -- Gallade - Fire Punch - Tutor
  (475, 47500, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Gallade - Ice Punch - Tutor
  (475, 47500, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Gallade - Thunder Punch - Tutor
  (475, 47500, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Gallade - Ice Beam - Tutor
  (475, 47500, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Gallade - Hyper Beam - Tutor
  (475, 47500, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Gallade - Thunderbolt - Tutor
  (475, 47500, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Gallade - Psychic - Tutor
  (475, 47500, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Gallade - Focus Energy - Tutor
  (475, 47500, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Gallade - Swift - Tutor
  (475, 47500, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Gallade - Rest - Tutor
  (475, 47500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Gallade - Rock Slide - Tutor
  (475, 47500, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Gallade - Icy Wind - Tutor
  (475, 47500, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Gallade - False Swipe - Tutor
  (475, 47500, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Gallade - Shadow Ball - Tutor
  (475, 47500, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Gallade - Rock Smash - Tutor
  (475, 47500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Gallade - Aerial Ace - Tutor
  (475, 47500, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Gallade - Bulk Up - Tutor
  (475, 47500, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Gallade - Magical Leaf - Tutor
  (475, 47500, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Gallade - Calm Mind - Tutor
  (475, 47500, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Gallade - Poison Jab - Tutor
  (475, 47500, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Gallade - X-Scissor - Tutor
  (475, 47500, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Gallade - Drain Punch - Tutor
  (475, 47500, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Gallade - Energy Ball - Tutor
  (475, 47500, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Gallade - Giga Impact - Tutor
  (475, 47500, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Gallade - Psycho Cut - Tutor
  (475, 47500, 427, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Gallade - Zen Headbutt - Tutor
  (475, 47500, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Gallade - Stone Edge - Tutor
  (475, 47500, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Gallade - Charge Beam - Tutor
  (475, 47500, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Gallade - Bulldoze - Tutor
  (475, 47500, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Gallade - Dazzling Gleam - Tutor
  (475, 47500, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Probopass - Tackle - Level 1
  (476, 47600, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Probopass - Thunder Wave - Level 6
  (476, 47600, 86, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Probopass - Spark - Level 11
  (476, 47600, 209, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Probopass - Iron Defense - Level 18
  (476, 47600, 334, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Probopass - Rock Slide - Level 25
  (476, 47600, 157, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Probopass - Tri Attack - Level 34
  (476, 47600, 161, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Probopass - Power Gem - Level 34
  (476, 47600, 408, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Probopass - Flash Cannon - Level 38
  (476, 47600, 430, 22, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Probopass - Earth Power - Level 43
  (476, 47600, 414, 22, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Probopass - Fire Punch - Tutor
  (476, 47600, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Probopass - Ice Punch - Tutor
  (476, 47600, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Probopass - Thunder Punch - Tutor
  (476, 47600, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Probopass - Hyper Beam - Tutor
  (476, 47600, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Probopass - Thunderbolt - Tutor
  (476, 47600, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Probopass - Rest - Tutor
  (476, 47600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Probopass - Rock Slide - Tutor
  (476, 47600, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Probopass - Tri Attack - Tutor
  (476, 47600, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Probopass - Rock Smash - Tutor
  (476, 47600, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Probopass - Earth Power - Tutor
  (476, 47600, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Probopass - Giga Impact - Tutor
  (476, 47600, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Probopass - Flash Cannon - Tutor
  (476, 47600, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Probopass - Iron Head - Tutor
  (476, 47600, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Probopass - Stone Edge - Tutor
  (476, 47600, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Probopass - Stealth Rock - Tutor
  (476, 47600, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Probopass - Bulldoze - Tutor
  (476, 47600, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Probopass - Steel Beam - Tutor
  (476, 47600, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Probopass - Power Shift - Tutor
  (476, 47600, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Dusknoir - Absorb - Level 1
  (477, 47700, 71, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dusknoir - Shadow Sneak - Level 6
  (477, 47700, 425, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Dusknoir - Hex - Level 11
  (477, 47700, 506, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Dusknoir - Leech Life - Level 18
  (477, 47700, 141, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Dusknoir - Dark Pulse - Level 25
  (477, 47700, 399, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Dusknoir - Shadow Ball - Level 34
  (477, 47700, 247, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Dusknoir - Psychic - Level 43
  (477, 47700, 94, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Dusknoir - Fire Punch - Tutor
  (477, 47700, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Dusknoir - Ice Punch - Tutor
  (477, 47700, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Dusknoir - Thunder Punch - Tutor
  (477, 47700, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Dusknoir - Ice Beam - Tutor
  (477, 47700, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Dusknoir - Hyper Beam - Tutor
  (477, 47700, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Dusknoir - Psychic - Tutor
  (477, 47700, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Dusknoir - Leech Life - Tutor
  (477, 47700, 141, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Dusknoir - Rest - Tutor
  (477, 47700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Dusknoir - Rock Slide - Tutor
  (477, 47700, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Dusknoir - Icy Wind - Tutor
  (477, 47700, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Dusknoir - Shadow Ball - Tutor
  (477, 47700, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Dusknoir - Rock Smash - Tutor
  (477, 47700, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Dusknoir - Calm Mind - Tutor
  (477, 47700, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Dusknoir - Dark Pulse - Tutor
  (477, 47700, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Dusknoir - Giga Impact - Tutor
  (477, 47700, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Dusknoir - Charge Beam - Tutor
  (477, 47700, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Dusknoir - Ominous Wind - Tutor
  (477, 47700, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Dusknoir - Bulldoze - Tutor
  (477, 47700, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Dusknoir - Power Shift - Tutor
  (477, 47700, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Froslass - Powder Snow - Level 1
  (478, 47800, 181, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Froslass - Ice Shard - Level 6
  (478, 47800, 420, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Froslass - Bite - Level 11
  (478, 47800, 44, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Froslass - Ice Fang - Level 18
  (478, 47800, 423, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Froslass - Hex - Level 18
  (478, 47800, 506, 22, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Froslass - Crunch - Level 25
  (478, 47800, 242, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Froslass - Shadow Ball - Level 25
  (478, 47800, 247, 22, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Froslass - Icicle Crash - Level 34
  (478, 47800, 556, 22, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Froslass - Blizzard - Level 43
  (478, 47800, 59, 22, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Froslass - Ice Punch - Tutor
  (478, 47800, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Froslass - Ice Beam - Tutor
  (478, 47800, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Froslass - Hyper Beam - Tutor
  (478, 47800, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Froslass - Thunderbolt - Tutor
  (478, 47800, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Froslass - Psychic - Tutor
  (478, 47800, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Froslass - Rest - Tutor
  (478, 47800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Froslass - Spikes - Tutor
  (478, 47800, 191, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Froslass - Icy Wind - Tutor
  (478, 47800, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Froslass - Shadow Ball - Tutor
  (478, 47800, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Froslass - Water Pulse - Tutor
  (478, 47800, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Froslass - Giga Impact - Tutor
  (478, 47800, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Froslass - Ice Fang - Tutor
  (478, 47800, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Froslass - Ominous Wind - Tutor
  (478, 47800, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Rotom - Thunder Shock - Level 1
  (479, 47900, 84, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom - Charge Beam - Level 6
  (479, 47900, 451, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Rotom - Hex - Level 11
  (479, 47900, 506, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Rotom - Thunder Wave - Level 18
  (479, 47900, 86, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Rotom - Shadow Ball - Level 25
  (479, 47900, 247, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Rotom - Thunderbolt - Level 34
  (479, 47900, 85, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Rotom - Thunder - Level 43
  (479, 47900, 87, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Rotom - Thunderbolt - Tutor
  (479, 47900, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Rotom - Swift - Tutor
  (479, 47900, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Rotom - Rest - Tutor
  (479, 47900, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Rotom - Shadow Ball - Tutor
  (479, 47900, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Rotom - Dark Pulse - Tutor
  (479, 47900, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Rotom - Charge Beam - Tutor
  (479, 47900, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Rotom - Ominous Wind - Tutor
  (479, 47900, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Uxie - Confusion - Level 1
  (480, 48000, 93, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Uxie - Swift - Level 6
  (480, 48000, 129, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Uxie - Double Hit - Level 12
  (480, 48000, 458, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Uxie - Rest - Level 19
  (480, 48000, 156, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Uxie - Extrasensory - Level 27
  (480, 48000, 326, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Uxie - Tri Attack - Level 32
  (480, 48000, 161, 22, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Uxie - Calm Mind - Level 36
  (480, 48000, 347, 22, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Uxie - Mystical Power - Level 46
  (480, 48000, 832, 22, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Uxie - Hypnosis - Level 57
  (480, 48000, 95, 22, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Uxie - Fire Punch - Tutor
  (480, 48000, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Uxie - Ice Punch - Tutor
  (480, 48000, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Uxie - Thunder Punch - Tutor
  (480, 48000, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Uxie - Hyper Beam - Tutor
  (480, 48000, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Uxie - Thunderbolt - Tutor
  (480, 48000, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Uxie - Psychic - Tutor
  (480, 48000, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Uxie - Swift - Tutor
  (480, 48000, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Uxie - Rest - Tutor
  (480, 48000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Uxie - Tri Attack - Tutor
  (480, 48000, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Uxie - Iron Tail - Tutor
  (480, 48000, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Uxie - Shadow Ball - Tutor
  (480, 48000, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Uxie - Calm Mind - Tutor
  (480, 48000, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Uxie - Water Pulse - Tutor
  (480, 48000, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Uxie - Drain Punch - Tutor
  (480, 48000, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Uxie - Energy Ball - Tutor
  (480, 48000, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Uxie - Giga Impact - Tutor
  (480, 48000, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Uxie - Psycho Cut - Tutor
  (480, 48000, 427, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Uxie - Zen Headbutt - Tutor
  (480, 48000, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Uxie - Stealth Rock - Tutor
  (480, 48000, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Uxie - Charge Beam - Tutor
  (480, 48000, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Uxie - Play Rough - Tutor
  (480, 48000, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Uxie - Dazzling Gleam - Tutor
  (480, 48000, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Uxie - Power Shift - Tutor
  (480, 48000, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Mesprit - Confusion - Level 1
  (481, 48100, 93, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mesprit - Swift - Level 6
  (481, 48100, 129, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Mesprit - Double Hit - Level 12
  (481, 48100, 458, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Mesprit - Rest - Level 19
  (481, 48100, 156, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Mesprit - Extrasensory - Level 27
  (481, 48100, 326, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Mesprit - Tri Attack - Level 32
  (481, 48100, 161, 22, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Mesprit - Calm Mind - Level 36
  (481, 48100, 347, 22, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Mesprit - Mystical Power - Level 46
  (481, 48100, 832, 22, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Mesprit - Recover - Level 57
  (481, 48100, 105, 22, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Mesprit - Fire Punch - Tutor
  (481, 48100, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Mesprit - Ice Punch - Tutor
  (481, 48100, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Mesprit - Thunder Punch - Tutor
  (481, 48100, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Mesprit - Ice Beam - Tutor
  (481, 48100, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Mesprit - Hyper Beam - Tutor
  (481, 48100, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Mesprit - Thunderbolt - Tutor
  (481, 48100, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Mesprit - Psychic - Tutor
  (481, 48100, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Mesprit - Swift - Tutor
  (481, 48100, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Mesprit - Rest - Tutor
  (481, 48100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Mesprit - Tri Attack - Tutor
  (481, 48100, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Mesprit - Iron Tail - Tutor
  (481, 48100, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Mesprit - Shadow Ball - Tutor
  (481, 48100, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Mesprit - Calm Mind - Tutor
  (481, 48100, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Mesprit - Water Pulse - Tutor
  (481, 48100, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Mesprit - Drain Punch - Tutor
  (481, 48100, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Mesprit - Energy Ball - Tutor
  (481, 48100, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Mesprit - Giga Impact - Tutor
  (481, 48100, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Mesprit - Psycho Cut - Tutor
  (481, 48100, 427, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Mesprit - Zen Headbutt - Tutor
  (481, 48100, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Mesprit - Stealth Rock - Tutor
  (481, 48100, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Mesprit - Charge Beam - Tutor
  (481, 48100, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Mesprit - Play Rough - Tutor
  (481, 48100, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Mesprit - Dazzling Gleam - Tutor
  (481, 48100, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Azelf - Confusion - Level 1
  (482, 48200, 93, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azelf - Swift - Level 6
  (482, 48200, 129, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Azelf - Double Hit - Level 12
  (482, 48200, 458, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Azelf - Rest - Level 19
  (482, 48200, 156, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Azelf - Extrasensory - Level 27
  (482, 48200, 326, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Azelf - Tri Attack - Level 32
  (482, 48200, 161, 22, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Azelf - Nasty Plot - Level 36
  (482, 48200, 417, 22, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Azelf - Mystical Power - Level 46
  (482, 48200, 832, 22, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Azelf - Self-Destruct - Level 57
  (482, 48200, 120, 22, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Azelf - Fire Punch - Tutor
  (482, 48200, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Azelf - Ice Punch - Tutor
  (482, 48200, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Azelf - Thunder Punch - Tutor
  (482, 48200, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Azelf - Flamethrower - Tutor
  (482, 48200, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Azelf - Hyper Beam - Tutor
  (482, 48200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Azelf - Thunderbolt - Tutor
  (482, 48200, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Azelf - Psychic - Tutor
  (482, 48200, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Azelf - Swift - Tutor
  (482, 48200, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Azelf - Rest - Tutor
  (482, 48200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Azelf - Tri Attack - Tutor
  (482, 48200, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Azelf - Iron Tail - Tutor
  (482, 48200, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Azelf - Shadow Ball - Tutor
  (482, 48200, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Azelf - Calm Mind - Tutor
  (482, 48200, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Azelf - Water Pulse - Tutor
  (482, 48200, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Azelf - Drain Punch - Tutor
  (482, 48200, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Azelf - Energy Ball - Tutor
  (482, 48200, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Azelf - Giga Impact - Tutor
  (482, 48200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Azelf - Psycho Cut - Tutor
  (482, 48200, 427, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Azelf - Zen Headbutt - Tutor
  (482, 48200, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Azelf - Stealth Rock - Tutor
  (482, 48200, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Azelf - Charge Beam - Tutor
  (482, 48200, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Azelf - Play Rough - Tutor
  (482, 48200, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Azelf - Dazzling Gleam - Tutor
  (482, 48200, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Azelf - Power Shift - Tutor
  (482, 48200, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Dialga - Twister - Level 1
  (483, 48300, 239, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dialga - Ancient Power - Level 6
  (483, 48300, 246, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Dialga - Slash - Level 12
  (483, 48300, 163, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Dialga - Dragon Claw - Level 19
  (483, 48300, 337, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Dialga - Power Gem - Level 27
  (483, 48300, 408, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Dialga - Dragon Pulse - Level 36
  (483, 48300, 406, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Dialga - Earth Power - Level 42
  (483, 48300, 414, 22, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Dialga - Iron Tail - Level 47
  (483, 48300, 231, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Dialga - Flash Cannon - Level 55
  (483, 48300, 430, 22, NULL, 1, 55, NULL, NULL, NULL, 9),
  -- Dialga - Roar of Time - Level 60
  (483, 48300, 459, 22, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Dialga - Flamethrower - Tutor
  (483, 48300, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Dialga - Ice Beam - Tutor
  (483, 48300, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Dialga - Hyper Beam - Tutor
  (483, 48300, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Dialga - Thunderbolt - Tutor
  (483, 48300, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Dialga - Swift - Tutor
  (483, 48300, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Dialga - Rest - Tutor
  (483, 48300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Dialga - Rock Slide - Tutor
  (483, 48300, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Dialga - Outrage - Tutor
  (483, 48300, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Dialga - Iron Tail - Tutor
  (483, 48300, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Dialga - Rock Smash - Tutor
  (483, 48300, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Dialga - Aerial Ace - Tutor
  (483, 48300, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Dialga - Bulk Up - Tutor
  (483, 48300, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Dialga - Earth Power - Tutor
  (483, 48300, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Dialga - Giga Impact - Tutor
  (483, 48300, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Dialga - Shadow Claw - Tutor
  (483, 48300, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Dialga - Flash Cannon - Tutor
  (483, 48300, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Dialga - Draco Meteor - Tutor
  (483, 48300, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Dialga - Iron Head - Tutor
  (483, 48300, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Dialga - Stone Edge - Tutor
  (483, 48300, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Dialga - Stealth Rock - Tutor
  (483, 48300, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Dialga - Bulldoze - Tutor
  (483, 48300, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Dialga - Steel Beam - Tutor
  (483, 48300, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Palkia - Twister - Level 1
  (484, 48400, 239, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Palkia - Ancient Power - Level 6
  (484, 48400, 246, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Palkia - Slash - Level 12
  (484, 48400, 163, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Palkia - Dragon Claw - Level 19
  (484, 48400, 337, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Palkia - Power Gem - Level 27
  (484, 48400, 408, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Palkia - Dragon Pulse - Level 36
  (484, 48400, 406, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Palkia - Earth Power - Level 42
  (484, 48400, 414, 22, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Palkia - Aqua Tail - Level 47
  (484, 48400, 401, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Palkia - Hydro Pump - Level 55
  (484, 48400, 56, 22, NULL, 1, 55, NULL, NULL, NULL, 9),
  -- Palkia - Spacial Rend - Level 60
  (484, 48400, 460, 22, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Palkia - Flamethrower - Tutor
  (484, 48400, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Palkia - Ice Beam - Tutor
  (484, 48400, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Palkia - Hyper Beam - Tutor
  (484, 48400, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Palkia - Thunderbolt - Tutor
  (484, 48400, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Palkia - Swift - Tutor
  (484, 48400, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Palkia - Rest - Tutor
  (484, 48400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Palkia - Rock Slide - Tutor
  (484, 48400, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Palkia - Outrage - Tutor
  (484, 48400, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Palkia - Rock Smash - Tutor
  (484, 48400, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Palkia - Aerial Ace - Tutor
  (484, 48400, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Palkia - Bulk Up - Tutor
  (484, 48400, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Palkia - Water Pulse - Tutor
  (484, 48400, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Palkia - Aqua Tail - Tutor
  (484, 48400, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Palkia - Earth Power - Tutor
  (484, 48400, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Palkia - Giga Impact - Tutor
  (484, 48400, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Palkia - Shadow Claw - Tutor
  (484, 48400, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Palkia - Draco Meteor - Tutor
  (484, 48400, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Palkia - Stone Edge - Tutor
  (484, 48400, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Palkia - Bulldoze - Tutor
  (484, 48400, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Heatran - Ember - Level 1
  (485, 48500, 52, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heatran - Iron Defense - Level 6
  (485, 48500, 334, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Heatran - Ancient Power - Level 12
  (485, 48500, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Heatran - Fire Fang - Level 19
  (485, 48500, 424, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Heatran - Iron Head - Level 27
  (485, 48500, 442, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Heatran - Crunch - Level 36
  (485, 48500, 242, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Heatran - Earth Power - Level 46
  (485, 48500, 414, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Heatran - Magma Storm - Level 57
  (485, 48500, 463, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Heatran - Flamethrower - Tutor
  (485, 48500, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Heatran - Hyper Beam - Tutor
  (485, 48500, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Heatran - Rest - Tutor
  (485, 48500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Heatran - Rock Slide - Tutor
  (485, 48500, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Heatran - Rock Smash - Tutor
  (485, 48500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Heatran - Dark Pulse - Tutor
  (485, 48500, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Heatran - Earth Power - Tutor
  (485, 48500, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Heatran - Giga Impact - Tutor
  (485, 48500, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Heatran - Fire Fang - Tutor
  (485, 48500, 424, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Heatran - Flash Cannon - Tutor
  (485, 48500, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Heatran - Iron Head - Tutor
  (485, 48500, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Heatran - Stone Edge - Tutor
  (485, 48500, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Heatran - Stealth Rock - Tutor
  (485, 48500, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Heatran - Bulldoze - Tutor
  (485, 48500, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Heatran - Steel Beam - Tutor
  (485, 48500, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Regigigas - Tackle - Level 1
  (486, 48600, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regigigas - Rock Smash - Level 6
  (486, 48600, 249, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Regigigas - Bulldoze - Level 12
  (486, 48600, 523, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Regigigas - Ancient Power - Level 19
  (486, 48600, 246, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Regigigas - Zen Headbutt - Level 27
  (486, 48600, 428, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Regigigas - Iron Head - Level 36
  (486, 48600, 442, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Regigigas - Crush Grip - Level 46
  (486, 48600, 462, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Regigigas - Giga Impact - Level 57
  (486, 48600, 416, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Regigigas - Fire Punch - Tutor
  (486, 48600, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Regigigas - Ice Punch - Tutor
  (486, 48600, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Regigigas - Thunder Punch - Tutor
  (486, 48600, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Regigigas - Hyper Beam - Tutor
  (486, 48600, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Regigigas - Thunderbolt - Tutor
  (486, 48600, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Regigigas - Rest - Tutor
  (486, 48600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Regigigas - Rock Slide - Tutor
  (486, 48600, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Regigigas - Icy Wind - Tutor
  (486, 48600, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Regigigas - Rock Smash - Tutor
  (486, 48600, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Regigigas - Aerial Ace - Tutor
  (486, 48600, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Regigigas - Drain Punch - Tutor
  (486, 48600, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Regigigas - Earth Power - Tutor
  (486, 48600, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Regigigas - Giga Impact - Tutor
  (486, 48600, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Regigigas - Zen Headbutt - Tutor
  (486, 48600, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Regigigas - Iron Head - Tutor
  (486, 48600, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Regigigas - Stone Edge - Tutor
  (486, 48600, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Regigigas - Bulldoze - Tutor
  (486, 48600, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Regigigas - High Horsepower - Tutor
  (486, 48600, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Regigigas - Power Shift - Tutor
  (486, 48600, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Giratina - Shadow Sneak - Level 1
  (487, 48700, 425, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Giratina - Ancient Power - Level 6
  (487, 48700, 246, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Giratina - Hex - Level 12
  (487, 48700, 506, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Giratina - Shadow Claw - Level 19
  (487, 48700, 421, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Giratina - Aura Sphere - Level 27
  (487, 48700, 396, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Giratina - Shadow Ball - Level 30
  (487, 48700, 247, 22, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Giratina - Dragon Claw - Level 36
  (487, 48700, 337, 22, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Giratina - Dragon Pulse - Level 42
  (487, 48700, 406, 22, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Giratina - Earth Power - Level 55
  (487, 48700, 414, 22, NULL, 1, 55, NULL, NULL, NULL, 9),
  -- Giratina - Shadow Force - Level 60
  (487, 48700, 467, 22, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Giratina - Hyper Beam - Tutor
  (487, 48700, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Giratina - Thunderbolt - Tutor
  (487, 48700, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Giratina - Psychic - Tutor
  (487, 48700, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Giratina - Swift - Tutor
  (487, 48700, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Giratina - Rest - Tutor
  (487, 48700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Giratina - Icy Wind - Tutor
  (487, 48700, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Giratina - Outrage - Tutor
  (487, 48700, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Giratina - Iron Tail - Tutor
  (487, 48700, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Giratina - Shadow Ball - Tutor
  (487, 48700, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Giratina - Rock Smash - Tutor
  (487, 48700, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Giratina - Aerial Ace - Tutor
  (487, 48700, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Giratina - Calm Mind - Tutor
  (487, 48700, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Giratina - Dark Pulse - Tutor
  (487, 48700, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Giratina - Aqua Tail - Tutor
  (487, 48700, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Giratina - Energy Ball - Tutor
  (487, 48700, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Giratina - Earth Power - Tutor
  (487, 48700, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Giratina - Giga Impact - Tutor
  (487, 48700, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Giratina - Shadow Claw - Tutor
  (487, 48700, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Giratina - Draco Meteor - Tutor
  (487, 48700, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Giratina - Iron Head - Tutor
  (487, 48700, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Giratina - Stone Edge - Tutor
  (487, 48700, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Giratina - Charge Beam - Tutor
  (487, 48700, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Giratina - Ominous Wind - Tutor
  (487, 48700, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Giratina - Bulldoze - Tutor
  (487, 48700, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Cresselia - Tackle - Level 1
  (488, 48800, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cresselia - Confusion - Level 6
  (488, 48800, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Cresselia - Slash - Level 12
  (488, 48800, 163, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Cresselia - Psycho Cut - Level 19
  (488, 48800, 427, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Cresselia - Recover - Level 27
  (488, 48800, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Cresselia - Psychic - Level 36
  (488, 48800, 94, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Cresselia - Moonblast - Level 46
  (488, 48800, 585, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Cresselia - Lunar Blessing - Level 57
  (488, 48800, 849, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Cresselia - Ice Beam - Tutor
  (488, 48800, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Cresselia - Hyper Beam - Tutor
  (488, 48800, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Cresselia - Psychic - Tutor
  (488, 48800, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Cresselia - Swift - Tutor
  (488, 48800, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Cresselia - Rest - Tutor
  (488, 48800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Cresselia - Icy Wind - Tutor
  (488, 48800, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Cresselia - Shadow Ball - Tutor
  (488, 48800, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Cresselia - Calm Mind - Tutor
  (488, 48800, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Cresselia - Energy Ball - Tutor
  (488, 48800, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Cresselia - Giga Impact - Tutor
  (488, 48800, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Cresselia - Psycho Cut - Tutor
  (488, 48800, 427, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Cresselia - Zen Headbutt - Tutor
  (488, 48800, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Cresselia - Charge Beam - Tutor
  (488, 48800, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Cresselia - Power Shift - Tutor
  (488, 48800, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Phione - Bubble - Level 1
  (489, 48900, 145, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Phione - Confusion - Level 6
  (489, 48900, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Phione - Water Pulse - Level 12
  (489, 48900, 352, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Phione - Acid Armor - Level 19
  (489, 48900, 151, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Phione - Zen Headbutt - Level 27
  (489, 48900, 428, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Phione - Moonblast - Level 36
  (489, 48900, 585, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Phione - Take Heart - Level 46
  (489, 48900, 850, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Phione - Hydro Pump - Level 57
  (489, 48900, 56, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Phione - Ice Beam - Tutor
  (489, 48900, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Phione - Swift - Tutor
  (489, 48900, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Phione - Rest - Tutor
  (489, 48900, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Phione - Icy Wind - Tutor
  (489, 48900, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Phione - Calm Mind - Tutor
  (489, 48900, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Phione - Water Pulse - Tutor
  (489, 48900, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Phione - Zen Headbutt - Tutor
  (489, 48900, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Phione - Dazzling Gleam - Tutor
  (489, 48900, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Manaphy - Bubble - Level 1
  (490, 49000, 145, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Manaphy - Confusion - Level 6
  (490, 49000, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Manaphy - Water Pulse - Level 12
  (490, 49000, 352, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Manaphy - Acid Armor - Level 19
  (490, 49000, 151, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Manaphy - Zen Headbutt - Level 27
  (490, 49000, 428, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Manaphy - Moonblast - Level 36
  (490, 49000, 585, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Manaphy - Take Heart - Level 46
  (490, 49000, 850, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Manaphy - Hydro Pump - Level 57
  (490, 49000, 56, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Manaphy - Ice Beam - Tutor
  (490, 49000, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Manaphy - Hyper Beam - Tutor
  (490, 49000, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Manaphy - Psychic - Tutor
  (490, 49000, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Manaphy - Swift - Tutor
  (490, 49000, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Manaphy - Rest - Tutor
  (490, 49000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Manaphy - Icy Wind - Tutor
  (490, 49000, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Manaphy - Shadow Ball - Tutor
  (490, 49000, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Manaphy - Calm Mind - Tutor
  (490, 49000, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Manaphy - Water Pulse - Tutor
  (490, 49000, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Manaphy - Energy Ball - Tutor
  (490, 49000, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Manaphy - Giga Impact - Tutor
  (490, 49000, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Manaphy - Zen Headbutt - Tutor
  (490, 49000, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Manaphy - Dazzling Gleam - Tutor
  (490, 49000, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Darkrai - Shadow Sneak - Level 1
  (491, 49100, 425, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Darkrai - Hypnosis - Level 6
  (491, 49100, 95, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Darkrai - Hex - Level 12
  (491, 49100, 506, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Darkrai - Nasty Plot - Level 19
  (491, 49100, 417, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Darkrai - Dark Pulse - Level 27
  (491, 49100, 399, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Darkrai - Shadow Ball - Level 36
  (491, 49100, 247, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Darkrai - Psychic - Level 46
  (491, 49100, 94, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Darkrai - Dark Void - Level 57
  (491, 49100, 464, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Darkrai - Ice Beam - Tutor
  (491, 49100, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Darkrai - Hyper Beam - Tutor
  (491, 49100, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Darkrai - Thunderbolt - Tutor
  (491, 49100, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Darkrai - Psychic - Tutor
  (491, 49100, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Darkrai - Swift - Tutor
  (491, 49100, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Darkrai - Rest - Tutor
  (491, 49100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Darkrai - Rock Slide - Tutor
  (491, 49100, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Darkrai - Sludge Bomb - Tutor
  (491, 49100, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Darkrai - Icy Wind - Tutor
  (491, 49100, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Darkrai - Shadow Ball - Tutor
  (491, 49100, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Darkrai - Rock Smash - Tutor
  (491, 49100, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Darkrai - Aerial Ace - Tutor
  (491, 49100, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Darkrai - Calm Mind - Tutor
  (491, 49100, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Darkrai - Poison Jab - Tutor
  (491, 49100, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Darkrai - Dark Pulse - Tutor
  (491, 49100, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Darkrai - X-Scissor - Tutor
  (491, 49100, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Darkrai - Drain Punch - Tutor
  (491, 49100, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Darkrai - Giga Impact - Tutor
  (491, 49100, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Darkrai - Shadow Claw - Tutor
  (491, 49100, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Darkrai - Charge Beam - Tutor
  (491, 49100, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Darkrai - Ominous Wind - Tutor
  (491, 49100, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Darkrai - Snarl - Tutor
  (491, 49100, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Shaymin - Leafage - Level 1
  (492, 49200, 670, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shaymin - Quick Attack - Level 6
  (492, 49200, 98, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Shaymin - Sleep Powder - Level 12
  (492, 49200, 79, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Shaymin - Air Slash - Level 19
  (492, 49200, 403, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Shaymin - Recover - Level 27
  (492, 49200, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Shaymin - Energy Ball - Level 36
  (492, 49200, 412, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Shaymin - Earth Power - Level 46
  (492, 49200, 414, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Shaymin - Seed Flare - Level 57
  (492, 49200, 465, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Shaymin - Hyper Beam - Tutor
  (492, 49200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Shaymin - Psychic - Tutor
  (492, 49200, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Shaymin - Swift - Tutor
  (492, 49200, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Shaymin - Rest - Tutor
  (492, 49200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Shaymin - Aerial Ace - Tutor
  (492, 49200, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Shaymin - Magical Leaf - Tutor
  (492, 49200, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Shaymin - Energy Ball - Tutor
  (492, 49200, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Shaymin - Earth Power - Tutor
  (492, 49200, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Shaymin - Giga Impact - Tutor
  (492, 49200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Shaymin - Zen Headbutt - Tutor
  (492, 49200, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Shaymin - Ominous Wind - Tutor
  (492, 49200, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Shaymin - Play Rough - Tutor
  (492, 49200, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Shaymin - Dazzling Gleam - Tutor
  (492, 49200, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Shaymin - Baby-Doll Eyes - Tutor
  (492, 49200, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus - Quick Attack - Level 1
  (493, 49300, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus - Confusion - Level 6
  (493, 49300, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Arceus - Ancient Power - Level 12
  (493, 49300, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Arceus - Calm Mind - Level 19
  (493, 49300, 347, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Arceus - Recover - Level 27
  (493, 49300, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Arceus - Extrasensory - Level 36
  (493, 49300, 326, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Arceus - Judgment - Level 46
  (493, 49300, 449, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Arceus - Hyper Beam - Level 57
  (493, 49300, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Arceus - Flamethrower - Tutor
  (493, 49300, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Arceus - Ice Beam - Tutor
  (493, 49300, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arceus - Hyper Beam - Tutor
  (493, 49300, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arceus - Thunderbolt - Tutor
  (493, 49300, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arceus - Psychic - Tutor
  (493, 49300, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arceus - Swift - Tutor
  (493, 49300, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arceus - Rest - Tutor
  (493, 49300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arceus - Rock Slide - Tutor
  (493, 49300, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arceus - Sludge Bomb - Tutor
  (493, 49300, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arceus - Icy Wind - Tutor
  (493, 49300, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arceus - Outrage - Tutor
  (493, 49300, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arceus - Iron Tail - Tutor
  (493, 49300, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arceus - Shadow Ball - Tutor
  (493, 49300, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arceus - Rock Smash - Tutor
  (493, 49300, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus - Aerial Ace - Tutor
  (493, 49300, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arceus - Calm Mind - Tutor
  (493, 49300, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arceus - Water Pulse - Tutor
  (493, 49300, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arceus - Poison Jab - Tutor
  (493, 49300, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arceus - Dark Pulse - Tutor
  (493, 49300, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Arceus - Aqua Tail - Tutor
  (493, 49300, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Arceus - X-Scissor - Tutor
  (493, 49300, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Arceus - Energy Ball - Tutor
  (493, 49300, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Arceus - Earth Power - Tutor
  (493, 49300, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Arceus - Giga Impact - Tutor
  (493, 49300, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Arceus - Shadow Claw - Tutor
  (493, 49300, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Arceus - Zen Headbutt - Tutor
  (493, 49300, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Arceus - Flash Cannon - Tutor
  (493, 49300, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Arceus - Draco Meteor - Tutor
  (493, 49300, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Arceus - Iron Head - Tutor
  (493, 49300, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Arceus - Stone Edge - Tutor
  (493, 49300, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Arceus - Stealth Rock - Tutor
  (493, 49300, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Arceus - Charge Beam - Tutor
  (493, 49300, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Arceus - Ominous Wind - Tutor
  (493, 49300, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Arceus - Bulldoze - Tutor
  (493, 49300, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 42),
  -- Arceus - Snarl - Tutor
  (493, 49300, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 43),
  -- Arceus - Mystical Fire - Tutor
  (493, 49300, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 44),
  -- Arceus - Dazzling Gleam - Tutor
  (493, 49300, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 45),
  -- Arceus - Steel Beam - Tutor
  (493, 49300, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 46);
