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
-- Pokémon Legends: Arceus learnsets for default forms, species 351-400.
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
  -- Duskull - Absorb - Level 1
  (355, 35500, 71, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Duskull - Shadow Sneak - Level 6
  (355, 35500, 425, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Duskull - Hex - Level 11
  (355, 35500, 506, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Duskull - Leech Life - Level 18
  (355, 35500, 141, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Duskull - Dark Pulse - Level 25
  (355, 35500, 399, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Duskull - Shadow Ball - Level 34
  (355, 35500, 247, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Duskull - Psychic - Level 43
  (355, 35500, 94, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Duskull - Ice Beam - Tutor
  (355, 35500, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Duskull - Psychic - Tutor
  (355, 35500, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Duskull - Leech Life - Tutor
  (355, 35500, 141, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Duskull - Rest - Tutor
  (355, 35500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Duskull - Icy Wind - Tutor
  (355, 35500, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Duskull - Shadow Ball - Tutor
  (355, 35500, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Duskull - Calm Mind - Tutor
  (355, 35500, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Duskull - Dark Pulse - Tutor
  (355, 35500, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Duskull - Charge Beam - Tutor
  (355, 35500, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Duskull - Ominous Wind - Tutor
  (355, 35500, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Dusclops - Absorb - Level 1
  (356, 35600, 71, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dusclops - Shadow Sneak - Level 6
  (356, 35600, 425, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Dusclops - Hex - Level 11
  (356, 35600, 506, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Dusclops - Leech Life - Level 18
  (356, 35600, 141, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Dusclops - Dark Pulse - Level 25
  (356, 35600, 399, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Dusclops - Shadow Ball - Level 34
  (356, 35600, 247, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Dusclops - Psychic - Level 43
  (356, 35600, 94, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Dusclops - Fire Punch - Tutor
  (356, 35600, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Dusclops - Ice Punch - Tutor
  (356, 35600, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Dusclops - Thunder Punch - Tutor
  (356, 35600, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Dusclops - Ice Beam - Tutor
  (356, 35600, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Dusclops - Hyper Beam - Tutor
  (356, 35600, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Dusclops - Psychic - Tutor
  (356, 35600, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Dusclops - Leech Life - Tutor
  (356, 35600, 141, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Dusclops - Rest - Tutor
  (356, 35600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Dusclops - Rock Slide - Tutor
  (356, 35600, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Dusclops - Icy Wind - Tutor
  (356, 35600, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Dusclops - Shadow Ball - Tutor
  (356, 35600, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Dusclops - Rock Smash - Tutor
  (356, 35600, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Dusclops - Calm Mind - Tutor
  (356, 35600, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Dusclops - Dark Pulse - Tutor
  (356, 35600, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Dusclops - Giga Impact - Tutor
  (356, 35600, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Dusclops - Charge Beam - Tutor
  (356, 35600, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Dusclops - Ominous Wind - Tutor
  (356, 35600, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Dusclops - Bulldoze - Tutor
  (356, 35600, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Dusclops - Power Shift - Tutor
  (356, 35600, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Chimecho - Tackle - Level 1
  (358, 35800, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chimecho - Confusion - Level 6
  (358, 35800, 93, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Chimecho - Ominous Wind - Level 11
  (358, 35800, 466, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Chimecho - Hypnosis - Level 18
  (358, 35800, 95, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Chimecho - Extrasensory - Level 25
  (358, 35800, 326, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Chimecho - Recover - Level 34
  (358, 35800, 105, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Chimecho - Double-Edge - Level 43
  (358, 35800, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Chimecho - Psychic - Tutor
  (358, 35800, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Chimecho - Swift - Tutor
  (358, 35800, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Chimecho - Rest - Tutor
  (358, 35800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Chimecho - Icy Wind - Tutor
  (358, 35800, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Chimecho - Shadow Ball - Tutor
  (358, 35800, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Chimecho - Calm Mind - Tutor
  (358, 35800, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Chimecho - Energy Ball - Tutor
  (358, 35800, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Chimecho - Zen Headbutt - Tutor
  (358, 35800, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Chimecho - Charge Beam - Tutor
  (358, 35800, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Chimecho - Ominous Wind - Tutor
  (358, 35800, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Chimecho - Dazzling Gleam - Tutor
  (358, 35800, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Snorunt - Powder Snow - Level 1
  (361, 36100, 181, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snorunt - Ice Shard - Level 6
  (361, 36100, 420, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Snorunt - Bite - Level 11
  (361, 36100, 44, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Snorunt - Ice Fang - Level 18
  (361, 36100, 423, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Snorunt - Crunch - Level 25
  (361, 36100, 242, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Snorunt - Icicle Crash - Level 34
  (361, 36100, 556, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Snorunt - Blizzard - Level 43
  (361, 36100, 59, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Snorunt - Ice Beam - Tutor
  (361, 36100, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Snorunt - Rest - Tutor
  (361, 36100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Snorunt - Spikes - Tutor
  (361, 36100, 191, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Snorunt - Icy Wind - Tutor
  (361, 36100, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Snorunt - Shadow Ball - Tutor
  (361, 36100, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Snorunt - Water Pulse - Tutor
  (361, 36100, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Snorunt - Ice Fang - Tutor
  (361, 36100, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Glalie - Powder Snow - Level 1
  (362, 36200, 181, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glalie - Ice Ball - Level 1
  (362, 36200, 301, 22, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glalie - Ice Shard - Level 6
  (362, 36200, 420, 22, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Glalie - Bite - Level 11
  (362, 36200, 44, 22, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Glalie - Ice Fang - Level 18
  (362, 36200, 423, 22, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Glalie - Crunch - Level 25
  (362, 36200, 242, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Glalie - Icicle Crash - Level 34
  (362, 36200, 556, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Glalie - Blizzard - Level 43
  (362, 36200, 59, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Glalie - Ice Beam - Tutor
  (362, 36200, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Glalie - Hyper Beam - Tutor
  (362, 36200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Glalie - Rest - Tutor
  (362, 36200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Glalie - Spikes - Tutor
  (362, 36200, 191, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Glalie - Icy Wind - Tutor
  (362, 36200, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Glalie - Shadow Ball - Tutor
  (362, 36200, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Glalie - Ice Ball - Tutor
  (362, 36200, 301, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Glalie - Water Pulse - Tutor
  (362, 36200, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Glalie - Dark Pulse - Tutor
  (362, 36200, 399, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Glalie - Giga Impact - Tutor
  (362, 36200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Glalie - Ice Fang - Tutor
  (362, 36200, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Glalie - Iron Head - Tutor
  (362, 36200, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Glalie - Bulldoze - Tutor
  (362, 36200, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Spheal - Rollout - Level 1
  (363, 36300, 205, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spheal - Powder Snow - Level 6
  (363, 36300, 181, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Spheal - Water Pulse - Level 11
  (363, 36300, 352, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Spheal - Rest - Level 18
  (363, 36300, 156, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Spheal - Liquidation - Level 25
  (363, 36300, 710, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Spheal - Ice Beam - Level 34
  (363, 36300, 58, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Spheal - Blizzard - Level 43
  (363, 36300, 59, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Spheal - Ice Beam - Tutor
  (363, 36300, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Spheal - Rest - Tutor
  (363, 36300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Spheal - Rock Slide - Tutor
  (363, 36300, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Spheal - Icy Wind - Tutor
  (363, 36300, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Spheal - Iron Tail - Tutor
  (363, 36300, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Spheal - Rock Smash - Tutor
  (363, 36300, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Spheal - Ice Ball - Tutor
  (363, 36300, 301, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Spheal - Water Pulse - Tutor
  (363, 36300, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Spheal - Aqua Tail - Tutor
  (363, 36300, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Spheal - Bulldoze - Tutor
  (363, 36300, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Spheal - Baby-Doll Eyes - Tutor
  (363, 36300, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Sealeo - Rollout - Level 1
  (364, 36400, 205, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sealeo - Powder Snow - Level 6
  (364, 36400, 181, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Sealeo - Water Pulse - Level 11
  (364, 36400, 352, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Sealeo - Rest - Level 18
  (364, 36400, 156, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Sealeo - Liquidation - Level 25
  (364, 36400, 710, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Sealeo - Ice Beam - Level 34
  (364, 36400, 58, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Sealeo - Blizzard - Level 43
  (364, 36400, 59, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Sealeo - Ice Beam - Tutor
  (364, 36400, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Sealeo - Rest - Tutor
  (364, 36400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Sealeo - Rock Slide - Tutor
  (364, 36400, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Sealeo - Icy Wind - Tutor
  (364, 36400, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Sealeo - Iron Tail - Tutor
  (364, 36400, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Sealeo - Rock Smash - Tutor
  (364, 36400, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Sealeo - Ice Ball - Tutor
  (364, 36400, 301, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Sealeo - Water Pulse - Tutor
  (364, 36400, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Sealeo - Aqua Tail - Tutor
  (364, 36400, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Sealeo - Bulldoze - Tutor
  (364, 36400, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Sealeo - Baby-Doll Eyes - Tutor
  (364, 36400, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Walrein - Rollout - Level 1
  (365, 36500, 205, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Walrein - Powder Snow - Level 6
  (365, 36500, 181, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Walrein - Water Pulse - Level 11
  (365, 36500, 352, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Walrein - Rest - Level 18
  (365, 36500, 156, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Walrein - Liquidation - Level 25
  (365, 36500, 710, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Walrein - Ice Beam - Level 34
  (365, 36500, 58, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Walrein - Blizzard - Level 43
  (365, 36500, 59, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Walrein - Ice Beam - Tutor
  (365, 36500, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Walrein - Hyper Beam - Tutor
  (365, 36500, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Walrein - Rest - Tutor
  (365, 36500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Walrein - Rock Slide - Tutor
  (365, 36500, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Walrein - Icy Wind - Tutor
  (365, 36500, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Walrein - Iron Tail - Tutor
  (365, 36500, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Walrein - Rock Smash - Tutor
  (365, 36500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Walrein - Ice Ball - Tutor
  (365, 36500, 301, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Walrein - Water Pulse - Tutor
  (365, 36500, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Walrein - Aqua Tail - Tutor
  (365, 36500, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Walrein - Giga Impact - Tutor
  (365, 36500, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Walrein - Ice Fang - Tutor
  (365, 36500, 423, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Walrein - Iron Head - Tutor
  (365, 36500, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Walrein - Bulldoze - Tutor
  (365, 36500, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Walrein - Baby-Doll Eyes - Tutor
  (365, 36500, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Turtwig - Tackle - Level 1
  (387, 38700, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Turtwig - Leafage - Level 6
  (387, 38700, 670, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Turtwig - Bite - Level 11
  (387, 38700, 44, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Turtwig - Bulldoze - Level 18
  (387, 38700, 523, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Turtwig - Sleep Powder - Level 25
  (387, 38700, 79, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Turtwig - Leaf Blade - Level 34
  (387, 38700, 348, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Turtwig - Double-Edge - Level 43
  (387, 38700, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Turtwig - Rest - Tutor
  (387, 38700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Turtwig - Iron Tail - Tutor
  (387, 38700, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Turtwig - Rock Smash - Tutor
  (387, 38700, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Turtwig - Energy Ball - Tutor
  (387, 38700, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Turtwig - Earth Power - Tutor
  (387, 38700, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Turtwig - Stealth Rock - Tutor
  (387, 38700, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Turtwig - Bulldoze - Tutor
  (387, 38700, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Grotle - Tackle - Level 1
  (388, 38800, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grotle - Leafage - Level 6
  (388, 38800, 670, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Grotle - Bite - Level 11
  (388, 38800, 44, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Grotle - Bulldoze - Level 18
  (388, 38800, 523, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Grotle - Sleep Powder - Level 25
  (388, 38800, 79, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Grotle - Leaf Blade - Level 34
  (388, 38800, 348, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Grotle - Double-Edge - Level 43
  (388, 38800, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Grotle - Rest - Tutor
  (388, 38800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Grotle - Iron Tail - Tutor
  (388, 38800, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Grotle - Rock Smash - Tutor
  (388, 38800, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Grotle - Energy Ball - Tutor
  (388, 38800, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Grotle - Earth Power - Tutor
  (388, 38800, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Grotle - Stealth Rock - Tutor
  (388, 38800, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Grotle - Bulldoze - Tutor
  (388, 38800, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Torterra - Tackle - Level 1
  (389, 38900, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torterra - Leafage - Level 6
  (389, 38900, 670, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Torterra - Bite - Level 11
  (389, 38900, 44, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Torterra - Bulldoze - Level 18
  (389, 38900, 523, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Torterra - Sleep Powder - Level 25
  (389, 38900, 79, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Torterra - Leaf Blade - Level 34
  (389, 38900, 348, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Torterra - Double-Edge - Level 43
  (389, 38900, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Torterra - Wood Hammer - Level 52
  (389, 38900, 452, 22, NULL, 1, 52, NULL, NULL, NULL, 8),
  -- Torterra - Headlong Rush - Level 57
  (389, 38900, 838, 22, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Torterra - Hyper Beam - Tutor
  (389, 38900, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Torterra - Rest - Tutor
  (389, 38900, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Torterra - Rock Slide - Tutor
  (389, 38900, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Torterra - Outrage - Tutor
  (389, 38900, 200, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Torterra - Iron Tail - Tutor
  (389, 38900, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Torterra - Rock Smash - Tutor
  (389, 38900, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Torterra - Energy Ball - Tutor
  (389, 38900, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Torterra - Earth Power - Tutor
  (389, 38900, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Torterra - Giga Impact - Tutor
  (389, 38900, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Torterra - Iron Head - Tutor
  (389, 38900, 442, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Torterra - Stone Edge - Tutor
  (389, 38900, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Torterra - Stealth Rock - Tutor
  (389, 38900, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Torterra - Bulldoze - Tutor
  (389, 38900, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Chimchar - Tackle - Level 1
  (390, 39000, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chimchar - Ember - Level 6
  (390, 39000, 52, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Chimchar - Swift - Level 11
  (390, 39000, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Chimchar - Flame Wheel - Level 18
  (390, 39000, 172, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Chimchar - Nasty Plot - Level 25
  (390, 39000, 417, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Chimchar - Flamethrower - Level 34
  (390, 39000, 53, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Chimchar - Double-Edge - Level 43
  (390, 39000, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Chimchar - Fire Punch - Tutor
  (390, 39000, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Chimchar - Thunder Punch - Tutor
  (390, 39000, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Chimchar - Flamethrower - Tutor
  (390, 39000, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Chimchar - Focus Energy - Tutor
  (390, 39000, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Chimchar - Swift - Tutor
  (390, 39000, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Chimchar - Rest - Tutor
  (390, 39000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Chimchar - Iron Tail - Tutor
  (390, 39000, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Chimchar - Rock Smash - Tutor
  (390, 39000, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Chimchar - Aerial Ace - Tutor
  (390, 39000, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Chimchar - Bulk Up - Tutor
  (390, 39000, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Chimchar - Shadow Claw - Tutor
  (390, 39000, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Chimchar - Stealth Rock - Tutor
  (390, 39000, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Monferno - Tackle - Level 1
  (391, 39100, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Monferno - Ember - Level 6
  (391, 39100, 52, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Monferno - Swift - Level 11
  (391, 39100, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Monferno - Mach Punch - Level 16
  (391, 39100, 183, 22, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Monferno - Flame Wheel - Level 18
  (391, 39100, 172, 22, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Monferno - Nasty Plot - Level 25
  (391, 39100, 417, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Monferno - Flamethrower - Level 34
  (391, 39100, 53, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Monferno - Double-Edge - Level 43
  (391, 39100, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Monferno - Fire Punch - Tutor
  (391, 39100, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Monferno - Thunder Punch - Tutor
  (391, 39100, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Monferno - Flamethrower - Tutor
  (391, 39100, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Monferno - Focus Energy - Tutor
  (391, 39100, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Monferno - Swift - Tutor
  (391, 39100, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Monferno - Rest - Tutor
  (391, 39100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Monferno - Rock Slide - Tutor
  (391, 39100, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Monferno - Iron Tail - Tutor
  (391, 39100, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Monferno - Rock Smash - Tutor
  (391, 39100, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Monferno - Aerial Ace - Tutor
  (391, 39100, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Monferno - Bulk Up - Tutor
  (391, 39100, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Monferno - Poison Jab - Tutor
  (391, 39100, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Monferno - Shadow Claw - Tutor
  (391, 39100, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Monferno - Stealth Rock - Tutor
  (391, 39100, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Infernape - Tackle - Level 1
  (392, 39200, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Infernape - Ember - Level 6
  (392, 39200, 52, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Infernape - Swift - Level 11
  (392, 39200, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Infernape - Mach Punch - Level 16
  (392, 39200, 183, 22, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Infernape - Flame Wheel - Level 18
  (392, 39200, 172, 22, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Infernape - Nasty Plot - Level 25
  (392, 39200, 417, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Infernape - Flamethrower - Level 34
  (392, 39200, 53, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Infernape - Double-Edge - Level 43
  (392, 39200, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Infernape - Raging Fury - Level 46
  (392, 39200, 833, 22, NULL, 1, 46, NULL, NULL, NULL, 9),
  -- Infernape - Flare Blitz - Level 52
  (392, 39200, 394, 22, NULL, 1, 52, NULL, NULL, NULL, 10),
  -- Infernape - Close Combat - Level 57
  (392, 39200, 370, 22, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Infernape - Fire Punch - Tutor
  (392, 39200, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Infernape - Thunder Punch - Tutor
  (392, 39200, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Infernape - Flamethrower - Tutor
  (392, 39200, 53, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Infernape - Hyper Beam - Tutor
  (392, 39200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Infernape - Focus Energy - Tutor
  (392, 39200, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Infernape - Swift - Tutor
  (392, 39200, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Infernape - Rest - Tutor
  (392, 39200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Infernape - Rock Slide - Tutor
  (392, 39200, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Infernape - Iron Tail - Tutor
  (392, 39200, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Infernape - Rock Smash - Tutor
  (392, 39200, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Infernape - Aerial Ace - Tutor
  (392, 39200, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Infernape - Bulk Up - Tutor
  (392, 39200, 339, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Infernape - Calm Mind - Tutor
  (392, 39200, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Infernape - Poison Jab - Tutor
  (392, 39200, 398, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Infernape - Drain Punch - Tutor
  (392, 39200, 409, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Infernape - Giga Impact - Tutor
  (392, 39200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Infernape - Shadow Claw - Tutor
  (392, 39200, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Infernape - Stone Edge - Tutor
  (392, 39200, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Infernape - Stealth Rock - Tutor
  (392, 39200, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 30),
  -- Infernape - Bulldoze - Tutor
  (392, 39200, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 31),
  -- Piplup - Tackle - Level 1
  (393, 39300, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Piplup - Bubble - Level 6
  (393, 39300, 145, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Piplup - Aerial Ace - Level 11
  (393, 39300, 332, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Piplup - Water Pulse - Level 18
  (393, 39300, 352, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Piplup - Roost - Level 25
  (393, 39300, 355, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Piplup - Liquidation - Level 34
  (393, 39300, 710, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Piplup - Double-Edge - Level 43
  (393, 39300, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Piplup - Ice Beam - Tutor
  (393, 39300, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Piplup - Rest - Tutor
  (393, 39300, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Piplup - Icy Wind - Tutor
  (393, 39300, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Piplup - Rock Smash - Tutor
  (393, 39300, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Piplup - Aerial Ace - Tutor
  (393, 39300, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Piplup - Water Pulse - Tutor
  (393, 39300, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Piplup - Stealth Rock - Tutor
  (393, 39300, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Piplup - Baby-Doll Eyes - Tutor
  (393, 39300, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Prinplup - Tackle - Level 1
  (394, 39400, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Prinplup - Bubble - Level 6
  (394, 39400, 145, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Prinplup - Aerial Ace - Level 11
  (394, 39400, 332, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Prinplup - Water Pulse - Level 18
  (394, 39400, 352, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Prinplup - Roost - Level 25
  (394, 39400, 355, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Prinplup - Liquidation - Level 34
  (394, 39400, 710, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Prinplup - Double-Edge - Level 43
  (394, 39400, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Prinplup - Ice Beam - Tutor
  (394, 39400, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Prinplup - Rest - Tutor
  (394, 39400, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Prinplup - Icy Wind - Tutor
  (394, 39400, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Prinplup - Rock Smash - Tutor
  (394, 39400, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Prinplup - Aerial Ace - Tutor
  (394, 39400, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Prinplup - Water Pulse - Tutor
  (394, 39400, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Prinplup - Shadow Claw - Tutor
  (394, 39400, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Prinplup - Stealth Rock - Tutor
  (394, 39400, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Prinplup - Baby-Doll Eyes - Tutor
  (394, 39400, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Empoleon - Tackle - Level 1
  (395, 39500, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Empoleon - Bubble - Level 6
  (395, 39500, 145, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Empoleon - Aerial Ace - Level 11
  (395, 39500, 332, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Empoleon - Water Pulse - Level 18
  (395, 39500, 352, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Empoleon - Roost - Level 25
  (395, 39500, 355, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Empoleon - Liquidation - Level 34
  (395, 39500, 710, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Empoleon - Double-Edge - Level 43
  (395, 39500, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Empoleon - Hydro Pump - Level 52
  (395, 39500, 56, 22, NULL, 1, 52, NULL, NULL, NULL, 8),
  -- Empoleon - Wave Crash - Level 57
  (395, 39500, 834, 22, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Empoleon - Flash Cannon - Evolution
  (395, 39500, 430, 22, NULL, 7, NULL, NULL, NULL, NULL, 10),
  -- Empoleon - Ice Beam - Tutor
  (395, 39500, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Empoleon - Hyper Beam - Tutor
  (395, 39500, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Empoleon - Rest - Tutor
  (395, 39500, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Empoleon - Rock Slide - Tutor
  (395, 39500, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Empoleon - Icy Wind - Tutor
  (395, 39500, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Empoleon - Rock Smash - Tutor
  (395, 39500, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Empoleon - Aerial Ace - Tutor
  (395, 39500, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Empoleon - Water Pulse - Tutor
  (395, 39500, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Empoleon - Giga Impact - Tutor
  (395, 39500, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Empoleon - Shadow Claw - Tutor
  (395, 39500, 421, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Empoleon - Flash Cannon - Tutor
  (395, 39500, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Empoleon - Stealth Rock - Tutor
  (395, 39500, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Empoleon - Bulldoze - Tutor
  (395, 39500, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Empoleon - Baby-Doll Eyes - Tutor
  (395, 39500, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Empoleon - Steel Beam - Tutor
  (395, 39500, 796, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Starly - Gust - Level 1
  (396, 39600, 16, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Starly - Quick Attack - Level 5
  (396, 39600, 98, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Starly - Aerial Ace - Level 9
  (396, 39600, 332, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Starly - Air Slash - Level 15
  (396, 39600, 403, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Starly - Roost - Level 21
  (396, 39600, 355, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Starly - Double-Edge - Level 29
  (396, 39600, 38, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Starly - Brave Bird - Level 37
  (396, 39600, 413, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Starly - Giga Impact - Level 47
  (396, 39600, 416, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Starly - Swift - Tutor
  (396, 39600, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Starly - Rest - Tutor
  (396, 39600, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Starly - Aerial Ace - Tutor
  (396, 39600, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Starly - Giga Impact - Tutor
  (396, 39600, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Starly - Ominous Wind - Tutor
  (396, 39600, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Staravia - Gust - Level 1
  (397, 39700, 16, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staravia - Quick Attack - Level 5
  (397, 39700, 98, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Staravia - Aerial Ace - Level 9
  (397, 39700, 332, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Staravia - Air Slash - Level 15
  (397, 39700, 403, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Staravia - Roost - Level 21
  (397, 39700, 355, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Staravia - Double-Edge - Level 29
  (397, 39700, 38, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Staravia - Brave Bird - Level 37
  (397, 39700, 413, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Staravia - Giga Impact - Level 47
  (397, 39700, 416, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Staravia - Swift - Tutor
  (397, 39700, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Staravia - Rest - Tutor
  (397, 39700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Staravia - Aerial Ace - Tutor
  (397, 39700, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Staravia - Giga Impact - Tutor
  (397, 39700, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Staravia - Ominous Wind - Tutor
  (397, 39700, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Staraptor - Gust - Level 1
  (398, 39800, 16, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staraptor - Quick Attack - Level 5
  (398, 39800, 98, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Staraptor - Aerial Ace - Level 9
  (398, 39800, 332, 22, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Staraptor - Air Slash - Level 15
  (398, 39800, 403, 22, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Staraptor - Roost - Level 21
  (398, 39800, 355, 22, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Staraptor - Double-Edge - Level 29
  (398, 39800, 38, 22, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Staraptor - Brave Bird - Level 37
  (398, 39800, 413, 22, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Staraptor - Giga Impact - Level 47
  (398, 39800, 416, 22, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Staraptor - Close Combat - Evolution
  (398, 39800, 370, 22, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Staraptor - Hyper Beam - Tutor
  (398, 39800, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Staraptor - Focus Energy - Tutor
  (398, 39800, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Staraptor - Swift - Tutor
  (398, 39800, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Staraptor - Rest - Tutor
  (398, 39800, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Staraptor - Aerial Ace - Tutor
  (398, 39800, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Staraptor - Giga Impact - Tutor
  (398, 39800, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Staraptor - Ominous Wind - Tutor
  (398, 39800, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Bidoof - Rollout - Level 1
  (399, 39900, 205, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bidoof - Tackle - Level 5
  (399, 39900, 33, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Bidoof - Bite - Level 10
  (399, 39900, 44, 22, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Bidoof - Rest - Level 16
  (399, 39900, 156, 22, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Bidoof - Crunch - Level 23
  (399, 39900, 242, 22, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Bidoof - Swords Dance - Level 31
  (399, 39900, 14, 22, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Bidoof - Double-Edge - Level 40
  (399, 39900, 38, 22, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Bidoof - Ice Beam - Tutor
  (399, 39900, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Bidoof - Thunderbolt - Tutor
  (399, 39900, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Bidoof - Swift - Tutor
  (399, 39900, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Bidoof - Rest - Tutor
  (399, 39900, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Bidoof - Icy Wind - Tutor
  (399, 39900, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Bidoof - Iron Tail - Tutor
  (399, 39900, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Bidoof - Shadow Ball - Tutor
  (399, 39900, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Bidoof - Rock Smash - Tutor
  (399, 39900, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Bidoof - Aqua Tail - Tutor
  (399, 39900, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Bidoof - Stealth Rock - Tutor
  (399, 39900, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Bidoof - Charge Beam - Tutor
  (399, 39900, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Bibarel - Rollout - Level 1
  (400, 40000, 205, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bibarel - Tackle - Level 5
  (400, 40000, 33, 22, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Bibarel - Bite - Level 10
  (400, 40000, 44, 22, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Bibarel - Rest - Level 16
  (400, 40000, 156, 22, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Bibarel - Crunch - Level 23
  (400, 40000, 242, 22, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Bibarel - Aqua Tail - Level 23
  (400, 40000, 401, 22, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Bibarel - Swords Dance - Level 31
  (400, 40000, 14, 22, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Bibarel - Double-Edge - Level 40
  (400, 40000, 38, 22, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Bibarel - Water Pulse - Evolution
  (400, 40000, 352, 22, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Bibarel - Ice Beam - Tutor
  (400, 40000, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Bibarel - Hyper Beam - Tutor
  (400, 40000, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Bibarel - Thunderbolt - Tutor
  (400, 40000, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Bibarel - Swift - Tutor
  (400, 40000, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Bibarel - Rest - Tutor
  (400, 40000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Bibarel - Icy Wind - Tutor
  (400, 40000, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Bibarel - Iron Tail - Tutor
  (400, 40000, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Bibarel - Shadow Ball - Tutor
  (400, 40000, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Bibarel - Rock Smash - Tutor
  (400, 40000, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Bibarel - Water Pulse - Tutor
  (400, 40000, 352, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Bibarel - Aqua Tail - Tutor
  (400, 40000, 401, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Bibarel - Giga Impact - Tutor
  (400, 40000, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Bibarel - Stealth Rock - Tutor
  (400, 40000, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Bibarel - Charge Beam - Tutor
  (400, 40000, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Bibarel - Bulldoze - Tutor
  (400, 40000, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24);
