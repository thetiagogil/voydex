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
-- Pokémon Legends: Arceus learnsets for default forms, species 601-649.
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
  -- Rufflet - Quick Attack - Level 1
  (627, 62700, 98, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rufflet - Aerial Ace - Level 6
  (627, 62700, 332, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Rufflet - Twister - Level 11
  (627, 62700, 239, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Rufflet - Slash - Level 18
  (627, 62700, 163, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Rufflet - Air Slash - Level 20
  (627, 62700, 403, 22, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Rufflet - Roost - Level 25
  (627, 62700, 355, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Rufflet - Double-Edge - Level 34
  (627, 62700, 38, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Rufflet - Brave Bird - Level 43
  (627, 62700, 413, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Rufflet - Swift - Tutor
  (627, 62700, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Rufflet - Rest - Tutor
  (627, 62700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Rufflet - Rock Slide - Tutor
  (627, 62700, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Rufflet - Rock Smash - Tutor
  (627, 62700, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Rufflet - Aerial Ace - Tutor
  (627, 62700, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Rufflet - Bulk Up - Tutor
  (627, 62700, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Rufflet - Shadow Claw - Tutor
  (627, 62700, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Rufflet - Zen Headbutt - Tutor
  (627, 62700, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Rufflet - Ominous Wind - Tutor
  (627, 62700, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Tornadus - Tackle - Level 1
  (641, 64100, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tornadus - Bite - Level 7
  (641, 64100, 44, 22, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Tornadus - Twister - Level 11
  (641, 64100, 239, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Tornadus - Air Cutter - Level 14
  (641, 64100, 314, 22, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Tornadus - Nasty Plot - Level 22
  (641, 64100, 417, 22, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Tornadus - Extrasensory - Level 31
  (641, 64100, 326, 22, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Tornadus - Crunch - Level 41
  (641, 64100, 242, 22, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Tornadus - Hurricane - Level 47
  (641, 64100, 542, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Tornadus - Bleakwind Storm - Level 52
  (641, 64100, 846, 22, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Tornadus - Hyper Beam - Tutor
  (641, 64100, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Tornadus - Psychic - Tutor
  (641, 64100, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Tornadus - Rest - Tutor
  (641, 64100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Tornadus - Sludge Bomb - Tutor
  (641, 64100, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Tornadus - Icy Wind - Tutor
  (641, 64100, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Tornadus - Iron Tail - Tutor
  (641, 64100, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Tornadus - Rock Smash - Tutor
  (641, 64100, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Tornadus - Aerial Ace - Tutor
  (641, 64100, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Tornadus - Bulk Up - Tutor
  (641, 64100, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Tornadus - Dark Pulse - Tutor
  (641, 64100, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Tornadus - Giga Impact - Tutor
  (641, 64100, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Thundurus - Tackle - Level 1
  (642, 64200, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Thundurus - Bite - Level 7
  (642, 64200, 44, 22, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Thundurus - Twister - Level 11
  (642, 64200, 239, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Thundurus - Spark - Level 14
  (642, 64200, 209, 22, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Thundurus - Nasty Plot - Level 22
  (642, 64200, 417, 22, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Thundurus - Extrasensory - Level 31
  (642, 64200, 326, 22, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Thundurus - Crunch - Level 41
  (642, 64200, 242, 22, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Thundurus - Thunder - Level 47
  (642, 64200, 87, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Thundurus - Wildbolt Storm - Level 52
  (642, 64200, 847, 22, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Thundurus - Thunder Punch - Tutor
  (642, 64200, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Thundurus - Hyper Beam - Tutor
  (642, 64200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Thundurus - Thunderbolt - Tutor
  (642, 64200, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Thundurus - Psychic - Tutor
  (642, 64200, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Thundurus - Rest - Tutor
  (642, 64200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Thundurus - Sludge Bomb - Tutor
  (642, 64200, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Thundurus - Iron Tail - Tutor
  (642, 64200, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Thundurus - Rock Smash - Tutor
  (642, 64200, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Thundurus - Bulk Up - Tutor
  (642, 64200, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Thundurus - Dark Pulse - Tutor
  (642, 64200, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Thundurus - Giga Impact - Tutor
  (642, 64200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Thundurus - Flash Cannon - Tutor
  (642, 64200, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Thundurus - Charge Beam - Tutor
  (642, 64200, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Thundurus - Wild Charge - Tutor
  (642, 64200, 528, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Thundurus - Power Shift - Tutor
  (642, 64200, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Landorus - Tackle - Level 1
  (645, 64500, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Landorus - Bite - Level 7
  (645, 64500, 44, 22, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Landorus - Twister - Level 11
  (645, 64500, 239, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Landorus - Bulldoze - Level 14
  (645, 64500, 523, 22, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Landorus - Bulk Up - Level 22
  (645, 64500, 339, 22, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Landorus - Extrasensory - Level 31
  (645, 64500, 326, 22, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Landorus - Crunch - Level 41
  (645, 64500, 242, 22, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Landorus - Earth Power - Level 47
  (645, 64500, 414, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Landorus - Sandsear Storm - Level 52
  (645, 64500, 848, 22, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Landorus - Hyper Beam - Tutor
  (645, 64500, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Landorus - Psychic - Tutor
  (645, 64500, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Landorus - Rest - Tutor
  (645, 64500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Landorus - Rock Slide - Tutor
  (645, 64500, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Landorus - Sludge Bomb - Tutor
  (645, 64500, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Landorus - Outrage - Tutor
  (645, 64500, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Landorus - Iron Tail - Tutor
  (645, 64500, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Landorus - Rock Smash - Tutor
  (645, 64500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Landorus - Bulk Up - Tutor
  (645, 64500, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Landorus - Calm Mind - Tutor
  (645, 64500, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Landorus - Earth Power - Tutor
  (645, 64500, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Landorus - Giga Impact - Tutor
  (645, 64500, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Landorus - Stone Edge - Tutor
  (645, 64500, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Landorus - Stealth Rock - Tutor
  (645, 64500, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Landorus - Bulldoze - Tutor
  (645, 64500, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24);
