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
-- Pokémon Legends: Arceus learnsets for non-default supported forms.
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
  -- Vulpix (Alolan Vulpix) - Ember - Level 1
  (37, 3701, 52, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vulpix (Alolan Vulpix) - Powder Snow - Level 1
  (37, 3701, 181, 22, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vulpix (Alolan Vulpix) - Quick Attack - Level 5
  (37, 3701, 98, 22, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Vulpix (Alolan Vulpix) - Nasty Plot - Level 9
  (37, 3701, 417, 22, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Vulpix (Alolan Vulpix) - Flame Wheel - Level 15
  (37, 3701, 172, 22, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Vulpix (Alolan Vulpix) - Draining Kiss - Level 15
  (37, 3701, 577, 22, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Vulpix (Alolan Vulpix) - Ice Fang - Level 21
  (37, 3701, 423, 22, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Vulpix (Alolan Vulpix) - Hex - Level 21
  (37, 3701, 506, 22, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Vulpix (Alolan Vulpix) - Extrasensory - Level 29
  (37, 3701, 326, 22, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Vulpix (Alolan Vulpix) - Dazzling Gleam - Level 29
  (37, 3701, 605, 22, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Vulpix (Alolan Vulpix) - Flamethrower - Level 37
  (37, 3701, 53, 22, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Vulpix (Alolan Vulpix) - Ice Beam - Level 37
  (37, 3701, 58, 22, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Vulpix (Alolan Vulpix) - Blizzard - Level 47
  (37, 3701, 59, 22, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Vulpix (Alolan Vulpix) - Fire Blast - Level 47
  (37, 3701, 126, 22, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Vulpix (Alolan Vulpix) - Flamethrower - Tutor
  (37, 3701, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Vulpix (Alolan Vulpix) - Ice Beam - Tutor
  (37, 3701, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Vulpix (Alolan Vulpix) - Swift - Tutor
  (37, 3701, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Vulpix (Alolan Vulpix) - Rest - Tutor
  (37, 3701, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Vulpix (Alolan Vulpix) - Icy Wind - Tutor
  (37, 3701, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Vulpix (Alolan Vulpix) - Iron Tail - Tutor
  (37, 3701, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Vulpix (Alolan Vulpix) - Dark Pulse - Tutor
  (37, 3701, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Vulpix (Alolan Vulpix) - Energy Ball - Tutor
  (37, 3701, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Vulpix (Alolan Vulpix) - Ice Fang - Tutor
  (37, 3701, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Vulpix (Alolan Vulpix) - Zen Headbutt - Tutor
  (37, 3701, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Vulpix (Alolan Vulpix) - Ominous Wind - Tutor
  (37, 3701, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Vulpix (Alolan Vulpix) - Mystical Fire - Tutor
  (37, 3701, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Vulpix (Alolan Vulpix) - Dazzling Gleam - Tutor
  (37, 3701, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Vulpix (Alolan Vulpix) - Baby-Doll Eyes - Tutor
  (37, 3701, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Ninetales (Alolan Ninetales) - Ember - Level 1
  (38, 3801, 52, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninetales (Alolan Ninetales) - Powder Snow - Level 1
  (38, 3801, 181, 22, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninetales (Alolan Ninetales) - Quick Attack - Level 5
  (38, 3801, 98, 22, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Ninetales (Alolan Ninetales) - Nasty Plot - Level 9
  (38, 3801, 417, 22, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Ninetales (Alolan Ninetales) - Flame Wheel - Level 15
  (38, 3801, 172, 22, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Ninetales (Alolan Ninetales) - Draining Kiss - Level 15
  (38, 3801, 577, 22, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Ninetales (Alolan Ninetales) - Ice Fang - Level 21
  (38, 3801, 423, 22, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Ninetales (Alolan Ninetales) - Hex - Level 21
  (38, 3801, 506, 22, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Ninetales (Alolan Ninetales) - Extrasensory - Level 29
  (38, 3801, 326, 22, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Ninetales (Alolan Ninetales) - Dazzling Gleam - Level 29
  (38, 3801, 605, 22, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Ninetales (Alolan Ninetales) - Flamethrower - Level 37
  (38, 3801, 53, 22, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Ninetales (Alolan Ninetales) - Ice Beam - Level 37
  (38, 3801, 58, 22, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Ninetales (Alolan Ninetales) - Blizzard - Level 47
  (38, 3801, 59, 22, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Ninetales (Alolan Ninetales) - Fire Blast - Level 47
  (38, 3801, 126, 22, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Ninetales (Alolan Ninetales) - Flamethrower - Tutor
  (38, 3801, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Ninetales (Alolan Ninetales) - Ice Beam - Tutor
  (38, 3801, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Ninetales (Alolan Ninetales) - Hyper Beam - Tutor
  (38, 3801, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Ninetales (Alolan Ninetales) - Swift - Tutor
  (38, 3801, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Ninetales (Alolan Ninetales) - Rest - Tutor
  (38, 3801, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Ninetales (Alolan Ninetales) - Icy Wind - Tutor
  (38, 3801, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Ninetales (Alolan Ninetales) - Iron Tail - Tutor
  (38, 3801, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Ninetales (Alolan Ninetales) - Shadow Ball - Tutor
  (38, 3801, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Ninetales (Alolan Ninetales) - Calm Mind - Tutor
  (38, 3801, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Ninetales (Alolan Ninetales) - Dark Pulse - Tutor
  (38, 3801, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Ninetales (Alolan Ninetales) - Energy Ball - Tutor
  (38, 3801, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Ninetales (Alolan Ninetales) - Giga Impact - Tutor
  (38, 3801, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Ninetales (Alolan Ninetales) - Ice Fang - Tutor
  (38, 3801, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Ninetales (Alolan Ninetales) - Zen Headbutt - Tutor
  (38, 3801, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Ninetales (Alolan Ninetales) - Ominous Wind - Tutor
  (38, 3801, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Ninetales (Alolan Ninetales) - Mystical Fire - Tutor
  (38, 3801, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Ninetales (Alolan Ninetales) - Dazzling Gleam - Tutor
  (38, 3801, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Ninetales (Alolan Ninetales) - Baby-Doll Eyes - Tutor
  (38, 3801, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Growlithe (Hisuian Growlithe) - Tackle - Level 1
  (58, 5801, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Growlithe (Hisuian Growlithe) - Ember - Level 5
  (58, 5801, 52, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Growlithe (Hisuian Growlithe) - Bite - Level 9
  (58, 5801, 44, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Growlithe (Hisuian Growlithe) - Fire Fang - Level 15
  (58, 5801, 424, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Growlithe (Hisuian Growlithe) - Rock Slide - Level 21
  (58, 5801, 157, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Growlithe (Hisuian Growlithe) - Crunch - Level 29
  (58, 5801, 242, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Growlithe (Hisuian Growlithe) - Double-Edge - Level 37
  (58, 5801, 38, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Growlithe (Hisuian Growlithe) - Flare Blitz - Level 47
  (58, 5801, 394, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Growlithe (Hisuian Growlithe) - Flamethrower - Tutor
  (58, 5801, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Growlithe (Hisuian Growlithe) - Swift - Tutor
  (58, 5801, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Growlithe (Hisuian Growlithe) - Rest - Tutor
  (58, 5801, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Growlithe (Hisuian Growlithe) - Rock Slide - Tutor
  (58, 5801, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Growlithe (Hisuian Growlithe) - Outrage - Tutor
  (58, 5801, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Growlithe (Hisuian Growlithe) - Iron Tail - Tutor
  (58, 5801, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Growlithe (Hisuian Growlithe) - Rock Smash - Tutor
  (58, 5801, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Growlithe (Hisuian Growlithe) - Aerial Ace - Tutor
  (58, 5801, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Growlithe (Hisuian Growlithe) - Fire Fang - Tutor
  (58, 5801, 424, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Growlithe (Hisuian Growlithe) - Wild Charge - Tutor
  (58, 5801, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Growlithe (Hisuian Growlithe) - Snarl - Tutor
  (58, 5801, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Growlithe (Hisuian Growlithe) - Play Rough - Tutor
  (58, 5801, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arcanine (Hisuian Arcanine) - Tackle - Level 1
  (59, 5901, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arcanine (Hisuian Arcanine) - Ember - Level 5
  (59, 5901, 52, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Arcanine (Hisuian Arcanine) - Bite - Level 9
  (59, 5901, 44, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Arcanine (Hisuian Arcanine) - Fire Fang - Level 15
  (59, 5901, 424, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Arcanine (Hisuian Arcanine) - Rock Slide - Level 21
  (59, 5901, 157, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Arcanine (Hisuian Arcanine) - Crunch - Level 29
  (59, 5901, 242, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Arcanine (Hisuian Arcanine) - Raging Fury - Level 29
  (59, 5901, 833, 22, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Arcanine (Hisuian Arcanine) - Double-Edge - Level 37
  (59, 5901, 38, 22, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Arcanine (Hisuian Arcanine) - Flare Blitz - Level 47
  (59, 5901, 394, 22, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Arcanine (Hisuian Arcanine) - Flamethrower - Tutor
  (59, 5901, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arcanine (Hisuian Arcanine) - Hyper Beam - Tutor
  (59, 5901, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arcanine (Hisuian Arcanine) - Swift - Tutor
  (59, 5901, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arcanine (Hisuian Arcanine) - Rest - Tutor
  (59, 5901, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arcanine (Hisuian Arcanine) - Rock Slide - Tutor
  (59, 5901, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arcanine (Hisuian Arcanine) - Outrage - Tutor
  (59, 5901, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arcanine (Hisuian Arcanine) - Iron Tail - Tutor
  (59, 5901, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arcanine (Hisuian Arcanine) - Rock Smash - Tutor
  (59, 5901, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arcanine (Hisuian Arcanine) - Aerial Ace - Tutor
  (59, 5901, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arcanine (Hisuian Arcanine) - Giga Impact - Tutor
  (59, 5901, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arcanine (Hisuian Arcanine) - Thunder Fang - Tutor
  (59, 5901, 422, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arcanine (Hisuian Arcanine) - Fire Fang - Tutor
  (59, 5901, 424, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arcanine (Hisuian Arcanine) - Iron Head - Tutor
  (59, 5901, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arcanine (Hisuian Arcanine) - Stone Edge - Tutor
  (59, 5901, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arcanine (Hisuian Arcanine) - Bulldoze - Tutor
  (59, 5901, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arcanine (Hisuian Arcanine) - Wild Charge - Tutor
  (59, 5901, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arcanine (Hisuian Arcanine) - Snarl - Tutor
  (59, 5901, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arcanine (Hisuian Arcanine) - Play Rough - Tutor
  (59, 5901, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Voltorb (Hisuian Voltorb) - Thunder Shock - Level 1
  (100, 10001, 84, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Voltorb (Hisuian Voltorb) - Tackle - Level 5
  (100, 10001, 33, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Voltorb (Hisuian Voltorb) - Thunder Wave - Level 9
  (100, 10001, 86, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Voltorb (Hisuian Voltorb) - Spark - Level 15
  (100, 10001, 209, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Voltorb (Hisuian Voltorb) - Energy Ball - Level 21
  (100, 10001, 412, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Voltorb (Hisuian Voltorb) - Thunderbolt - Level 29
  (100, 10001, 85, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Voltorb (Hisuian Voltorb) - Thunder - Level 37
  (100, 10001, 87, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Voltorb (Hisuian Voltorb) - Self-Destruct - Level 47
  (100, 10001, 120, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Voltorb (Hisuian Voltorb) - Thunderbolt - Tutor
  (100, 10001, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Voltorb (Hisuian Voltorb) - Swift - Tutor
  (100, 10001, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Voltorb (Hisuian Voltorb) - Rest - Tutor
  (100, 10001, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Voltorb (Hisuian Voltorb) - Ice Ball - Tutor
  (100, 10001, 301, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Voltorb (Hisuian Voltorb) - Magical Leaf - Tutor
  (100, 10001, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Voltorb (Hisuian Voltorb) - Energy Ball - Tutor
  (100, 10001, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Voltorb (Hisuian Voltorb) - Charge Beam - Tutor
  (100, 10001, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Voltorb (Hisuian Voltorb) - Wild Charge - Tutor
  (100, 10001, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Electrode (Hisuian Electrode) - Thunder Shock - Level 1
  (101, 10101, 84, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electrode (Hisuian Electrode) - Tackle - Level 5
  (101, 10101, 33, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Electrode (Hisuian Electrode) - Thunder Wave - Level 9
  (101, 10101, 86, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Electrode (Hisuian Electrode) - Spark - Level 15
  (101, 10101, 209, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Electrode (Hisuian Electrode) - Energy Ball - Level 21
  (101, 10101, 412, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Electrode (Hisuian Electrode) - Thunderbolt - Level 29
  (101, 10101, 85, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Electrode (Hisuian Electrode) - Thunder - Level 37
  (101, 10101, 87, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Electrode (Hisuian Electrode) - Self-Destruct - Level 47
  (101, 10101, 120, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Electrode (Hisuian Electrode) - Chloroblast - Level 47
  (101, 10101, 835, 22, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Electrode (Hisuian Electrode) - Hyper Beam - Tutor
  (101, 10101, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Electrode (Hisuian Electrode) - Thunderbolt - Tutor
  (101, 10101, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Electrode (Hisuian Electrode) - Swift - Tutor
  (101, 10101, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Electrode (Hisuian Electrode) - Rest - Tutor
  (101, 10101, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Electrode (Hisuian Electrode) - Ice Ball - Tutor
  (101, 10101, 301, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Electrode (Hisuian Electrode) - Magical Leaf - Tutor
  (101, 10101, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Electrode (Hisuian Electrode) - Energy Ball - Tutor
  (101, 10101, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Electrode (Hisuian Electrode) - Giga Impact - Tutor
  (101, 10101, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Electrode (Hisuian Electrode) - Charge Beam - Tutor
  (101, 10101, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Electrode (Hisuian Electrode) - Wild Charge - Tutor
  (101, 10101, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Typhlosion (Hisuian Typhlosion) - Quick Attack - Level 1
  (157, 15701, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Typhlosion (Hisuian Typhlosion) - Ember - Level 6
  (157, 15701, 52, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Typhlosion (Hisuian Typhlosion) - Rollout - Level 11
  (157, 15701, 205, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Typhlosion (Hisuian Typhlosion) - Flame Wheel - Level 18
  (157, 15701, 172, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Typhlosion (Hisuian Typhlosion) - Swift - Level 25
  (157, 15701, 129, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Typhlosion (Hisuian Typhlosion) - Flamethrower - Level 34
  (157, 15701, 53, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Typhlosion (Hisuian Typhlosion) - Infernal Parade - Level 40
  (157, 15701, 844, 22, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Typhlosion (Hisuian Typhlosion) - Shadow Ball - Level 43
  (157, 15701, 247, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Typhlosion (Hisuian Typhlosion) - Overheat - Level 43
  (157, 15701, 315, 22, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Typhlosion (Hisuian Typhlosion) - Hex - Evolution
  (157, 15701, 506, 22, NULL, 7, NULL, NULL, NULL, NULL, 10),
  -- Typhlosion (Hisuian Typhlosion) - Fire Punch - Tutor
  (157, 15701, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Typhlosion (Hisuian Typhlosion) - Thunder Punch - Tutor
  (157, 15701, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Typhlosion (Hisuian Typhlosion) - Flamethrower - Tutor
  (157, 15701, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Typhlosion (Hisuian Typhlosion) - Hyper Beam - Tutor
  (157, 15701, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Typhlosion (Hisuian Typhlosion) - Swift - Tutor
  (157, 15701, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Typhlosion (Hisuian Typhlosion) - Rest - Tutor
  (157, 15701, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Typhlosion (Hisuian Typhlosion) - Rock Slide - Tutor
  (157, 15701, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Typhlosion (Hisuian Typhlosion) - Iron Tail - Tutor
  (157, 15701, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Typhlosion (Hisuian Typhlosion) - Shadow Ball - Tutor
  (157, 15701, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Typhlosion (Hisuian Typhlosion) - Rock Smash - Tutor
  (157, 15701, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Typhlosion (Hisuian Typhlosion) - Aerial Ace - Tutor
  (157, 15701, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Typhlosion (Hisuian Typhlosion) - Calm Mind - Tutor
  (157, 15701, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Typhlosion (Hisuian Typhlosion) - Drain Punch - Tutor
  (157, 15701, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Typhlosion (Hisuian Typhlosion) - Giga Impact - Tutor
  (157, 15701, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Typhlosion (Hisuian Typhlosion) - Shadow Claw - Tutor
  (157, 15701, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Typhlosion (Hisuian Typhlosion) - Ominous Wind - Tutor
  (157, 15701, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Typhlosion (Hisuian Typhlosion) - Bulldoze - Tutor
  (157, 15701, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Typhlosion (Hisuian Typhlosion) - Wild Charge - Tutor
  (157, 15701, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Typhlosion (Hisuian Typhlosion) - Mystical Fire - Tutor
  (157, 15701, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Qwilfish (Hisuian Qwilfish) - Poison Sting - Level 1
  (211, 21101, 40, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Qwilfish (Hisuian Qwilfish) - Spikes - Level 5
  (211, 21101, 191, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Qwilfish (Hisuian Qwilfish) - Pin Missile - Level 9
  (211, 21101, 42, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Qwilfish (Hisuian Qwilfish) - Barb Barrage - Level 15
  (211, 21101, 839, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Qwilfish (Hisuian Qwilfish) - Water Pulse - Level 21
  (211, 21101, 352, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Qwilfish (Hisuian Qwilfish) - Dark Pulse - Level 26
  (211, 21101, 399, 22, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Qwilfish (Hisuian Qwilfish) - Poison Jab - Level 29
  (211, 21101, 398, 22, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Qwilfish (Hisuian Qwilfish) - Aqua Tail - Level 37
  (211, 21101, 401, 22, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Qwilfish (Hisuian Qwilfish) - Double-Edge - Level 47
  (211, 21101, 38, 22, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Qwilfish (Hisuian Qwilfish) - Self-Destruct - Level 57
  (211, 21101, 120, 22, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Qwilfish (Hisuian Qwilfish) - Ice Beam - Tutor
  (211, 21101, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Qwilfish (Hisuian Qwilfish) - Swift - Tutor
  (211, 21101, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Qwilfish (Hisuian Qwilfish) - Rest - Tutor
  (211, 21101, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Qwilfish (Hisuian Qwilfish) - Sludge Bomb - Tutor
  (211, 21101, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Qwilfish (Hisuian Qwilfish) - Spikes - Tutor
  (211, 21101, 191, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Qwilfish (Hisuian Qwilfish) - Icy Wind - Tutor
  (211, 21101, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Qwilfish (Hisuian Qwilfish) - Shadow Ball - Tutor
  (211, 21101, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Qwilfish (Hisuian Qwilfish) - Ice Ball - Tutor
  (211, 21101, 301, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Qwilfish (Hisuian Qwilfish) - Water Pulse - Tutor
  (211, 21101, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Qwilfish (Hisuian Qwilfish) - Poison Jab - Tutor
  (211, 21101, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Qwilfish (Hisuian Qwilfish) - Dark Pulse - Tutor
  (211, 21101, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Qwilfish (Hisuian Qwilfish) - Aqua Tail - Tutor
  (211, 21101, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Sneasel (Hisuian Sneasel) - Quick Attack - Level 1
  (215, 21501, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sneasel (Hisuian Sneasel) - Rock Smash - Level 6
  (215, 21501, 249, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Sneasel (Hisuian Sneasel) - Ice Shard - Level 6
  (215, 21501, 420, 22, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Sneasel (Hisuian Sneasel) - Swift - Level 11
  (215, 21501, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Sneasel (Hisuian Sneasel) - Slash - Level 18
  (215, 21501, 163, 22, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Sneasel (Hisuian Sneasel) - Poison Jab - Level 25
  (215, 21501, 398, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Sneasel (Hisuian Sneasel) - Swords Dance - Level 34
  (215, 21501, 14, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Sneasel (Hisuian Sneasel) - Blizzard - Level 43
  (215, 21501, 59, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Sneasel (Hisuian Sneasel) - Close Combat - Level 43
  (215, 21501, 370, 22, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Sneasel (Hisuian Sneasel) - Ice Punch - Tutor
  (215, 21501, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Sneasel (Hisuian Sneasel) - Ice Beam - Tutor
  (215, 21501, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Sneasel (Hisuian Sneasel) - Focus Energy - Tutor
  (215, 21501, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Sneasel (Hisuian Sneasel) - Swift - Tutor
  (215, 21501, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Sneasel (Hisuian Sneasel) - Rest - Tutor
  (215, 21501, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Sneasel (Hisuian Sneasel) - Icy Wind - Tutor
  (215, 21501, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Sneasel (Hisuian Sneasel) - False Swipe - Tutor
  (215, 21501, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Sneasel (Hisuian Sneasel) - Iron Tail - Tutor
  (215, 21501, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Sneasel (Hisuian Sneasel) - Shadow Ball - Tutor
  (215, 21501, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Sneasel (Hisuian Sneasel) - Rock Smash - Tutor
  (215, 21501, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Sneasel (Hisuian Sneasel) - Aerial Ace - Tutor
  (215, 21501, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Sneasel (Hisuian Sneasel) - Bulk Up - Tutor
  (215, 21501, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Sneasel (Hisuian Sneasel) - Calm Mind - Tutor
  (215, 21501, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Sneasel (Hisuian Sneasel) - Poison Jab - Tutor
  (215, 21501, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Sneasel (Hisuian Sneasel) - Dark Pulse - Tutor
  (215, 21501, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Sneasel (Hisuian Sneasel) - X-Scissor - Tutor
  (215, 21501, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Sneasel (Hisuian Sneasel) - Drain Punch - Tutor
  (215, 21501, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Sneasel (Hisuian Sneasel) - Shadow Claw - Tutor
  (215, 21501, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Sneasel (Hisuian Sneasel) - Psycho Cut - Tutor
  (215, 21501, 427, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Sneasel (Hisuian Sneasel) - Snarl - Tutor
  (215, 21501, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Burmy (Sandy Cloak) - Struggle Bug - Level 1
  (412, 41201, 522, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Burmy (Trash Cloak) - Struggle Bug - Level 1
  (412, 41202, 522, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam (Sandy Cloak) - Struggle Bug - Level 1
  (413, 41301, 522, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam (Sandy Cloak) - Gust - Level 6
  (413, 41301, 16, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Wormadam (Sandy Cloak) - Confusion - Level 11
  (413, 41301, 93, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Wormadam (Sandy Cloak) - Silver Wind - Level 18
  (413, 41301, 318, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Wormadam (Sandy Cloak) - Energy Ball - Level 25
  (413, 41301, 412, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Wormadam (Sandy Cloak) - Earth Power - Level 25
  (413, 41301, 414, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Wormadam (Sandy Cloak) - Iron Head - Level 25
  (413, 41301, 442, 22, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Wormadam (Sandy Cloak) - Psychic - Level 34
  (413, 41301, 94, 22, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Wormadam (Sandy Cloak) - Bug Buzz - Level 43
  (413, 41301, 405, 22, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Wormadam (Sandy Cloak) - Hyper Beam - Tutor
  (413, 41301, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Wormadam (Sandy Cloak) - Psychic - Tutor
  (413, 41301, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Wormadam (Sandy Cloak) - Rest - Tutor
  (413, 41301, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Wormadam (Sandy Cloak) - Shadow Ball - Tutor
  (413, 41301, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Wormadam (Sandy Cloak) - Earth Power - Tutor
  (413, 41301, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Wormadam (Sandy Cloak) - Giga Impact - Tutor
  (413, 41301, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Wormadam (Sandy Cloak) - Stealth Rock - Tutor
  (413, 41301, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Wormadam (Sandy Cloak) - Bulldoze - Tutor
  (413, 41301, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Wormadam (Trash Cloak) - Struggle Bug - Level 1
  (413, 41302, 522, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam (Trash Cloak) - Gust - Level 6
  (413, 41302, 16, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Wormadam (Trash Cloak) - Confusion - Level 11
  (413, 41302, 93, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Wormadam (Trash Cloak) - Silver Wind - Level 18
  (413, 41302, 318, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Wormadam (Trash Cloak) - Energy Ball - Level 25
  (413, 41302, 412, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Wormadam (Trash Cloak) - Earth Power - Level 25
  (413, 41302, 414, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Wormadam (Trash Cloak) - Iron Head - Level 25
  (413, 41302, 442, 22, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Wormadam (Trash Cloak) - Psychic - Level 34
  (413, 41302, 94, 22, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Wormadam (Trash Cloak) - Bug Buzz - Level 43
  (413, 41302, 405, 22, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Wormadam (Trash Cloak) - Hyper Beam - Tutor
  (413, 41302, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Wormadam (Trash Cloak) - Psychic - Tutor
  (413, 41302, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Wormadam (Trash Cloak) - Rest - Tutor
  (413, 41302, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Wormadam (Trash Cloak) - Shadow Ball - Tutor
  (413, 41302, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Wormadam (Trash Cloak) - Giga Impact - Tutor
  (413, 41302, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Wormadam (Trash Cloak) - Flash Cannon - Tutor
  (413, 41302, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Wormadam (Trash Cloak) - Iron Head - Tutor
  (413, 41302, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Wormadam (Trash Cloak) - Stealth Rock - Tutor
  (413, 41302, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Wormadam (Trash Cloak) - Steel Beam - Tutor
  (413, 41302, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Rotom (Heat) - Thunder Shock - Level 1
  (479, 47901, 84, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Heat) - Charge Beam - Level 6
  (479, 47901, 451, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Rotom (Heat) - Hex - Level 11
  (479, 47901, 506, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Rotom (Heat) - Thunder Wave - Level 18
  (479, 47901, 86, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Rotom (Heat) - Shadow Ball - Level 25
  (479, 47901, 247, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Rotom (Heat) - Thunderbolt - Level 34
  (479, 47901, 85, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Rotom (Heat) - Thunder - Level 43
  (479, 47901, 87, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Rotom (Heat) - Thunderbolt - Tutor
  (479, 47901, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Rotom (Heat) - Swift - Tutor
  (479, 47901, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Rotom (Heat) - Rest - Tutor
  (479, 47901, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Rotom (Heat) - Shadow Ball - Tutor
  (479, 47901, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Rotom (Heat) - Dark Pulse - Tutor
  (479, 47901, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Rotom (Heat) - Charge Beam - Tutor
  (479, 47901, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Rotom (Heat) - Ominous Wind - Tutor
  (479, 47901, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Rotom (Wash) - Thunder Shock - Level 1
  (479, 47902, 84, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Wash) - Charge Beam - Level 6
  (479, 47902, 451, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Rotom (Wash) - Hex - Level 11
  (479, 47902, 506, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Rotom (Wash) - Thunder Wave - Level 18
  (479, 47902, 86, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Rotom (Wash) - Shadow Ball - Level 25
  (479, 47902, 247, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Rotom (Wash) - Thunderbolt - Level 34
  (479, 47902, 85, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Rotom (Wash) - Thunder - Level 43
  (479, 47902, 87, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Rotom (Wash) - Thunderbolt - Tutor
  (479, 47902, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Rotom (Wash) - Swift - Tutor
  (479, 47902, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Rotom (Wash) - Rest - Tutor
  (479, 47902, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Rotom (Wash) - Shadow Ball - Tutor
  (479, 47902, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Rotom (Wash) - Dark Pulse - Tutor
  (479, 47902, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Rotom (Wash) - Charge Beam - Tutor
  (479, 47902, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Rotom (Wash) - Ominous Wind - Tutor
  (479, 47902, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Rotom (Frost) - Thunder Shock - Level 1
  (479, 47903, 84, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Frost) - Charge Beam - Level 6
  (479, 47903, 451, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Rotom (Frost) - Hex - Level 11
  (479, 47903, 506, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Rotom (Frost) - Thunder Wave - Level 18
  (479, 47903, 86, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Rotom (Frost) - Shadow Ball - Level 25
  (479, 47903, 247, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Rotom (Frost) - Thunderbolt - Level 34
  (479, 47903, 85, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Rotom (Frost) - Thunder - Level 43
  (479, 47903, 87, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Rotom (Frost) - Thunderbolt - Tutor
  (479, 47903, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Rotom (Frost) - Swift - Tutor
  (479, 47903, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Rotom (Frost) - Rest - Tutor
  (479, 47903, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Rotom (Frost) - Shadow Ball - Tutor
  (479, 47903, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Rotom (Frost) - Dark Pulse - Tutor
  (479, 47903, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Rotom (Frost) - Charge Beam - Tutor
  (479, 47903, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Rotom (Frost) - Ominous Wind - Tutor
  (479, 47903, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Rotom (Fan) - Thunder Shock - Level 1
  (479, 47904, 84, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Fan) - Charge Beam - Level 6
  (479, 47904, 451, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Rotom (Fan) - Hex - Level 11
  (479, 47904, 506, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Rotom (Fan) - Thunder Wave - Level 18
  (479, 47904, 86, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Rotom (Fan) - Shadow Ball - Level 25
  (479, 47904, 247, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Rotom (Fan) - Thunderbolt - Level 34
  (479, 47904, 85, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Rotom (Fan) - Thunder - Level 43
  (479, 47904, 87, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Rotom (Fan) - Thunderbolt - Tutor
  (479, 47904, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Rotom (Fan) - Swift - Tutor
  (479, 47904, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Rotom (Fan) - Rest - Tutor
  (479, 47904, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Rotom (Fan) - Shadow Ball - Tutor
  (479, 47904, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Rotom (Fan) - Dark Pulse - Tutor
  (479, 47904, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Rotom (Fan) - Charge Beam - Tutor
  (479, 47904, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Rotom (Fan) - Ominous Wind - Tutor
  (479, 47904, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Rotom (Mow) - Thunder Shock - Level 1
  (479, 47905, 84, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Mow) - Charge Beam - Level 6
  (479, 47905, 451, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Rotom (Mow) - Hex - Level 11
  (479, 47905, 506, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Rotom (Mow) - Thunder Wave - Level 18
  (479, 47905, 86, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Rotom (Mow) - Shadow Ball - Level 25
  (479, 47905, 247, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Rotom (Mow) - Thunderbolt - Level 34
  (479, 47905, 85, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Rotom (Mow) - Thunder - Level 43
  (479, 47905, 87, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Rotom (Mow) - Thunderbolt - Tutor
  (479, 47905, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Rotom (Mow) - Swift - Tutor
  (479, 47905, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Rotom (Mow) - Rest - Tutor
  (479, 47905, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Rotom (Mow) - Shadow Ball - Tutor
  (479, 47905, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Rotom (Mow) - Dark Pulse - Tutor
  (479, 47905, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Rotom (Mow) - Charge Beam - Tutor
  (479, 47905, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Rotom (Mow) - Ominous Wind - Tutor
  (479, 47905, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Dialga (Origin Forme) - Twister - Level 1
  (483, 48301, 239, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dialga (Origin Forme) - Ancient Power - Level 6
  (483, 48301, 246, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Dialga (Origin Forme) - Slash - Level 12
  (483, 48301, 163, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Dialga (Origin Forme) - Dragon Claw - Level 19
  (483, 48301, 337, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Dialga (Origin Forme) - Power Gem - Level 27
  (483, 48301, 408, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Dialga (Origin Forme) - Dragon Pulse - Level 36
  (483, 48301, 406, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Dialga (Origin Forme) - Earth Power - Level 42
  (483, 48301, 414, 22, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Dialga (Origin Forme) - Iron Tail - Level 47
  (483, 48301, 231, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Dialga (Origin Forme) - Flash Cannon - Level 55
  (483, 48301, 430, 22, NULL, 1, 55, NULL, NULL, NULL, 9),
  -- Dialga (Origin Forme) - Roar of Time - Level 60
  (483, 48301, 459, 22, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Dialga (Origin Forme) - Flamethrower - Tutor
  (483, 48301, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Dialga (Origin Forme) - Ice Beam - Tutor
  (483, 48301, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Dialga (Origin Forme) - Hyper Beam - Tutor
  (483, 48301, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Dialga (Origin Forme) - Thunderbolt - Tutor
  (483, 48301, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Dialga (Origin Forme) - Swift - Tutor
  (483, 48301, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Dialga (Origin Forme) - Rest - Tutor
  (483, 48301, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Dialga (Origin Forme) - Rock Slide - Tutor
  (483, 48301, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Dialga (Origin Forme) - Outrage - Tutor
  (483, 48301, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Dialga (Origin Forme) - Iron Tail - Tutor
  (483, 48301, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Dialga (Origin Forme) - Rock Smash - Tutor
  (483, 48301, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Dialga (Origin Forme) - Aerial Ace - Tutor
  (483, 48301, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Dialga (Origin Forme) - Bulk Up - Tutor
  (483, 48301, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Dialga (Origin Forme) - Earth Power - Tutor
  (483, 48301, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Dialga (Origin Forme) - Giga Impact - Tutor
  (483, 48301, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Dialga (Origin Forme) - Shadow Claw - Tutor
  (483, 48301, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Dialga (Origin Forme) - Flash Cannon - Tutor
  (483, 48301, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Dialga (Origin Forme) - Draco Meteor - Tutor
  (483, 48301, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Dialga (Origin Forme) - Iron Head - Tutor
  (483, 48301, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Dialga (Origin Forme) - Stone Edge - Tutor
  (483, 48301, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Dialga (Origin Forme) - Stealth Rock - Tutor
  (483, 48301, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Dialga (Origin Forme) - Bulldoze - Tutor
  (483, 48301, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Dialga (Origin Forme) - Steel Beam - Tutor
  (483, 48301, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Palkia (Origin Forme) - Twister - Level 1
  (484, 48401, 239, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Palkia (Origin Forme) - Ancient Power - Level 6
  (484, 48401, 246, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Palkia (Origin Forme) - Slash - Level 12
  (484, 48401, 163, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Palkia (Origin Forme) - Dragon Claw - Level 19
  (484, 48401, 337, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Palkia (Origin Forme) - Power Gem - Level 27
  (484, 48401, 408, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Palkia (Origin Forme) - Dragon Pulse - Level 36
  (484, 48401, 406, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Palkia (Origin Forme) - Earth Power - Level 42
  (484, 48401, 414, 22, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Palkia (Origin Forme) - Aqua Tail - Level 47
  (484, 48401, 401, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Palkia (Origin Forme) - Hydro Pump - Level 55
  (484, 48401, 56, 22, NULL, 1, 55, NULL, NULL, NULL, 9),
  -- Palkia (Origin Forme) - Spacial Rend - Level 60
  (484, 48401, 460, 22, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Palkia (Origin Forme) - Flamethrower - Tutor
  (484, 48401, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Palkia (Origin Forme) - Ice Beam - Tutor
  (484, 48401, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Palkia (Origin Forme) - Hyper Beam - Tutor
  (484, 48401, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Palkia (Origin Forme) - Thunderbolt - Tutor
  (484, 48401, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Palkia (Origin Forme) - Swift - Tutor
  (484, 48401, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Palkia (Origin Forme) - Rest - Tutor
  (484, 48401, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Palkia (Origin Forme) - Rock Slide - Tutor
  (484, 48401, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Palkia (Origin Forme) - Outrage - Tutor
  (484, 48401, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Palkia (Origin Forme) - Rock Smash - Tutor
  (484, 48401, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Palkia (Origin Forme) - Aerial Ace - Tutor
  (484, 48401, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Palkia (Origin Forme) - Bulk Up - Tutor
  (484, 48401, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Palkia (Origin Forme) - Water Pulse - Tutor
  (484, 48401, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Palkia (Origin Forme) - Aqua Tail - Tutor
  (484, 48401, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Palkia (Origin Forme) - Earth Power - Tutor
  (484, 48401, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Palkia (Origin Forme) - Giga Impact - Tutor
  (484, 48401, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Palkia (Origin Forme) - Shadow Claw - Tutor
  (484, 48401, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Palkia (Origin Forme) - Draco Meteor - Tutor
  (484, 48401, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Palkia (Origin Forme) - Stone Edge - Tutor
  (484, 48401, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Palkia (Origin Forme) - Bulldoze - Tutor
  (484, 48401, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Giratina (Origin) - Shadow Sneak - Level 1
  (487, 48701, 425, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Giratina (Origin) - Ancient Power - Level 6
  (487, 48701, 246, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Giratina (Origin) - Hex - Level 12
  (487, 48701, 506, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Giratina (Origin) - Shadow Claw - Level 19
  (487, 48701, 421, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Giratina (Origin) - Aura Sphere - Level 27
  (487, 48701, 396, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Giratina (Origin) - Shadow Ball - Level 30
  (487, 48701, 247, 22, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Giratina (Origin) - Dragon Claw - Level 36
  (487, 48701, 337, 22, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Giratina (Origin) - Dragon Pulse - Level 42
  (487, 48701, 406, 22, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Giratina (Origin) - Earth Power - Level 55
  (487, 48701, 414, 22, NULL, 1, 55, NULL, NULL, NULL, 9),
  -- Giratina (Origin) - Shadow Force - Level 60
  (487, 48701, 467, 22, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Giratina (Origin) - Hyper Beam - Tutor
  (487, 48701, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Giratina (Origin) - Thunderbolt - Tutor
  (487, 48701, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Giratina (Origin) - Psychic - Tutor
  (487, 48701, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Giratina (Origin) - Swift - Tutor
  (487, 48701, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Giratina (Origin) - Rest - Tutor
  (487, 48701, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Giratina (Origin) - Icy Wind - Tutor
  (487, 48701, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Giratina (Origin) - Outrage - Tutor
  (487, 48701, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Giratina (Origin) - Iron Tail - Tutor
  (487, 48701, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Giratina (Origin) - Shadow Ball - Tutor
  (487, 48701, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Giratina (Origin) - Rock Smash - Tutor
  (487, 48701, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Giratina (Origin) - Aerial Ace - Tutor
  (487, 48701, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Giratina (Origin) - Calm Mind - Tutor
  (487, 48701, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Giratina (Origin) - Dark Pulse - Tutor
  (487, 48701, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Giratina (Origin) - Aqua Tail - Tutor
  (487, 48701, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Giratina (Origin) - Energy Ball - Tutor
  (487, 48701, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Giratina (Origin) - Earth Power - Tutor
  (487, 48701, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Giratina (Origin) - Giga Impact - Tutor
  (487, 48701, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Giratina (Origin) - Shadow Claw - Tutor
  (487, 48701, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Giratina (Origin) - Draco Meteor - Tutor
  (487, 48701, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Giratina (Origin) - Iron Head - Tutor
  (487, 48701, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Giratina (Origin) - Stone Edge - Tutor
  (487, 48701, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Giratina (Origin) - Charge Beam - Tutor
  (487, 48701, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Giratina (Origin) - Ominous Wind - Tutor
  (487, 48701, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Giratina (Origin) - Bulldoze - Tutor
  (487, 48701, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Shaymin (Sky) - Leafage - Level 1
  (492, 49201, 670, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shaymin (Sky) - Quick Attack - Level 6
  (492, 49201, 98, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Shaymin (Sky) - Sleep Powder - Level 12
  (492, 49201, 79, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Shaymin (Sky) - Air Slash - Level 19
  (492, 49201, 403, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Shaymin (Sky) - Recover - Level 27
  (492, 49201, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Shaymin (Sky) - Energy Ball - Level 36
  (492, 49201, 412, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Shaymin (Sky) - Earth Power - Level 46
  (492, 49201, 414, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Shaymin (Sky) - Seed Flare - Level 57
  (492, 49201, 465, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Shaymin (Sky) - Hyper Beam - Tutor
  (492, 49201, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Shaymin (Sky) - Psychic - Tutor
  (492, 49201, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Shaymin (Sky) - Swift - Tutor
  (492, 49201, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Shaymin (Sky) - Rest - Tutor
  (492, 49201, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Shaymin (Sky) - Aerial Ace - Tutor
  (492, 49201, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Shaymin (Sky) - Magical Leaf - Tutor
  (492, 49201, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Shaymin (Sky) - Energy Ball - Tutor
  (492, 49201, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Shaymin (Sky) - Earth Power - Tutor
  (492, 49201, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Shaymin (Sky) - Giga Impact - Tutor
  (492, 49201, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Shaymin (Sky) - Zen Headbutt - Tutor
  (492, 49201, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Shaymin (Sky) - Ominous Wind - Tutor
  (492, 49201, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Shaymin (Sky) - Play Rough - Tutor
  (492, 49201, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Shaymin (Sky) - Dazzling Gleam - Tutor
  (492, 49201, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Shaymin (Sky) - Baby-Doll Eyes - Tutor
  (492, 49201, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus (Fighting) - Quick Attack - Level 1
  (493, 49301, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus (Fighting) - Confusion - Level 6
  (493, 49301, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Arceus (Fighting) - Ancient Power - Level 12
  (493, 49301, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Arceus (Fighting) - Calm Mind - Level 19
  (493, 49301, 347, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Arceus (Fighting) - Recover - Level 27
  (493, 49301, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Arceus (Fighting) - Extrasensory - Level 36
  (493, 49301, 326, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Arceus (Fighting) - Judgment - Level 46
  (493, 49301, 449, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Arceus (Fighting) - Hyper Beam - Level 57
  (493, 49301, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Arceus (Fighting) - Flamethrower - Tutor
  (493, 49301, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Arceus (Fighting) - Ice Beam - Tutor
  (493, 49301, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arceus (Fighting) - Hyper Beam - Tutor
  (493, 49301, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arceus (Fighting) - Thunderbolt - Tutor
  (493, 49301, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arceus (Fighting) - Psychic - Tutor
  (493, 49301, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arceus (Fighting) - Swift - Tutor
  (493, 49301, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arceus (Fighting) - Rest - Tutor
  (493, 49301, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arceus (Fighting) - Rock Slide - Tutor
  (493, 49301, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arceus (Fighting) - Sludge Bomb - Tutor
  (493, 49301, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arceus (Fighting) - Icy Wind - Tutor
  (493, 49301, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arceus (Fighting) - Outrage - Tutor
  (493, 49301, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arceus (Fighting) - Iron Tail - Tutor
  (493, 49301, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arceus (Fighting) - Shadow Ball - Tutor
  (493, 49301, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arceus (Fighting) - Rock Smash - Tutor
  (493, 49301, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus (Fighting) - Aerial Ace - Tutor
  (493, 49301, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arceus (Fighting) - Calm Mind - Tutor
  (493, 49301, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arceus (Fighting) - Water Pulse - Tutor
  (493, 49301, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arceus (Fighting) - Poison Jab - Tutor
  (493, 49301, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arceus (Fighting) - Dark Pulse - Tutor
  (493, 49301, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Arceus (Fighting) - Aqua Tail - Tutor
  (493, 49301, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Arceus (Fighting) - X-Scissor - Tutor
  (493, 49301, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Arceus (Fighting) - Energy Ball - Tutor
  (493, 49301, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Arceus (Fighting) - Earth Power - Tutor
  (493, 49301, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Arceus (Fighting) - Giga Impact - Tutor
  (493, 49301, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Arceus (Fighting) - Shadow Claw - Tutor
  (493, 49301, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Arceus (Fighting) - Zen Headbutt - Tutor
  (493, 49301, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Arceus (Fighting) - Flash Cannon - Tutor
  (493, 49301, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Arceus (Fighting) - Draco Meteor - Tutor
  (493, 49301, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Arceus (Fighting) - Iron Head - Tutor
  (493, 49301, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Arceus (Fighting) - Stone Edge - Tutor
  (493, 49301, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Arceus (Fighting) - Stealth Rock - Tutor
  (493, 49301, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Arceus (Fighting) - Charge Beam - Tutor
  (493, 49301, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Arceus (Fighting) - Ominous Wind - Tutor
  (493, 49301, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Arceus (Fighting) - Bulldoze - Tutor
  (493, 49301, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 42),
  -- Arceus (Fighting) - Snarl - Tutor
  (493, 49301, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 43),
  -- Arceus (Fighting) - Mystical Fire - Tutor
  (493, 49301, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 44),
  -- Arceus (Fighting) - Dazzling Gleam - Tutor
  (493, 49301, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 45),
  -- Arceus (Fighting) - Steel Beam - Tutor
  (493, 49301, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 46),
  -- Arceus (Flying) - Quick Attack - Level 1
  (493, 49302, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus (Flying) - Confusion - Level 6
  (493, 49302, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Arceus (Flying) - Ancient Power - Level 12
  (493, 49302, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Arceus (Flying) - Calm Mind - Level 19
  (493, 49302, 347, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Arceus (Flying) - Recover - Level 27
  (493, 49302, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Arceus (Flying) - Extrasensory - Level 36
  (493, 49302, 326, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Arceus (Flying) - Judgment - Level 46
  (493, 49302, 449, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Arceus (Flying) - Hyper Beam - Level 57
  (493, 49302, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Arceus (Flying) - Flamethrower - Tutor
  (493, 49302, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Arceus (Flying) - Ice Beam - Tutor
  (493, 49302, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arceus (Flying) - Hyper Beam - Tutor
  (493, 49302, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arceus (Flying) - Thunderbolt - Tutor
  (493, 49302, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arceus (Flying) - Psychic - Tutor
  (493, 49302, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arceus (Flying) - Swift - Tutor
  (493, 49302, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arceus (Flying) - Rest - Tutor
  (493, 49302, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arceus (Flying) - Rock Slide - Tutor
  (493, 49302, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arceus (Flying) - Sludge Bomb - Tutor
  (493, 49302, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arceus (Flying) - Icy Wind - Tutor
  (493, 49302, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arceus (Flying) - Outrage - Tutor
  (493, 49302, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arceus (Flying) - Iron Tail - Tutor
  (493, 49302, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arceus (Flying) - Shadow Ball - Tutor
  (493, 49302, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arceus (Flying) - Rock Smash - Tutor
  (493, 49302, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus (Flying) - Aerial Ace - Tutor
  (493, 49302, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arceus (Flying) - Calm Mind - Tutor
  (493, 49302, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arceus (Flying) - Water Pulse - Tutor
  (493, 49302, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arceus (Flying) - Poison Jab - Tutor
  (493, 49302, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arceus (Flying) - Dark Pulse - Tutor
  (493, 49302, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Arceus (Flying) - Aqua Tail - Tutor
  (493, 49302, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Arceus (Flying) - X-Scissor - Tutor
  (493, 49302, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Arceus (Flying) - Energy Ball - Tutor
  (493, 49302, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Arceus (Flying) - Earth Power - Tutor
  (493, 49302, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Arceus (Flying) - Giga Impact - Tutor
  (493, 49302, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Arceus (Flying) - Shadow Claw - Tutor
  (493, 49302, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Arceus (Flying) - Zen Headbutt - Tutor
  (493, 49302, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Arceus (Flying) - Flash Cannon - Tutor
  (493, 49302, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Arceus (Flying) - Draco Meteor - Tutor
  (493, 49302, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Arceus (Flying) - Iron Head - Tutor
  (493, 49302, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Arceus (Flying) - Stone Edge - Tutor
  (493, 49302, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Arceus (Flying) - Stealth Rock - Tutor
  (493, 49302, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Arceus (Flying) - Charge Beam - Tutor
  (493, 49302, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Arceus (Flying) - Ominous Wind - Tutor
  (493, 49302, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Arceus (Flying) - Bulldoze - Tutor
  (493, 49302, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 42),
  -- Arceus (Flying) - Snarl - Tutor
  (493, 49302, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 43),
  -- Arceus (Flying) - Mystical Fire - Tutor
  (493, 49302, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 44),
  -- Arceus (Flying) - Dazzling Gleam - Tutor
  (493, 49302, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 45),
  -- Arceus (Flying) - Steel Beam - Tutor
  (493, 49302, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 46),
  -- Arceus (Poison) - Quick Attack - Level 1
  (493, 49303, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus (Poison) - Confusion - Level 6
  (493, 49303, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Arceus (Poison) - Ancient Power - Level 12
  (493, 49303, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Arceus (Poison) - Calm Mind - Level 19
  (493, 49303, 347, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Arceus (Poison) - Recover - Level 27
  (493, 49303, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Arceus (Poison) - Extrasensory - Level 36
  (493, 49303, 326, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Arceus (Poison) - Judgment - Level 46
  (493, 49303, 449, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Arceus (Poison) - Hyper Beam - Level 57
  (493, 49303, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Arceus (Poison) - Flamethrower - Tutor
  (493, 49303, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Arceus (Poison) - Ice Beam - Tutor
  (493, 49303, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arceus (Poison) - Hyper Beam - Tutor
  (493, 49303, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arceus (Poison) - Thunderbolt - Tutor
  (493, 49303, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arceus (Poison) - Psychic - Tutor
  (493, 49303, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arceus (Poison) - Swift - Tutor
  (493, 49303, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arceus (Poison) - Rest - Tutor
  (493, 49303, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arceus (Poison) - Rock Slide - Tutor
  (493, 49303, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arceus (Poison) - Sludge Bomb - Tutor
  (493, 49303, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arceus (Poison) - Icy Wind - Tutor
  (493, 49303, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arceus (Poison) - Outrage - Tutor
  (493, 49303, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arceus (Poison) - Iron Tail - Tutor
  (493, 49303, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arceus (Poison) - Shadow Ball - Tutor
  (493, 49303, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arceus (Poison) - Rock Smash - Tutor
  (493, 49303, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus (Poison) - Aerial Ace - Tutor
  (493, 49303, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arceus (Poison) - Calm Mind - Tutor
  (493, 49303, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arceus (Poison) - Water Pulse - Tutor
  (493, 49303, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arceus (Poison) - Poison Jab - Tutor
  (493, 49303, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arceus (Poison) - Dark Pulse - Tutor
  (493, 49303, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Arceus (Poison) - Aqua Tail - Tutor
  (493, 49303, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Arceus (Poison) - X-Scissor - Tutor
  (493, 49303, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Arceus (Poison) - Energy Ball - Tutor
  (493, 49303, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Arceus (Poison) - Earth Power - Tutor
  (493, 49303, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Arceus (Poison) - Giga Impact - Tutor
  (493, 49303, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Arceus (Poison) - Shadow Claw - Tutor
  (493, 49303, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Arceus (Poison) - Zen Headbutt - Tutor
  (493, 49303, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Arceus (Poison) - Flash Cannon - Tutor
  (493, 49303, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Arceus (Poison) - Draco Meteor - Tutor
  (493, 49303, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Arceus (Poison) - Iron Head - Tutor
  (493, 49303, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Arceus (Poison) - Stone Edge - Tutor
  (493, 49303, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Arceus (Poison) - Stealth Rock - Tutor
  (493, 49303, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Arceus (Poison) - Charge Beam - Tutor
  (493, 49303, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Arceus (Poison) - Ominous Wind - Tutor
  (493, 49303, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Arceus (Poison) - Bulldoze - Tutor
  (493, 49303, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 42),
  -- Arceus (Poison) - Snarl - Tutor
  (493, 49303, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 43),
  -- Arceus (Poison) - Mystical Fire - Tutor
  (493, 49303, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 44),
  -- Arceus (Poison) - Dazzling Gleam - Tutor
  (493, 49303, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 45),
  -- Arceus (Poison) - Steel Beam - Tutor
  (493, 49303, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 46),
  -- Arceus (Ground) - Quick Attack - Level 1
  (493, 49304, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus (Ground) - Confusion - Level 6
  (493, 49304, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Arceus (Ground) - Ancient Power - Level 12
  (493, 49304, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Arceus (Ground) - Calm Mind - Level 19
  (493, 49304, 347, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Arceus (Ground) - Recover - Level 27
  (493, 49304, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Arceus (Ground) - Extrasensory - Level 36
  (493, 49304, 326, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Arceus (Ground) - Judgment - Level 46
  (493, 49304, 449, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Arceus (Ground) - Hyper Beam - Level 57
  (493, 49304, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Arceus (Ground) - Flamethrower - Tutor
  (493, 49304, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Arceus (Ground) - Ice Beam - Tutor
  (493, 49304, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arceus (Ground) - Hyper Beam - Tutor
  (493, 49304, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arceus (Ground) - Thunderbolt - Tutor
  (493, 49304, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arceus (Ground) - Psychic - Tutor
  (493, 49304, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arceus (Ground) - Swift - Tutor
  (493, 49304, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arceus (Ground) - Rest - Tutor
  (493, 49304, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arceus (Ground) - Rock Slide - Tutor
  (493, 49304, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arceus (Ground) - Sludge Bomb - Tutor
  (493, 49304, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arceus (Ground) - Icy Wind - Tutor
  (493, 49304, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arceus (Ground) - Outrage - Tutor
  (493, 49304, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arceus (Ground) - Iron Tail - Tutor
  (493, 49304, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arceus (Ground) - Shadow Ball - Tutor
  (493, 49304, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arceus (Ground) - Rock Smash - Tutor
  (493, 49304, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus (Ground) - Aerial Ace - Tutor
  (493, 49304, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arceus (Ground) - Calm Mind - Tutor
  (493, 49304, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arceus (Ground) - Water Pulse - Tutor
  (493, 49304, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arceus (Ground) - Poison Jab - Tutor
  (493, 49304, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arceus (Ground) - Dark Pulse - Tutor
  (493, 49304, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Arceus (Ground) - Aqua Tail - Tutor
  (493, 49304, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Arceus (Ground) - X-Scissor - Tutor
  (493, 49304, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Arceus (Ground) - Energy Ball - Tutor
  (493, 49304, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Arceus (Ground) - Earth Power - Tutor
  (493, 49304, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Arceus (Ground) - Giga Impact - Tutor
  (493, 49304, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Arceus (Ground) - Shadow Claw - Tutor
  (493, 49304, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Arceus (Ground) - Zen Headbutt - Tutor
  (493, 49304, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Arceus (Ground) - Flash Cannon - Tutor
  (493, 49304, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Arceus (Ground) - Draco Meteor - Tutor
  (493, 49304, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Arceus (Ground) - Iron Head - Tutor
  (493, 49304, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Arceus (Ground) - Stone Edge - Tutor
  (493, 49304, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Arceus (Ground) - Stealth Rock - Tutor
  (493, 49304, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Arceus (Ground) - Charge Beam - Tutor
  (493, 49304, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Arceus (Ground) - Ominous Wind - Tutor
  (493, 49304, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Arceus (Ground) - Bulldoze - Tutor
  (493, 49304, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 42),
  -- Arceus (Ground) - Snarl - Tutor
  (493, 49304, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 43),
  -- Arceus (Ground) - Mystical Fire - Tutor
  (493, 49304, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 44),
  -- Arceus (Ground) - Dazzling Gleam - Tutor
  (493, 49304, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 45),
  -- Arceus (Ground) - Steel Beam - Tutor
  (493, 49304, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 46),
  -- Arceus (Rock) - Quick Attack - Level 1
  (493, 49305, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus (Rock) - Confusion - Level 6
  (493, 49305, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Arceus (Rock) - Ancient Power - Level 12
  (493, 49305, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Arceus (Rock) - Calm Mind - Level 19
  (493, 49305, 347, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Arceus (Rock) - Recover - Level 27
  (493, 49305, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Arceus (Rock) - Extrasensory - Level 36
  (493, 49305, 326, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Arceus (Rock) - Judgment - Level 46
  (493, 49305, 449, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Arceus (Rock) - Hyper Beam - Level 57
  (493, 49305, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Arceus (Rock) - Flamethrower - Tutor
  (493, 49305, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Arceus (Rock) - Ice Beam - Tutor
  (493, 49305, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arceus (Rock) - Hyper Beam - Tutor
  (493, 49305, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arceus (Rock) - Thunderbolt - Tutor
  (493, 49305, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arceus (Rock) - Psychic - Tutor
  (493, 49305, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arceus (Rock) - Swift - Tutor
  (493, 49305, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arceus (Rock) - Rest - Tutor
  (493, 49305, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arceus (Rock) - Rock Slide - Tutor
  (493, 49305, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arceus (Rock) - Sludge Bomb - Tutor
  (493, 49305, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arceus (Rock) - Icy Wind - Tutor
  (493, 49305, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arceus (Rock) - Outrage - Tutor
  (493, 49305, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arceus (Rock) - Iron Tail - Tutor
  (493, 49305, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arceus (Rock) - Shadow Ball - Tutor
  (493, 49305, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arceus (Rock) - Rock Smash - Tutor
  (493, 49305, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus (Rock) - Aerial Ace - Tutor
  (493, 49305, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arceus (Rock) - Calm Mind - Tutor
  (493, 49305, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arceus (Rock) - Water Pulse - Tutor
  (493, 49305, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arceus (Rock) - Poison Jab - Tutor
  (493, 49305, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arceus (Rock) - Dark Pulse - Tutor
  (493, 49305, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Arceus (Rock) - Aqua Tail - Tutor
  (493, 49305, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Arceus (Rock) - X-Scissor - Tutor
  (493, 49305, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Arceus (Rock) - Energy Ball - Tutor
  (493, 49305, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Arceus (Rock) - Earth Power - Tutor
  (493, 49305, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Arceus (Rock) - Giga Impact - Tutor
  (493, 49305, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Arceus (Rock) - Shadow Claw - Tutor
  (493, 49305, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Arceus (Rock) - Zen Headbutt - Tutor
  (493, 49305, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Arceus (Rock) - Flash Cannon - Tutor
  (493, 49305, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Arceus (Rock) - Draco Meteor - Tutor
  (493, 49305, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Arceus (Rock) - Iron Head - Tutor
  (493, 49305, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Arceus (Rock) - Stone Edge - Tutor
  (493, 49305, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Arceus (Rock) - Stealth Rock - Tutor
  (493, 49305, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Arceus (Rock) - Charge Beam - Tutor
  (493, 49305, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Arceus (Rock) - Ominous Wind - Tutor
  (493, 49305, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Arceus (Rock) - Bulldoze - Tutor
  (493, 49305, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 42),
  -- Arceus (Rock) - Snarl - Tutor
  (493, 49305, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 43),
  -- Arceus (Rock) - Mystical Fire - Tutor
  (493, 49305, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 44),
  -- Arceus (Rock) - Dazzling Gleam - Tutor
  (493, 49305, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 45),
  -- Arceus (Rock) - Steel Beam - Tutor
  (493, 49305, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 46),
  -- Arceus (Bug) - Quick Attack - Level 1
  (493, 49306, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus (Bug) - Confusion - Level 6
  (493, 49306, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Arceus (Bug) - Ancient Power - Level 12
  (493, 49306, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Arceus (Bug) - Calm Mind - Level 19
  (493, 49306, 347, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Arceus (Bug) - Recover - Level 27
  (493, 49306, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Arceus (Bug) - Extrasensory - Level 36
  (493, 49306, 326, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Arceus (Bug) - Judgment - Level 46
  (493, 49306, 449, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Arceus (Bug) - Hyper Beam - Level 57
  (493, 49306, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Arceus (Bug) - Flamethrower - Tutor
  (493, 49306, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Arceus (Bug) - Ice Beam - Tutor
  (493, 49306, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arceus (Bug) - Hyper Beam - Tutor
  (493, 49306, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arceus (Bug) - Thunderbolt - Tutor
  (493, 49306, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arceus (Bug) - Psychic - Tutor
  (493, 49306, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arceus (Bug) - Swift - Tutor
  (493, 49306, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arceus (Bug) - Rest - Tutor
  (493, 49306, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arceus (Bug) - Rock Slide - Tutor
  (493, 49306, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arceus (Bug) - Sludge Bomb - Tutor
  (493, 49306, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arceus (Bug) - Icy Wind - Tutor
  (493, 49306, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arceus (Bug) - Outrage - Tutor
  (493, 49306, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arceus (Bug) - Iron Tail - Tutor
  (493, 49306, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arceus (Bug) - Shadow Ball - Tutor
  (493, 49306, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arceus (Bug) - Rock Smash - Tutor
  (493, 49306, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus (Bug) - Aerial Ace - Tutor
  (493, 49306, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arceus (Bug) - Calm Mind - Tutor
  (493, 49306, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arceus (Bug) - Water Pulse - Tutor
  (493, 49306, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arceus (Bug) - Poison Jab - Tutor
  (493, 49306, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arceus (Bug) - Dark Pulse - Tutor
  (493, 49306, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Arceus (Bug) - Aqua Tail - Tutor
  (493, 49306, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Arceus (Bug) - X-Scissor - Tutor
  (493, 49306, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Arceus (Bug) - Energy Ball - Tutor
  (493, 49306, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Arceus (Bug) - Earth Power - Tutor
  (493, 49306, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Arceus (Bug) - Giga Impact - Tutor
  (493, 49306, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Arceus (Bug) - Shadow Claw - Tutor
  (493, 49306, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Arceus (Bug) - Zen Headbutt - Tutor
  (493, 49306, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Arceus (Bug) - Flash Cannon - Tutor
  (493, 49306, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Arceus (Bug) - Draco Meteor - Tutor
  (493, 49306, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Arceus (Bug) - Iron Head - Tutor
  (493, 49306, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Arceus (Bug) - Stone Edge - Tutor
  (493, 49306, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Arceus (Bug) - Stealth Rock - Tutor
  (493, 49306, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Arceus (Bug) - Charge Beam - Tutor
  (493, 49306, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Arceus (Bug) - Ominous Wind - Tutor
  (493, 49306, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Arceus (Bug) - Bulldoze - Tutor
  (493, 49306, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 42),
  -- Arceus (Bug) - Snarl - Tutor
  (493, 49306, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 43),
  -- Arceus (Bug) - Mystical Fire - Tutor
  (493, 49306, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 44),
  -- Arceus (Bug) - Dazzling Gleam - Tutor
  (493, 49306, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 45),
  -- Arceus (Bug) - Steel Beam - Tutor
  (493, 49306, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 46),
  -- Arceus (Ghost) - Quick Attack - Level 1
  (493, 49307, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus (Ghost) - Confusion - Level 6
  (493, 49307, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Arceus (Ghost) - Ancient Power - Level 12
  (493, 49307, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Arceus (Ghost) - Calm Mind - Level 19
  (493, 49307, 347, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Arceus (Ghost) - Recover - Level 27
  (493, 49307, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Arceus (Ghost) - Extrasensory - Level 36
  (493, 49307, 326, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Arceus (Ghost) - Judgment - Level 46
  (493, 49307, 449, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Arceus (Ghost) - Hyper Beam - Level 57
  (493, 49307, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Arceus (Ghost) - Flamethrower - Tutor
  (493, 49307, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Arceus (Ghost) - Ice Beam - Tutor
  (493, 49307, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arceus (Ghost) - Hyper Beam - Tutor
  (493, 49307, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arceus (Ghost) - Thunderbolt - Tutor
  (493, 49307, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arceus (Ghost) - Psychic - Tutor
  (493, 49307, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arceus (Ghost) - Swift - Tutor
  (493, 49307, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arceus (Ghost) - Rest - Tutor
  (493, 49307, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arceus (Ghost) - Rock Slide - Tutor
  (493, 49307, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arceus (Ghost) - Sludge Bomb - Tutor
  (493, 49307, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arceus (Ghost) - Icy Wind - Tutor
  (493, 49307, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arceus (Ghost) - Outrage - Tutor
  (493, 49307, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arceus (Ghost) - Iron Tail - Tutor
  (493, 49307, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arceus (Ghost) - Shadow Ball - Tutor
  (493, 49307, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arceus (Ghost) - Rock Smash - Tutor
  (493, 49307, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus (Ghost) - Aerial Ace - Tutor
  (493, 49307, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arceus (Ghost) - Calm Mind - Tutor
  (493, 49307, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arceus (Ghost) - Water Pulse - Tutor
  (493, 49307, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arceus (Ghost) - Poison Jab - Tutor
  (493, 49307, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arceus (Ghost) - Dark Pulse - Tutor
  (493, 49307, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Arceus (Ghost) - Aqua Tail - Tutor
  (493, 49307, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Arceus (Ghost) - X-Scissor - Tutor
  (493, 49307, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Arceus (Ghost) - Energy Ball - Tutor
  (493, 49307, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Arceus (Ghost) - Earth Power - Tutor
  (493, 49307, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Arceus (Ghost) - Giga Impact - Tutor
  (493, 49307, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Arceus (Ghost) - Shadow Claw - Tutor
  (493, 49307, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Arceus (Ghost) - Zen Headbutt - Tutor
  (493, 49307, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Arceus (Ghost) - Flash Cannon - Tutor
  (493, 49307, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Arceus (Ghost) - Draco Meteor - Tutor
  (493, 49307, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Arceus (Ghost) - Iron Head - Tutor
  (493, 49307, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Arceus (Ghost) - Stone Edge - Tutor
  (493, 49307, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Arceus (Ghost) - Stealth Rock - Tutor
  (493, 49307, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Arceus (Ghost) - Charge Beam - Tutor
  (493, 49307, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Arceus (Ghost) - Ominous Wind - Tutor
  (493, 49307, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Arceus (Ghost) - Bulldoze - Tutor
  (493, 49307, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 42),
  -- Arceus (Ghost) - Snarl - Tutor
  (493, 49307, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 43),
  -- Arceus (Ghost) - Mystical Fire - Tutor
  (493, 49307, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 44),
  -- Arceus (Ghost) - Dazzling Gleam - Tutor
  (493, 49307, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 45),
  -- Arceus (Ghost) - Steel Beam - Tutor
  (493, 49307, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 46),
  -- Arceus (Steel) - Quick Attack - Level 1
  (493, 49308, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus (Steel) - Confusion - Level 6
  (493, 49308, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Arceus (Steel) - Ancient Power - Level 12
  (493, 49308, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Arceus (Steel) - Calm Mind - Level 19
  (493, 49308, 347, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Arceus (Steel) - Recover - Level 27
  (493, 49308, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Arceus (Steel) - Extrasensory - Level 36
  (493, 49308, 326, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Arceus (Steel) - Judgment - Level 46
  (493, 49308, 449, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Arceus (Steel) - Hyper Beam - Level 57
  (493, 49308, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Arceus (Steel) - Flamethrower - Tutor
  (493, 49308, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Arceus (Steel) - Ice Beam - Tutor
  (493, 49308, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arceus (Steel) - Hyper Beam - Tutor
  (493, 49308, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arceus (Steel) - Thunderbolt - Tutor
  (493, 49308, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arceus (Steel) - Psychic - Tutor
  (493, 49308, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arceus (Steel) - Swift - Tutor
  (493, 49308, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arceus (Steel) - Rest - Tutor
  (493, 49308, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arceus (Steel) - Rock Slide - Tutor
  (493, 49308, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arceus (Steel) - Sludge Bomb - Tutor
  (493, 49308, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arceus (Steel) - Icy Wind - Tutor
  (493, 49308, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arceus (Steel) - Outrage - Tutor
  (493, 49308, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arceus (Steel) - Iron Tail - Tutor
  (493, 49308, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arceus (Steel) - Shadow Ball - Tutor
  (493, 49308, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arceus (Steel) - Rock Smash - Tutor
  (493, 49308, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus (Steel) - Aerial Ace - Tutor
  (493, 49308, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arceus (Steel) - Calm Mind - Tutor
  (493, 49308, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arceus (Steel) - Water Pulse - Tutor
  (493, 49308, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arceus (Steel) - Poison Jab - Tutor
  (493, 49308, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arceus (Steel) - Dark Pulse - Tutor
  (493, 49308, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Arceus (Steel) - Aqua Tail - Tutor
  (493, 49308, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Arceus (Steel) - X-Scissor - Tutor
  (493, 49308, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Arceus (Steel) - Energy Ball - Tutor
  (493, 49308, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Arceus (Steel) - Earth Power - Tutor
  (493, 49308, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Arceus (Steel) - Giga Impact - Tutor
  (493, 49308, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Arceus (Steel) - Shadow Claw - Tutor
  (493, 49308, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Arceus (Steel) - Zen Headbutt - Tutor
  (493, 49308, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Arceus (Steel) - Flash Cannon - Tutor
  (493, 49308, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Arceus (Steel) - Draco Meteor - Tutor
  (493, 49308, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Arceus (Steel) - Iron Head - Tutor
  (493, 49308, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Arceus (Steel) - Stone Edge - Tutor
  (493, 49308, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Arceus (Steel) - Stealth Rock - Tutor
  (493, 49308, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Arceus (Steel) - Charge Beam - Tutor
  (493, 49308, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Arceus (Steel) - Ominous Wind - Tutor
  (493, 49308, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Arceus (Steel) - Bulldoze - Tutor
  (493, 49308, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 42),
  -- Arceus (Steel) - Snarl - Tutor
  (493, 49308, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 43),
  -- Arceus (Steel) - Mystical Fire - Tutor
  (493, 49308, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 44),
  -- Arceus (Steel) - Dazzling Gleam - Tutor
  (493, 49308, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 45),
  -- Arceus (Steel) - Steel Beam - Tutor
  (493, 49308, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 46),
  -- Arceus (Fire) - Quick Attack - Level 1
  (493, 49309, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus (Fire) - Confusion - Level 6
  (493, 49309, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Arceus (Fire) - Ancient Power - Level 12
  (493, 49309, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Arceus (Fire) - Calm Mind - Level 19
  (493, 49309, 347, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Arceus (Fire) - Recover - Level 27
  (493, 49309, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Arceus (Fire) - Extrasensory - Level 36
  (493, 49309, 326, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Arceus (Fire) - Judgment - Level 46
  (493, 49309, 449, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Arceus (Fire) - Hyper Beam - Level 57
  (493, 49309, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Arceus (Fire) - Flamethrower - Tutor
  (493, 49309, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Arceus (Fire) - Ice Beam - Tutor
  (493, 49309, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arceus (Fire) - Hyper Beam - Tutor
  (493, 49309, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arceus (Fire) - Thunderbolt - Tutor
  (493, 49309, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arceus (Fire) - Psychic - Tutor
  (493, 49309, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arceus (Fire) - Swift - Tutor
  (493, 49309, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arceus (Fire) - Rest - Tutor
  (493, 49309, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arceus (Fire) - Rock Slide - Tutor
  (493, 49309, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arceus (Fire) - Sludge Bomb - Tutor
  (493, 49309, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arceus (Fire) - Icy Wind - Tutor
  (493, 49309, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arceus (Fire) - Outrage - Tutor
  (493, 49309, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arceus (Fire) - Iron Tail - Tutor
  (493, 49309, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arceus (Fire) - Shadow Ball - Tutor
  (493, 49309, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arceus (Fire) - Rock Smash - Tutor
  (493, 49309, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus (Fire) - Aerial Ace - Tutor
  (493, 49309, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arceus (Fire) - Calm Mind - Tutor
  (493, 49309, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arceus (Fire) - Water Pulse - Tutor
  (493, 49309, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arceus (Fire) - Poison Jab - Tutor
  (493, 49309, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arceus (Fire) - Dark Pulse - Tutor
  (493, 49309, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Arceus (Fire) - Aqua Tail - Tutor
  (493, 49309, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Arceus (Fire) - X-Scissor - Tutor
  (493, 49309, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Arceus (Fire) - Energy Ball - Tutor
  (493, 49309, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Arceus (Fire) - Earth Power - Tutor
  (493, 49309, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Arceus (Fire) - Giga Impact - Tutor
  (493, 49309, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Arceus (Fire) - Shadow Claw - Tutor
  (493, 49309, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Arceus (Fire) - Zen Headbutt - Tutor
  (493, 49309, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Arceus (Fire) - Flash Cannon - Tutor
  (493, 49309, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Arceus (Fire) - Draco Meteor - Tutor
  (493, 49309, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Arceus (Fire) - Iron Head - Tutor
  (493, 49309, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Arceus (Fire) - Stone Edge - Tutor
  (493, 49309, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Arceus (Fire) - Stealth Rock - Tutor
  (493, 49309, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Arceus (Fire) - Charge Beam - Tutor
  (493, 49309, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Arceus (Fire) - Ominous Wind - Tutor
  (493, 49309, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Arceus (Fire) - Bulldoze - Tutor
  (493, 49309, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 42),
  -- Arceus (Fire) - Snarl - Tutor
  (493, 49309, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 43),
  -- Arceus (Fire) - Mystical Fire - Tutor
  (493, 49309, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 44),
  -- Arceus (Fire) - Dazzling Gleam - Tutor
  (493, 49309, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 45),
  -- Arceus (Fire) - Steel Beam - Tutor
  (493, 49309, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 46),
  -- Arceus (Water) - Quick Attack - Level 1
  (493, 49310, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus (Water) - Confusion - Level 6
  (493, 49310, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Arceus (Water) - Ancient Power - Level 12
  (493, 49310, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Arceus (Water) - Calm Mind - Level 19
  (493, 49310, 347, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Arceus (Water) - Recover - Level 27
  (493, 49310, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Arceus (Water) - Extrasensory - Level 36
  (493, 49310, 326, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Arceus (Water) - Judgment - Level 46
  (493, 49310, 449, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Arceus (Water) - Hyper Beam - Level 57
  (493, 49310, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Arceus (Water) - Flamethrower - Tutor
  (493, 49310, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Arceus (Water) - Ice Beam - Tutor
  (493, 49310, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arceus (Water) - Hyper Beam - Tutor
  (493, 49310, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arceus (Water) - Thunderbolt - Tutor
  (493, 49310, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arceus (Water) - Psychic - Tutor
  (493, 49310, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arceus (Water) - Swift - Tutor
  (493, 49310, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arceus (Water) - Rest - Tutor
  (493, 49310, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arceus (Water) - Rock Slide - Tutor
  (493, 49310, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arceus (Water) - Sludge Bomb - Tutor
  (493, 49310, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arceus (Water) - Icy Wind - Tutor
  (493, 49310, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arceus (Water) - Outrage - Tutor
  (493, 49310, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arceus (Water) - Iron Tail - Tutor
  (493, 49310, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arceus (Water) - Shadow Ball - Tutor
  (493, 49310, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arceus (Water) - Rock Smash - Tutor
  (493, 49310, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus (Water) - Aerial Ace - Tutor
  (493, 49310, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arceus (Water) - Calm Mind - Tutor
  (493, 49310, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arceus (Water) - Water Pulse - Tutor
  (493, 49310, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arceus (Water) - Poison Jab - Tutor
  (493, 49310, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arceus (Water) - Dark Pulse - Tutor
  (493, 49310, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Arceus (Water) - Aqua Tail - Tutor
  (493, 49310, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Arceus (Water) - X-Scissor - Tutor
  (493, 49310, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Arceus (Water) - Energy Ball - Tutor
  (493, 49310, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Arceus (Water) - Earth Power - Tutor
  (493, 49310, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Arceus (Water) - Giga Impact - Tutor
  (493, 49310, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Arceus (Water) - Shadow Claw - Tutor
  (493, 49310, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Arceus (Water) - Zen Headbutt - Tutor
  (493, 49310, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Arceus (Water) - Flash Cannon - Tutor
  (493, 49310, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Arceus (Water) - Draco Meteor - Tutor
  (493, 49310, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Arceus (Water) - Iron Head - Tutor
  (493, 49310, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Arceus (Water) - Stone Edge - Tutor
  (493, 49310, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Arceus (Water) - Stealth Rock - Tutor
  (493, 49310, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Arceus (Water) - Charge Beam - Tutor
  (493, 49310, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Arceus (Water) - Ominous Wind - Tutor
  (493, 49310, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Arceus (Water) - Bulldoze - Tutor
  (493, 49310, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 42),
  -- Arceus (Water) - Snarl - Tutor
  (493, 49310, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 43),
  -- Arceus (Water) - Mystical Fire - Tutor
  (493, 49310, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 44),
  -- Arceus (Water) - Dazzling Gleam - Tutor
  (493, 49310, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 45),
  -- Arceus (Water) - Steel Beam - Tutor
  (493, 49310, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 46),
  -- Arceus (Grass) - Quick Attack - Level 1
  (493, 49311, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus (Grass) - Confusion - Level 6
  (493, 49311, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Arceus (Grass) - Ancient Power - Level 12
  (493, 49311, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Arceus (Grass) - Calm Mind - Level 19
  (493, 49311, 347, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Arceus (Grass) - Recover - Level 27
  (493, 49311, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Arceus (Grass) - Extrasensory - Level 36
  (493, 49311, 326, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Arceus (Grass) - Judgment - Level 46
  (493, 49311, 449, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Arceus (Grass) - Hyper Beam - Level 57
  (493, 49311, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Arceus (Grass) - Flamethrower - Tutor
  (493, 49311, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Arceus (Grass) - Ice Beam - Tutor
  (493, 49311, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arceus (Grass) - Hyper Beam - Tutor
  (493, 49311, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arceus (Grass) - Thunderbolt - Tutor
  (493, 49311, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arceus (Grass) - Psychic - Tutor
  (493, 49311, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arceus (Grass) - Swift - Tutor
  (493, 49311, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arceus (Grass) - Rest - Tutor
  (493, 49311, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arceus (Grass) - Rock Slide - Tutor
  (493, 49311, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arceus (Grass) - Sludge Bomb - Tutor
  (493, 49311, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arceus (Grass) - Icy Wind - Tutor
  (493, 49311, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arceus (Grass) - Outrage - Tutor
  (493, 49311, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arceus (Grass) - Iron Tail - Tutor
  (493, 49311, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arceus (Grass) - Shadow Ball - Tutor
  (493, 49311, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arceus (Grass) - Rock Smash - Tutor
  (493, 49311, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus (Grass) - Aerial Ace - Tutor
  (493, 49311, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arceus (Grass) - Calm Mind - Tutor
  (493, 49311, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arceus (Grass) - Water Pulse - Tutor
  (493, 49311, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arceus (Grass) - Poison Jab - Tutor
  (493, 49311, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arceus (Grass) - Dark Pulse - Tutor
  (493, 49311, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Arceus (Grass) - Aqua Tail - Tutor
  (493, 49311, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Arceus (Grass) - X-Scissor - Tutor
  (493, 49311, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Arceus (Grass) - Energy Ball - Tutor
  (493, 49311, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Arceus (Grass) - Earth Power - Tutor
  (493, 49311, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Arceus (Grass) - Giga Impact - Tutor
  (493, 49311, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Arceus (Grass) - Shadow Claw - Tutor
  (493, 49311, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Arceus (Grass) - Zen Headbutt - Tutor
  (493, 49311, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Arceus (Grass) - Flash Cannon - Tutor
  (493, 49311, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Arceus (Grass) - Draco Meteor - Tutor
  (493, 49311, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Arceus (Grass) - Iron Head - Tutor
  (493, 49311, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Arceus (Grass) - Stone Edge - Tutor
  (493, 49311, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Arceus (Grass) - Stealth Rock - Tutor
  (493, 49311, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Arceus (Grass) - Charge Beam - Tutor
  (493, 49311, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Arceus (Grass) - Ominous Wind - Tutor
  (493, 49311, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Arceus (Grass) - Bulldoze - Tutor
  (493, 49311, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 42),
  -- Arceus (Grass) - Snarl - Tutor
  (493, 49311, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 43),
  -- Arceus (Grass) - Mystical Fire - Tutor
  (493, 49311, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 44),
  -- Arceus (Grass) - Dazzling Gleam - Tutor
  (493, 49311, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 45),
  -- Arceus (Grass) - Steel Beam - Tutor
  (493, 49311, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 46),
  -- Arceus (Electric) - Quick Attack - Level 1
  (493, 49312, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus (Electric) - Confusion - Level 6
  (493, 49312, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Arceus (Electric) - Ancient Power - Level 12
  (493, 49312, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Arceus (Electric) - Calm Mind - Level 19
  (493, 49312, 347, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Arceus (Electric) - Recover - Level 27
  (493, 49312, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Arceus (Electric) - Extrasensory - Level 36
  (493, 49312, 326, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Arceus (Electric) - Judgment - Level 46
  (493, 49312, 449, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Arceus (Electric) - Hyper Beam - Level 57
  (493, 49312, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Arceus (Electric) - Flamethrower - Tutor
  (493, 49312, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Arceus (Electric) - Ice Beam - Tutor
  (493, 49312, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arceus (Electric) - Hyper Beam - Tutor
  (493, 49312, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arceus (Electric) - Thunderbolt - Tutor
  (493, 49312, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arceus (Electric) - Psychic - Tutor
  (493, 49312, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arceus (Electric) - Swift - Tutor
  (493, 49312, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arceus (Electric) - Rest - Tutor
  (493, 49312, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arceus (Electric) - Rock Slide - Tutor
  (493, 49312, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arceus (Electric) - Sludge Bomb - Tutor
  (493, 49312, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arceus (Electric) - Icy Wind - Tutor
  (493, 49312, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arceus (Electric) - Outrage - Tutor
  (493, 49312, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arceus (Electric) - Iron Tail - Tutor
  (493, 49312, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arceus (Electric) - Shadow Ball - Tutor
  (493, 49312, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arceus (Electric) - Rock Smash - Tutor
  (493, 49312, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus (Electric) - Aerial Ace - Tutor
  (493, 49312, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arceus (Electric) - Calm Mind - Tutor
  (493, 49312, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arceus (Electric) - Water Pulse - Tutor
  (493, 49312, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arceus (Electric) - Poison Jab - Tutor
  (493, 49312, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arceus (Electric) - Dark Pulse - Tutor
  (493, 49312, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Arceus (Electric) - Aqua Tail - Tutor
  (493, 49312, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Arceus (Electric) - X-Scissor - Tutor
  (493, 49312, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Arceus (Electric) - Energy Ball - Tutor
  (493, 49312, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Arceus (Electric) - Earth Power - Tutor
  (493, 49312, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Arceus (Electric) - Giga Impact - Tutor
  (493, 49312, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Arceus (Electric) - Shadow Claw - Tutor
  (493, 49312, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Arceus (Electric) - Zen Headbutt - Tutor
  (493, 49312, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Arceus (Electric) - Flash Cannon - Tutor
  (493, 49312, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Arceus (Electric) - Draco Meteor - Tutor
  (493, 49312, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Arceus (Electric) - Iron Head - Tutor
  (493, 49312, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Arceus (Electric) - Stone Edge - Tutor
  (493, 49312, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Arceus (Electric) - Stealth Rock - Tutor
  (493, 49312, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Arceus (Electric) - Charge Beam - Tutor
  (493, 49312, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Arceus (Electric) - Ominous Wind - Tutor
  (493, 49312, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Arceus (Electric) - Bulldoze - Tutor
  (493, 49312, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 42),
  -- Arceus (Electric) - Snarl - Tutor
  (493, 49312, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 43),
  -- Arceus (Electric) - Mystical Fire - Tutor
  (493, 49312, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 44),
  -- Arceus (Electric) - Dazzling Gleam - Tutor
  (493, 49312, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 45),
  -- Arceus (Electric) - Steel Beam - Tutor
  (493, 49312, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 46),
  -- Arceus (Psychic) - Quick Attack - Level 1
  (493, 49313, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus (Psychic) - Confusion - Level 6
  (493, 49313, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Arceus (Psychic) - Ancient Power - Level 12
  (493, 49313, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Arceus (Psychic) - Calm Mind - Level 19
  (493, 49313, 347, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Arceus (Psychic) - Recover - Level 27
  (493, 49313, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Arceus (Psychic) - Extrasensory - Level 36
  (493, 49313, 326, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Arceus (Psychic) - Judgment - Level 46
  (493, 49313, 449, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Arceus (Psychic) - Hyper Beam - Level 57
  (493, 49313, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Arceus (Psychic) - Flamethrower - Tutor
  (493, 49313, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Arceus (Psychic) - Ice Beam - Tutor
  (493, 49313, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arceus (Psychic) - Hyper Beam - Tutor
  (493, 49313, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arceus (Psychic) - Thunderbolt - Tutor
  (493, 49313, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arceus (Psychic) - Psychic - Tutor
  (493, 49313, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arceus (Psychic) - Swift - Tutor
  (493, 49313, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arceus (Psychic) - Rest - Tutor
  (493, 49313, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arceus (Psychic) - Rock Slide - Tutor
  (493, 49313, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arceus (Psychic) - Sludge Bomb - Tutor
  (493, 49313, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arceus (Psychic) - Icy Wind - Tutor
  (493, 49313, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arceus (Psychic) - Outrage - Tutor
  (493, 49313, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arceus (Psychic) - Iron Tail - Tutor
  (493, 49313, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arceus (Psychic) - Shadow Ball - Tutor
  (493, 49313, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arceus (Psychic) - Rock Smash - Tutor
  (493, 49313, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus (Psychic) - Aerial Ace - Tutor
  (493, 49313, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arceus (Psychic) - Calm Mind - Tutor
  (493, 49313, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arceus (Psychic) - Water Pulse - Tutor
  (493, 49313, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arceus (Psychic) - Poison Jab - Tutor
  (493, 49313, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arceus (Psychic) - Dark Pulse - Tutor
  (493, 49313, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Arceus (Psychic) - Aqua Tail - Tutor
  (493, 49313, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Arceus (Psychic) - X-Scissor - Tutor
  (493, 49313, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Arceus (Psychic) - Energy Ball - Tutor
  (493, 49313, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Arceus (Psychic) - Earth Power - Tutor
  (493, 49313, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Arceus (Psychic) - Giga Impact - Tutor
  (493, 49313, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Arceus (Psychic) - Shadow Claw - Tutor
  (493, 49313, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Arceus (Psychic) - Zen Headbutt - Tutor
  (493, 49313, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Arceus (Psychic) - Flash Cannon - Tutor
  (493, 49313, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Arceus (Psychic) - Draco Meteor - Tutor
  (493, 49313, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Arceus (Psychic) - Iron Head - Tutor
  (493, 49313, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Arceus (Psychic) - Stone Edge - Tutor
  (493, 49313, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Arceus (Psychic) - Stealth Rock - Tutor
  (493, 49313, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Arceus (Psychic) - Charge Beam - Tutor
  (493, 49313, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Arceus (Psychic) - Ominous Wind - Tutor
  (493, 49313, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Arceus (Psychic) - Bulldoze - Tutor
  (493, 49313, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 42),
  -- Arceus (Psychic) - Snarl - Tutor
  (493, 49313, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 43),
  -- Arceus (Psychic) - Mystical Fire - Tutor
  (493, 49313, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 44),
  -- Arceus (Psychic) - Dazzling Gleam - Tutor
  (493, 49313, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 45),
  -- Arceus (Psychic) - Steel Beam - Tutor
  (493, 49313, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 46),
  -- Arceus (Ice) - Quick Attack - Level 1
  (493, 49314, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus (Ice) - Confusion - Level 6
  (493, 49314, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Arceus (Ice) - Ancient Power - Level 12
  (493, 49314, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Arceus (Ice) - Calm Mind - Level 19
  (493, 49314, 347, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Arceus (Ice) - Recover - Level 27
  (493, 49314, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Arceus (Ice) - Extrasensory - Level 36
  (493, 49314, 326, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Arceus (Ice) - Judgment - Level 46
  (493, 49314, 449, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Arceus (Ice) - Hyper Beam - Level 57
  (493, 49314, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Arceus (Ice) - Flamethrower - Tutor
  (493, 49314, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Arceus (Ice) - Ice Beam - Tutor
  (493, 49314, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arceus (Ice) - Hyper Beam - Tutor
  (493, 49314, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arceus (Ice) - Thunderbolt - Tutor
  (493, 49314, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arceus (Ice) - Psychic - Tutor
  (493, 49314, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arceus (Ice) - Swift - Tutor
  (493, 49314, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arceus (Ice) - Rest - Tutor
  (493, 49314, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arceus (Ice) - Rock Slide - Tutor
  (493, 49314, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arceus (Ice) - Sludge Bomb - Tutor
  (493, 49314, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arceus (Ice) - Icy Wind - Tutor
  (493, 49314, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arceus (Ice) - Outrage - Tutor
  (493, 49314, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arceus (Ice) - Iron Tail - Tutor
  (493, 49314, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arceus (Ice) - Shadow Ball - Tutor
  (493, 49314, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arceus (Ice) - Rock Smash - Tutor
  (493, 49314, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus (Ice) - Aerial Ace - Tutor
  (493, 49314, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arceus (Ice) - Calm Mind - Tutor
  (493, 49314, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arceus (Ice) - Water Pulse - Tutor
  (493, 49314, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arceus (Ice) - Poison Jab - Tutor
  (493, 49314, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arceus (Ice) - Dark Pulse - Tutor
  (493, 49314, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Arceus (Ice) - Aqua Tail - Tutor
  (493, 49314, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Arceus (Ice) - X-Scissor - Tutor
  (493, 49314, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Arceus (Ice) - Energy Ball - Tutor
  (493, 49314, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Arceus (Ice) - Earth Power - Tutor
  (493, 49314, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Arceus (Ice) - Giga Impact - Tutor
  (493, 49314, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Arceus (Ice) - Shadow Claw - Tutor
  (493, 49314, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Arceus (Ice) - Zen Headbutt - Tutor
  (493, 49314, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Arceus (Ice) - Flash Cannon - Tutor
  (493, 49314, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Arceus (Ice) - Draco Meteor - Tutor
  (493, 49314, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Arceus (Ice) - Iron Head - Tutor
  (493, 49314, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Arceus (Ice) - Stone Edge - Tutor
  (493, 49314, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Arceus (Ice) - Stealth Rock - Tutor
  (493, 49314, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Arceus (Ice) - Charge Beam - Tutor
  (493, 49314, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Arceus (Ice) - Ominous Wind - Tutor
  (493, 49314, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Arceus (Ice) - Bulldoze - Tutor
  (493, 49314, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 42),
  -- Arceus (Ice) - Snarl - Tutor
  (493, 49314, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 43),
  -- Arceus (Ice) - Mystical Fire - Tutor
  (493, 49314, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 44),
  -- Arceus (Ice) - Dazzling Gleam - Tutor
  (493, 49314, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 45),
  -- Arceus (Ice) - Steel Beam - Tutor
  (493, 49314, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 46),
  -- Arceus (Dragon) - Quick Attack - Level 1
  (493, 49315, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus (Dragon) - Confusion - Level 6
  (493, 49315, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Arceus (Dragon) - Ancient Power - Level 12
  (493, 49315, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Arceus (Dragon) - Calm Mind - Level 19
  (493, 49315, 347, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Arceus (Dragon) - Recover - Level 27
  (493, 49315, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Arceus (Dragon) - Extrasensory - Level 36
  (493, 49315, 326, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Arceus (Dragon) - Judgment - Level 46
  (493, 49315, 449, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Arceus (Dragon) - Hyper Beam - Level 57
  (493, 49315, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Arceus (Dragon) - Flamethrower - Tutor
  (493, 49315, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Arceus (Dragon) - Ice Beam - Tutor
  (493, 49315, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arceus (Dragon) - Hyper Beam - Tutor
  (493, 49315, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arceus (Dragon) - Thunderbolt - Tutor
  (493, 49315, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arceus (Dragon) - Psychic - Tutor
  (493, 49315, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arceus (Dragon) - Swift - Tutor
  (493, 49315, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arceus (Dragon) - Rest - Tutor
  (493, 49315, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arceus (Dragon) - Rock Slide - Tutor
  (493, 49315, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arceus (Dragon) - Sludge Bomb - Tutor
  (493, 49315, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arceus (Dragon) - Icy Wind - Tutor
  (493, 49315, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arceus (Dragon) - Outrage - Tutor
  (493, 49315, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arceus (Dragon) - Iron Tail - Tutor
  (493, 49315, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arceus (Dragon) - Shadow Ball - Tutor
  (493, 49315, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arceus (Dragon) - Rock Smash - Tutor
  (493, 49315, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus (Dragon) - Aerial Ace - Tutor
  (493, 49315, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arceus (Dragon) - Calm Mind - Tutor
  (493, 49315, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arceus (Dragon) - Water Pulse - Tutor
  (493, 49315, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arceus (Dragon) - Poison Jab - Tutor
  (493, 49315, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arceus (Dragon) - Dark Pulse - Tutor
  (493, 49315, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Arceus (Dragon) - Aqua Tail - Tutor
  (493, 49315, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Arceus (Dragon) - X-Scissor - Tutor
  (493, 49315, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Arceus (Dragon) - Energy Ball - Tutor
  (493, 49315, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Arceus (Dragon) - Earth Power - Tutor
  (493, 49315, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Arceus (Dragon) - Giga Impact - Tutor
  (493, 49315, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Arceus (Dragon) - Shadow Claw - Tutor
  (493, 49315, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Arceus (Dragon) - Zen Headbutt - Tutor
  (493, 49315, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Arceus (Dragon) - Flash Cannon - Tutor
  (493, 49315, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Arceus (Dragon) - Draco Meteor - Tutor
  (493, 49315, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Arceus (Dragon) - Iron Head - Tutor
  (493, 49315, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Arceus (Dragon) - Stone Edge - Tutor
  (493, 49315, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Arceus (Dragon) - Stealth Rock - Tutor
  (493, 49315, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Arceus (Dragon) - Charge Beam - Tutor
  (493, 49315, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Arceus (Dragon) - Ominous Wind - Tutor
  (493, 49315, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Arceus (Dragon) - Bulldoze - Tutor
  (493, 49315, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 42),
  -- Arceus (Dragon) - Snarl - Tutor
  (493, 49315, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 43),
  -- Arceus (Dragon) - Mystical Fire - Tutor
  (493, 49315, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 44),
  -- Arceus (Dragon) - Dazzling Gleam - Tutor
  (493, 49315, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 45),
  -- Arceus (Dragon) - Steel Beam - Tutor
  (493, 49315, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 46),
  -- Arceus (Dark) - Quick Attack - Level 1
  (493, 49316, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus (Dark) - Confusion - Level 6
  (493, 49316, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Arceus (Dark) - Ancient Power - Level 12
  (493, 49316, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Arceus (Dark) - Calm Mind - Level 19
  (493, 49316, 347, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Arceus (Dark) - Recover - Level 27
  (493, 49316, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Arceus (Dark) - Extrasensory - Level 36
  (493, 49316, 326, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Arceus (Dark) - Judgment - Level 46
  (493, 49316, 449, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Arceus (Dark) - Hyper Beam - Level 57
  (493, 49316, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Arceus (Dark) - Flamethrower - Tutor
  (493, 49316, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Arceus (Dark) - Ice Beam - Tutor
  (493, 49316, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arceus (Dark) - Hyper Beam - Tutor
  (493, 49316, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arceus (Dark) - Thunderbolt - Tutor
  (493, 49316, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arceus (Dark) - Psychic - Tutor
  (493, 49316, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arceus (Dark) - Swift - Tutor
  (493, 49316, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arceus (Dark) - Rest - Tutor
  (493, 49316, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arceus (Dark) - Rock Slide - Tutor
  (493, 49316, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arceus (Dark) - Sludge Bomb - Tutor
  (493, 49316, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arceus (Dark) - Icy Wind - Tutor
  (493, 49316, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arceus (Dark) - Outrage - Tutor
  (493, 49316, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arceus (Dark) - Iron Tail - Tutor
  (493, 49316, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arceus (Dark) - Shadow Ball - Tutor
  (493, 49316, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arceus (Dark) - Rock Smash - Tutor
  (493, 49316, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus (Dark) - Aerial Ace - Tutor
  (493, 49316, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arceus (Dark) - Calm Mind - Tutor
  (493, 49316, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arceus (Dark) - Water Pulse - Tutor
  (493, 49316, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arceus (Dark) - Poison Jab - Tutor
  (493, 49316, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arceus (Dark) - Dark Pulse - Tutor
  (493, 49316, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Arceus (Dark) - Aqua Tail - Tutor
  (493, 49316, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Arceus (Dark) - X-Scissor - Tutor
  (493, 49316, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Arceus (Dark) - Energy Ball - Tutor
  (493, 49316, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Arceus (Dark) - Earth Power - Tutor
  (493, 49316, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Arceus (Dark) - Giga Impact - Tutor
  (493, 49316, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Arceus (Dark) - Shadow Claw - Tutor
  (493, 49316, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Arceus (Dark) - Zen Headbutt - Tutor
  (493, 49316, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Arceus (Dark) - Flash Cannon - Tutor
  (493, 49316, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Arceus (Dark) - Draco Meteor - Tutor
  (493, 49316, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Arceus (Dark) - Iron Head - Tutor
  (493, 49316, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Arceus (Dark) - Stone Edge - Tutor
  (493, 49316, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Arceus (Dark) - Stealth Rock - Tutor
  (493, 49316, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Arceus (Dark) - Charge Beam - Tutor
  (493, 49316, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Arceus (Dark) - Ominous Wind - Tutor
  (493, 49316, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Arceus (Dark) - Bulldoze - Tutor
  (493, 49316, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 42),
  -- Arceus (Dark) - Snarl - Tutor
  (493, 49316, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 43),
  -- Arceus (Dark) - Mystical Fire - Tutor
  (493, 49316, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 44),
  -- Arceus (Dark) - Dazzling Gleam - Tutor
  (493, 49316, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 45),
  -- Arceus (Dark) - Steel Beam - Tutor
  (493, 49316, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 46),
  -- Arceus (Fairy) - Quick Attack - Level 1
  (493, 49317, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus (Fairy) - Confusion - Level 6
  (493, 49317, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Arceus (Fairy) - Ancient Power - Level 12
  (493, 49317, 246, 22, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Arceus (Fairy) - Calm Mind - Level 19
  (493, 49317, 347, 22, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Arceus (Fairy) - Recover - Level 27
  (493, 49317, 105, 22, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Arceus (Fairy) - Extrasensory - Level 36
  (493, 49317, 326, 22, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Arceus (Fairy) - Judgment - Level 46
  (493, 49317, 449, 22, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Arceus (Fairy) - Hyper Beam - Level 57
  (493, 49317, 63, 22, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Arceus (Fairy) - Flamethrower - Tutor
  (493, 49317, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Arceus (Fairy) - Ice Beam - Tutor
  (493, 49317, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Arceus (Fairy) - Hyper Beam - Tutor
  (493, 49317, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Arceus (Fairy) - Thunderbolt - Tutor
  (493, 49317, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Arceus (Fairy) - Psychic - Tutor
  (493, 49317, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Arceus (Fairy) - Swift - Tutor
  (493, 49317, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Arceus (Fairy) - Rest - Tutor
  (493, 49317, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Arceus (Fairy) - Rock Slide - Tutor
  (493, 49317, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Arceus (Fairy) - Sludge Bomb - Tutor
  (493, 49317, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Arceus (Fairy) - Icy Wind - Tutor
  (493, 49317, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Arceus (Fairy) - Outrage - Tutor
  (493, 49317, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Arceus (Fairy) - Iron Tail - Tutor
  (493, 49317, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Arceus (Fairy) - Shadow Ball - Tutor
  (493, 49317, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Arceus (Fairy) - Rock Smash - Tutor
  (493, 49317, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Arceus (Fairy) - Aerial Ace - Tutor
  (493, 49317, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Arceus (Fairy) - Calm Mind - Tutor
  (493, 49317, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Arceus (Fairy) - Water Pulse - Tutor
  (493, 49317, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Arceus (Fairy) - Poison Jab - Tutor
  (493, 49317, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Arceus (Fairy) - Dark Pulse - Tutor
  (493, 49317, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Arceus (Fairy) - Aqua Tail - Tutor
  (493, 49317, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Arceus (Fairy) - X-Scissor - Tutor
  (493, 49317, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Arceus (Fairy) - Energy Ball - Tutor
  (493, 49317, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Arceus (Fairy) - Earth Power - Tutor
  (493, 49317, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Arceus (Fairy) - Giga Impact - Tutor
  (493, 49317, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 32),
  -- Arceus (Fairy) - Shadow Claw - Tutor
  (493, 49317, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 33),
  -- Arceus (Fairy) - Zen Headbutt - Tutor
  (493, 49317, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 34),
  -- Arceus (Fairy) - Flash Cannon - Tutor
  (493, 49317, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 35),
  -- Arceus (Fairy) - Draco Meteor - Tutor
  (493, 49317, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 36),
  -- Arceus (Fairy) - Iron Head - Tutor
  (493, 49317, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 37),
  -- Arceus (Fairy) - Stone Edge - Tutor
  (493, 49317, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 38),
  -- Arceus (Fairy) - Stealth Rock - Tutor
  (493, 49317, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 39),
  -- Arceus (Fairy) - Charge Beam - Tutor
  (493, 49317, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 40),
  -- Arceus (Fairy) - Ominous Wind - Tutor
  (493, 49317, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 41),
  -- Arceus (Fairy) - Bulldoze - Tutor
  (493, 49317, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 42),
  -- Arceus (Fairy) - Snarl - Tutor
  (493, 49317, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 43),
  -- Arceus (Fairy) - Mystical Fire - Tutor
  (493, 49317, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 44),
  -- Arceus (Fairy) - Dazzling Gleam - Tutor
  (493, 49317, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 45),
  -- Arceus (Fairy) - Steel Beam - Tutor
  (493, 49317, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 46),
  -- Samurott (Hisuian Samurott) - Tackle - Level 1
  (503, 50301, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Samurott (Hisuian Samurott) - Aqua Jet - Level 6
  (503, 50301, 453, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Samurott (Hisuian Samurott) - Swords Dance - Level 11
  (503, 50301, 14, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Samurott (Hisuian Samurott) - Water Pulse - Level 18
  (503, 50301, 352, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Samurott (Hisuian Samurott) - Ceaseless Edge - Level 21
  (503, 50301, 845, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Samurott (Hisuian Samurott) - Slash - Level 25
  (503, 50301, 163, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Samurott (Hisuian Samurott) - Aqua Tail - Level 34
  (503, 50301, 401, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Samurott (Hisuian Samurott) - Dark Pulse - Level 40
  (503, 50301, 399, 22, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Samurott (Hisuian Samurott) - Hydro Pump - Level 43
  (503, 50301, 56, 22, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Samurott (Hisuian Samurott) - Night Slash - Evolution
  (503, 50301, 400, 22, NULL, 7, NULL, NULL, NULL, NULL, 10),
  -- Samurott (Hisuian Samurott) - Ice Beam - Tutor
  (503, 50301, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Samurott (Hisuian Samurott) - Hyper Beam - Tutor
  (503, 50301, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Samurott (Hisuian Samurott) - Focus Energy - Tutor
  (503, 50301, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Samurott (Hisuian Samurott) - Rest - Tutor
  (503, 50301, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Samurott (Hisuian Samurott) - Icy Wind - Tutor
  (503, 50301, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Samurott (Hisuian Samurott) - False Swipe - Tutor
  (503, 50301, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Samurott (Hisuian Samurott) - Megahorn - Tutor
  (503, 50301, 224, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Samurott (Hisuian Samurott) - Iron Tail - Tutor
  (503, 50301, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Samurott (Hisuian Samurott) - Rock Smash - Tutor
  (503, 50301, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Samurott (Hisuian Samurott) - Aerial Ace - Tutor
  (503, 50301, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Samurott (Hisuian Samurott) - Water Pulse - Tutor
  (503, 50301, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Samurott (Hisuian Samurott) - Poison Jab - Tutor
  (503, 50301, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Samurott (Hisuian Samurott) - Dark Pulse - Tutor
  (503, 50301, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Samurott (Hisuian Samurott) - Aqua Tail - Tutor
  (503, 50301, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Samurott (Hisuian Samurott) - X-Scissor - Tutor
  (503, 50301, 404, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Samurott (Hisuian Samurott) - Giga Impact - Tutor
  (503, 50301, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Samurott (Hisuian Samurott) - Psycho Cut - Tutor
  (503, 50301, 427, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Lilligant (Hisuian Lilligant) - Absorb - Level 1
  (549, 54901, 71, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lilligant (Hisuian Lilligant) - Leafage - Level 5
  (549, 54901, 670, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Lilligant (Hisuian Lilligant) - Stun Spore - Level 9
  (549, 54901, 78, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Lilligant (Hisuian Lilligant) - Poison Powder - Level 15
  (549, 54901, 77, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Lilligant (Hisuian Lilligant) - Energy Ball - Level 21
  (549, 54901, 412, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Lilligant (Hisuian Lilligant) - Sleep Powder - Level 29
  (549, 54901, 79, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Lilligant (Hisuian Lilligant) - Drain Punch - Level 34
  (549, 54901, 409, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Lilligant (Hisuian Lilligant) - Recover - Level 37
  (549, 54901, 105, 22, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Lilligant (Hisuian Lilligant) - Leaf Blade - Level 37
  (549, 54901, 348, 22, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Lilligant (Hisuian Lilligant) - Victory Dance - Level 42
  (549, 54901, 837, 22, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Lilligant (Hisuian Lilligant) - Leaf Storm - Level 47
  (549, 54901, 437, 22, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Lilligant (Hisuian Lilligant) - Petal Dance - Level 53
  (549, 54901, 80, 22, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Lilligant (Hisuian Lilligant) - Close Combat - Level 57
  (549, 54901, 370, 22, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Lilligant (Hisuian Lilligant) - Rock Smash - Evolution
  (549, 54901, 249, 22, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Lilligant (Hisuian Lilligant) - Hyper Beam - Tutor
  (549, 54901, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Lilligant (Hisuian Lilligant) - Focus Energy - Tutor
  (549, 54901, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Lilligant (Hisuian Lilligant) - Rest - Tutor
  (549, 54901, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Lilligant (Hisuian Lilligant) - Rock Smash - Tutor
  (549, 54901, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Lilligant (Hisuian Lilligant) - Aerial Ace - Tutor
  (549, 54901, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Lilligant (Hisuian Lilligant) - Magical Leaf - Tutor
  (549, 54901, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Lilligant (Hisuian Lilligant) - Poison Jab - Tutor
  (549, 54901, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Lilligant (Hisuian Lilligant) - Drain Punch - Tutor
  (549, 54901, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Lilligant (Hisuian Lilligant) - Energy Ball - Tutor
  (549, 54901, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Lilligant (Hisuian Lilligant) - Giga Impact - Tutor
  (549, 54901, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Lilligant (Hisuian Lilligant) - Baby-Doll Eyes - Tutor
  (549, 54901, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Basculin (White-Striped) - Tackle - Level 1
  (550, 55002, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Basculin (White-Striped) - Aqua Jet - Level 6
  (550, 55002, 453, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Basculin (White-Striped) - Bite - Level 11
  (550, 55002, 44, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Basculin (White-Striped) - Zen Headbutt - Level 18
  (550, 55002, 428, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Basculin (White-Striped) - Crunch - Level 25
  (550, 55002, 242, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Basculin (White-Striped) - Wave Crash - Level 34
  (550, 55002, 834, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Basculin (White-Striped) - Double-Edge - Level 43
  (550, 55002, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Basculin (White-Striped) - Ice Beam - Tutor
  (550, 55002, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Basculin (White-Striped) - Swift - Tutor
  (550, 55002, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Basculin (White-Striped) - Rest - Tutor
  (550, 55002, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Basculin (White-Striped) - Icy Wind - Tutor
  (550, 55002, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Basculin (White-Striped) - Aqua Tail - Tutor
  (550, 55002, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Basculin (White-Striped) - Ice Fang - Tutor
  (550, 55002, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Basculin (White-Striped) - Zen Headbutt - Tutor
  (550, 55002, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Zorua (Hisuian Zorua) - Shadow Sneak - Level 1
  (570, 57001, 425, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zorua (Hisuian Zorua) - Snarl - Level 6
  (570, 57001, 555, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Zorua (Hisuian Zorua) - Swift - Level 11
  (570, 57001, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Zorua (Hisuian Zorua) - Bitter Malice - Level 18
  (570, 57001, 841, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Zorua (Hisuian Zorua) - Slash - Level 25
  (570, 57001, 163, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Zorua (Hisuian Zorua) - Shadow Claw - Level 34
  (570, 57001, 421, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Zorua (Hisuian Zorua) - Nasty Plot - Level 43
  (570, 57001, 417, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Zorua (Hisuian Zorua) - Swift - Tutor
  (570, 57001, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Zorua (Hisuian Zorua) - Rest - Tutor
  (570, 57001, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Zorua (Hisuian Zorua) - Sludge Bomb - Tutor
  (570, 57001, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Zorua (Hisuian Zorua) - Shadow Ball - Tutor
  (570, 57001, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Zorua (Hisuian Zorua) - Aerial Ace - Tutor
  (570, 57001, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Zorua (Hisuian Zorua) - Calm Mind - Tutor
  (570, 57001, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Zorua (Hisuian Zorua) - Dark Pulse - Tutor
  (570, 57001, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Zorua (Hisuian Zorua) - Shadow Claw - Tutor
  (570, 57001, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Zorua (Hisuian Zorua) - Snarl - Tutor
  (570, 57001, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Zoroark (Hisuian Zoroark) - Shadow Sneak - Level 1
  (571, 57101, 425, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zoroark (Hisuian Zoroark) - Snarl - Level 6
  (571, 57101, 555, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Zoroark (Hisuian Zoroark) - Swift - Level 11
  (571, 57101, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Zoroark (Hisuian Zoroark) - Bitter Malice - Level 18
  (571, 57101, 841, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Zoroark (Hisuian Zoroark) - Slash - Level 25
  (571, 57101, 163, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Zoroark (Hisuian Zoroark) - Shadow Claw - Level 34
  (571, 57101, 421, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Zoroark (Hisuian Zoroark) - Shadow Ball - Level 40
  (571, 57101, 247, 22, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Zoroark (Hisuian Zoroark) - Nasty Plot - Level 43
  (571, 57101, 417, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Zoroark (Hisuian Zoroark) - Extrasensory - Level 52
  (571, 57101, 326, 22, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Zoroark (Hisuian Zoroark) - Flamethrower - Tutor
  (571, 57101, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Zoroark (Hisuian Zoroark) - Hyper Beam - Tutor
  (571, 57101, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Zoroark (Hisuian Zoroark) - Swift - Tutor
  (571, 57101, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Zoroark (Hisuian Zoroark) - Rest - Tutor
  (571, 57101, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Zoroark (Hisuian Zoroark) - Sludge Bomb - Tutor
  (571, 57101, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Zoroark (Hisuian Zoroark) - Shadow Ball - Tutor
  (571, 57101, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Zoroark (Hisuian Zoroark) - Rock Smash - Tutor
  (571, 57101, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Zoroark (Hisuian Zoroark) - Aerial Ace - Tutor
  (571, 57101, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Zoroark (Hisuian Zoroark) - Calm Mind - Tutor
  (571, 57101, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Zoroark (Hisuian Zoroark) - Dark Pulse - Tutor
  (571, 57101, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Zoroark (Hisuian Zoroark) - Giga Impact - Tutor
  (571, 57101, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Zoroark (Hisuian Zoroark) - Shadow Claw - Tutor
  (571, 57101, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Zoroark (Hisuian Zoroark) - Ominous Wind - Tutor
  (571, 57101, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Zoroark (Hisuian Zoroark) - Snarl - Tutor
  (571, 57101, 555, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Braviary (Hisuian Braviary) - Quick Attack - Level 1
  (628, 62801, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Braviary (Hisuian Braviary) - Aerial Ace - Level 6
  (628, 62801, 332, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Braviary (Hisuian Braviary) - Twister - Level 11
  (628, 62801, 239, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Braviary (Hisuian Braviary) - Slash - Level 18
  (628, 62801, 163, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Braviary (Hisuian Braviary) - Air Slash - Level 20
  (628, 62801, 403, 22, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Braviary (Hisuian Braviary) - Roost - Level 25
  (628, 62801, 355, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Braviary (Hisuian Braviary) - Esper Wing - Level 25
  (628, 62801, 840, 22, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Braviary (Hisuian Braviary) - Double-Edge - Level 34
  (628, 62801, 38, 22, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Braviary (Hisuian Braviary) - Brave Bird - Level 43
  (628, 62801, 413, 22, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Braviary (Hisuian Braviary) - Hurricane - Level 52
  (628, 62801, 542, 22, NULL, 1, 52, NULL, NULL, NULL, 10),
  -- Braviary (Hisuian Braviary) - Hyper Beam - Tutor
  (628, 62801, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Braviary (Hisuian Braviary) - Psychic - Tutor
  (628, 62801, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Braviary (Hisuian Braviary) - Swift - Tutor
  (628, 62801, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Braviary (Hisuian Braviary) - Rest - Tutor
  (628, 62801, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Braviary (Hisuian Braviary) - Rock Slide - Tutor
  (628, 62801, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Braviary (Hisuian Braviary) - Rock Smash - Tutor
  (628, 62801, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Braviary (Hisuian Braviary) - Aerial Ace - Tutor
  (628, 62801, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Braviary (Hisuian Braviary) - Bulk Up - Tutor
  (628, 62801, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Braviary (Hisuian Braviary) - Giga Impact - Tutor
  (628, 62801, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Braviary (Hisuian Braviary) - Shadow Claw - Tutor
  (628, 62801, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Braviary (Hisuian Braviary) - Zen Headbutt - Tutor
  (628, 62801, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Braviary (Hisuian Braviary) - Ominous Wind - Tutor
  (628, 62801, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Braviary (Hisuian Braviary) - Mystical Fire - Tutor
  (628, 62801, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Braviary (Hisuian Braviary) - Dazzling Gleam - Tutor
  (628, 62801, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Braviary (Hisuian Braviary) - Power Shift - Tutor
  (628, 62801, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Tornadus (Therian) - Tackle - Level 1
  (641, 64101, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tornadus (Therian) - Bite - Level 7
  (641, 64101, 44, 22, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Tornadus (Therian) - Twister - Level 11
  (641, 64101, 239, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Tornadus (Therian) - Air Cutter - Level 14
  (641, 64101, 314, 22, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Tornadus (Therian) - Nasty Plot - Level 22
  (641, 64101, 417, 22, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Tornadus (Therian) - Extrasensory - Level 31
  (641, 64101, 326, 22, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Tornadus (Therian) - Crunch - Level 41
  (641, 64101, 242, 22, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Tornadus (Therian) - Hurricane - Level 47
  (641, 64101, 542, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Tornadus (Therian) - Bleakwind Storm - Level 52
  (641, 64101, 846, 22, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Tornadus (Therian) - Hyper Beam - Tutor
  (641, 64101, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Tornadus (Therian) - Psychic - Tutor
  (641, 64101, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Tornadus (Therian) - Rest - Tutor
  (641, 64101, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Tornadus (Therian) - Sludge Bomb - Tutor
  (641, 64101, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Tornadus (Therian) - Icy Wind - Tutor
  (641, 64101, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Tornadus (Therian) - Iron Tail - Tutor
  (641, 64101, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Tornadus (Therian) - Rock Smash - Tutor
  (641, 64101, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Tornadus (Therian) - Aerial Ace - Tutor
  (641, 64101, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Tornadus (Therian) - Bulk Up - Tutor
  (641, 64101, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Tornadus (Therian) - Dark Pulse - Tutor
  (641, 64101, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Tornadus (Therian) - Giga Impact - Tutor
  (641, 64101, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Thundurus (Therian) - Tackle - Level 1
  (642, 64201, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Thundurus (Therian) - Bite - Level 7
  (642, 64201, 44, 22, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Thundurus (Therian) - Twister - Level 11
  (642, 64201, 239, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Thundurus (Therian) - Spark - Level 14
  (642, 64201, 209, 22, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Thundurus (Therian) - Nasty Plot - Level 22
  (642, 64201, 417, 22, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Thundurus (Therian) - Extrasensory - Level 31
  (642, 64201, 326, 22, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Thundurus (Therian) - Crunch - Level 41
  (642, 64201, 242, 22, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Thundurus (Therian) - Thunder - Level 47
  (642, 64201, 87, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Thundurus (Therian) - Wildbolt Storm - Level 52
  (642, 64201, 847, 22, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Thundurus (Therian) - Thunder Punch - Tutor
  (642, 64201, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Thundurus (Therian) - Hyper Beam - Tutor
  (642, 64201, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Thundurus (Therian) - Thunderbolt - Tutor
  (642, 64201, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Thundurus (Therian) - Psychic - Tutor
  (642, 64201, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Thundurus (Therian) - Rest - Tutor
  (642, 64201, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Thundurus (Therian) - Sludge Bomb - Tutor
  (642, 64201, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Thundurus (Therian) - Iron Tail - Tutor
  (642, 64201, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Thundurus (Therian) - Rock Smash - Tutor
  (642, 64201, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Thundurus (Therian) - Bulk Up - Tutor
  (642, 64201, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Thundurus (Therian) - Dark Pulse - Tutor
  (642, 64201, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Thundurus (Therian) - Giga Impact - Tutor
  (642, 64201, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Thundurus (Therian) - Flash Cannon - Tutor
  (642, 64201, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Thundurus (Therian) - Charge Beam - Tutor
  (642, 64201, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Thundurus (Therian) - Wild Charge - Tutor
  (642, 64201, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Thundurus (Therian) - Power Shift - Tutor
  (642, 64201, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Landorus (Therian) - Tackle - Level 1
  (645, 64501, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Landorus (Therian) - Bite - Level 7
  (645, 64501, 44, 22, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Landorus (Therian) - Twister - Level 11
  (645, 64501, 239, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Landorus (Therian) - Bulldoze - Level 14
  (645, 64501, 523, 22, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Landorus (Therian) - Bulk Up - Level 22
  (645, 64501, 339, 22, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Landorus (Therian) - Extrasensory - Level 31
  (645, 64501, 326, 22, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Landorus (Therian) - Crunch - Level 41
  (645, 64501, 242, 22, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Landorus (Therian) - Earth Power - Level 47
  (645, 64501, 414, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Landorus (Therian) - Sandsear Storm - Level 52
  (645, 64501, 848, 22, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Landorus (Therian) - Hyper Beam - Tutor
  (645, 64501, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Landorus (Therian) - Psychic - Tutor
  (645, 64501, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Landorus (Therian) - Rest - Tutor
  (645, 64501, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Landorus (Therian) - Rock Slide - Tutor
  (645, 64501, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Landorus (Therian) - Sludge Bomb - Tutor
  (645, 64501, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Landorus (Therian) - Outrage - Tutor
  (645, 64501, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Landorus (Therian) - Iron Tail - Tutor
  (645, 64501, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Landorus (Therian) - Rock Smash - Tutor
  (645, 64501, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Landorus (Therian) - Bulk Up - Tutor
  (645, 64501, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Landorus (Therian) - Calm Mind - Tutor
  (645, 64501, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Landorus (Therian) - Earth Power - Tutor
  (645, 64501, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Landorus (Therian) - Giga Impact - Tutor
  (645, 64501, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Landorus (Therian) - Stone Edge - Tutor
  (645, 64501, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Landorus (Therian) - Stealth Rock - Tutor
  (645, 64501, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Landorus (Therian) - Bulldoze - Tutor
  (645, 64501, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Sliggoo (Hisuian Sliggoo) - Bubble - Level 1
  (705, 70501, 145, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sliggoo (Hisuian Sliggoo) - Acid Spray - Level 6
  (705, 70501, 491, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Sliggoo (Hisuian Sliggoo) - Acid Armor - Level 11
  (705, 70501, 151, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Sliggoo (Hisuian Sliggoo) - Water Pulse - Level 18
  (705, 70501, 352, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Sliggoo (Hisuian Sliggoo) - Dragon Pulse - Level 25
  (705, 70501, 406, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Sliggoo (Hisuian Sliggoo) - Iron Head - Level 25
  (705, 70501, 442, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Sliggoo (Hisuian Sliggoo) - Shelter - Level 34
  (705, 70501, 842, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Sliggoo (Hisuian Sliggoo) - Hydro Pump - Level 43
  (705, 70501, 56, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Sliggoo (Hisuian Sliggoo) - Ice Beam - Tutor
  (705, 70501, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Sliggoo (Hisuian Sliggoo) - Thunderbolt - Tutor
  (705, 70501, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Sliggoo (Hisuian Sliggoo) - Rest - Tutor
  (705, 70501, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Sliggoo (Hisuian Sliggoo) - Rock Slide - Tutor
  (705, 70501, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Sliggoo (Hisuian Sliggoo) - Sludge Bomb - Tutor
  (705, 70501, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Sliggoo (Hisuian Sliggoo) - Outrage - Tutor
  (705, 70501, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Sliggoo (Hisuian Sliggoo) - Iron Tail - Tutor
  (705, 70501, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Sliggoo (Hisuian Sliggoo) - Water Pulse - Tutor
  (705, 70501, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Sliggoo (Hisuian Sliggoo) - Draco Meteor - Tutor
  (705, 70501, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Sliggoo (Hisuian Sliggoo) - Iron Head - Tutor
  (705, 70501, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Sliggoo (Hisuian Sliggoo) - Steel Beam - Tutor
  (705, 70501, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Goodra (Hisuian Goodra) - Bubble - Level 1
  (706, 70601, 145, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goodra (Hisuian Goodra) - Acid Spray - Level 6
  (706, 70601, 491, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Goodra (Hisuian Goodra) - Acid Armor - Level 11
  (706, 70601, 151, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Goodra (Hisuian Goodra) - Water Pulse - Level 18
  (706, 70601, 352, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Goodra (Hisuian Goodra) - Dragon Pulse - Level 25
  (706, 70601, 406, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Goodra (Hisuian Goodra) - Iron Head - Level 25
  (706, 70601, 442, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Goodra (Hisuian Goodra) - Shelter - Level 34
  (706, 70601, 842, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Goodra (Hisuian Goodra) - Hydro Pump - Level 43
  (706, 70601, 56, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Goodra (Hisuian Goodra) - Fire Punch - Tutor
  (706, 70601, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Goodra (Hisuian Goodra) - Thunder Punch - Tutor
  (706, 70601, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Goodra (Hisuian Goodra) - Flamethrower - Tutor
  (706, 70601, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Goodra (Hisuian Goodra) - Ice Beam - Tutor
  (706, 70601, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Goodra (Hisuian Goodra) - Hyper Beam - Tutor
  (706, 70601, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Goodra (Hisuian Goodra) - Thunderbolt - Tutor
  (706, 70601, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Goodra (Hisuian Goodra) - Rest - Tutor
  (706, 70601, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Goodra (Hisuian Goodra) - Rock Slide - Tutor
  (706, 70601, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Goodra (Hisuian Goodra) - Sludge Bomb - Tutor
  (706, 70601, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Goodra (Hisuian Goodra) - Outrage - Tutor
  (706, 70601, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Goodra (Hisuian Goodra) - Iron Tail - Tutor
  (706, 70601, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Goodra (Hisuian Goodra) - Rock Smash - Tutor
  (706, 70601, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Goodra (Hisuian Goodra) - Water Pulse - Tutor
  (706, 70601, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Goodra (Hisuian Goodra) - Giga Impact - Tutor
  (706, 70601, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Goodra (Hisuian Goodra) - Draco Meteor - Tutor
  (706, 70601, 434, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Goodra (Hisuian Goodra) - Iron Head - Tutor
  (706, 70601, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Goodra (Hisuian Goodra) - Bulldoze - Tutor
  (706, 70601, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Goodra (Hisuian Goodra) - Steel Beam - Tutor
  (706, 70601, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Avalugg (Hisuian Avalugg) - Tackle - Level 1
  (713, 71301, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Avalugg (Hisuian Avalugg) - Powder Snow - Level 5
  (713, 71301, 181, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Avalugg (Hisuian Avalugg) - Ice Shard - Level 9
  (713, 71301, 420, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Avalugg (Hisuian Avalugg) - Bite - Level 15
  (713, 71301, 44, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Avalugg (Hisuian Avalugg) - Iron Defense - Level 21
  (713, 71301, 334, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Avalugg (Hisuian Avalugg) - Crunch - Level 29
  (713, 71301, 242, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Avalugg (Hisuian Avalugg) - Earth Power - Level 29
  (713, 71301, 414, 22, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Avalugg (Hisuian Avalugg) - Blizzard - Level 37
  (713, 71301, 59, 22, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Avalugg (Hisuian Avalugg) - Mountain Gale - Level 37
  (713, 71301, 836, 22, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Avalugg (Hisuian Avalugg) - Double-Edge - Level 47
  (713, 71301, 38, 22, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Avalugg (Hisuian Avalugg) - Rock Slide - Evolution
  (713, 71301, 157, 22, NULL, 7, NULL, NULL, NULL, NULL, 11),
  -- Avalugg (Hisuian Avalugg) - Ice Beam - Tutor
  (713, 71301, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Avalugg (Hisuian Avalugg) - Hyper Beam - Tutor
  (713, 71301, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Avalugg (Hisuian Avalugg) - Rest - Tutor
  (713, 71301, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Avalugg (Hisuian Avalugg) - Rock Slide - Tutor
  (713, 71301, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Avalugg (Hisuian Avalugg) - Icy Wind - Tutor
  (713, 71301, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Avalugg (Hisuian Avalugg) - Rock Smash - Tutor
  (713, 71301, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Avalugg (Hisuian Avalugg) - Ice Ball - Tutor
  (713, 71301, 301, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Avalugg (Hisuian Avalugg) - Water Pulse - Tutor
  (713, 71301, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Avalugg (Hisuian Avalugg) - Earth Power - Tutor
  (713, 71301, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Avalugg (Hisuian Avalugg) - Giga Impact - Tutor
  (713, 71301, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Avalugg (Hisuian Avalugg) - Ice Fang - Tutor
  (713, 71301, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Avalugg (Hisuian Avalugg) - Flash Cannon - Tutor
  (713, 71301, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Avalugg (Hisuian Avalugg) - Iron Head - Tutor
  (713, 71301, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Avalugg (Hisuian Avalugg) - Stone Edge - Tutor
  (713, 71301, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Avalugg (Hisuian Avalugg) - Stealth Rock - Tutor
  (713, 71301, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Avalugg (Hisuian Avalugg) - Bulldoze - Tutor
  (713, 71301, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Avalugg (Hisuian Avalugg) - High Horsepower - Tutor
  (713, 71301, 667, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Avalugg (Hisuian Avalugg) - Power Shift - Tutor
  (713, 71301, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Decidueye (Hisuian Decidueye) - Gust - Level 1
  (724, 72401, 16, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Decidueye (Hisuian Decidueye) - Leafage - Level 6
  (724, 72401, 670, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Decidueye (Hisuian Decidueye) - Roost - Level 11
  (724, 72401, 355, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Decidueye (Hisuian Decidueye) - Aerial Ace - Level 18
  (724, 72401, 332, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Decidueye (Hisuian Decidueye) - Magical Leaf - Level 21
  (724, 72401, 345, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Decidueye (Hisuian Decidueye) - Air Slash - Level 25
  (724, 72401, 403, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Decidueye (Hisuian Decidueye) - Aura Sphere - Level 30
  (724, 72401, 396, 22, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Decidueye (Hisuian Decidueye) - Leaf Blade - Level 34
  (724, 72401, 348, 22, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Decidueye (Hisuian Decidueye) - Triple Arrows - Level 34
  (724, 72401, 843, 22, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Decidueye (Hisuian Decidueye) - Brave Bird - Level 40
  (724, 72401, 413, 22, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Decidueye (Hisuian Decidueye) - Leaf Storm - Level 43
  (724, 72401, 437, 22, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Decidueye (Hisuian Decidueye) - Rock Smash - Evolution
  (724, 72401, 249, 22, NULL, 7, NULL, NULL, NULL, NULL, 12),
  -- Decidueye (Hisuian Decidueye) - Hyper Beam - Tutor
  (724, 72401, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Decidueye (Hisuian Decidueye) - Focus Energy - Tutor
  (724, 72401, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Decidueye (Hisuian Decidueye) - Swift - Tutor
  (724, 72401, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Decidueye (Hisuian Decidueye) - Rest - Tutor
  (724, 72401, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Decidueye (Hisuian Decidueye) - Spikes - Tutor
  (724, 72401, 191, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Decidueye (Hisuian Decidueye) - False Swipe - Tutor
  (724, 72401, 206, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Decidueye (Hisuian Decidueye) - Rock Smash - Tutor
  (724, 72401, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Decidueye (Hisuian Decidueye) - Aerial Ace - Tutor
  (724, 72401, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Decidueye (Hisuian Decidueye) - Bulk Up - Tutor
  (724, 72401, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Decidueye (Hisuian Decidueye) - Magical Leaf - Tutor
  (724, 72401, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Decidueye (Hisuian Decidueye) - Energy Ball - Tutor
  (724, 72401, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Decidueye (Hisuian Decidueye) - Giga Impact - Tutor
  (724, 72401, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Decidueye (Hisuian Decidueye) - Shadow Claw - Tutor
  (724, 72401, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Decidueye (Hisuian Decidueye) - Psycho Cut - Tutor
  (724, 72401, 427, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Basculegion (Female) - Tackle - Level 1
  (902, 90201, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Basculegion (Female) - Aqua Jet - Level 6
  (902, 90201, 453, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Basculegion (Female) - Bite - Level 11
  (902, 90201, 44, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Basculegion (Female) - Hex - Level 11
  (902, 90201, 506, 22, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Basculegion (Female) - Zen Headbutt - Level 18
  (902, 90201, 428, 22, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Basculegion (Female) - Crunch - Level 25
  (902, 90201, 242, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Basculegion (Female) - Shadow Ball - Level 25
  (902, 90201, 247, 22, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Basculegion (Female) - Wave Crash - Level 34
  (902, 90201, 834, 22, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Basculegion (Female) - Double-Edge - Level 43
  (902, 90201, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Basculegion (Female) - Ice Beam - Tutor
  (902, 90201, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Basculegion (Female) - Hyper Beam - Tutor
  (902, 90201, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Basculegion (Female) - Psychic - Tutor
  (902, 90201, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Basculegion (Female) - Swift - Tutor
  (902, 90201, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Basculegion (Female) - Rest - Tutor
  (902, 90201, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Basculegion (Female) - Icy Wind - Tutor
  (902, 90201, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Basculegion (Female) - Shadow Ball - Tutor
  (902, 90201, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Basculegion (Female) - Calm Mind - Tutor
  (902, 90201, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Basculegion (Female) - Water Pulse - Tutor
  (902, 90201, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Basculegion (Female) - Aqua Tail - Tutor
  (902, 90201, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Basculegion (Female) - Giga Impact - Tutor
  (902, 90201, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Basculegion (Female) - Ice Fang - Tutor
  (902, 90201, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Basculegion (Female) - Zen Headbutt - Tutor
  (902, 90201, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Basculegion (Female) - Ominous Wind - Tutor
  (902, 90201, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Enamorus (Therian) - Tackle - Level 1
  (905, 90501, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Enamorus (Therian) - Bite - Level 7
  (905, 90501, 44, 22, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Enamorus (Therian) - Twister - Level 11
  (905, 90501, 239, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Enamorus (Therian) - Draining Kiss - Level 14
  (905, 90501, 577, 22, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Enamorus (Therian) - Iron Defense - Level 22
  (905, 90501, 334, 22, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Enamorus (Therian) - Extrasensory - Level 31
  (905, 90501, 326, 22, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Enamorus (Therian) - Crunch - Level 41
  (905, 90501, 242, 22, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Enamorus (Therian) - Moonblast - Level 47
  (905, 90501, 585, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Enamorus (Therian) - Springtide Storm - Level 52
  (905, 90501, 831, 22, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Enamorus (Therian) - Hyper Beam - Tutor
  (905, 90501, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Enamorus (Therian) - Psychic - Tutor
  (905, 90501, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Enamorus (Therian) - Rest - Tutor
  (905, 90501, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Enamorus (Therian) - Sludge Bomb - Tutor
  (905, 90501, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Enamorus (Therian) - Rock Smash - Tutor
  (905, 90501, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Enamorus (Therian) - Calm Mind - Tutor
  (905, 90501, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Enamorus (Therian) - Earth Power - Tutor
  (905, 90501, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Enamorus (Therian) - Giga Impact - Tutor
  (905, 90501, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Enamorus (Therian) - Zen Headbutt - Tutor
  (905, 90501, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Enamorus (Therian) - Play Rough - Tutor
  (905, 90501, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Enamorus (Therian) - Mystical Fire - Tutor
  (905, 90501, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Enamorus (Therian) - Dazzling Gleam - Tutor
  (905, 90501, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Enamorus (Therian) - Power Shift - Tutor
  (905, 90501, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22);
