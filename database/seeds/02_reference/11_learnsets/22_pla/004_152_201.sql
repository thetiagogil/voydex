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
-- Pokémon Legends: Arceus learnsets for default forms, species 152-201.
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
  -- Cyndaquil - Quick Attack - Level 1
  (155, 15500, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cyndaquil - Ember - Level 6
  (155, 15500, 52, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Cyndaquil - Rollout - Level 11
  (155, 15500, 205, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Cyndaquil - Flame Wheel - Level 18
  (155, 15500, 172, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Cyndaquil - Swift - Level 25
  (155, 15500, 129, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Cyndaquil - Flamethrower - Level 34
  (155, 15500, 53, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Cyndaquil - Overheat - Level 43
  (155, 15500, 315, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Cyndaquil - Flamethrower - Tutor
  (155, 15500, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Cyndaquil - Swift - Tutor
  (155, 15500, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Cyndaquil - Rest - Tutor
  (155, 15500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Cyndaquil - Iron Tail - Tutor
  (155, 15500, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Cyndaquil - Aerial Ace - Tutor
  (155, 15500, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Cyndaquil - Wild Charge - Tutor
  (155, 15500, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Quilava - Quick Attack - Level 1
  (156, 15600, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quilava - Ember - Level 6
  (156, 15600, 52, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Quilava - Rollout - Level 11
  (156, 15600, 205, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Quilava - Flame Wheel - Level 18
  (156, 15600, 172, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Quilava - Swift - Level 25
  (156, 15600, 129, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Quilava - Flamethrower - Level 34
  (156, 15600, 53, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Quilava - Overheat - Level 43
  (156, 15600, 315, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Quilava - Flamethrower - Tutor
  (156, 15600, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Quilava - Swift - Tutor
  (156, 15600, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Quilava - Rest - Tutor
  (156, 15600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Quilava - Iron Tail - Tutor
  (156, 15600, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Quilava - Rock Smash - Tutor
  (156, 15600, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Quilava - Aerial Ace - Tutor
  (156, 15600, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Quilava - Wild Charge - Tutor
  (156, 15600, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Crobat - Gust - Level 1
  (169, 16900, 16, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crobat - Hypnosis - Level 6
  (169, 16900, 95, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Crobat - Bite - Level 11
  (169, 16900, 44, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Crobat - Air Cutter - Level 18
  (169, 16900, 314, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Crobat - Cross Poison - Level 25
  (169, 16900, 440, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Crobat - Air Slash - Level 34
  (169, 16900, 403, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Crobat - Leech Life - Level 43
  (169, 16900, 141, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Crobat - Hyper Beam - Tutor
  (169, 16900, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Crobat - Swift - Tutor
  (169, 16900, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Crobat - Leech Life - Tutor
  (169, 16900, 141, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Crobat - Rest - Tutor
  (169, 16900, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Crobat - Sludge Bomb - Tutor
  (169, 16900, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Crobat - Shadow Ball - Tutor
  (169, 16900, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Crobat - Aerial Ace - Tutor
  (169, 16900, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Crobat - Dark Pulse - Tutor
  (169, 16900, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Crobat - X-Scissor - Tutor
  (169, 16900, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Crobat - Giga Impact - Tutor
  (169, 16900, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Crobat - Zen Headbutt - Tutor
  (169, 16900, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Crobat - Ominous Wind - Tutor
  (169, 16900, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Pichu - Thunder Shock - Level 1
  (172, 17200, 84, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pichu - Quick Attack - Level 5
  (172, 17200, 98, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Pichu - Thunder Wave - Level 9
  (172, 17200, 86, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Pichu - Swift - Level 15
  (172, 17200, 129, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Pichu - Spark - Level 21
  (172, 17200, 209, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Pichu - Thunderbolt - Level 29
  (172, 17200, 85, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Pichu - Iron Tail - Level 37
  (172, 17200, 231, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Pichu - Thunder - Level 47
  (172, 17200, 87, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Pichu - Thunder Punch - Tutor
  (172, 17200, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Pichu - Thunderbolt - Tutor
  (172, 17200, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Pichu - Swift - Tutor
  (172, 17200, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Pichu - Rest - Tutor
  (172, 17200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Pichu - Iron Tail - Tutor
  (172, 17200, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Pichu - Volt Tackle - Tutor
  (172, 17200, 344, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Pichu - Charge Beam - Tutor
  (172, 17200, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Pichu - Wild Charge - Tutor
  (172, 17200, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Pichu - Play Rough - Tutor
  (172, 17200, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Pichu - Baby-Doll Eyes - Tutor
  (172, 17200, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Cleffa - Tackle - Level 1
  (173, 17300, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cleffa - Fairy Wind - Level 5
  (173, 17300, 584, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Cleffa - Baby-Doll Eyes - Level 9
  (173, 17300, 608, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Cleffa - Draining Kiss - Level 15
  (173, 17300, 577, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Cleffa - Calm Mind - Level 21
  (173, 17300, 347, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Cleffa - Psychic - Level 29
  (173, 17300, 94, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Cleffa - Moonblast - Level 37
  (173, 17300, 585, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Cleffa - Double-Edge - Level 47
  (173, 17300, 38, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Cleffa - Flamethrower - Tutor
  (173, 17300, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Cleffa - Psychic - Tutor
  (173, 17300, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Cleffa - Swift - Tutor
  (173, 17300, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Cleffa - Rest - Tutor
  (173, 17300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Cleffa - Icy Wind - Tutor
  (173, 17300, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Cleffa - Iron Tail - Tutor
  (173, 17300, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Cleffa - Shadow Ball - Tutor
  (173, 17300, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Cleffa - Magical Leaf - Tutor
  (173, 17300, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Cleffa - Calm Mind - Tutor
  (173, 17300, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Cleffa - Water Pulse - Tutor
  (173, 17300, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Cleffa - Zen Headbutt - Tutor
  (173, 17300, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Cleffa - Play Rough - Tutor
  (173, 17300, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Cleffa - Baby-Doll Eyes - Tutor
  (173, 17300, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Togepi - Tackle - Level 1
  (175, 17500, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togepi - Fairy Wind - Level 6
  (175, 17500, 584, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Togepi - Draining Kiss - Level 11
  (175, 17500, 577, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Togepi - Calm Mind - Level 18
  (175, 17500, 347, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Togepi - Baby-Doll Eyes - Level 25
  (175, 17500, 608, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Togepi - Extrasensory - Level 34
  (175, 17500, 326, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Togepi - Moonblast - Level 43
  (175, 17500, 585, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Togepi - Flamethrower - Tutor
  (175, 17500, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Togepi - Psychic - Tutor
  (175, 17500, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Togepi - Swift - Tutor
  (175, 17500, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Togepi - Rest - Tutor
  (175, 17500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Togepi - Tri Attack - Tutor
  (175, 17500, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Togepi - Shadow Ball - Tutor
  (175, 17500, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Togepi - Rock Smash - Tutor
  (175, 17500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Togepi - Calm Mind - Tutor
  (175, 17500, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Togepi - Water Pulse - Tutor
  (175, 17500, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Togepi - Zen Headbutt - Tutor
  (175, 17500, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Togepi - Play Rough - Tutor
  (175, 17500, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Togepi - Mystical Fire - Tutor
  (175, 17500, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Togepi - Dazzling Gleam - Tutor
  (175, 17500, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Togepi - Baby-Doll Eyes - Tutor
  (175, 17500, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Togetic - Tackle - Level 1
  (176, 17600, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togetic - Fairy Wind - Level 6
  (176, 17600, 584, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Togetic - Draining Kiss - Level 11
  (176, 17600, 577, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Togetic - Calm Mind - Level 18
  (176, 17600, 347, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Togetic - Air Slash - Level 25
  (176, 17600, 403, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Togetic - Baby-Doll Eyes - Level 25
  (176, 17600, 608, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Togetic - Extrasensory - Level 34
  (176, 17600, 326, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Togetic - Moonblast - Level 43
  (176, 17600, 585, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Togetic - Air Cutter - Evolution
  (176, 17600, 314, 22, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Togetic - Flamethrower - Tutor
  (176, 17600, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Togetic - Hyper Beam - Tutor
  (176, 17600, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Togetic - Psychic - Tutor
  (176, 17600, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Togetic - Swift - Tutor
  (176, 17600, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Togetic - Rest - Tutor
  (176, 17600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Togetic - Tri Attack - Tutor
  (176, 17600, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Togetic - Shadow Ball - Tutor
  (176, 17600, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Togetic - Rock Smash - Tutor
  (176, 17600, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Togetic - Aerial Ace - Tutor
  (176, 17600, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Togetic - Magical Leaf - Tutor
  (176, 17600, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Togetic - Calm Mind - Tutor
  (176, 17600, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Togetic - Water Pulse - Tutor
  (176, 17600, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Togetic - Drain Punch - Tutor
  (176, 17600, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Togetic - Giga Impact - Tutor
  (176, 17600, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Togetic - Zen Headbutt - Tutor
  (176, 17600, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Togetic - Ominous Wind - Tutor
  (176, 17600, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Togetic - Play Rough - Tutor
  (176, 17600, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Togetic - Mystical Fire - Tutor
  (176, 17600, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Togetic - Dazzling Gleam - Tutor
  (176, 17600, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Togetic - Baby-Doll Eyes - Tutor
  (176, 17600, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Sudowoodo - Rollout - Level 1
  (185, 18500, 205, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sudowoodo - Tackle - Level 5
  (185, 18500, 33, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Sudowoodo - Stealth Rock - Level 9
  (185, 18500, 446, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Sudowoodo - Rock Slide - Level 15
  (185, 18500, 157, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Sudowoodo - Iron Defense - Level 21
  (185, 18500, 334, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Sudowoodo - Mimic - Level 29
  (185, 18500, 102, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Sudowoodo - Double-Edge - Level 37
  (185, 18500, 38, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Sudowoodo - Head Smash - Level 47
  (185, 18500, 457, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Sudowoodo - Wood Hammer - Level 57
  (185, 18500, 452, 22, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Sudowoodo - Fire Punch - Tutor
  (185, 18500, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Sudowoodo - Ice Punch - Tutor
  (185, 18500, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Sudowoodo - Thunder Punch - Tutor
  (185, 18500, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Sudowoodo - Rest - Tutor
  (185, 18500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Sudowoodo - Rock Slide - Tutor
  (185, 18500, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Sudowoodo - Rock Smash - Tutor
  (185, 18500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Sudowoodo - Calm Mind - Tutor
  (185, 18500, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Sudowoodo - Earth Power - Tutor
  (185, 18500, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Sudowoodo - Stone Edge - Tutor
  (185, 18500, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Sudowoodo - Stealth Rock - Tutor
  (185, 18500, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Sudowoodo - Bulldoze - Tutor
  (185, 18500, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Aipom - Quick Attack - Level 1
  (190, 19000, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aipom - Nasty Plot - Level 6
  (190, 19000, 417, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Aipom - Swift - Level 11
  (190, 19000, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Aipom - Mud Bomb - Level 18
  (190, 19000, 426, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Aipom - Double Hit - Level 25
  (190, 19000, 458, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Aipom - Iron Tail - Level 34
  (190, 19000, 231, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Aipom - Double-Edge - Level 43
  (190, 19000, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Aipom - Fire Punch - Tutor
  (190, 19000, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Aipom - Ice Punch - Tutor
  (190, 19000, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Aipom - Thunder Punch - Tutor
  (190, 19000, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Aipom - Thunderbolt - Tutor
  (190, 19000, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Aipom - Swift - Tutor
  (190, 19000, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Aipom - Rest - Tutor
  (190, 19000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Aipom - Iron Tail - Tutor
  (190, 19000, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Aipom - Shadow Ball - Tutor
  (190, 19000, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Aipom - Rock Smash - Tutor
  (190, 19000, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Aipom - Aerial Ace - Tutor
  (190, 19000, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Aipom - Water Pulse - Tutor
  (190, 19000, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Aipom - Shadow Claw - Tutor
  (190, 19000, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Yanma - Quick Attack - Level 1
  (193, 19300, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yanma - Gust - Level 6
  (193, 19300, 16, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Yanma - Silver Wind - Level 11
  (193, 19300, 318, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Yanma - Hypnosis - Level 18
  (193, 19300, 95, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Yanma - Air Slash - Level 25
  (193, 19300, 403, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Yanma - Ancient Power - Level 34
  (193, 19300, 246, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Yanma - Bug Buzz - Level 43
  (193, 19300, 405, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Yanma - Psychic - Tutor
  (193, 19300, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Yanma - Swift - Tutor
  (193, 19300, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Yanma - Leech Life - Tutor
  (193, 19300, 141, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Yanma - Rest - Tutor
  (193, 19300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Yanma - Shadow Ball - Tutor
  (193, 19300, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Yanma - Ominous Wind - Tutor
  (193, 19300, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Espeon - Tackle - Level 1
  (196, 19600, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Espeon - Quick Attack - Level 6
  (196, 19600, 98, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Espeon - Swift - Level 11
  (196, 19600, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Espeon - Baby-Doll Eyes - Level 18
  (196, 19600, 608, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Espeon - Psychic - Level 25
  (196, 19600, 94, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Espeon - Mimic - Level 25
  (196, 19600, 102, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Espeon - Calm Mind - Level 34
  (196, 19600, 347, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Espeon - Double-Edge - Level 43
  (196, 19600, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Espeon - Confusion - Evolution
  (196, 19600, 93, 22, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Espeon - Hyper Beam - Tutor
  (196, 19600, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Espeon - Psychic - Tutor
  (196, 19600, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Espeon - Focus Energy - Tutor
  (196, 19600, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Espeon - Swift - Tutor
  (196, 19600, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Espeon - Rest - Tutor
  (196, 19600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Espeon - Iron Tail - Tutor
  (196, 19600, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Espeon - Shadow Ball - Tutor
  (196, 19600, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Espeon - Rock Smash - Tutor
  (196, 19600, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Espeon - Calm Mind - Tutor
  (196, 19600, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Espeon - Giga Impact - Tutor
  (196, 19600, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Espeon - Zen Headbutt - Tutor
  (196, 19600, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Espeon - Dazzling Gleam - Tutor
  (196, 19600, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Espeon - Baby-Doll Eyes - Tutor
  (196, 19600, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Umbreon - Tackle - Level 1
  (197, 19700, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Umbreon - Quick Attack - Level 6
  (197, 19700, 98, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Umbreon - Swift - Level 11
  (197, 19700, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Umbreon - Baby-Doll Eyes - Level 18
  (197, 19700, 608, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Umbreon - Mimic - Level 25
  (197, 19700, 102, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Umbreon - Dark Pulse - Level 25
  (197, 19700, 399, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Umbreon - Calm Mind - Level 34
  (197, 19700, 347, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Umbreon - Double-Edge - Level 43
  (197, 19700, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Umbreon - Snarl - Evolution
  (197, 19700, 555, 22, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Umbreon - Hyper Beam - Tutor
  (197, 19700, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Umbreon - Psychic - Tutor
  (197, 19700, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Umbreon - Focus Energy - Tutor
  (197, 19700, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Umbreon - Swift - Tutor
  (197, 19700, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Umbreon - Rest - Tutor
  (197, 19700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Umbreon - Iron Tail - Tutor
  (197, 19700, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Umbreon - Shadow Ball - Tutor
  (197, 19700, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Umbreon - Rock Smash - Tutor
  (197, 19700, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Umbreon - Calm Mind - Tutor
  (197, 19700, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Umbreon - Dark Pulse - Tutor
  (197, 19700, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Umbreon - Giga Impact - Tutor
  (197, 19700, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Umbreon - Snarl - Tutor
  (197, 19700, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Umbreon - Baby-Doll Eyes - Tutor
  (197, 19700, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Umbreon - Power Shift - Tutor
  (197, 19700, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Murkrow - Gust - Level 1
  (198, 19800, 16, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Murkrow - Snarl - Level 6
  (198, 19800, 555, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Murkrow - Roost - Level 11
  (198, 19800, 355, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Murkrow - Aerial Ace - Level 18
  (198, 19800, 332, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Murkrow - Night Slash - Level 25
  (198, 19800, 400, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Murkrow - Air Slash - Level 30
  (198, 19800, 403, 22, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Murkrow - Nasty Plot - Level 34
  (198, 19800, 417, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Murkrow - Dark Pulse - Level 43
  (198, 19800, 399, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Murkrow - Psychic - Tutor
  (198, 19800, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Murkrow - Swift - Tutor
  (198, 19800, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Murkrow - Rest - Tutor
  (198, 19800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Murkrow - Icy Wind - Tutor
  (198, 19800, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Murkrow - Shadow Ball - Tutor
  (198, 19800, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Murkrow - Aerial Ace - Tutor
  (198, 19800, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Murkrow - Calm Mind - Tutor
  (198, 19800, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Murkrow - Dark Pulse - Tutor
  (198, 19800, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Murkrow - Ominous Wind - Tutor
  (198, 19800, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Murkrow - Snarl - Tutor
  (198, 19800, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Misdreavus - Shadow Sneak - Level 1
  (200, 20000, 425, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Misdreavus - Confusion - Level 6
  (200, 20000, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Misdreavus - Hypnosis - Level 11
  (200, 20000, 95, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Misdreavus - Hex - Level 18
  (200, 20000, 506, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Misdreavus - Extrasensory - Level 25
  (200, 20000, 326, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Misdreavus - Power Gem - Level 34
  (200, 20000, 408, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Misdreavus - Shadow Ball - Level 43
  (200, 20000, 247, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Misdreavus - Thunderbolt - Tutor
  (200, 20000, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Misdreavus - Psychic - Tutor
  (200, 20000, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Misdreavus - Swift - Tutor
  (200, 20000, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Misdreavus - Rest - Tutor
  (200, 20000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Misdreavus - Icy Wind - Tutor
  (200, 20000, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Misdreavus - Shadow Ball - Tutor
  (200, 20000, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Misdreavus - Aerial Ace - Tutor
  (200, 20000, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Misdreavus - Calm Mind - Tutor
  (200, 20000, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Misdreavus - Dark Pulse - Tutor
  (200, 20000, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Misdreavus - Charge Beam - Tutor
  (200, 20000, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Misdreavus - Ominous Wind - Tutor
  (200, 20000, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Misdreavus - Dazzling Gleam - Tutor
  (200, 20000, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Unown - Hidden Power - Level 1
  (201, 20100, 237, 22, NULL, 1, 1, NULL, NULL, NULL, 1);
