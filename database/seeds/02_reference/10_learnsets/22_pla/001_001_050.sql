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
-- Pokémon Legends: Arceus learnsets for default forms, species 001-050.
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
  -- Pikachu - Thunder Shock - Level 1
  (25, 2500, 84, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pikachu - Quick Attack - Level 5
  (25, 2500, 98, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Pikachu - Thunder Wave - Level 9
  (25, 2500, 86, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Pikachu - Swift - Level 15
  (25, 2500, 129, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Pikachu - Spark - Level 21
  (25, 2500, 209, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Pikachu - Thunderbolt - Level 29
  (25, 2500, 85, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Pikachu - Iron Tail - Level 37
  (25, 2500, 231, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Pikachu - Thunder - Level 47
  (25, 2500, 87, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Pikachu - Thunder Punch - Tutor
  (25, 2500, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Pikachu - Thunderbolt - Tutor
  (25, 2500, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Pikachu - Swift - Tutor
  (25, 2500, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Pikachu - Rest - Tutor
  (25, 2500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Pikachu - Iron Tail - Tutor
  (25, 2500, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Pikachu - Rock Smash - Tutor
  (25, 2500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Pikachu - Volt Tackle - Tutor
  (25, 2500, 344, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Pikachu - Calm Mind - Tutor
  (25, 2500, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Pikachu - Charge Beam - Tutor
  (25, 2500, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Pikachu - Wild Charge - Tutor
  (25, 2500, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Pikachu - Play Rough - Tutor
  (25, 2500, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Pikachu - Baby-Doll Eyes - Tutor
  (25, 2500, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Raichu - Thunder Shock - Level 1
  (26, 2600, 84, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raichu - Quick Attack - Level 5
  (26, 2600, 98, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Raichu - Thunder Wave - Level 9
  (26, 2600, 86, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Raichu - Swift - Level 15
  (26, 2600, 129, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Raichu - Spark - Level 21
  (26, 2600, 209, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Raichu - Thunderbolt - Level 29
  (26, 2600, 85, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Raichu - Iron Tail - Level 37
  (26, 2600, 231, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Raichu - Thunder - Level 47
  (26, 2600, 87, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Raichu - Thunder Punch - Tutor
  (26, 2600, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Raichu - Hyper Beam - Tutor
  (26, 2600, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Raichu - Thunderbolt - Tutor
  (26, 2600, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Raichu - Swift - Tutor
  (26, 2600, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Raichu - Rest - Tutor
  (26, 2600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Raichu - Iron Tail - Tutor
  (26, 2600, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Raichu - Rock Smash - Tutor
  (26, 2600, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Raichu - Volt Tackle - Tutor
  (26, 2600, 344, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Raichu - Calm Mind - Tutor
  (26, 2600, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Raichu - Giga Impact - Tutor
  (26, 2600, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Raichu - Charge Beam - Tutor
  (26, 2600, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Raichu - Wild Charge - Tutor
  (26, 2600, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Raichu - Play Rough - Tutor
  (26, 2600, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Raichu - Baby-Doll Eyes - Tutor
  (26, 2600, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Clefairy - Tackle - Level 1
  (35, 3500, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefairy - Fairy Wind - Level 5
  (35, 3500, 584, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Clefairy - Baby-Doll Eyes - Level 9
  (35, 3500, 608, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Clefairy - Draining Kiss - Level 15
  (35, 3500, 577, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Clefairy - Calm Mind - Level 21
  (35, 3500, 347, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Clefairy - Psychic - Level 29
  (35, 3500, 94, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Clefairy - Moonblast - Level 37
  (35, 3500, 585, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Clefairy - Double-Edge - Level 47
  (35, 3500, 38, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Clefairy - Fire Punch - Tutor
  (35, 3500, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Clefairy - Ice Punch - Tutor
  (35, 3500, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Clefairy - Thunder Punch - Tutor
  (35, 3500, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Clefairy - Flamethrower - Tutor
  (35, 3500, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Clefairy - Ice Beam - Tutor
  (35, 3500, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Clefairy - Thunderbolt - Tutor
  (35, 3500, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Clefairy - Psychic - Tutor
  (35, 3500, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Clefairy - Swift - Tutor
  (35, 3500, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Clefairy - Rest - Tutor
  (35, 3500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Clefairy - Tri Attack - Tutor
  (35, 3500, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Clefairy - Icy Wind - Tutor
  (35, 3500, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Clefairy - Iron Tail - Tutor
  (35, 3500, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Clefairy - Shadow Ball - Tutor
  (35, 3500, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Clefairy - Rock Smash - Tutor
  (35, 3500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Clefairy - Magical Leaf - Tutor
  (35, 3500, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Clefairy - Calm Mind - Tutor
  (35, 3500, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Clefairy - Water Pulse - Tutor
  (35, 3500, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Clefairy - Drain Punch - Tutor
  (35, 3500, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Clefairy - Zen Headbutt - Tutor
  (35, 3500, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Clefairy - Stealth Rock - Tutor
  (35, 3500, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Clefairy - Charge Beam - Tutor
  (35, 3500, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Clefairy - Play Rough - Tutor
  (35, 3500, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Clefairy - Mystical Fire - Tutor
  (35, 3500, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Clefairy - Dazzling Gleam - Tutor
  (35, 3500, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Clefairy - Baby-Doll Eyes - Tutor
  (35, 3500, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Clefable - Tackle - Level 1
  (36, 3600, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefable - Fairy Wind - Level 5
  (36, 3600, 584, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Clefable - Baby-Doll Eyes - Level 9
  (36, 3600, 608, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Clefable - Draining Kiss - Level 15
  (36, 3600, 577, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Clefable - Calm Mind - Level 21
  (36, 3600, 347, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Clefable - Psychic - Level 29
  (36, 3600, 94, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Clefable - Moonblast - Level 37
  (36, 3600, 585, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Clefable - Double-Edge - Level 47
  (36, 3600, 38, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Clefable - Fire Punch - Tutor
  (36, 3600, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Clefable - Ice Punch - Tutor
  (36, 3600, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Clefable - Thunder Punch - Tutor
  (36, 3600, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Clefable - Flamethrower - Tutor
  (36, 3600, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Clefable - Ice Beam - Tutor
  (36, 3600, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Clefable - Hyper Beam - Tutor
  (36, 3600, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Clefable - Thunderbolt - Tutor
  (36, 3600, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Clefable - Psychic - Tutor
  (36, 3600, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Clefable - Swift - Tutor
  (36, 3600, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Clefable - Rest - Tutor
  (36, 3600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Clefable - Tri Attack - Tutor
  (36, 3600, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Clefable - Icy Wind - Tutor
  (36, 3600, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Clefable - Iron Tail - Tutor
  (36, 3600, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Clefable - Shadow Ball - Tutor
  (36, 3600, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Clefable - Rock Smash - Tutor
  (36, 3600, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Clefable - Magical Leaf - Tutor
  (36, 3600, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Clefable - Calm Mind - Tutor
  (36, 3600, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Clefable - Water Pulse - Tutor
  (36, 3600, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Clefable - Drain Punch - Tutor
  (36, 3600, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Clefable - Giga Impact - Tutor
  (36, 3600, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Clefable - Zen Headbutt - Tutor
  (36, 3600, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Clefable - Stealth Rock - Tutor
  (36, 3600, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Clefable - Charge Beam - Tutor
  (36, 3600, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Clefable - Play Rough - Tutor
  (36, 3600, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Clefable - Mystical Fire - Tutor
  (36, 3600, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Clefable - Dazzling Gleam - Tutor
  (36, 3600, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Clefable - Baby-Doll Eyes - Tutor
  (36, 3600, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Vulpix - Ember - Level 1
  (37, 3700, 52, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vulpix - Powder Snow - Level 1
  (37, 3700, 181, 22, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vulpix - Quick Attack - Level 5
  (37, 3700, 98, 22, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Vulpix - Nasty Plot - Level 9
  (37, 3700, 417, 22, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Vulpix - Flame Wheel - Level 15
  (37, 3700, 172, 22, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Vulpix - Draining Kiss - Level 15
  (37, 3700, 577, 22, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Vulpix - Ice Fang - Level 21
  (37, 3700, 423, 22, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Vulpix - Hex - Level 21
  (37, 3700, 506, 22, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Vulpix - Extrasensory - Level 29
  (37, 3700, 326, 22, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Vulpix - Dazzling Gleam - Level 29
  (37, 3700, 605, 22, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Vulpix - Flamethrower - Level 37
  (37, 3700, 53, 22, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Vulpix - Ice Beam - Level 37
  (37, 3700, 58, 22, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Vulpix - Blizzard - Level 47
  (37, 3700, 59, 22, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Vulpix - Fire Blast - Level 47
  (37, 3700, 126, 22, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Vulpix - Flamethrower - Tutor
  (37, 3700, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Vulpix - Ice Beam - Tutor
  (37, 3700, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Vulpix - Swift - Tutor
  (37, 3700, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Vulpix - Rest - Tutor
  (37, 3700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Vulpix - Icy Wind - Tutor
  (37, 3700, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Vulpix - Iron Tail - Tutor
  (37, 3700, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Vulpix - Dark Pulse - Tutor
  (37, 3700, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Vulpix - Energy Ball - Tutor
  (37, 3700, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Vulpix - Ice Fang - Tutor
  (37, 3700, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Vulpix - Zen Headbutt - Tutor
  (37, 3700, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Vulpix - Ominous Wind - Tutor
  (37, 3700, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Vulpix - Mystical Fire - Tutor
  (37, 3700, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Vulpix - Dazzling Gleam - Tutor
  (37, 3700, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Vulpix - Baby-Doll Eyes - Tutor
  (37, 3700, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Ninetales - Ember - Level 1
  (38, 3800, 52, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninetales - Powder Snow - Level 1
  (38, 3800, 181, 22, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninetales - Quick Attack - Level 5
  (38, 3800, 98, 22, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Ninetales - Nasty Plot - Level 9
  (38, 3800, 417, 22, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Ninetales - Flame Wheel - Level 15
  (38, 3800, 172, 22, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Ninetales - Draining Kiss - Level 15
  (38, 3800, 577, 22, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Ninetales - Ice Fang - Level 21
  (38, 3800, 423, 22, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Ninetales - Hex - Level 21
  (38, 3800, 506, 22, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Ninetales - Extrasensory - Level 29
  (38, 3800, 326, 22, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Ninetales - Dazzling Gleam - Level 29
  (38, 3800, 605, 22, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Ninetales - Flamethrower - Level 37
  (38, 3800, 53, 22, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Ninetales - Ice Beam - Level 37
  (38, 3800, 58, 22, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Ninetales - Blizzard - Level 47
  (38, 3800, 59, 22, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Ninetales - Fire Blast - Level 47
  (38, 3800, 126, 22, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Ninetales - Flamethrower - Tutor
  (38, 3800, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Ninetales - Ice Beam - Tutor
  (38, 3800, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Ninetales - Hyper Beam - Tutor
  (38, 3800, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Ninetales - Swift - Tutor
  (38, 3800, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Ninetales - Rest - Tutor
  (38, 3800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Ninetales - Icy Wind - Tutor
  (38, 3800, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Ninetales - Iron Tail - Tutor
  (38, 3800, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Ninetales - Shadow Ball - Tutor
  (38, 3800, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Ninetales - Calm Mind - Tutor
  (38, 3800, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Ninetales - Dark Pulse - Tutor
  (38, 3800, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Ninetales - Energy Ball - Tutor
  (38, 3800, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Ninetales - Giga Impact - Tutor
  (38, 3800, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Ninetales - Ice Fang - Tutor
  (38, 3800, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Ninetales - Zen Headbutt - Tutor
  (38, 3800, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Ninetales - Ominous Wind - Tutor
  (38, 3800, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Ninetales - Mystical Fire - Tutor
  (38, 3800, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Ninetales - Dazzling Gleam - Tutor
  (38, 3800, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Ninetales - Baby-Doll Eyes - Tutor
  (38, 3800, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Zubat - Gust - Level 1
  (41, 4100, 16, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zubat - Hypnosis - Level 6
  (41, 4100, 95, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Zubat - Bite - Level 11
  (41, 4100, 44, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Zubat - Air Cutter - Level 18
  (41, 4100, 314, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Zubat - Cross Poison - Level 25
  (41, 4100, 440, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Zubat - Air Slash - Level 34
  (41, 4100, 403, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Zubat - Leech Life - Level 43
  (41, 4100, 141, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Zubat - Swift - Tutor
  (41, 4100, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Zubat - Leech Life - Tutor
  (41, 4100, 141, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Zubat - Rest - Tutor
  (41, 4100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Zubat - Sludge Bomb - Tutor
  (41, 4100, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Zubat - Shadow Ball - Tutor
  (41, 4100, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Zubat - Aerial Ace - Tutor
  (41, 4100, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Zubat - Zen Headbutt - Tutor
  (41, 4100, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Zubat - Ominous Wind - Tutor
  (41, 4100, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Golbat - Gust - Level 1
  (42, 4200, 16, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golbat - Hypnosis - Level 6
  (42, 4200, 95, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Golbat - Bite - Level 11
  (42, 4200, 44, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Golbat - Air Cutter - Level 18
  (42, 4200, 314, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Golbat - Cross Poison - Level 25
  (42, 4200, 440, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Golbat - Air Slash - Level 34
  (42, 4200, 403, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Golbat - Leech Life - Level 43
  (42, 4200, 141, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Golbat - Hyper Beam - Tutor
  (42, 4200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Golbat - Swift - Tutor
  (42, 4200, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Golbat - Leech Life - Tutor
  (42, 4200, 141, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Golbat - Rest - Tutor
  (42, 4200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Golbat - Sludge Bomb - Tutor
  (42, 4200, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Golbat - Shadow Ball - Tutor
  (42, 4200, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Golbat - Aerial Ace - Tutor
  (42, 4200, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Golbat - Giga Impact - Tutor
  (42, 4200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Golbat - Zen Headbutt - Tutor
  (42, 4200, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Golbat - Ominous Wind - Tutor
  (42, 4200, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Paras - Absorb - Level 1
  (46, 4600, 71, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Paras - Stun Spore - Level 5
  (46, 4600, 78, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Paras - Poison Powder - Level 9
  (46, 4600, 77, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Paras - Venoshock - Level 15
  (46, 4600, 474, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Paras - Slash - Level 21
  (46, 4600, 163, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Paras - Spore - Level 29
  (46, 4600, 147, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Paras - X-Scissor - Level 37
  (46, 4600, 404, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Paras - Energy Ball - Level 47
  (46, 4600, 412, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Paras - Leech Life - Tutor
  (46, 4600, 141, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Paras - Rest - Tutor
  (46, 4600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Paras - Sludge Bomb - Tutor
  (46, 4600, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Paras - False Swipe - Tutor
  (46, 4600, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Paras - Rock Smash - Tutor
  (46, 4600, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Paras - Aerial Ace - Tutor
  (46, 4600, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Paras - X-Scissor - Tutor
  (46, 4600, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Paras - Energy Ball - Tutor
  (46, 4600, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Parasect - Absorb - Level 1
  (47, 4700, 71, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Parasect - Stun Spore - Level 5
  (47, 4700, 78, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Parasect - Poison Powder - Level 9
  (47, 4700, 77, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Parasect - Venoshock - Level 15
  (47, 4700, 474, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Parasect - Slash - Level 21
  (47, 4700, 163, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Parasect - Spore - Level 29
  (47, 4700, 147, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Parasect - X-Scissor - Level 37
  (47, 4700, 404, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Parasect - Energy Ball - Level 47
  (47, 4700, 412, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Parasect - Hyper Beam - Tutor
  (47, 4700, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Parasect - Leech Life - Tutor
  (47, 4700, 141, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Parasect - Rest - Tutor
  (47, 4700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Parasect - Sludge Bomb - Tutor
  (47, 4700, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Parasect - False Swipe - Tutor
  (47, 4700, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Parasect - Rock Smash - Tutor
  (47, 4700, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Parasect - Aerial Ace - Tutor
  (47, 4700, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Parasect - X-Scissor - Tutor
  (47, 4700, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Parasect - Energy Ball - Tutor
  (47, 4700, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Parasect - Giga Impact - Tutor
  (47, 4700, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18);
