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
-- Pokémon Legends: Arceus learnsets for default forms, species 252-300.
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
  -- Wurmple - Poison Sting - Level 1
  (265, 26500, 40, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wurmple - Tackle - Level 6
  (265, 26500, 33, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Silcoon - Poison Sting - Level 1
  (266, 26600, 40, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silcoon - Tackle - Level 6
  (266, 26600, 33, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Silcoon - Iron Defense - Evolution
  (266, 26600, 334, 22, NULL, 7, NULL, NULL, NULL, NULL, 3),
  -- Beautifly - Poison Sting - Level 1
  (267, 26700, 40, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beautifly - Tackle - Level 6
  (267, 26700, 33, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Beautifly - Iron Defense - Level 6
  (267, 26700, 334, 22, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Beautifly - Stun Spore - Level 11
  (267, 26700, 78, 22, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Beautifly - Silver Wind - Level 18
  (267, 26700, 318, 22, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Beautifly - Venoshock - Level 25
  (267, 26700, 474, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Beautifly - Air Slash - Level 34
  (267, 26700, 403, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Beautifly - Bug Buzz - Level 43
  (267, 26700, 405, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Beautifly - Air Cutter - Evolution
  (267, 26700, 314, 22, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Beautifly - Hyper Beam - Tutor
  (267, 26700, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Beautifly - Psychic - Tutor
  (267, 26700, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Beautifly - Swift - Tutor
  (267, 26700, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Beautifly - Leech Life - Tutor
  (267, 26700, 141, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Beautifly - Rest - Tutor
  (267, 26700, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Beautifly - Shadow Ball - Tutor
  (267, 26700, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Beautifly - Aerial Ace - Tutor
  (267, 26700, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Beautifly - Energy Ball - Tutor
  (267, 26700, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Beautifly - Giga Impact - Tutor
  (267, 26700, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Beautifly - Ominous Wind - Tutor
  (267, 26700, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Cascoon - Poison Sting - Level 1
  (268, 26800, 40, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cascoon - Tackle - Level 6
  (268, 26800, 33, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Cascoon - Iron Defense - Evolution
  (268, 26800, 334, 22, NULL, 7, NULL, NULL, NULL, NULL, 3),
  -- Dustox - Poison Sting - Level 1
  (269, 26900, 40, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dustox - Tackle - Level 6
  (269, 26900, 33, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Dustox - Iron Defense - Level 6
  (269, 26900, 334, 22, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Dustox - Poison Powder - Level 11
  (269, 26900, 77, 22, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Dustox - Silver Wind - Level 18
  (269, 26900, 318, 22, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Dustox - Venoshock - Level 25
  (269, 26900, 474, 22, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Dustox - Extrasensory - Level 34
  (269, 26900, 326, 22, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Dustox - Bug Buzz - Level 43
  (269, 26900, 405, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Dustox - Confusion - Evolution
  (269, 26900, 93, 22, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Dustox - Hyper Beam - Tutor
  (269, 26900, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Dustox - Psychic - Tutor
  (269, 26900, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Dustox - Swift - Tutor
  (269, 26900, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Dustox - Rest - Tutor
  (269, 26900, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Dustox - Sludge Bomb - Tutor
  (269, 26900, 188, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Dustox - Shadow Ball - Tutor
  (269, 26900, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Dustox - Aerial Ace - Tutor
  (269, 26900, 332, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Dustox - Energy Ball - Tutor
  (269, 26900, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Dustox - Giga Impact - Tutor
  (269, 26900, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Dustox - Ominous Wind - Tutor
  (269, 26900, 466, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Ralts - Confusion - Level 1
  (280, 28000, 93, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ralts - Teleport - Level 6
  (280, 28000, 100, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Ralts - Draining Kiss - Level 11
  (280, 28000, 577, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Ralts - Hypnosis - Level 18
  (280, 28000, 95, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Ralts - Calm Mind - Level 25
  (280, 28000, 347, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Ralts - Psychic - Level 34
  (280, 28000, 94, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Ralts - Fire Punch - Tutor
  (280, 28000, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 7),
  -- Ralts - Ice Punch - Tutor
  (280, 28000, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Ralts - Thunder Punch - Tutor
  (280, 28000, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Ralts - Ice Beam - Tutor
  (280, 28000, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Ralts - Thunderbolt - Tutor
  (280, 28000, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Ralts - Psychic - Tutor
  (280, 28000, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Ralts - Swift - Tutor
  (280, 28000, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Ralts - Rest - Tutor
  (280, 28000, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Ralts - Icy Wind - Tutor
  (280, 28000, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Ralts - Shadow Ball - Tutor
  (280, 28000, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Ralts - Magical Leaf - Tutor
  (280, 28000, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Ralts - Calm Mind - Tutor
  (280, 28000, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Ralts - Zen Headbutt - Tutor
  (280, 28000, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Ralts - Charge Beam - Tutor
  (280, 28000, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Ralts - Dazzling Gleam - Tutor
  (280, 28000, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Kirlia - Confusion - Level 1
  (281, 28100, 93, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kirlia - Teleport - Level 6
  (281, 28100, 100, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Kirlia - Draining Kiss - Level 11
  (281, 28100, 577, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Kirlia - Hypnosis - Level 18
  (281, 28100, 95, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Kirlia - Calm Mind - Level 25
  (281, 28100, 347, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Kirlia - Psychic - Level 34
  (281, 28100, 94, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Kirlia - Fire Punch - Tutor
  (281, 28100, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 7),
  -- Kirlia - Ice Punch - Tutor
  (281, 28100, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Kirlia - Thunder Punch - Tutor
  (281, 28100, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Kirlia - Ice Beam - Tutor
  (281, 28100, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Kirlia - Thunderbolt - Tutor
  (281, 28100, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Kirlia - Psychic - Tutor
  (281, 28100, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Kirlia - Swift - Tutor
  (281, 28100, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Kirlia - Rest - Tutor
  (281, 28100, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Kirlia - Icy Wind - Tutor
  (281, 28100, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Kirlia - Shadow Ball - Tutor
  (281, 28100, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Kirlia - Magical Leaf - Tutor
  (281, 28100, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Kirlia - Calm Mind - Tutor
  (281, 28100, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Kirlia - Zen Headbutt - Tutor
  (281, 28100, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Kirlia - Charge Beam - Tutor
  (281, 28100, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Kirlia - Dazzling Gleam - Tutor
  (281, 28100, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Gardevoir - Confusion - Level 1
  (282, 28200, 93, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gardevoir - Teleport - Level 6
  (282, 28200, 100, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Gardevoir - Draining Kiss - Level 11
  (282, 28200, 577, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Gardevoir - Hypnosis - Level 18
  (282, 28200, 95, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Gardevoir - Calm Mind - Level 25
  (282, 28200, 347, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Gardevoir - Psychic - Level 34
  (282, 28200, 94, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Gardevoir - Aura Sphere - Level 40
  (282, 28200, 396, 22, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Gardevoir - Moonblast - Level 43
  (282, 28200, 585, 22, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Gardevoir - Recover - Level 52
  (282, 28200, 105, 22, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Gardevoir - Dazzling Gleam - Evolution
  (282, 28200, 605, 22, NULL, 7, NULL, NULL, NULL, NULL, 10),
  -- Gardevoir - Fire Punch - Tutor
  (282, 28200, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Gardevoir - Ice Punch - Tutor
  (282, 28200, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Gardevoir - Thunder Punch - Tutor
  (282, 28200, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Gardevoir - Ice Beam - Tutor
  (282, 28200, 58, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Gardevoir - Hyper Beam - Tutor
  (282, 28200, 63, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Gardevoir - Thunderbolt - Tutor
  (282, 28200, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Gardevoir - Psychic - Tutor
  (282, 28200, 94, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Gardevoir - Swift - Tutor
  (282, 28200, 129, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Gardevoir - Rest - Tutor
  (282, 28200, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Gardevoir - Icy Wind - Tutor
  (282, 28200, 196, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20),
  -- Gardevoir - Shadow Ball - Tutor
  (282, 28200, 247, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 21),
  -- Gardevoir - Magical Leaf - Tutor
  (282, 28200, 345, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 22),
  -- Gardevoir - Calm Mind - Tutor
  (282, 28200, 347, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 23),
  -- Gardevoir - Energy Ball - Tutor
  (282, 28200, 412, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 24),
  -- Gardevoir - Giga Impact - Tutor
  (282, 28200, 416, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 25),
  -- Gardevoir - Zen Headbutt - Tutor
  (282, 28200, 428, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 26),
  -- Gardevoir - Charge Beam - Tutor
  (282, 28200, 451, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 27),
  -- Gardevoir - Mystical Fire - Tutor
  (282, 28200, 595, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 28),
  -- Gardevoir - Dazzling Gleam - Tutor
  (282, 28200, 605, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 29),
  -- Nosepass - Tackle - Level 1
  (299, 29900, 33, 22, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nosepass - Thunder Wave - Level 6
  (299, 29900, 86, 22, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Nosepass - Spark - Level 11
  (299, 29900, 209, 22, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Nosepass - Iron Defense - Level 18
  (299, 29900, 334, 22, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Nosepass - Rock Slide - Level 25
  (299, 29900, 157, 22, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Nosepass - Power Gem - Level 34
  (299, 29900, 408, 22, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Nosepass - Earth Power - Level 43
  (299, 29900, 414, 22, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Nosepass - Fire Punch - Tutor
  (299, 29900, 7, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 8),
  -- Nosepass - Ice Punch - Tutor
  (299, 29900, 8, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 9),
  -- Nosepass - Thunder Punch - Tutor
  (299, 29900, 9, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 10),
  -- Nosepass - Thunderbolt - Tutor
  (299, 29900, 85, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 11),
  -- Nosepass - Rest - Tutor
  (299, 29900, 156, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 12),
  -- Nosepass - Rock Slide - Tutor
  (299, 29900, 157, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 13),
  -- Nosepass - Rock Smash - Tutor
  (299, 29900, 249, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 14),
  -- Nosepass - Earth Power - Tutor
  (299, 29900, 414, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 15),
  -- Nosepass - Flash Cannon - Tutor
  (299, 29900, 430, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 16),
  -- Nosepass - Stone Edge - Tutor
  (299, 29900, 444, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 17),
  -- Nosepass - Stealth Rock - Tutor
  (299, 29900, 446, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 18),
  -- Nosepass - Bulldoze - Tutor
  (299, 29900, 523, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 19),
  -- Nosepass - Power Shift - Tutor
  (299, 29900, 829, 22, NULL, 6, NULL, NULL, NULL, 'Pokémon Legends: Arceus Move Tutor.', 20);
