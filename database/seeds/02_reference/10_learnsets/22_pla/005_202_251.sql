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
-- Pokémon Legends: Arceus learnsets for default forms, species 202-251.
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
  -- Gligar - Poison Sting - Level 1
  (207, 20700, 40, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gligar - Quick Attack - Level 6
  (207, 20700, 98, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Gligar - Aerial Ace - Level 11
  (207, 20700, 332, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Gligar - Mud Bomb - Level 18
  (207, 20700, 426, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Gligar - Slash - Level 25
  (207, 20700, 163, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Gligar - Poison Jab - Level 34
  (207, 20700, 398, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Gligar - X-Scissor - Level 43
  (207, 20700, 404, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Gligar - Swift - Tutor
  (207, 20700, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Gligar - Rest - Tutor
  (207, 20700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Gligar - Rock Slide - Tutor
  (207, 20700, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Gligar - Sludge Bomb - Tutor
  (207, 20700, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Gligar - False Swipe - Tutor
  (207, 20700, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Gligar - Iron Tail - Tutor
  (207, 20700, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Gligar - Rock Smash - Tutor
  (207, 20700, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Gligar - Aerial Ace - Tutor
  (207, 20700, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Gligar - Poison Jab - Tutor
  (207, 20700, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Gligar - Dark Pulse - Tutor
  (207, 20700, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Gligar - Aqua Tail - Tutor
  (207, 20700, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Gligar - X-Scissor - Tutor
  (207, 20700, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Gligar - Earth Power - Tutor
  (207, 20700, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Gligar - Stone Edge - Tutor
  (207, 20700, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Gligar - Stealth Rock - Tutor
  (207, 20700, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Gligar - Bulldoze - Tutor
  (207, 20700, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Steelix - Rollout - Level 1
  (208, 20800, 205, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Steelix - Tackle - Level 6
  (208, 20800, 33, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Steelix - Bulldoze - Level 11
  (208, 20800, 523, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Steelix - Rock Slide - Level 18
  (208, 20800, 157, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Steelix - Stealth Rock - Level 25
  (208, 20800, 446, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Steelix - High Horsepower - Level 34
  (208, 20800, 667, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Steelix - Iron Tail - Level 43
  (208, 20800, 231, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Steelix - Hyper Beam - Tutor
  (208, 20800, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Steelix - Rest - Tutor
  (208, 20800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Steelix - Rock Slide - Tutor
  (208, 20800, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Steelix - Iron Tail - Tutor
  (208, 20800, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Steelix - Rock Smash - Tutor
  (208, 20800, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Steelix - Ice Ball - Tutor
  (208, 20800, 301, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Steelix - Dark Pulse - Tutor
  (208, 20800, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Steelix - Aqua Tail - Tutor
  (208, 20800, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Steelix - Earth Power - Tutor
  (208, 20800, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Steelix - Giga Impact - Tutor
  (208, 20800, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Steelix - Thunder Fang - Tutor
  (208, 20800, 422, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Steelix - Ice Fang - Tutor
  (208, 20800, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Steelix - Fire Fang - Tutor
  (208, 20800, 424, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Steelix - Flash Cannon - Tutor
  (208, 20800, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Steelix - Iron Head - Tutor
  (208, 20800, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Steelix - Stone Edge - Tutor
  (208, 20800, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Steelix - Stealth Rock - Tutor
  (208, 20800, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Steelix - Bulldoze - Tutor
  (208, 20800, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Steelix - High Horsepower - Tutor
  (208, 20800, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Steelix - Steel Beam - Tutor
  (208, 20800, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Steelix - Power Shift - Tutor
  (208, 20800, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Scizor - Quick Attack - Level 1
  (212, 21200, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scizor - Silver Wind - Level 6
  (212, 21200, 318, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Scizor - Aerial Ace - Level 11
  (212, 21200, 332, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Scizor - Double Hit - Level 14
  (212, 21200, 458, 22, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Scizor - Air Slash - Level 18
  (212, 21200, 403, 22, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Scizor - Swords Dance - Level 25
  (212, 21200, 14, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Scizor - Bullet Punch - Level 29
  (212, 21200, 418, 22, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Scizor - X-Scissor - Level 34
  (212, 21200, 404, 22, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Scizor - Iron Head - Level 34
  (212, 21200, 442, 22, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Scizor - Close Combat - Level 43
  (212, 21200, 370, 22, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Scizor - Hyper Beam - Tutor
  (212, 21200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Scizor - Focus Energy - Tutor
  (212, 21200, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Scizor - Swift - Tutor
  (212, 21200, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Scizor - Rest - Tutor
  (212, 21200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Scizor - False Swipe - Tutor
  (212, 21200, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Scizor - Rock Smash - Tutor
  (212, 21200, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Scizor - Aerial Ace - Tutor
  (212, 21200, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Scizor - Calm Mind - Tutor
  (212, 21200, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Scizor - X-Scissor - Tutor
  (212, 21200, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Scizor - Giga Impact - Tutor
  (212, 21200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Scizor - Psycho Cut - Tutor
  (212, 21200, 427, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Scizor - Flash Cannon - Tutor
  (212, 21200, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Scizor - Iron Head - Tutor
  (212, 21200, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Scizor - Ominous Wind - Tutor
  (212, 21200, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Scizor - Steel Beam - Tutor
  (212, 21200, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Heracross - Tackle - Level 1
  (214, 21400, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heracross - Rock Smash - Level 5
  (214, 21400, 249, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Heracross - Pin Missile - Level 9
  (214, 21400, 42, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Heracross - Aerial Ace - Level 15
  (214, 21400, 332, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Heracross - Slash - Level 21
  (214, 21400, 163, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Heracross - Swords Dance - Level 29
  (214, 21400, 14, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Heracross - Double-Edge - Level 37
  (214, 21400, 38, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Heracross - Close Combat - Level 47
  (214, 21400, 370, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Heracross - Megahorn - Level 57
  (214, 21400, 224, 22, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Heracross - Hyper Beam - Tutor
  (214, 21400, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Heracross - Rest - Tutor
  (214, 21400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Heracross - Rock Slide - Tutor
  (214, 21400, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Heracross - Spikes - Tutor
  (214, 21400, 191, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Heracross - Outrage - Tutor
  (214, 21400, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Heracross - False Swipe - Tutor
  (214, 21400, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Heracross - Megahorn - Tutor
  (214, 21400, 224, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Heracross - Rock Smash - Tutor
  (214, 21400, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Heracross - Aerial Ace - Tutor
  (214, 21400, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Heracross - Bulk Up - Tutor
  (214, 21400, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Heracross - Calm Mind - Tutor
  (214, 21400, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Heracross - Giga Impact - Tutor
  (214, 21400, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Heracross - Shadow Claw - Tutor
  (214, 21400, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Heracross - Stone Edge - Tutor
  (214, 21400, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Heracross - Bulldoze - Tutor
  (214, 21400, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Heracross - High Horsepower - Tutor
  (214, 21400, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Sneasel - Quick Attack - Level 1
  (215, 21500, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sneasel - Ice Shard - Level 6
  (215, 21500, 420, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Sneasel - Swift - Level 11
  (215, 21500, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Sneasel - Slash - Level 18
  (215, 21500, 163, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Sneasel - Poison Jab - Level 25
  (215, 21500, 398, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Sneasel - Swords Dance - Level 34
  (215, 21500, 14, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Sneasel - Blizzard - Level 43
  (215, 21500, 59, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Sneasel - Ice Punch - Tutor
  (215, 21500, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Sneasel - Ice Beam - Tutor
  (215, 21500, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Sneasel - Swift - Tutor
  (215, 21500, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Sneasel - Rest - Tutor
  (215, 21500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Sneasel - Icy Wind - Tutor
  (215, 21500, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Sneasel - False Swipe - Tutor
  (215, 21500, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Sneasel - Iron Tail - Tutor
  (215, 21500, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Sneasel - Shadow Ball - Tutor
  (215, 21500, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Sneasel - Rock Smash - Tutor
  (215, 21500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Sneasel - Aerial Ace - Tutor
  (215, 21500, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Sneasel - Calm Mind - Tutor
  (215, 21500, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Sneasel - Poison Jab - Tutor
  (215, 21500, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Sneasel - Dark Pulse - Tutor
  (215, 21500, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Sneasel - X-Scissor - Tutor
  (215, 21500, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Sneasel - Shadow Claw - Tutor
  (215, 21500, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Sneasel - Psycho Cut - Tutor
  (215, 21500, 427, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Sneasel - Snarl - Tutor
  (215, 21500, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Teddiursa - Tackle - Level 1
  (216, 21600, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Teddiursa - Baby-Doll Eyes - Level 6
  (216, 21600, 608, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Teddiursa - Bulldoze - Level 11
  (216, 21600, 523, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Teddiursa - Slash - Level 18
  (216, 21600, 163, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Teddiursa - Play Rough - Level 25
  (216, 21600, 583, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Teddiursa - High Horsepower - Level 34
  (216, 21600, 667, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Teddiursa - Double-Edge - Level 43
  (216, 21600, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Teddiursa - Fire Punch - Tutor
  (216, 21600, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Teddiursa - Ice Punch - Tutor
  (216, 21600, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Teddiursa - Thunder Punch - Tutor
  (216, 21600, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Teddiursa - Focus Energy - Tutor
  (216, 21600, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Teddiursa - Swift - Tutor
  (216, 21600, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Teddiursa - Rest - Tutor
  (216, 21600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Teddiursa - Rock Slide - Tutor
  (216, 21600, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Teddiursa - Rock Smash - Tutor
  (216, 21600, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Teddiursa - Aerial Ace - Tutor
  (216, 21600, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Teddiursa - Bulk Up - Tutor
  (216, 21600, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Teddiursa - Shadow Claw - Tutor
  (216, 21600, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Teddiursa - Bulldoze - Tutor
  (216, 21600, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Teddiursa - Play Rough - Tutor
  (216, 21600, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Teddiursa - Baby-Doll Eyes - Tutor
  (216, 21600, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Teddiursa - High Horsepower - Tutor
  (216, 21600, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Ursaring - Tackle - Level 1
  (217, 21700, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ursaring - Baby-Doll Eyes - Level 6
  (217, 21700, 608, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Ursaring - Bulldoze - Level 11
  (217, 21700, 523, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Ursaring - Slash - Level 18
  (217, 21700, 163, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Ursaring - Play Rough - Level 25
  (217, 21700, 583, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Ursaring - High Horsepower - Level 34
  (217, 21700, 667, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Ursaring - Double-Edge - Level 43
  (217, 21700, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Ursaring - Fire Punch - Tutor
  (217, 21700, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Ursaring - Ice Punch - Tutor
  (217, 21700, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Ursaring - Thunder Punch - Tutor
  (217, 21700, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Ursaring - Hyper Beam - Tutor
  (217, 21700, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Ursaring - Focus Energy - Tutor
  (217, 21700, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Ursaring - Swift - Tutor
  (217, 21700, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Ursaring - Rest - Tutor
  (217, 21700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Ursaring - Rock Slide - Tutor
  (217, 21700, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Ursaring - Rock Smash - Tutor
  (217, 21700, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Ursaring - Aerial Ace - Tutor
  (217, 21700, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Ursaring - Bulk Up - Tutor
  (217, 21700, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Ursaring - Giga Impact - Tutor
  (217, 21700, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Ursaring - Shadow Claw - Tutor
  (217, 21700, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Ursaring - Stone Edge - Tutor
  (217, 21700, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Ursaring - Bulldoze - Tutor
  (217, 21700, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Ursaring - Play Rough - Tutor
  (217, 21700, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Ursaring - Baby-Doll Eyes - Tutor
  (217, 21700, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Ursaring - High Horsepower - Tutor
  (217, 21700, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Swinub - Tackle - Level 1
  (220, 22000, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swinub - Ice Shard - Level 6
  (220, 22000, 420, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Swinub - Bulldoze - Level 11
  (220, 22000, 523, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Swinub - Icicle Crash - Level 18
  (220, 22000, 556, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Swinub - High Horsepower - Level 25
  (220, 22000, 667, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Swinub - Ancient Power - Level 34
  (220, 22000, 246, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Swinub - Blizzard - Level 43
  (220, 22000, 59, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Swinub - Double-Edge - Level 52
  (220, 22000, 38, 22, NULL, 1, 52, NULL, NULL, NULL, 8),
  -- Swinub - Ice Beam - Tutor
  (220, 22000, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Swinub - Rest - Tutor
  (220, 22000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Swinub - Rock Slide - Tutor
  (220, 22000, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Swinub - Icy Wind - Tutor
  (220, 22000, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Swinub - Rock Smash - Tutor
  (220, 22000, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Swinub - Earth Power - Tutor
  (220, 22000, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Swinub - Stealth Rock - Tutor
  (220, 22000, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Swinub - Bulldoze - Tutor
  (220, 22000, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Swinub - Baby-Doll Eyes - Tutor
  (220, 22000, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Swinub - High Horsepower - Tutor
  (220, 22000, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Piloswine - Tackle - Level 1
  (221, 22100, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Piloswine - Ice Shard - Level 6
  (221, 22100, 420, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Piloswine - Bulldoze - Level 11
  (221, 22100, 523, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Piloswine - Icicle Crash - Level 18
  (221, 22100, 556, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Piloswine - High Horsepower - Level 25
  (221, 22100, 667, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Piloswine - Ancient Power - Level 34
  (221, 22100, 246, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Piloswine - Blizzard - Level 43
  (221, 22100, 59, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Piloswine - Double-Edge - Level 52
  (221, 22100, 38, 22, NULL, 1, 52, NULL, NULL, NULL, 8),
  -- Piloswine - Ice Beam - Tutor
  (221, 22100, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Piloswine - Hyper Beam - Tutor
  (221, 22100, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Piloswine - Rest - Tutor
  (221, 22100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Piloswine - Rock Slide - Tutor
  (221, 22100, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Piloswine - Icy Wind - Tutor
  (221, 22100, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Piloswine - Rock Smash - Tutor
  (221, 22100, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Piloswine - Earth Power - Tutor
  (221, 22100, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Piloswine - Giga Impact - Tutor
  (221, 22100, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Piloswine - Ice Fang - Tutor
  (221, 22100, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Piloswine - Stone Edge - Tutor
  (221, 22100, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Piloswine - Stealth Rock - Tutor
  (221, 22100, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Piloswine - Bulldoze - Tutor
  (221, 22100, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Piloswine - Baby-Doll Eyes - Tutor
  (221, 22100, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Piloswine - High Horsepower - Tutor
  (221, 22100, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Remoraid - Bubble - Level 1
  (223, 22300, 145, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Remoraid - Acid Spray - Level 6
  (223, 22300, 491, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Remoraid - Charge Beam - Level 11
  (223, 22300, 451, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Remoraid - Water Pulse - Level 18
  (223, 22300, 352, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Remoraid - Ice Beam - Level 25
  (223, 22300, 58, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Remoraid - Hydro Pump - Level 34
  (223, 22300, 56, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Remoraid - Hyper Beam - Level 43
  (223, 22300, 63, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Remoraid - Ice Beam - Tutor
  (223, 22300, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Remoraid - Hyper Beam - Tutor
  (223, 22300, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Remoraid - Psychic - Tutor
  (223, 22300, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Remoraid - Focus Energy - Tutor
  (223, 22300, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Remoraid - Swift - Tutor
  (223, 22300, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Remoraid - Rest - Tutor
  (223, 22300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Remoraid - Icy Wind - Tutor
  (223, 22300, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Remoraid - Water Pulse - Tutor
  (223, 22300, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Remoraid - Charge Beam - Tutor
  (223, 22300, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Octillery - Bubble - Level 1
  (224, 22400, 145, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Octillery - Acid Spray - Level 6
  (224, 22400, 491, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Octillery - Charge Beam - Level 11
  (224, 22400, 451, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Octillery - Water Pulse - Level 18
  (224, 22400, 352, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Octillery - Ice Beam - Level 25
  (224, 22400, 58, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Octillery - Hydro Pump - Level 34
  (224, 22400, 56, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Octillery - Hyper Beam - Level 43
  (224, 22400, 63, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Octillery - Octazooka - Evolution
  (224, 22400, 190, 22, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Octillery - Flamethrower - Tutor
  (224, 22400, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Octillery - Ice Beam - Tutor
  (224, 22400, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Octillery - Hyper Beam - Tutor
  (224, 22400, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Octillery - Psychic - Tutor
  (224, 22400, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Octillery - Focus Energy - Tutor
  (224, 22400, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Octillery - Swift - Tutor
  (224, 22400, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Octillery - Rest - Tutor
  (224, 22400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Octillery - Sludge Bomb - Tutor
  (224, 22400, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Octillery - Icy Wind - Tutor
  (224, 22400, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Octillery - Water Pulse - Tutor
  (224, 22400, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Octillery - Energy Ball - Tutor
  (224, 22400, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Octillery - Giga Impact - Tutor
  (224, 22400, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Octillery - Flash Cannon - Tutor
  (224, 22400, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Octillery - Charge Beam - Tutor
  (224, 22400, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Mantine - Tackle - Level 1
  (226, 22600, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mantine - Bubble - Level 5
  (226, 22600, 145, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Mantine - Aerial Ace - Level 9
  (226, 22600, 332, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Mantine - Water Pulse - Level 15
  (226, 22600, 352, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Mantine - Air Slash - Level 21
  (226, 22600, 403, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Mantine - Roost - Level 29
  (226, 22600, 355, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Mantine - Hydro Pump - Level 37
  (226, 22600, 56, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Mantine - Double-Edge - Level 47
  (226, 22600, 38, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Mantine - Ice Beam - Tutor
  (226, 22600, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Mantine - Hyper Beam - Tutor
  (226, 22600, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Mantine - Swift - Tutor
  (226, 22600, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Mantine - Rest - Tutor
  (226, 22600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Mantine - Rock Slide - Tutor
  (226, 22600, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Mantine - Icy Wind - Tutor
  (226, 22600, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Mantine - Aerial Ace - Tutor
  (226, 22600, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Mantine - Water Pulse - Tutor
  (226, 22600, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Mantine - Aqua Tail - Tutor
  (226, 22600, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Mantine - Giga Impact - Tutor
  (226, 22600, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Mantine - Iron Head - Tutor
  (226, 22600, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Mantine - Bulldoze - Tutor
  (226, 22600, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Mantine - Power Shift - Tutor
  (226, 22600, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Stantler - Tackle - Level 1
  (234, 23400, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stantler - Confusion - Level 5
  (234, 23400, 93, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Stantler - Hypnosis - Level 9
  (234, 23400, 95, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Stantler - Calm Mind - Level 15
  (234, 23400, 347, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Stantler - Psyshield Bash - Level 21
  (234, 23400, 828, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Stantler - Extrasensory - Level 29
  (234, 23400, 326, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Stantler - Zen Headbutt - Level 37
  (234, 23400, 428, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Stantler - Double-Edge - Level 47
  (234, 23400, 38, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Stantler - Thunderbolt - Tutor
  (234, 23400, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Stantler - Psychic - Tutor
  (234, 23400, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Stantler - Swift - Tutor
  (234, 23400, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Stantler - Rest - Tutor
  (234, 23400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Stantler - Megahorn - Tutor
  (234, 23400, 224, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Stantler - Iron Tail - Tutor
  (234, 23400, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Stantler - Shadow Ball - Tutor
  (234, 23400, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Stantler - Calm Mind - Tutor
  (234, 23400, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Stantler - Energy Ball - Tutor
  (234, 23400, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Stantler - Giga Impact - Tutor
  (234, 23400, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Stantler - Zen Headbutt - Tutor
  (234, 23400, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Stantler - Charge Beam - Tutor
  (234, 23400, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Stantler - Bulldoze - Tutor
  (234, 23400, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Stantler - Wild Charge - Tutor
  (234, 23400, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Elekid - Thunder Shock - Level 1
  (239, 23900, 84, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Elekid - Quick Attack - Level 6
  (239, 23900, 98, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Elekid - Spark - Level 11
  (239, 23900, 209, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Elekid - Thunder Wave - Level 18
  (239, 23900, 86, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Elekid - Thunder Punch - Level 25
  (239, 23900, 9, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Elekid - Thunderbolt - Level 34
  (239, 23900, 85, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Elekid - Thunder - Level 43
  (239, 23900, 87, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Elekid - Fire Punch - Tutor
  (239, 23900, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Elekid - Ice Punch - Tutor
  (239, 23900, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Elekid - Thunder Punch - Tutor
  (239, 23900, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Elekid - Thunderbolt - Tutor
  (239, 23900, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Elekid - Psychic - Tutor
  (239, 23900, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Elekid - Swift - Tutor
  (239, 23900, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Elekid - Rest - Tutor
  (239, 23900, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Elekid - Rock Smash - Tutor
  (239, 23900, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Elekid - Charge Beam - Tutor
  (239, 23900, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Elekid - Wild Charge - Tutor
  (239, 23900, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Magby - Ember - Level 1
  (240, 24000, 52, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magby - Tackle - Level 6
  (240, 24000, 33, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Magby - Flame Wheel - Level 11
  (240, 24000, 172, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Magby - Poison Gas - Level 18
  (240, 24000, 139, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Magby - Fire Punch - Level 25
  (240, 24000, 7, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Magby - Flamethrower - Level 34
  (240, 24000, 53, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Magby - Fire Blast - Level 43
  (240, 24000, 126, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Magby - Fire Punch - Tutor
  (240, 24000, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Magby - Thunder Punch - Tutor
  (240, 24000, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Magby - Flamethrower - Tutor
  (240, 24000, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Magby - Psychic - Tutor
  (240, 24000, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Magby - Focus Energy - Tutor
  (240, 24000, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Magby - Rest - Tutor
  (240, 24000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Magby - Iron Tail - Tutor
  (240, 24000, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Magby - Rock Smash - Tutor
  (240, 24000, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Blissey - Tackle - Level 1
  (242, 24200, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blissey - Fairy Wind - Level 6
  (242, 24200, 584, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Blissey - Baby-Doll Eyes - Level 11
  (242, 24200, 608, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Blissey - Draining Kiss - Level 18
  (242, 24200, 577, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Blissey - Calm Mind - Level 25
  (242, 24200, 347, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Blissey - Soft-Boiled - Level 34
  (242, 24200, 135, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Blissey - Double-Edge - Level 43
  (242, 24200, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Blissey - Fire Punch - Tutor
  (242, 24200, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Blissey - Ice Punch - Tutor
  (242, 24200, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Blissey - Thunder Punch - Tutor
  (242, 24200, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Blissey - Flamethrower - Tutor
  (242, 24200, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Blissey - Ice Beam - Tutor
  (242, 24200, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Blissey - Hyper Beam - Tutor
  (242, 24200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Blissey - Thunderbolt - Tutor
  (242, 24200, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Blissey - Psychic - Tutor
  (242, 24200, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Blissey - Rest - Tutor
  (242, 24200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Blissey - Rock Slide - Tutor
  (242, 24200, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Blissey - Tri Attack - Tutor
  (242, 24200, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Blissey - Icy Wind - Tutor
  (242, 24200, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Blissey - Iron Tail - Tutor
  (242, 24200, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Blissey - Shadow Ball - Tutor
  (242, 24200, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Blissey - Rock Smash - Tutor
  (242, 24200, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Blissey - Calm Mind - Tutor
  (242, 24200, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Blissey - Water Pulse - Tutor
  (242, 24200, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Blissey - Drain Punch - Tutor
  (242, 24200, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Blissey - Giga Impact - Tutor
  (242, 24200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Blissey - Zen Headbutt - Tutor
  (242, 24200, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Blissey - Stealth Rock - Tutor
  (242, 24200, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Blissey - Charge Beam - Tutor
  (242, 24200, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Blissey - Bulldoze - Tutor
  (242, 24200, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Blissey - Wild Charge - Tutor
  (242, 24200, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Blissey - Dazzling Gleam - Tutor
  (242, 24200, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Blissey - Baby-Doll Eyes - Tutor
  (242, 24200, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Blissey - Power Shift - Tutor
  (242, 24200, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34);
