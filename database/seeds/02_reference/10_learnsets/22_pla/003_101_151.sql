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
-- Pokémon Legends: Arceus learnsets for default forms, species 101-151.
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
  -- Lickitung - Tackle - Level 1
  (108, 10800, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lickitung - Rest - Level 6
  (108, 10800, 156, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Lickitung - Bulldoze - Level 11
  (108, 10800, 523, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Lickitung - Zen Headbutt - Level 18
  (108, 10800, 428, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Lickitung - Double-Edge - Level 25
  (108, 10800, 38, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Lickitung - Rollout - Level 34
  (108, 10800, 205, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Lickitung - Giga Impact - Level 43
  (108, 10800, 416, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Lickitung - Fire Punch - Tutor
  (108, 10800, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Lickitung - Ice Punch - Tutor
  (108, 10800, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Lickitung - Thunder Punch - Tutor
  (108, 10800, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Lickitung - Flamethrower - Tutor
  (108, 10800, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Lickitung - Ice Beam - Tutor
  (108, 10800, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Lickitung - Hyper Beam - Tutor
  (108, 10800, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Lickitung - Rest - Tutor
  (108, 10800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Lickitung - Rock Slide - Tutor
  (108, 10800, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Lickitung - Icy Wind - Tutor
  (108, 10800, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Lickitung - Iron Tail - Tutor
  (108, 10800, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Lickitung - Rock Smash - Tutor
  (108, 10800, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Lickitung - Ice Ball - Tutor
  (108, 10800, 301, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Lickitung - Water Pulse - Tutor
  (108, 10800, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Lickitung - Aqua Tail - Tutor
  (108, 10800, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Lickitung - Giga Impact - Tutor
  (108, 10800, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Lickitung - Zen Headbutt - Tutor
  (108, 10800, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Lickitung - Bulldoze - Tutor
  (108, 10800, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Rhyhorn - Tackle - Level 1
  (111, 11100, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhyhorn - Bulldoze - Level 6
  (111, 11100, 523, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Rhyhorn - Rock Smash - Level 11
  (111, 11100, 249, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Rhyhorn - Stealth Rock - Level 18
  (111, 11100, 446, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Rhyhorn - Rock Slide - Level 25
  (111, 11100, 157, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Rhyhorn - High Horsepower - Level 34
  (111, 11100, 667, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Rhyhorn - Double-Edge - Level 43
  (111, 11100, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Rhyhorn - Giga Impact - Level 52
  (111, 11100, 416, 22, NULL, 1, 52, NULL, NULL, NULL, 8),
  -- Rhyhorn - Flamethrower - Tutor
  (111, 11100, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Rhyhorn - Ice Beam - Tutor
  (111, 11100, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Rhyhorn - Rest - Tutor
  (111, 11100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Rhyhorn - Rock Slide - Tutor
  (111, 11100, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Rhyhorn - Icy Wind - Tutor
  (111, 11100, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Rhyhorn - Megahorn - Tutor
  (111, 11100, 224, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Rhyhorn - Iron Tail - Tutor
  (111, 11100, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Rhyhorn - Rock Smash - Tutor
  (111, 11100, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Rhyhorn - Poison Jab - Tutor
  (111, 11100, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Rhyhorn - Aqua Tail - Tutor
  (111, 11100, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Rhyhorn - Earth Power - Tutor
  (111, 11100, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Rhyhorn - Giga Impact - Tutor
  (111, 11100, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Rhyhorn - Thunder Fang - Tutor
  (111, 11100, 422, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Rhyhorn - Ice Fang - Tutor
  (111, 11100, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Rhyhorn - Fire Fang - Tutor
  (111, 11100, 424, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Rhyhorn - Stone Edge - Tutor
  (111, 11100, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Rhyhorn - Stealth Rock - Tutor
  (111, 11100, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Rhyhorn - Bulldoze - Tutor
  (111, 11100, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Rhyhorn - High Horsepower - Tutor
  (111, 11100, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Rhydon - Tackle - Level 1
  (112, 11200, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhydon - Bulldoze - Level 6
  (112, 11200, 523, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Rhydon - Rock Smash - Level 11
  (112, 11200, 249, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Rhydon - Stealth Rock - Level 18
  (112, 11200, 446, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Rhydon - Rock Slide - Level 25
  (112, 11200, 157, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Rhydon - High Horsepower - Level 34
  (112, 11200, 667, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Rhydon - Double-Edge - Level 43
  (112, 11200, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Rhydon - Giga Impact - Level 52
  (112, 11200, 416, 22, NULL, 1, 52, NULL, NULL, NULL, 8),
  -- Rhydon - Fire Punch - Tutor
  (112, 11200, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Rhydon - Ice Punch - Tutor
  (112, 11200, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Rhydon - Thunder Punch - Tutor
  (112, 11200, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Rhydon - Flamethrower - Tutor
  (112, 11200, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Rhydon - Ice Beam - Tutor
  (112, 11200, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Rhydon - Hyper Beam - Tutor
  (112, 11200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Rhydon - Rest - Tutor
  (112, 11200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Rhydon - Rock Slide - Tutor
  (112, 11200, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Rhydon - Icy Wind - Tutor
  (112, 11200, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Rhydon - Outrage - Tutor
  (112, 11200, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Rhydon - Megahorn - Tutor
  (112, 11200, 224, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Rhydon - Iron Tail - Tutor
  (112, 11200, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Rhydon - Rock Smash - Tutor
  (112, 11200, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Rhydon - Poison Jab - Tutor
  (112, 11200, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Rhydon - Aqua Tail - Tutor
  (112, 11200, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Rhydon - Earth Power - Tutor
  (112, 11200, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Rhydon - Giga Impact - Tutor
  (112, 11200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Rhydon - Shadow Claw - Tutor
  (112, 11200, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Rhydon - Thunder Fang - Tutor
  (112, 11200, 422, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Rhydon - Ice Fang - Tutor
  (112, 11200, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Rhydon - Fire Fang - Tutor
  (112, 11200, 424, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Rhydon - Stone Edge - Tutor
  (112, 11200, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Rhydon - Stealth Rock - Tutor
  (112, 11200, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Rhydon - Bulldoze - Tutor
  (112, 11200, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Rhydon - High Horsepower - Tutor
  (112, 11200, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Chansey - Tackle - Level 1
  (113, 11300, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chansey - Fairy Wind - Level 6
  (113, 11300, 584, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Chansey - Baby-Doll Eyes - Level 11
  (113, 11300, 608, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Chansey - Draining Kiss - Level 18
  (113, 11300, 577, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Chansey - Calm Mind - Level 25
  (113, 11300, 347, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Chansey - Soft-Boiled - Level 34
  (113, 11300, 135, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Chansey - Double-Edge - Level 43
  (113, 11300, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Chansey - Fire Punch - Tutor
  (113, 11300, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Chansey - Ice Punch - Tutor
  (113, 11300, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Chansey - Thunder Punch - Tutor
  (113, 11300, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Chansey - Flamethrower - Tutor
  (113, 11300, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Chansey - Ice Beam - Tutor
  (113, 11300, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Chansey - Hyper Beam - Tutor
  (113, 11300, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Chansey - Thunderbolt - Tutor
  (113, 11300, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Chansey - Psychic - Tutor
  (113, 11300, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Chansey - Rest - Tutor
  (113, 11300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Chansey - Rock Slide - Tutor
  (113, 11300, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Chansey - Tri Attack - Tutor
  (113, 11300, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Chansey - Icy Wind - Tutor
  (113, 11300, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Chansey - Iron Tail - Tutor
  (113, 11300, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Chansey - Shadow Ball - Tutor
  (113, 11300, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Chansey - Rock Smash - Tutor
  (113, 11300, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Chansey - Calm Mind - Tutor
  (113, 11300, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Chansey - Water Pulse - Tutor
  (113, 11300, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Chansey - Drain Punch - Tutor
  (113, 11300, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Chansey - Giga Impact - Tutor
  (113, 11300, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Chansey - Zen Headbutt - Tutor
  (113, 11300, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Chansey - Stealth Rock - Tutor
  (113, 11300, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Chansey - Charge Beam - Tutor
  (113, 11300, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Chansey - Bulldoze - Tutor
  (113, 11300, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Chansey - Wild Charge - Tutor
  (113, 11300, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Chansey - Dazzling Gleam - Tutor
  (113, 11300, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Chansey - Baby-Doll Eyes - Tutor
  (113, 11300, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Tangela - Absorb - Level 1
  (114, 11400, 71, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tangela - Stun Spore - Level 6
  (114, 11400, 78, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Tangela - Poison Powder - Level 11
  (114, 11400, 77, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Tangela - Acid Spray - Level 15
  (114, 11400, 491, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Tangela - Double Hit - Level 18
  (114, 11400, 458, 22, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Tangela - Energy Ball - Level 25
  (114, 11400, 412, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Tangela - Ancient Power - Level 34
  (114, 11400, 246, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Tangela - Sleep Powder - Level 43
  (114, 11400, 79, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Tangela - Hyper Beam - Tutor
  (114, 11400, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Tangela - Rest - Tutor
  (114, 11400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Tangela - Sludge Bomb - Tutor
  (114, 11400, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Tangela - Rock Smash - Tutor
  (114, 11400, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Tangela - Energy Ball - Tutor
  (114, 11400, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Tangela - Giga Impact - Tutor
  (114, 11400, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Mr. Mime - Confusion - Level 1
  (122, 12200, 93, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mr. Mime - Hypnosis - Level 6
  (122, 12200, 95, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Mr. Mime - Iron Defense - Level 11
  (122, 12200, 334, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Mr. Mime - Zen Headbutt - Level 18
  (122, 12200, 428, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Mr. Mime - Mimic - Level 25
  (122, 12200, 102, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Mr. Mime - Psychic - Level 34
  (122, 12200, 94, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Mr. Mime - Calm Mind - Level 43
  (122, 12200, 347, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Mr. Mime - Dazzling Gleam - Level 46
  (122, 12200, 605, 22, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Mr. Mime - Fire Punch - Tutor
  (122, 12200, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Mr. Mime - Ice Punch - Tutor
  (122, 12200, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Mr. Mime - Thunder Punch - Tutor
  (122, 12200, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Mr. Mime - Hyper Beam - Tutor
  (122, 12200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Mr. Mime - Thunderbolt - Tutor
  (122, 12200, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Mr. Mime - Psychic - Tutor
  (122, 12200, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Mr. Mime - Rest - Tutor
  (122, 12200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Mr. Mime - Icy Wind - Tutor
  (122, 12200, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Mr. Mime - Shadow Ball - Tutor
  (122, 12200, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Mr. Mime - Aerial Ace - Tutor
  (122, 12200, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Mr. Mime - Magical Leaf - Tutor
  (122, 12200, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Mr. Mime - Calm Mind - Tutor
  (122, 12200, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Mr. Mime - Drain Punch - Tutor
  (122, 12200, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Mr. Mime - Energy Ball - Tutor
  (122, 12200, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Mr. Mime - Giga Impact - Tutor
  (122, 12200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Mr. Mime - Zen Headbutt - Tutor
  (122, 12200, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Mr. Mime - Charge Beam - Tutor
  (122, 12200, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Mr. Mime - Mystical Fire - Tutor
  (122, 12200, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Mr. Mime - Dazzling Gleam - Tutor
  (122, 12200, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Mr. Mime - Power Shift - Tutor
  (122, 12200, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Scyther - Quick Attack - Level 1
  (123, 12300, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scyther - Silver Wind - Level 6
  (123, 12300, 318, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Scyther - Aerial Ace - Level 11
  (123, 12300, 332, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Scyther - Double Hit - Level 14
  (123, 12300, 458, 22, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Scyther - Air Slash - Level 18
  (123, 12300, 403, 22, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Scyther - Swords Dance - Level 25
  (123, 12300, 14, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Scyther - X-Scissor - Level 34
  (123, 12300, 404, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Scyther - Close Combat - Level 43
  (123, 12300, 370, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Scyther - Hyper Beam - Tutor
  (123, 12300, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Scyther - Focus Energy - Tutor
  (123, 12300, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Scyther - Swift - Tutor
  (123, 12300, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Scyther - Rest - Tutor
  (123, 12300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Scyther - False Swipe - Tutor
  (123, 12300, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Scyther - Rock Smash - Tutor
  (123, 12300, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Scyther - Aerial Ace - Tutor
  (123, 12300, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Scyther - Calm Mind - Tutor
  (123, 12300, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Scyther - X-Scissor - Tutor
  (123, 12300, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Scyther - Giga Impact - Tutor
  (123, 12300, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Scyther - Psycho Cut - Tutor
  (123, 12300, 427, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Scyther - Ominous Wind - Tutor
  (123, 12300, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Electabuzz - Thunder Shock - Level 1
  (125, 12500, 84, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electabuzz - Quick Attack - Level 6
  (125, 12500, 98, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Electabuzz - Spark - Level 11
  (125, 12500, 209, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Electabuzz - Thunder Wave - Level 18
  (125, 12500, 86, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Electabuzz - Thunder Punch - Level 25
  (125, 12500, 9, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Electabuzz - Thunderbolt - Level 34
  (125, 12500, 85, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Electabuzz - Thunder - Level 43
  (125, 12500, 87, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Electabuzz - Fire Punch - Tutor
  (125, 12500, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Electabuzz - Ice Punch - Tutor
  (125, 12500, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Electabuzz - Thunder Punch - Tutor
  (125, 12500, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Electabuzz - Hyper Beam - Tutor
  (125, 12500, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Electabuzz - Thunderbolt - Tutor
  (125, 12500, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Electabuzz - Psychic - Tutor
  (125, 12500, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Electabuzz - Swift - Tutor
  (125, 12500, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Electabuzz - Rest - Tutor
  (125, 12500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Electabuzz - Iron Tail - Tutor
  (125, 12500, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Electabuzz - Rock Smash - Tutor
  (125, 12500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Electabuzz - Giga Impact - Tutor
  (125, 12500, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Electabuzz - Charge Beam - Tutor
  (125, 12500, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Electabuzz - Wild Charge - Tutor
  (125, 12500, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Magmar - Ember - Level 1
  (126, 12600, 52, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magmar - Tackle - Level 6
  (126, 12600, 33, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Magmar - Flame Wheel - Level 11
  (126, 12600, 172, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Magmar - Poison Gas - Level 18
  (126, 12600, 139, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Magmar - Fire Punch - Level 25
  (126, 12600, 7, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Magmar - Flamethrower - Level 34
  (126, 12600, 53, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Magmar - Fire Blast - Level 43
  (126, 12600, 126, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Magmar - Fire Punch - Tutor
  (126, 12600, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Magmar - Thunder Punch - Tutor
  (126, 12600, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Magmar - Flamethrower - Tutor
  (126, 12600, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Magmar - Hyper Beam - Tutor
  (126, 12600, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Magmar - Psychic - Tutor
  (126, 12600, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Magmar - Focus Energy - Tutor
  (126, 12600, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Magmar - Rest - Tutor
  (126, 12600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Magmar - Iron Tail - Tutor
  (126, 12600, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Magmar - Rock Smash - Tutor
  (126, 12600, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Magmar - Giga Impact - Tutor
  (126, 12600, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Magikarp - Splash - Level 1
  (129, 12900, 150, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gyarados - Splash - Level 1
  (130, 13000, 150, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gyarados - Twister - Level 5
  (130, 13000, 239, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Gyarados - Bite - Level 9
  (130, 13000, 44, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Gyarados - Focus Energy - Level 15
  (130, 13000, 116, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Gyarados - Crunch - Level 21
  (130, 13000, 242, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Gyarados - Aqua Tail - Level 29
  (130, 13000, 401, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Gyarados - Hurricane - Level 37
  (130, 13000, 542, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Gyarados - Hydro Pump - Level 47
  (130, 13000, 56, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Gyarados - Hyper Beam - Level 57
  (130, 13000, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Gyarados - Water Pulse - Evolution
  (130, 13000, 352, 22, NULL, 7, NULL, NULL, NULL, NULL, 10),
  -- Gyarados - Flamethrower - Tutor
  (130, 13000, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Gyarados - Ice Beam - Tutor
  (130, 13000, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Gyarados - Hyper Beam - Tutor
  (130, 13000, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Gyarados - Thunderbolt - Tutor
  (130, 13000, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Gyarados - Focus Energy - Tutor
  (130, 13000, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Gyarados - Rest - Tutor
  (130, 13000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Gyarados - Icy Wind - Tutor
  (130, 13000, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Gyarados - Outrage - Tutor
  (130, 13000, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Gyarados - Iron Tail - Tutor
  (130, 13000, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Gyarados - Rock Smash - Tutor
  (130, 13000, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Gyarados - Water Pulse - Tutor
  (130, 13000, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Gyarados - Dark Pulse - Tutor
  (130, 13000, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Gyarados - Aqua Tail - Tutor
  (130, 13000, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Gyarados - Giga Impact - Tutor
  (130, 13000, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Gyarados - Ice Fang - Tutor
  (130, 13000, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Gyarados - Iron Head - Tutor
  (130, 13000, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Gyarados - Stone Edge - Tutor
  (130, 13000, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Gyarados - Bulldoze - Tutor
  (130, 13000, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Eevee - Tackle - Level 1
  (133, 13300, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Quick Attack - Level 6
  (133, 13300, 98, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Eevee - Swift - Level 11
  (133, 13300, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Eevee - Baby-Doll Eyes - Level 18
  (133, 13300, 608, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Eevee - Mimic - Level 25
  (133, 13300, 102, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Eevee - Calm Mind - Level 34
  (133, 13300, 347, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Eevee - Double-Edge - Level 43
  (133, 13300, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Eevee - Focus Energy - Tutor
  (133, 13300, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Eevee - Swift - Tutor
  (133, 13300, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Eevee - Rest - Tutor
  (133, 13300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Eevee - Iron Tail - Tutor
  (133, 13300, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Eevee - Shadow Ball - Tutor
  (133, 13300, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Eevee - Calm Mind - Tutor
  (133, 13300, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Eevee - Baby-Doll Eyes - Tutor
  (133, 13300, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Vaporeon - Tackle - Level 1
  (134, 13400, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vaporeon - Quick Attack - Level 6
  (134, 13400, 98, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Vaporeon - Swift - Level 11
  (134, 13400, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Vaporeon - Baby-Doll Eyes - Level 18
  (134, 13400, 608, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Vaporeon - Mimic - Level 25
  (134, 13400, 102, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Vaporeon - Aqua Tail - Level 25
  (134, 13400, 401, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Vaporeon - Calm Mind - Level 34
  (134, 13400, 347, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Vaporeon - Double-Edge - Level 43
  (134, 13400, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Vaporeon - Bubble - Evolution
  (134, 13400, 145, 22, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Vaporeon - Ice Beam - Tutor
  (134, 13400, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Vaporeon - Hyper Beam - Tutor
  (134, 13400, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Vaporeon - Focus Energy - Tutor
  (134, 13400, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Vaporeon - Swift - Tutor
  (134, 13400, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Vaporeon - Rest - Tutor
  (134, 13400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Vaporeon - Icy Wind - Tutor
  (134, 13400, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Vaporeon - Iron Tail - Tutor
  (134, 13400, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Vaporeon - Shadow Ball - Tutor
  (134, 13400, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Vaporeon - Rock Smash - Tutor
  (134, 13400, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Vaporeon - Calm Mind - Tutor
  (134, 13400, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Vaporeon - Water Pulse - Tutor
  (134, 13400, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Vaporeon - Aqua Tail - Tutor
  (134, 13400, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Vaporeon - Giga Impact - Tutor
  (134, 13400, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Vaporeon - Baby-Doll Eyes - Tutor
  (134, 13400, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Jolteon - Tackle - Level 1
  (135, 13500, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jolteon - Quick Attack - Level 6
  (135, 13500, 98, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Jolteon - Swift - Level 11
  (135, 13500, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Jolteon - Baby-Doll Eyes - Level 18
  (135, 13500, 608, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Jolteon - Thunderbolt - Level 25
  (135, 13500, 85, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Jolteon - Mimic - Level 25
  (135, 13500, 102, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Jolteon - Calm Mind - Level 34
  (135, 13500, 347, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Jolteon - Double-Edge - Level 43
  (135, 13500, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Jolteon - Thunder Shock - Evolution
  (135, 13500, 84, 22, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Jolteon - Hyper Beam - Tutor
  (135, 13500, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Jolteon - Thunderbolt - Tutor
  (135, 13500, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Jolteon - Focus Energy - Tutor
  (135, 13500, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Jolteon - Swift - Tutor
  (135, 13500, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Jolteon - Rest - Tutor
  (135, 13500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Jolteon - Iron Tail - Tutor
  (135, 13500, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Jolteon - Shadow Ball - Tutor
  (135, 13500, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Jolteon - Rock Smash - Tutor
  (135, 13500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Jolteon - Calm Mind - Tutor
  (135, 13500, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Jolteon - Giga Impact - Tutor
  (135, 13500, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Jolteon - Thunder Fang - Tutor
  (135, 13500, 422, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Jolteon - Charge Beam - Tutor
  (135, 13500, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Jolteon - Wild Charge - Tutor
  (135, 13500, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Jolteon - Baby-Doll Eyes - Tutor
  (135, 13500, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Flareon - Tackle - Level 1
  (136, 13600, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flareon - Quick Attack - Level 6
  (136, 13600, 98, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Flareon - Swift - Level 11
  (136, 13600, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Flareon - Baby-Doll Eyes - Level 18
  (136, 13600, 608, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Flareon - Flamethrower - Level 25
  (136, 13600, 53, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Flareon - Mimic - Level 25
  (136, 13600, 102, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Flareon - Calm Mind - Level 34
  (136, 13600, 347, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Flareon - Double-Edge - Level 43
  (136, 13600, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Flareon - Ember - Evolution
  (136, 13600, 52, 22, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Flareon - Flamethrower - Tutor
  (136, 13600, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Flareon - Hyper Beam - Tutor
  (136, 13600, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Flareon - Focus Energy - Tutor
  (136, 13600, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Flareon - Swift - Tutor
  (136, 13600, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Flareon - Rest - Tutor
  (136, 13600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Flareon - Iron Tail - Tutor
  (136, 13600, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Flareon - Shadow Ball - Tutor
  (136, 13600, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Flareon - Rock Smash - Tutor
  (136, 13600, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Flareon - Calm Mind - Tutor
  (136, 13600, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Flareon - Giga Impact - Tutor
  (136, 13600, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Flareon - Fire Fang - Tutor
  (136, 13600, 424, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Flareon - Mystical Fire - Tutor
  (136, 13600, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Flareon - Baby-Doll Eyes - Tutor
  (136, 13600, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Flareon - Power Shift - Tutor
  (136, 13600, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Porygon - Tackle - Level 1
  (137, 13700, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon - Thunder Shock - Level 5
  (137, 13700, 84, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Porygon - Thunder Wave - Level 9
  (137, 13700, 86, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Porygon - Spark - Level 15
  (137, 13700, 209, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Porygon - Tri Attack - Level 21
  (137, 13700, 161, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Porygon - Thunderbolt - Level 29
  (137, 13700, 85, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Porygon - Recover - Level 37
  (137, 13700, 105, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Porygon - Hyper Beam - Level 47
  (137, 13700, 63, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Porygon - Ice Beam - Tutor
  (137, 13700, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Porygon - Hyper Beam - Tutor
  (137, 13700, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Porygon - Thunderbolt - Tutor
  (137, 13700, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Porygon - Psychic - Tutor
  (137, 13700, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Porygon - Swift - Tutor
  (137, 13700, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Porygon - Rest - Tutor
  (137, 13700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Porygon - Tri Attack - Tutor
  (137, 13700, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Porygon - Icy Wind - Tutor
  (137, 13700, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Porygon - Iron Tail - Tutor
  (137, 13700, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Porygon - Shadow Ball - Tutor
  (137, 13700, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Porygon - Aerial Ace - Tutor
  (137, 13700, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Porygon - Giga Impact - Tutor
  (137, 13700, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Porygon - Zen Headbutt - Tutor
  (137, 13700, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Snorlax - Rollout - Level 1
  (143, 14300, 205, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snorlax - Tackle - Level 5
  (143, 14300, 33, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Snorlax - Rest - Level 9
  (143, 14300, 156, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Snorlax - Bulldoze - Level 15
  (143, 14300, 523, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Snorlax - Bite - Level 21
  (143, 14300, 44, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Snorlax - Zen Headbutt - Level 29
  (143, 14300, 428, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Snorlax - Crunch - Level 35
  (143, 14300, 242, 22, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Snorlax - High Horsepower - Level 37
  (143, 14300, 667, 22, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Snorlax - Double-Edge - Level 46
  (143, 14300, 38, 22, NULL, 1, 46, NULL, NULL, NULL, 9),
  -- Snorlax - Giga Impact - Level 57
  (143, 14300, 416, 22, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Snorlax - Fire Punch - Tutor
  (143, 14300, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Snorlax - Ice Punch - Tutor
  (143, 14300, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Snorlax - Thunder Punch - Tutor
  (143, 14300, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Snorlax - Flamethrower - Tutor
  (143, 14300, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Snorlax - Ice Beam - Tutor
  (143, 14300, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Snorlax - Hyper Beam - Tutor
  (143, 14300, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Snorlax - Thunderbolt - Tutor
  (143, 14300, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Snorlax - Psychic - Tutor
  (143, 14300, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Snorlax - Rest - Tutor
  (143, 14300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Snorlax - Rock Slide - Tutor
  (143, 14300, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Snorlax - Icy Wind - Tutor
  (143, 14300, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Snorlax - Outrage - Tutor
  (143, 14300, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Snorlax - Shadow Ball - Tutor
  (143, 14300, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Snorlax - Rock Smash - Tutor
  (143, 14300, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Snorlax - Ice Ball - Tutor
  (143, 14300, 301, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Snorlax - Water Pulse - Tutor
  (143, 14300, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Snorlax - Giga Impact - Tutor
  (143, 14300, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Snorlax - Zen Headbutt - Tutor
  (143, 14300, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Snorlax - Iron Head - Tutor
  (143, 14300, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Snorlax - Bulldoze - Tutor
  (143, 14300, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Snorlax - Wild Charge - Tutor
  (143, 14300, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Snorlax - High Horsepower - Tutor
  (143, 14300, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32);
