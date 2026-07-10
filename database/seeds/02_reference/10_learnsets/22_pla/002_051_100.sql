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
-- Pokémon Legends: Arceus learnsets for default forms, species 051-100.
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
  -- Psyduck - Bubble - Level 1
  (54, 5400, 145, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Psyduck - Confusion - Level 6
  (54, 5400, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Psyduck - Water Pulse - Level 11
  (54, 5400, 352, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Psyduck - Hypnosis - Level 18
  (54, 5400, 95, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Psyduck - Zen Headbutt - Level 25
  (54, 5400, 428, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Psyduck - Aqua Tail - Level 34
  (54, 5400, 401, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Psyduck - Hydro Pump - Level 43
  (54, 5400, 56, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Psyduck - Ice Punch - Tutor
  (54, 5400, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Psyduck - Ice Beam - Tutor
  (54, 5400, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Psyduck - Psychic - Tutor
  (54, 5400, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Psyduck - Swift - Tutor
  (54, 5400, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Psyduck - Rest - Tutor
  (54, 5400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Psyduck - Tri Attack - Tutor
  (54, 5400, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Psyduck - Icy Wind - Tutor
  (54, 5400, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Psyduck - Iron Tail - Tutor
  (54, 5400, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Psyduck - Rock Smash - Tutor
  (54, 5400, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Psyduck - Aerial Ace - Tutor
  (54, 5400, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Psyduck - Calm Mind - Tutor
  (54, 5400, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Psyduck - Water Pulse - Tutor
  (54, 5400, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Psyduck - Aqua Tail - Tutor
  (54, 5400, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Psyduck - Shadow Claw - Tutor
  (54, 5400, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Psyduck - Zen Headbutt - Tutor
  (54, 5400, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Golduck - Bubble - Level 1
  (55, 5500, 145, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golduck - Confusion - Level 6
  (55, 5500, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Golduck - Water Pulse - Level 11
  (55, 5500, 352, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Golduck - Hypnosis - Level 18
  (55, 5500, 95, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Golduck - Zen Headbutt - Level 25
  (55, 5500, 428, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Golduck - Aqua Tail - Level 34
  (55, 5500, 401, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Golduck - Hydro Pump - Level 43
  (55, 5500, 56, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Golduck - Ice Punch - Tutor
  (55, 5500, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Golduck - Ice Beam - Tutor
  (55, 5500, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Golduck - Hyper Beam - Tutor
  (55, 5500, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Golduck - Psychic - Tutor
  (55, 5500, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Golduck - Swift - Tutor
  (55, 5500, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Golduck - Rest - Tutor
  (55, 5500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Golduck - Tri Attack - Tutor
  (55, 5500, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Golduck - Icy Wind - Tutor
  (55, 5500, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Golduck - Iron Tail - Tutor
  (55, 5500, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Golduck - Rock Smash - Tutor
  (55, 5500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Golduck - Aerial Ace - Tutor
  (55, 5500, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Golduck - Calm Mind - Tutor
  (55, 5500, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Golduck - Water Pulse - Tutor
  (55, 5500, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Golduck - Aqua Tail - Tutor
  (55, 5500, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Golduck - Giga Impact - Tutor
  (55, 5500, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Golduck - Shadow Claw - Tutor
  (55, 5500, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Golduck - Zen Headbutt - Tutor
  (55, 5500, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Abra - Teleport - Level 1
  (63, 6300, 100, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abra - Fire Punch - Tutor
  (63, 6300, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 2),
  -- Abra - Ice Punch - Tutor
  (63, 6300, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 3),
  -- Abra - Thunder Punch - Tutor
  (63, 6300, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 4),
  -- Abra - Psychic - Tutor
  (63, 6300, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 5),
  -- Abra - Swift - Tutor
  (63, 6300, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 6),
  -- Abra - Rest - Tutor
  (63, 6300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 7),
  -- Abra - Tri Attack - Tutor
  (63, 6300, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Abra - Iron Tail - Tutor
  (63, 6300, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Abra - Shadow Ball - Tutor
  (63, 6300, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Abra - Calm Mind - Tutor
  (63, 6300, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Abra - Drain Punch - Tutor
  (63, 6300, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Abra - Energy Ball - Tutor
  (63, 6300, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Abra - Zen Headbutt - Tutor
  (63, 6300, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Abra - Charge Beam - Tutor
  (63, 6300, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Abra - Dazzling Gleam - Tutor
  (63, 6300, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Kadabra - Teleport - Level 1
  (64, 6400, 100, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kadabra - Hypnosis - Level 6
  (64, 6400, 95, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Kadabra - Calm Mind - Level 11
  (64, 6400, 347, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Kadabra - Psycho Cut - Level 18
  (64, 6400, 427, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Kadabra - Zen Headbutt - Level 25
  (64, 6400, 428, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Kadabra - Recover - Level 34
  (64, 6400, 105, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Kadabra - Psychic - Level 43
  (64, 6400, 94, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Kadabra - Confusion - Evolution
  (64, 6400, 93, 22, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Kadabra - Fire Punch - Tutor
  (64, 6400, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Kadabra - Ice Punch - Tutor
  (64, 6400, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Kadabra - Thunder Punch - Tutor
  (64, 6400, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Kadabra - Psychic - Tutor
  (64, 6400, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Kadabra - Swift - Tutor
  (64, 6400, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Kadabra - Rest - Tutor
  (64, 6400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Kadabra - Tri Attack - Tutor
  (64, 6400, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Kadabra - Iron Tail - Tutor
  (64, 6400, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Kadabra - Shadow Ball - Tutor
  (64, 6400, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Kadabra - Calm Mind - Tutor
  (64, 6400, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Kadabra - Drain Punch - Tutor
  (64, 6400, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Kadabra - Energy Ball - Tutor
  (64, 6400, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Kadabra - Psycho Cut - Tutor
  (64, 6400, 427, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Kadabra - Zen Headbutt - Tutor
  (64, 6400, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Kadabra - Charge Beam - Tutor
  (64, 6400, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Kadabra - Dazzling Gleam - Tutor
  (64, 6400, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Alakazam - Teleport - Level 1
  (65, 6500, 100, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alakazam - Confusion - Level 6
  (65, 6500, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Alakazam - Hypnosis - Level 6
  (65, 6500, 95, 22, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Alakazam - Calm Mind - Level 11
  (65, 6500, 347, 22, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Alakazam - Psycho Cut - Level 18
  (65, 6500, 427, 22, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Alakazam - Zen Headbutt - Level 25
  (65, 6500, 428, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Alakazam - Recover - Level 34
  (65, 6500, 105, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Alakazam - Psychic - Level 43
  (65, 6500, 94, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Alakazam - Fire Punch - Tutor
  (65, 6500, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Alakazam - Ice Punch - Tutor
  (65, 6500, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Alakazam - Thunder Punch - Tutor
  (65, 6500, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Alakazam - Hyper Beam - Tutor
  (65, 6500, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Alakazam - Psychic - Tutor
  (65, 6500, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Alakazam - Swift - Tutor
  (65, 6500, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Alakazam - Rest - Tutor
  (65, 6500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Alakazam - Tri Attack - Tutor
  (65, 6500, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Alakazam - Iron Tail - Tutor
  (65, 6500, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Alakazam - Shadow Ball - Tutor
  (65, 6500, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Alakazam - Calm Mind - Tutor
  (65, 6500, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Alakazam - Drain Punch - Tutor
  (65, 6500, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Alakazam - Energy Ball - Tutor
  (65, 6500, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Alakazam - Giga Impact - Tutor
  (65, 6500, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Alakazam - Psycho Cut - Tutor
  (65, 6500, 427, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Alakazam - Zen Headbutt - Tutor
  (65, 6500, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Alakazam - Charge Beam - Tutor
  (65, 6500, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Alakazam - Dazzling Gleam - Tutor
  (65, 6500, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Machop - Tackle - Level 1
  (66, 6600, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machop - Rock Smash - Level 6
  (66, 6600, 249, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Machop - Bullet Punch - Level 11
  (66, 6600, 418, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Machop - Double Hit - Level 18
  (66, 6600, 458, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Machop - Mach Punch - Level 22
  (66, 6600, 183, 22, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Machop - Bulk Up - Level 25
  (66, 6600, 339, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Machop - Double-Edge - Level 34
  (66, 6600, 38, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Machop - Close Combat - Level 43
  (66, 6600, 370, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Machop - Fire Punch - Tutor
  (66, 6600, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Machop - Ice Punch - Tutor
  (66, 6600, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Machop - Thunder Punch - Tutor
  (66, 6600, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Machop - Flamethrower - Tutor
  (66, 6600, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Machop - Focus Energy - Tutor
  (66, 6600, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Machop - Rest - Tutor
  (66, 6600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Machop - Rock Slide - Tutor
  (66, 6600, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Machop - Rock Smash - Tutor
  (66, 6600, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Machop - Bulk Up - Tutor
  (66, 6600, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Machop - Poison Jab - Tutor
  (66, 6600, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Machop - Bulldoze - Tutor
  (66, 6600, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Machoke - Tackle - Level 1
  (67, 6700, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machoke - Rock Smash - Level 6
  (67, 6700, 249, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Machoke - Bullet Punch - Level 11
  (67, 6700, 418, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Machoke - Double Hit - Level 18
  (67, 6700, 458, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Machoke - Mach Punch - Level 22
  (67, 6700, 183, 22, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Machoke - Bulk Up - Level 25
  (67, 6700, 339, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Machoke - Double-Edge - Level 34
  (67, 6700, 38, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Machoke - Close Combat - Level 43
  (67, 6700, 370, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Machoke - Fire Punch - Tutor
  (67, 6700, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Machoke - Ice Punch - Tutor
  (67, 6700, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Machoke - Thunder Punch - Tutor
  (67, 6700, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Machoke - Flamethrower - Tutor
  (67, 6700, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Machoke - Focus Energy - Tutor
  (67, 6700, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Machoke - Rest - Tutor
  (67, 6700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Machoke - Rock Slide - Tutor
  (67, 6700, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Machoke - Rock Smash - Tutor
  (67, 6700, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Machoke - Bulk Up - Tutor
  (67, 6700, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Machoke - Poison Jab - Tutor
  (67, 6700, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Machoke - Bulldoze - Tutor
  (67, 6700, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Machamp - Tackle - Level 1
  (68, 6800, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machamp - Rock Smash - Level 6
  (68, 6800, 249, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Machamp - Bullet Punch - Level 11
  (68, 6800, 418, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Machamp - Double Hit - Level 18
  (68, 6800, 458, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Machamp - Mach Punch - Level 22
  (68, 6800, 183, 22, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Machamp - Bulk Up - Level 25
  (68, 6800, 339, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Machamp - Drain Punch - Level 30
  (68, 6800, 409, 22, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Machamp - Double-Edge - Level 34
  (68, 6800, 38, 22, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Machamp - Close Combat - Level 43
  (68, 6800, 370, 22, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Machamp - Fire Punch - Tutor
  (68, 6800, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Machamp - Ice Punch - Tutor
  (68, 6800, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Machamp - Thunder Punch - Tutor
  (68, 6800, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Machamp - Flamethrower - Tutor
  (68, 6800, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Machamp - Hyper Beam - Tutor
  (68, 6800, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Machamp - Focus Energy - Tutor
  (68, 6800, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Machamp - Rest - Tutor
  (68, 6800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Machamp - Rock Slide - Tutor
  (68, 6800, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Machamp - Rock Smash - Tutor
  (68, 6800, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Machamp - Bulk Up - Tutor
  (68, 6800, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Machamp - Poison Jab - Tutor
  (68, 6800, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Machamp - Drain Punch - Tutor
  (68, 6800, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Machamp - Giga Impact - Tutor
  (68, 6800, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Machamp - Stone Edge - Tutor
  (68, 6800, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Machamp - Bulldoze - Tutor
  (68, 6800, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Machamp - High Horsepower - Tutor
  (68, 6800, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Tentacool - Poison Sting - Level 1
  (72, 7200, 40, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacool - Bubble - Level 6
  (72, 7200, 145, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Tentacool - Water Pulse - Level 11
  (72, 7200, 352, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Tentacool - Hex - Level 18
  (72, 7200, 506, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Tentacool - Poison Jab - Level 25
  (72, 7200, 398, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Tentacool - Acid Armor - Level 34
  (72, 7200, 151, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Tentacool - Hydro Pump - Level 43
  (72, 7200, 56, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Tentacool - Ice Beam - Tutor
  (72, 7200, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Tentacool - Rest - Tutor
  (72, 7200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Tentacool - Sludge Bomb - Tutor
  (72, 7200, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Tentacool - Icy Wind - Tutor
  (72, 7200, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Tentacool - Water Pulse - Tutor
  (72, 7200, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Tentacool - Poison Jab - Tutor
  (72, 7200, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Tentacool - Dazzling Gleam - Tutor
  (72, 7200, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Tentacruel - Poison Sting - Level 1
  (73, 7300, 40, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacruel - Bubble - Level 6
  (73, 7300, 145, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Tentacruel - Water Pulse - Level 11
  (73, 7300, 352, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Tentacruel - Hex - Level 18
  (73, 7300, 506, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Tentacruel - Poison Jab - Level 25
  (73, 7300, 398, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Tentacruel - Acid Armor - Level 34
  (73, 7300, 151, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Tentacruel - Hydro Pump - Level 43
  (73, 7300, 56, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Tentacruel - Ice Beam - Tutor
  (73, 7300, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Tentacruel - Hyper Beam - Tutor
  (73, 7300, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Tentacruel - Rest - Tutor
  (73, 7300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Tentacruel - Sludge Bomb - Tutor
  (73, 7300, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Tentacruel - Icy Wind - Tutor
  (73, 7300, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Tentacruel - Water Pulse - Tutor
  (73, 7300, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Tentacruel - Poison Jab - Tutor
  (73, 7300, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Tentacruel - Giga Impact - Tutor
  (73, 7300, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Tentacruel - Dazzling Gleam - Tutor
  (73, 7300, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Geodude - Rollout - Level 1
  (74, 7400, 205, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Geodude - Tackle - Level 5
  (74, 7400, 33, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Geodude - Mud-Slap - Level 9
  (74, 7400, 189, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Geodude - Iron Defense - Level 15
  (74, 7400, 334, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Geodude - Rock Slide - Level 21
  (74, 7400, 157, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Geodude - Bulldoze - Level 26
  (74, 7400, 523, 22, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Geodude - Stealth Rock - Level 29
  (74, 7400, 446, 22, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Geodude - Double-Edge - Level 37
  (74, 7400, 38, 22, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Geodude - Self-Destruct - Level 47
  (74, 7400, 120, 22, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Geodude - Fire Punch - Tutor
  (74, 7400, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Geodude - Thunder Punch - Tutor
  (74, 7400, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Geodude - Flamethrower - Tutor
  (74, 7400, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Geodude - Rest - Tutor
  (74, 7400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Geodude - Rock Slide - Tutor
  (74, 7400, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Geodude - Rock Smash - Tutor
  (74, 7400, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Geodude - Earth Power - Tutor
  (74, 7400, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Geodude - Stone Edge - Tutor
  (74, 7400, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Geodude - Stealth Rock - Tutor
  (74, 7400, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Geodude - Bulldoze - Tutor
  (74, 7400, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Graveler - Rollout - Level 1
  (75, 7500, 205, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Graveler - Tackle - Level 5
  (75, 7500, 33, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Graveler - Mud-Slap - Level 9
  (75, 7500, 189, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Graveler - Iron Defense - Level 15
  (75, 7500, 334, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Graveler - Rock Slide - Level 21
  (75, 7500, 157, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Graveler - Bulldoze - Level 26
  (75, 7500, 523, 22, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Graveler - Stealth Rock - Level 29
  (75, 7500, 446, 22, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Graveler - Double-Edge - Level 37
  (75, 7500, 38, 22, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Graveler - Self-Destruct - Level 47
  (75, 7500, 120, 22, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Graveler - Fire Punch - Tutor
  (75, 7500, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Graveler - Thunder Punch - Tutor
  (75, 7500, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Graveler - Flamethrower - Tutor
  (75, 7500, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Graveler - Rest - Tutor
  (75, 7500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Graveler - Rock Slide - Tutor
  (75, 7500, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Graveler - Rock Smash - Tutor
  (75, 7500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Graveler - Earth Power - Tutor
  (75, 7500, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Graveler - Stone Edge - Tutor
  (75, 7500, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Graveler - Stealth Rock - Tutor
  (75, 7500, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Graveler - Bulldoze - Tutor
  (75, 7500, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Golem - Rollout - Level 1
  (76, 7600, 205, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golem - Tackle - Level 5
  (76, 7600, 33, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Golem - Mud-Slap - Level 9
  (76, 7600, 189, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Golem - Iron Defense - Level 15
  (76, 7600, 334, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Golem - Rock Slide - Level 21
  (76, 7600, 157, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Golem - Bulldoze - Level 26
  (76, 7600, 523, 22, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Golem - Stealth Rock - Level 29
  (76, 7600, 446, 22, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Golem - Double-Edge - Level 37
  (76, 7600, 38, 22, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Golem - Self-Destruct - Level 47
  (76, 7600, 120, 22, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Golem - Stone Edge - Level 57
  (76, 7600, 444, 22, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Golem - Fire Punch - Tutor
  (76, 7600, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Golem - Thunder Punch - Tutor
  (76, 7600, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Golem - Flamethrower - Tutor
  (76, 7600, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Golem - Hyper Beam - Tutor
  (76, 7600, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Golem - Rest - Tutor
  (76, 7600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Golem - Rock Slide - Tutor
  (76, 7600, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Golem - Rock Smash - Tutor
  (76, 7600, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Golem - Earth Power - Tutor
  (76, 7600, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Golem - Giga Impact - Tutor
  (76, 7600, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Golem - Iron Head - Tutor
  (76, 7600, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Golem - Stone Edge - Tutor
  (76, 7600, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Golem - Stealth Rock - Tutor
  (76, 7600, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Golem - Bulldoze - Tutor
  (76, 7600, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Ponyta - Tackle - Level 1
  (77, 7700, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ponyta - Ember - Level 5
  (77, 7700, 52, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Ponyta - Double Hit - Level 9
  (77, 7700, 458, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Ponyta - Flame Wheel - Level 15
  (77, 7700, 172, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Ponyta - Hypnosis - Level 21
  (77, 7700, 95, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Ponyta - Fire Blast - Level 29
  (77, 7700, 126, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Ponyta - Double-Edge - Level 37
  (77, 7700, 38, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Ponyta - Flare Blitz - Level 47
  (77, 7700, 394, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Ponyta - Flamethrower - Tutor
  (77, 7700, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Ponyta - Swift - Tutor
  (77, 7700, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Ponyta - Rest - Tutor
  (77, 7700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Ponyta - Iron Tail - Tutor
  (77, 7700, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Ponyta - Wild Charge - Tutor
  (77, 7700, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Ponyta - Mystical Fire - Tutor
  (77, 7700, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Ponyta - High Horsepower - Tutor
  (77, 7700, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Rapidash - Tackle - Level 1
  (78, 7800, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rapidash - Ember - Level 5
  (78, 7800, 52, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Rapidash - Double Hit - Level 9
  (78, 7800, 458, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Rapidash - Flame Wheel - Level 15
  (78, 7800, 172, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Rapidash - Hypnosis - Level 21
  (78, 7800, 95, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Rapidash - Fire Blast - Level 29
  (78, 7800, 126, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Rapidash - Double-Edge - Level 37
  (78, 7800, 38, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Rapidash - Flare Blitz - Level 47
  (78, 7800, 394, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Rapidash - Flamethrower - Tutor
  (78, 7800, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Rapidash - Hyper Beam - Tutor
  (78, 7800, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Rapidash - Swift - Tutor
  (78, 7800, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Rapidash - Rest - Tutor
  (78, 7800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Rapidash - Megahorn - Tutor
  (78, 7800, 224, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Rapidash - Iron Tail - Tutor
  (78, 7800, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Rapidash - Poison Jab - Tutor
  (78, 7800, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Rapidash - Giga Impact - Tutor
  (78, 7800, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Rapidash - Wild Charge - Tutor
  (78, 7800, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Rapidash - Mystical Fire - Tutor
  (78, 7800, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Rapidash - High Horsepower - Tutor
  (78, 7800, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Magnemite - Thunder Shock - Level 1
  (81, 8100, 84, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnemite - Tackle - Level 6
  (81, 8100, 33, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Magnemite - Thunder Wave - Level 11
  (81, 8100, 86, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Magnemite - Spark - Level 18
  (81, 8100, 209, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Magnemite - Flash Cannon - Level 25
  (81, 8100, 430, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Magnemite - Thunderbolt - Level 34
  (81, 8100, 85, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Magnemite - Thunder - Level 43
  (81, 8100, 87, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Magnemite - Thunderbolt - Tutor
  (81, 8100, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Magnemite - Swift - Tutor
  (81, 8100, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Magnemite - Rest - Tutor
  (81, 8100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Magnemite - Flash Cannon - Tutor
  (81, 8100, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Magnemite - Charge Beam - Tutor
  (81, 8100, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Magnemite - Wild Charge - Tutor
  (81, 8100, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Magnemite - Steel Beam - Tutor
  (81, 8100, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Magneton - Thunder Shock - Level 1
  (82, 8200, 84, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magneton - Tackle - Level 6
  (82, 8200, 33, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Magneton - Thunder Wave - Level 11
  (82, 8200, 86, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Magneton - Spark - Level 18
  (82, 8200, 209, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Magneton - Tri Attack - Level 25
  (82, 8200, 161, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Magneton - Flash Cannon - Level 25
  (82, 8200, 430, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Magneton - Thunderbolt - Level 34
  (82, 8200, 85, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Magneton - Thunder - Level 43
  (82, 8200, 87, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Magneton - Hyper Beam - Tutor
  (82, 8200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Magneton - Thunderbolt - Tutor
  (82, 8200, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Magneton - Swift - Tutor
  (82, 8200, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Magneton - Rest - Tutor
  (82, 8200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Magneton - Tri Attack - Tutor
  (82, 8200, 161, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Magneton - Giga Impact - Tutor
  (82, 8200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Magneton - Flash Cannon - Tutor
  (82, 8200, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Magneton - Charge Beam - Tutor
  (82, 8200, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Magneton - Wild Charge - Tutor
  (82, 8200, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Magneton - Steel Beam - Tutor
  (82, 8200, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Gastly - Astonish - Level 1
  (92, 9200, 310, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastly - Poison Gas - Level 6
  (92, 9200, 139, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Gastly - Hex - Level 11
  (92, 9200, 506, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Gastly - Venoshock - Level 18
  (92, 9200, 474, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Gastly - Hypnosis - Level 25
  (92, 9200, 95, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Gastly - Dark Pulse - Level 34
  (92, 9200, 399, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Gastly - Shadow Ball - Level 43
  (92, 9200, 247, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Gastly - Fire Punch - Tutor
  (92, 9200, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Gastly - Ice Punch - Tutor
  (92, 9200, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Gastly - Thunder Punch - Tutor
  (92, 9200, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Gastly - Thunderbolt - Tutor
  (92, 9200, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Gastly - Psychic - Tutor
  (92, 9200, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Gastly - Rest - Tutor
  (92, 9200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Gastly - Sludge Bomb - Tutor
  (92, 9200, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Gastly - Icy Wind - Tutor
  (92, 9200, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Gastly - Shadow Ball - Tutor
  (92, 9200, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Gastly - Poison Jab - Tutor
  (92, 9200, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Gastly - Dark Pulse - Tutor
  (92, 9200, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Gastly - Energy Ball - Tutor
  (92, 9200, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Gastly - Ominous Wind - Tutor
  (92, 9200, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Gastly - Dazzling Gleam - Tutor
  (92, 9200, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Haunter - Astonish - Level 1
  (93, 9300, 310, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Haunter - Poison Gas - Level 6
  (93, 9300, 139, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Haunter - Hex - Level 11
  (93, 9300, 506, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Haunter - Venoshock - Level 18
  (93, 9300, 474, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Haunter - Hypnosis - Level 25
  (93, 9300, 95, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Haunter - Dark Pulse - Level 34
  (93, 9300, 399, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Haunter - Shadow Ball - Level 43
  (93, 9300, 247, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Haunter - Fire Punch - Tutor
  (93, 9300, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Haunter - Ice Punch - Tutor
  (93, 9300, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Haunter - Thunder Punch - Tutor
  (93, 9300, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Haunter - Thunderbolt - Tutor
  (93, 9300, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Haunter - Psychic - Tutor
  (93, 9300, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Haunter - Rest - Tutor
  (93, 9300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Haunter - Sludge Bomb - Tutor
  (93, 9300, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Haunter - Icy Wind - Tutor
  (93, 9300, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Haunter - Shadow Ball - Tutor
  (93, 9300, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Haunter - Poison Jab - Tutor
  (93, 9300, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Haunter - Dark Pulse - Tutor
  (93, 9300, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Haunter - Energy Ball - Tutor
  (93, 9300, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Haunter - Shadow Claw - Tutor
  (93, 9300, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Haunter - Ominous Wind - Tutor
  (93, 9300, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Haunter - Dazzling Gleam - Tutor
  (93, 9300, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Gengar - Astonish - Level 1
  (94, 9400, 310, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gengar - Poison Gas - Level 6
  (94, 9400, 139, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Gengar - Hex - Level 11
  (94, 9400, 506, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Gengar - Venoshock - Level 18
  (94, 9400, 474, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Gengar - Hypnosis - Level 25
  (94, 9400, 95, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Gengar - Dark Pulse - Level 34
  (94, 9400, 399, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Gengar - Shadow Ball - Level 43
  (94, 9400, 247, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Gengar - Fire Punch - Tutor
  (94, 9400, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Gengar - Ice Punch - Tutor
  (94, 9400, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Gengar - Thunder Punch - Tutor
  (94, 9400, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Gengar - Hyper Beam - Tutor
  (94, 9400, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Gengar - Thunderbolt - Tutor
  (94, 9400, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Gengar - Psychic - Tutor
  (94, 9400, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Gengar - Rest - Tutor
  (94, 9400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Gengar - Sludge Bomb - Tutor
  (94, 9400, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Gengar - Icy Wind - Tutor
  (94, 9400, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Gengar - Shadow Ball - Tutor
  (94, 9400, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Gengar - Rock Smash - Tutor
  (94, 9400, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Gengar - Poison Jab - Tutor
  (94, 9400, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Gengar - Dark Pulse - Tutor
  (94, 9400, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Gengar - Drain Punch - Tutor
  (94, 9400, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Gengar - Energy Ball - Tutor
  (94, 9400, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Gengar - Giga Impact - Tutor
  (94, 9400, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Gengar - Shadow Claw - Tutor
  (94, 9400, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Gengar - Ominous Wind - Tutor
  (94, 9400, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Gengar - Dazzling Gleam - Tutor
  (94, 9400, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Gengar - Power Shift - Tutor
  (94, 9400, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Onix - Rollout - Level 1
  (95, 9500, 205, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Onix - Tackle - Level 6
  (95, 9500, 33, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Onix - Bulldoze - Level 11
  (95, 9500, 523, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Onix - Rock Slide - Level 18
  (95, 9500, 157, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Onix - Stealth Rock - Level 25
  (95, 9500, 446, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Onix - High Horsepower - Level 34
  (95, 9500, 667, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Onix - Iron Tail - Level 43
  (95, 9500, 231, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Onix - Rest - Tutor
  (95, 9500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Onix - Rock Slide - Tutor
  (95, 9500, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Onix - Iron Tail - Tutor
  (95, 9500, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Onix - Rock Smash - Tutor
  (95, 9500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Onix - Earth Power - Tutor
  (95, 9500, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Onix - Flash Cannon - Tutor
  (95, 9500, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Onix - Iron Head - Tutor
  (95, 9500, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Onix - Stone Edge - Tutor
  (95, 9500, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Onix - Stealth Rock - Tutor
  (95, 9500, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Onix - Bulldoze - Tutor
  (95, 9500, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Onix - High Horsepower - Tutor
  (95, 9500, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Onix - Power Shift - Tutor
  (95, 9500, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19);
