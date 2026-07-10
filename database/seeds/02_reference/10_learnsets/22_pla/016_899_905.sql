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
-- Pokémon Legends: Arceus learnsets for default forms, species 899-905.
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
  -- Wyrdeer - Tackle - Level 1
  (899, 89900, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wyrdeer - Confusion - Level 5
  (899, 89900, 93, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Wyrdeer - Hypnosis - Level 9
  (899, 89900, 95, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Wyrdeer - Calm Mind - Level 15
  (899, 89900, 347, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Wyrdeer - Psyshield Bash - Level 21
  (899, 89900, 828, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Wyrdeer - Extrasensory - Level 29
  (899, 89900, 326, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Wyrdeer - Zen Headbutt - Level 37
  (899, 89900, 428, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Wyrdeer - Double-Edge - Level 47
  (899, 89900, 38, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Wyrdeer - Hyper Beam - Tutor
  (899, 89900, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Wyrdeer - Thunderbolt - Tutor
  (899, 89900, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Wyrdeer - Psychic - Tutor
  (899, 89900, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Wyrdeer - Swift - Tutor
  (899, 89900, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Wyrdeer - Rest - Tutor
  (899, 89900, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Wyrdeer - Megahorn - Tutor
  (899, 89900, 224, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Wyrdeer - Iron Tail - Tutor
  (899, 89900, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Wyrdeer - Shadow Ball - Tutor
  (899, 89900, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Wyrdeer - Calm Mind - Tutor
  (899, 89900, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Wyrdeer - Energy Ball - Tutor
  (899, 89900, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Wyrdeer - Giga Impact - Tutor
  (899, 89900, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Wyrdeer - Zen Headbutt - Tutor
  (899, 89900, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Wyrdeer - Charge Beam - Tutor
  (899, 89900, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Wyrdeer - Bulldoze - Tutor
  (899, 89900, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Wyrdeer - Wild Charge - Tutor
  (899, 89900, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Wyrdeer - High Horsepower - Tutor
  (899, 89900, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Kleavor - Quick Attack - Level 1
  (900, 90000, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kleavor - Silver Wind - Level 6
  (900, 90000, 318, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Kleavor - Aerial Ace - Level 11
  (900, 90000, 332, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Kleavor - Stealth Rock - Level 14
  (900, 90000, 446, 22, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Kleavor - Double Hit - Level 14
  (900, 90000, 458, 22, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Kleavor - Air Slash - Level 18
  (900, 90000, 403, 22, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Kleavor - Swords Dance - Level 25
  (900, 90000, 14, 22, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Kleavor - Stone Axe - Level 29
  (900, 90000, 830, 22, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Kleavor - X-Scissor - Level 34
  (900, 90000, 404, 22, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Kleavor - Close Combat - Level 43
  (900, 90000, 370, 22, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Kleavor - Hyper Beam - Tutor
  (900, 90000, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Kleavor - Focus Energy - Tutor
  (900, 90000, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Kleavor - Swift - Tutor
  (900, 90000, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Kleavor - Rest - Tutor
  (900, 90000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Kleavor - Rock Slide - Tutor
  (900, 90000, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Kleavor - False Swipe - Tutor
  (900, 90000, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Kleavor - Rock Smash - Tutor
  (900, 90000, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Kleavor - Aerial Ace - Tutor
  (900, 90000, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Kleavor - Calm Mind - Tutor
  (900, 90000, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Kleavor - X-Scissor - Tutor
  (900, 90000, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Kleavor - Giga Impact - Tutor
  (900, 90000, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Kleavor - Psycho Cut - Tutor
  (900, 90000, 427, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Kleavor - Stone Edge - Tutor
  (900, 90000, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Kleavor - Stealth Rock - Tutor
  (900, 90000, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Kleavor - Ominous Wind - Tutor
  (900, 90000, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Ursaluna - Tackle - Level 1
  (901, 90100, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ursaluna - Baby-Doll Eyes - Level 6
  (901, 90100, 608, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Ursaluna - Bulldoze - Level 11
  (901, 90100, 523, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Ursaluna - Slash - Level 18
  (901, 90100, 163, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Ursaluna - Play Rough - Level 25
  (901, 90100, 583, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Ursaluna - High Horsepower - Level 34
  (901, 90100, 667, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Ursaluna - Double-Edge - Level 43
  (901, 90100, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Ursaluna - Headlong Rush - Level 43
  (901, 90100, 838, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Ursaluna - Fire Punch - Tutor
  (901, 90100, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Ursaluna - Ice Punch - Tutor
  (901, 90100, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Ursaluna - Thunder Punch - Tutor
  (901, 90100, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Ursaluna - Hyper Beam - Tutor
  (901, 90100, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Ursaluna - Focus Energy - Tutor
  (901, 90100, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Ursaluna - Swift - Tutor
  (901, 90100, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Ursaluna - Rest - Tutor
  (901, 90100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Ursaluna - Rock Slide - Tutor
  (901, 90100, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Ursaluna - Rock Smash - Tutor
  (901, 90100, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Ursaluna - Aerial Ace - Tutor
  (901, 90100, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Ursaluna - Bulk Up - Tutor
  (901, 90100, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Ursaluna - Earth Power - Tutor
  (901, 90100, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Ursaluna - Giga Impact - Tutor
  (901, 90100, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Ursaluna - Shadow Claw - Tutor
  (901, 90100, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Ursaluna - Stone Edge - Tutor
  (901, 90100, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Ursaluna - Bulldoze - Tutor
  (901, 90100, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Ursaluna - Play Rough - Tutor
  (901, 90100, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Ursaluna - Baby-Doll Eyes - Tutor
  (901, 90100, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Ursaluna - High Horsepower - Tutor
  (901, 90100, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Basculegion - Tackle - Level 1
  (902, 90200, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Basculegion - Aqua Jet - Level 6
  (902, 90200, 453, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Basculegion - Bite - Level 11
  (902, 90200, 44, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Basculegion - Hex - Level 11
  (902, 90200, 506, 22, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Basculegion - Zen Headbutt - Level 18
  (902, 90200, 428, 22, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Basculegion - Crunch - Level 25
  (902, 90200, 242, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Basculegion - Shadow Ball - Level 25
  (902, 90200, 247, 22, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Basculegion - Wave Crash - Level 34
  (902, 90200, 834, 22, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Basculegion - Double-Edge - Level 43
  (902, 90200, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Basculegion - Ice Beam - Tutor
  (902, 90200, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Basculegion - Hyper Beam - Tutor
  (902, 90200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Basculegion - Psychic - Tutor
  (902, 90200, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Basculegion - Swift - Tutor
  (902, 90200, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Basculegion - Rest - Tutor
  (902, 90200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Basculegion - Icy Wind - Tutor
  (902, 90200, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Basculegion - Shadow Ball - Tutor
  (902, 90200, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Basculegion - Calm Mind - Tutor
  (902, 90200, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Basculegion - Water Pulse - Tutor
  (902, 90200, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Basculegion - Aqua Tail - Tutor
  (902, 90200, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Basculegion - Giga Impact - Tutor
  (902, 90200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Basculegion - Ice Fang - Tutor
  (902, 90200, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Basculegion - Zen Headbutt - Tutor
  (902, 90200, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Basculegion - Ominous Wind - Tutor
  (902, 90200, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Sneasler - Quick Attack - Level 1
  (903, 90300, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sneasler - Rock Smash - Level 6
  (903, 90300, 249, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Sneasler - Swift - Level 11
  (903, 90300, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Sneasler - Dire Claw - Level 11
  (903, 90300, 827, 22, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Sneasler - Slash - Level 18
  (903, 90300, 163, 22, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Sneasler - Poison Jab - Level 25
  (903, 90300, 398, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Sneasler - Swords Dance - Level 34
  (903, 90300, 14, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Sneasler - Close Combat - Level 43
  (903, 90300, 370, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Sneasler - Hyper Beam - Tutor
  (903, 90300, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Sneasler - Focus Energy - Tutor
  (903, 90300, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Sneasler - Swift - Tutor
  (903, 90300, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Sneasler - Rest - Tutor
  (903, 90300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Sneasler - False Swipe - Tutor
  (903, 90300, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Sneasler - Iron Tail - Tutor
  (903, 90300, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Sneasler - Shadow Ball - Tutor
  (903, 90300, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Sneasler - Rock Smash - Tutor
  (903, 90300, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Sneasler - Aerial Ace - Tutor
  (903, 90300, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Sneasler - Bulk Up - Tutor
  (903, 90300, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Sneasler - Calm Mind - Tutor
  (903, 90300, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Sneasler - Poison Jab - Tutor
  (903, 90300, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Sneasler - X-Scissor - Tutor
  (903, 90300, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Sneasler - Drain Punch - Tutor
  (903, 90300, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Sneasler - Giga Impact - Tutor
  (903, 90300, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Sneasler - Shadow Claw - Tutor
  (903, 90300, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Sneasler - Snarl - Tutor
  (903, 90300, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Sneasler - Power Shift - Tutor
  (903, 90300, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Overqwil - Poison Sting - Level 1
  (904, 90400, 40, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Overqwil - Spikes - Level 5
  (904, 90400, 191, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Overqwil - Pin Missile - Level 9
  (904, 90400, 42, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Overqwil - Barb Barrage - Level 15
  (904, 90400, 839, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Overqwil - Water Pulse - Level 21
  (904, 90400, 352, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Overqwil - Dark Pulse - Level 26
  (904, 90400, 399, 22, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Overqwil - Poison Jab - Level 29
  (904, 90400, 398, 22, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Overqwil - Aqua Tail - Level 37
  (904, 90400, 401, 22, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Overqwil - Double-Edge - Level 47
  (904, 90400, 38, 22, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Overqwil - Self-Destruct - Level 57
  (904, 90400, 120, 22, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Overqwil - Ice Beam - Tutor
  (904, 90400, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Overqwil - Hyper Beam - Tutor
  (904, 90400, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Overqwil - Swift - Tutor
  (904, 90400, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Overqwil - Rest - Tutor
  (904, 90400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Overqwil - Sludge Bomb - Tutor
  (904, 90400, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Overqwil - Spikes - Tutor
  (904, 90400, 191, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Overqwil - Icy Wind - Tutor
  (904, 90400, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Overqwil - Shadow Ball - Tutor
  (904, 90400, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Overqwil - Ice Ball - Tutor
  (904, 90400, 301, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Overqwil - Water Pulse - Tutor
  (904, 90400, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Overqwil - Poison Jab - Tutor
  (904, 90400, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Overqwil - Dark Pulse - Tutor
  (904, 90400, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Overqwil - Aqua Tail - Tutor
  (904, 90400, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Overqwil - Giga Impact - Tutor
  (904, 90400, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Enamorus - Tackle - Level 1
  (905, 90500, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Enamorus - Bite - Level 7
  (905, 90500, 44, 22, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Enamorus - Twister - Level 11
  (905, 90500, 239, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Enamorus - Draining Kiss - Level 14
  (905, 90500, 577, 22, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Enamorus - Iron Defense - Level 22
  (905, 90500, 334, 22, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Enamorus - Extrasensory - Level 31
  (905, 90500, 326, 22, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Enamorus - Crunch - Level 41
  (905, 90500, 242, 22, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Enamorus - Moonblast - Level 47
  (905, 90500, 585, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Enamorus - Springtide Storm - Level 52
  (905, 90500, 831, 22, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Enamorus - Hyper Beam - Tutor
  (905, 90500, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Enamorus - Psychic - Tutor
  (905, 90500, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Enamorus - Rest - Tutor
  (905, 90500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Enamorus - Sludge Bomb - Tutor
  (905, 90500, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Enamorus - Rock Smash - Tutor
  (905, 90500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Enamorus - Calm Mind - Tutor
  (905, 90500, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Enamorus - Earth Power - Tutor
  (905, 90500, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Enamorus - Giga Impact - Tutor
  (905, 90500, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Enamorus - Zen Headbutt - Tutor
  (905, 90500, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Enamorus - Play Rough - Tutor
  (905, 90500, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Enamorus - Mystical Fire - Tutor
  (905, 90500, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Enamorus - Dazzling Gleam - Tutor
  (905, 90500, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Enamorus - Power Shift - Tutor
  (905, 90500, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22);
