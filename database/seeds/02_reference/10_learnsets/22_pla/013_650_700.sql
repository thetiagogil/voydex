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
-- Pokémon Legends: Arceus learnsets for default forms, species 650-700.
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
  -- Sylveon - Tackle - Level 1
  (700, 70000, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sylveon - Quick Attack - Level 6
  (700, 70000, 98, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Sylveon - Swift - Level 11
  (700, 70000, 129, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Sylveon - Baby-Doll Eyes - Level 18
  (700, 70000, 608, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Sylveon - Mimic - Level 25
  (700, 70000, 102, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Sylveon - Play Rough - Level 25
  (700, 70000, 583, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Sylveon - Calm Mind - Level 34
  (700, 70000, 347, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Sylveon - Double-Edge - Level 43
  (700, 70000, 38, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Sylveon - Fairy Wind - Evolution
  (700, 70000, 584, 22, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Sylveon - Hyper Beam - Tutor
  (700, 70000, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Sylveon - Focus Energy - Tutor
  (700, 70000, 116, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Sylveon - Swift - Tutor
  (700, 70000, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Sylveon - Rest - Tutor
  (700, 70000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Sylveon - Iron Tail - Tutor
  (700, 70000, 231, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Sylveon - Shadow Ball - Tutor
  (700, 70000, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Sylveon - Rock Smash - Tutor
  (700, 70000, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Sylveon - Magical Leaf - Tutor
  (700, 70000, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Sylveon - Calm Mind - Tutor
  (700, 70000, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Sylveon - Giga Impact - Tutor
  (700, 70000, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Sylveon - Play Rough - Tutor
  (700, 70000, 583, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Sylveon - Mystical Fire - Tutor
  (700, 70000, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Sylveon - Dazzling Gleam - Tutor
  (700, 70000, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Sylveon - Baby-Doll Eyes - Tutor
  (700, 70000, 608, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23);
